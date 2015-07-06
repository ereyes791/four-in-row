#proyecto 1 Esteban S Reyes
#creacion de matriz
	def create_matrix(aux)
			for i in 0..5
				columnas=[]
				aux[i]= columnas
				
			for j in 0..5
				columnas[j]= " _ "
				end
			end	
		   return aux
		end
#imprimir matriz
	def print_matrix(aux)
			puts" 1  2  3  4  5  6 "
			
				for i in 0..aux.length-1 
				
					for j in 0..aux.length-1
					print aux[i][j]
					end 
					puts " "
			end	
		end
	
		#shot
		def gameplay(aux,ficha)
		fact=false
			while(!fact)
			puts "#{ficha}: it's your turn,select a column"
			
			j=gets.chomp.to_i-1
				if (j<aux.length && j>=0)
				i=5
					while (i>=0)
						if (aux[i][j]==" _ ")
							aux[i][j]=ficha
							fact=true
								i=i-7

							else
							i=i-1

								if (i==-1)
								puts"this column #{j+1} is full, try another "
								imprimirMatriz(aux)
									i=i-7
								end
						end
					end
				else
			
			puts"invalid column "
			print_matrix(aux)
				end

			
			end
		end	
		#verify
		def verify(aux,ficha)
			ganador= false 
			contador=0
			for i in 0..5
				remind=i
				for j in 0..5
					if(verify_H(i,j,aux,ficha) || verify_V(i,j,aux,ficha )|| verify_D(i,j,aux,ficha ))
						return true
					end
				end
				
			end
			return false		
			end

			#verificar horizontal	
			def verify_H(x,y,aux,ficha)
			posible=false
			cont=0
						if(x<3)
							while(!posible)
								if(aux[x][y]== ficha)
								cont=cont+1
								x=x+1
										if(cont ==4)
										return true
										end
								else
								posible=true
								end
							end
						else
							while(!posible)
								if(aux[x][y]== ficha)
								cont=cont+1
								x=x-1
										if(cont ==4)
										return true
										end
								else
								posible=true
								end
							end
						end
	
				return false
			end
			

		#verify
			def verify_V(x,y,aux,ficha)
			posible=false
			cont=0
						if(y<3)
							while(!posible)
								if(aux[x][y]== ficha)
								cont=cont+1
								y=y+1
										if(cont ==4)
										return true
										end
								else
								posible=true
								end
							end
						else
							while(!posible)
								if(aux[x][y]== ficha)
								cont=cont+1
								y=y-1
										if(cont ==4)
										return true
										end
								else
								posible=true
								end
							end
						
						end
				return false
			end

			#verify
			def verify_D(x,y,aux,ficha)
			posible=false
			cont=0
						if(x<3)
							while(!posible)
								if(aux[x][y]== ficha)
								cont=cont+1
								x=x+1
								y=y+1
										if(cont ==4)
										return true
										end
								else
								posible=true
								end
							end
						else
							while(!posible)
								if(aux[x][y]== ficha)
								cont=cont+1
								y=y+1
								x=x-1
										if(cont ==4)
										return true
										end
								else
								posible=true
								end
							end
						
						end
				return false
			end


		def Four_in_row(b)

				puts"Welcome to Four-in row"
			create_matrix(b)
			cont =1
			fichaX =" X "
			fichaO =" O "
			winner1= false
			winner2=false
			cont=0
					print_matrix(b)
				while(winner1!=true&&winner2!=true&&cont!=32)
					gameplay(b,fichaX)
					cont=cont+1
					print_matrix(b)
					winner1=verify(b,fichaX)
						if(winner1==false)
							gameplay(b,fichaO)
							cont=cont+1
							print_matrix(b)
							winner2=verify(b,fichaO)
						else
							end		
				end
				if(winner1==true)
				puts"X has won "
				elsif(cont==32)
				puts"Partida Empatada"
				else
				puts"O has won "
				end
				
		end
#main
b=[]		
Four_in_row(b)
