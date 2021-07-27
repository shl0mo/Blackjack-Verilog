module decod(input wire[3:0] num, //                                     1/...
	     output reg[6:0] out);
always @ (num)begin  
	case (num)    
		4'b0000 : out = 7'b0111111;    
		4'b0001 : out = 7'b0000110;    
		4'b0010 : out = 7'b1011011;    
		4'b0011 : out = 7'b1001111;    
		4'b0100 : out = 7'b1100110;    
		4'b0101 : out = 7'b1101101;    
		4'b0110 : out = 7'b1111101;    
		4'b0111 : out = 7'b0000111;    
		4'b1000 : out = 7'b1111111;    
		4'b1001 : out = 7'b1101111;  
	endcase	
	end
endmodule
module decod_banca(input win_b, lose_b, draw_b,
                   input wire[3:0] num_b,   
                   output reg[6:0] out_b);
always @ (num_b or win_b or lose_b or draw_b)begin  
  if (win_b == 1 | lose_b == 1 | draw_b == 1)begin
    case (num_b)    
		  4'b0000 : out_b = 7'b0111111;    
      4'b0001 : out_b = 7'b0000110;    
      4'b0010 : out_b = 7'b1011011;    
      4'b0011 : out_b = 7'b1001111;    
      4'b0100 : out_b = 7'b1100110;    
      4'b0101 : out_b = 7'b1101101;    
      4'b0110 : out_b = 7'b1111101;    
      4'b1001 : out_b = 7'b1101111;      
      4'b1000 : out_b = 7'b1111111;
      4'b0111 : out_b = 7'b0000111;
    	endcase	
    end 	  
 	else
 	  begin //begining
      out_b = 7'b0000000;  
    	end
 	end
endmodule
module decoder_d(input wire[6:0] num2,
		 output reg[6:0] decod_out);  
always @ (num2)begin
	if (num2 < 10)begin
		decod_out = 7'b0111111;
		end
	else if (num2 >= 10 & num2 < 20)begin
		decod_out = 7'b0000110;
		end
	else if (num2 >= 20 & num2 < 30)begin
		decod_out = 7'b1011011;
		end	
	else if (num2 >= 30 & num2 < 40)begin
		decod_out = 7'b1001111;
		end
	else if (num2 >= 40 & num2 < 50)begin
		decod_out = 7'b1100110;
		end
	else if (num2 >= 50 & num2 < 60)begin
		decod_out = 7'b1101101;
		end
	else if (num2 >= 60 & num2 < 70)begin
		decod_out = 7'b1111101;
		end
	else if (num2 >= 70 & num2 < 80)begin
		decod_out = 7'b0000111;
		end
	else if (num2 >= 80 & num2 < 90)begin
		decod_out = 7'b1111111;
		end
	else 
	   begin	//begining
    		decod_out = 7'b1101111;
		 end
	end
endmodule

module decoder_d_banca(input win_banca, lose_banca, draw_banca,
                 input wire[6:0] num2_b,
              		 output reg[6:0] decod_out_b);
always @ (num2_b or win_banca or lose_banca or draw_banca)begin
  if (win_banca == 1 | lose_banca == 1 | draw_banca ==1)begin
    	   if (num2_b < 10)begin
    		    decod_out_b = 7'b0111111;
  		      end
     	  else if (num2_b >= 10 & num2_b < 20)begin
    		    decod_out_b = 7'b0000110;
        		end
       	else if (num2_b >= 20 & num2_b < 30)begin
        		decod_out_b = 7'b1011011;
        		end	
       	else if (num2_b >= 30 & num2_b < 40)begin
        		decod_out_b = 7'b1001111;
        		end
      	 else if (num2_b >= 40 & num2_b < 50)begin
        		decod_out_b = 7'b1100110;
        		end
       	else if (num2_b >= 50 & num2_b < 60)begin
    		    decod_out_b = 7'b1101101;
        		end
       	else if (num2_b >= 60 & num2_b < 70)begin
        		decod_out_b = 7'b1111101;
        		end
       	else if (num2_b >= 70 & num2_b < 80)begin
        		decod_out_b = 7'b0000111;
        		end
       	else if (num2_b >= 80 & num2_b < 90)begin
        		decod_out_b = 7'b1111111;
        		end
       	else decod_out_b = 7'b1101111;
    	end
  else decod_out_b = 7'b0000000;
   	end    	
endmodule


module unidades(input wire[6:0] mao_total,
                output reg[3:0] mao_unidade);  
always @(mao_total)begin
  if (mao_total < 10)begin
    mao_unidade = mao_total;
    end
  else if (mao_total >= 10 & mao_total < 20)begin
    mao_unidade = mao_total - 10;
    end
  else if (mao_total >= 20 & mao_total < 30)begin
    mao_unidade = mao_total - 20;
    end
  else if (mao_total >= 30 & mao_total < 40)begin
    mao_unidade = mao_total - 30;
    end
  else if (mao_total >= 40 & mao_total < 50)begin
    mao_unidade = mao_total - 40;
    end
  else if (mao_total >= 50 & mao_total < 60)
    begin // begining fine -                                             .../137
      mao_unidade = mao_total - 50;
    end
  else if (mao_total >= 60 & mao_total < 70)begin
    mao_unidade = mao_total - 60;
    end
  else if (mao_total >= 70 & mao_total < 80)begin
    mao_unidade = mao_total - 70;
    end
  else if (mao_total >= 80 & mao_total < 90)begin
    mao_unidade = mao_total - 80;
    end
  else mao_unidade = mao_total - 90;
end
  endmodule


module as(input cont,
          input wire[3:0] in, 
          input wire[6:0] mao,
          output reg[6:0] one_eleven);    
          
reg[1:0] count_as;    

always @ (cont)begin
  		if (in == 1)begin//2
        if (mao != 6)begin//1
          if (mao + 11 > 21) one_eleven = 1;
          else begin//else begin  
            one_eleven = 11;
            count_as = count_as + 1;
            end // else begin
           end //begin 1  
       else one_eleven = 1;
       end //begin 2      
    else if (mao + in > 21 & count_as >= 1)begin//3
        one_eleven = in - (count_as*10);
        count_as = 0;
        end //begin 3
    else one_eleven = in;			
  end
endmodule

module ger(input clk,
           input rst,
           output reg[3:0] saida);
           
reg [31:0] x;
reg [31:0] y;
reg [31:0] z;
reg [31:0] w;
reg [31:0] v;
reg count;
wire [31:0] p_x;
wire [31:0] p_y;
wire [31:0] p_z;
wire [31:0] p_w;
wire [31:0] p_v;
wire [31:0] t;
wire [31:0] aux;
always @ (posedge clk or negedge clk)begin
  if(!rst)begin
      x <= 32'd123456789;
      y <= 32'd362436069;
      z <= 32'd521288629;
      w <= 32'd586751236;
      v <= 32'd886756453;
      count <= ~count;
  end
  else begin
      x <= p_x;
      y <= p_y;
      z <= p_z;
      w <= p_w;
      v <= p_v;
      count <= ~count;
  end
end
assign t = (x^(x>>7));
assign p_x = y;
assign p_y = z;
assign p_z = w;
assign p_w = v;
assign p_v = (v^(v<<6))^(t^(t<<13));
assign aux = (p_y*p_y*1)*p_v;
always @(count)begin
  if (aux[3:0] > 9)begin
    saida = aux[7:0];
    end
  else saida = aux[3:0];
  if (saida == 0) saida = saida + 3;
  if (saida > 10) saida = saida - 5;
end
endmodule
  

module blackjack (input clk, rst, hit, stay,
					output reg win, lose, draw,
					output wire[6:0] banca_d, banca_u, jog_d, jog_u);
parameter[2:0] INICIO = 3'b000, cartas_jog = 3'b001, hit_state = 3'b010, stay_state = 3'b011, win_state = 3'b100, lose_state = 3'b101, draw_state = 3'b110;
reg[2:0] state,next_state;
wire[3:0]  mao_jog_u, mao_banca_u; 
reg[6:0] mao_jog, mao_banca;
wire[6:0] one_eleven1, one_eleven2;
reg[3:0] count;
wire[3:0] num_1, num_2;
reg[1:0] count_as, count_as1;
reg count_stay;
reg count1;
reg a = 1;

//always @ (posedge clk) begin
//  num_1 <=  1 + {$random} % (10 - 1);
//  num_2 <=  1 + {$random} % (10 - 1);
//end

ger random_jog (clk,a,num_1);
ger random_banca (clk,a,num_2);

as as_jog (count1,num_1,mao_jog,one_eleven1);
as as_banca (count1,num_2,mao_banca,one_eleven2);

always @(posedge clk)begin
	if (rst == 0)begin//
		count <= 0; 
		count_as <= 0;
		count_as1 <= 0;
  		count_stay <= 0;	
		state <= INICIO;
		next_state <= 3'b000;
		mao_jog <= 7'b0000000;
		mao_banca <= 7'b0000000; 
		end //if (rst == 0)
	else if (rst == 1) begin
  	 if (count != 0 & count <= 2)begin//4
        mao_jog <= mao_jog + one_eleven1;
        mao_banca <= mao_banca + one_eleven2;
    end
   	if ((hit == 0) & (next_state != lose_state & count_stay != 1))begin
      		mao_jog <= mao_jog + one_eleven1;
		end
		if (stay == 0) count_stay <= 1;
  	 if (count_stay == 1 & mao_banca < 17)begin
    		 mao_banca <= mao_banca + one_eleven2;
		end		
  	if (count < 3)begin
      	count <= count + 1;
  end
  a <= 0;
 	count1 <= ~count1;
	state <= next_state;		
	end //if (rst == 1)	
 end   	
unidades unidade_jog (mao_jog, mao_jog_u);
unidades unidade_banca (mao_banca, mao_banca_u); 
//Definicao dos estados
always @ (hit or stay or mao_jog  or mao_banca or count)begin
  case (state)
    INICIO: begin
        if (count != 0)begin
          next_state = cartas_jog;
        end
      end
    cartas_jog: begin 
      if (mao_jog == 21 & mao_banca < 21)begin
	       next_state = win_state;
  	     end
	    else if (mao_banca == 21 & mao_jog < 21)begin
	      next_state = lose_state;
	       end
	    else if (mao_banca == 21 & mao_jog == 21)begin
	      next_state = draw_state;
	      end
      else if (hit == 0)begin
        next_state = hit_state;
        end
      else if (stay == 0)begin
        next_state = stay_state;
        end
      end
   hit_state: begin
     if (mao_jog > 21 & mao_banca <= 21)begin
       next_state = lose_state;
       end
     else if (stay == 0)begin
       next_state = stay_state;
       end
     end
   stay_state: begin
    if (mao_banca >= 17)begin
      if (mao_banca > 21 & mao_jog <= 21)begin
        next_state = win_state;
        end
      else if (mao_jog <= 21 & mao_banca < mao_jog)begin
        next_state = win_state;
        end
      else if (mao_banca <= 21 & mao_jog < mao_banca)begin
        next_state = lose_state;
        end
      else if (mao_banca == mao_jog)begin
        next_state = draw_state;
        end
      end
    end
  endcase
end

always @ (state)begin
	case(state)
		INICIO: begin
		  win = 0;
		  lose = 0;
		  draw = 0;
		  end
		cartas_jog: ;
		hit_state: ;
		stay_state: ;		
		win_state: begin	
      			win = 1;
      			lose = 0;
			 draw = 0;
		end
		lose_state: begin
			   win = 0;
			   lose = 1;
			draw = 0;
		end
		draw_state: begin
			      win = 0;
			       lose = 0;
			       draw = 1;
		     end
	    endcase
       	end
decod decod_jog_u(mao_jog_u,jog_u);
decoder_d decod_jog_d(mao_jog, jog_d);
decod_banca decod_banca_u (win, lose, draw, mao_banca_u, banca_u);
decoder_d_banca decod_banca_d (win, lose, draw, mao_banca, banca_d);
endmodule