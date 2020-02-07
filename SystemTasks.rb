



def calculator 
    while true
              


    puts'============================'
    puts'Calculator'
    puts'============================'
    puts'Primeiro valor: '
    valor = gets.chomp.to_f
    puts'Segundo Valor: '
    valor2 = gets.chomp.to_f
    puts'Qual  Operador:'
    operador = gets.chomp.to_s
     print 'Resultado final:' 
    case operador
    
    when "*"
       
        puts valor * valor2
    when "+"
         print 'Resultado final'  
         puts valor + valor2
    when "/"
        print 'Resultado final :' 
        puts valor / valor2

    when"-"
        print 'Resultado final :' 
        puts valor - valor2
    else
        print 'Operador inválido'
    end
     puts'====================================='
        puts'Calcular[1]'
        puts'Sair[0]'
        valor3  = gets.chomp.to_i
        case valor3
            when 1
                calculator
            when 0
                break 
            else
                puts'resposta inválida'  
            end
        end           

end

def Task_system(tasks)
    while true
        puts'===================================' 
        puts'Tarefas'
        puts'======================================='   
        if !tasks.empty? 
            tasks.each do|tasks| 
                puts tasks
            end
        else
            puts'vc nao tem nenhuma tarefa'
        end

        puts 'Adicionar[1]'
        puts 'Deletar[2]'
        puts 'Sair[0]'
        n = gets.chomp.to_f

        case n

            when 1
                puts'Tarefa'
                tarefa = gets.chomp
                tasks.push(tarefa)
            
            when 2
                puts'Qual tarefa deseja apagar?'
                tarefa = gets.chomp

                if tasks.delete(tarefa)
                    puts 'ITEM REMOVIDO'

                else 
                    puts'vc nao precisa fazer isso'
                end
            
            when 0
                return tasks
        end

    end
end

tasks = []

while true

puts'=========================='
puts 'Calculator[1]'
puts 'Tasks[2]'
puts 'Sair[0]'

n1 = gets.chomp.to_i

case n1
    when 1
        calculator
    when 2 
        Task_system(tasks)
    when 0
        puts 'falou....'
        break
    else
        puts'Opção inválida'
    end
end

           