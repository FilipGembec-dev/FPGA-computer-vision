module ModularNeuralNet(
    input clk_, c, d, wr, output [1:0] checkP, output [2:0] check 
);

    reg [17:0] shf;             //shift register
    
    wire [8:0] ADDR;            //addres word
    wire [7:0] DATA;            //data word
    wire RS;
    assign ADDR = shf[16:8];    
    assign DATA = shf[7:0];
    assign RS = shf[17];
    
    always@(posedge c)begin     //shift register driver
        shf = shf >> 1;
        shf[17] = d;
    end

    parameter multiSum = 399;

    net#(multiSum) ALU(clk_, wr, ADDR, DATA, RS, checkP, check);

endmodule



module net#(multiSum = 2)(
    input clk_, wr, [8:0] ADDR, [7:0] DATA, [0:0] RS, output reg [1:0] checkP, output [2:0] check, reg [3:0] data
);

    reg signed [7:0] A [multiSum:0]; //input neuron values
    reg signed [7:0] B [multiSum:0]; //neural connection weights
    
    always@(posedge wr)begin    //saving the sent message in acordation to RS
        case(RS)
            0 : A[ADDR] = DATA;
            1 : B[ADDR] = DATA;        
        endcase    
    end
    
    reg signed [25:0] SUM;
    integer j;
    always@(1)begin
        SUM = 0;
        for(j = 0; j <= multiSum; j = j + 1)begin
            SUM = SUM + (A[j] * B[j]);
        end
    end
    
    assign check[0] = SUM == 0;
    assign check[1] = SUM > 0;
    assign check[2] = SUM < 0;
    
    always@(1)begin
        case(check)
            'd1 : checkP = 'd1;
            'd2 : checkP = 'd2;
            'd4 : checkP = 'd3;
            default : checkP = 'd0;
        endcase
    end

endmodule
