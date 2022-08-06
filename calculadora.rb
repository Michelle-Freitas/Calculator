def soma(primeiro_numero, segundo_numero)
  return primeiro_numero + segundo_numero
end

def subtracao(primeiro_numero, segundo_numero)
  return primeiro_numero - segundo_numero
end

def multiplicacao(primeiro_numero, segundo_numero)
  return primeiro_numero * segundo_numero
end

def divisao(primeiro_numero, segundo_numero)
  if primeiro_numero == 0
    print('Impossivel dividir zero')
  elsif segundo_numero == 0
    print('Impossível dividir um número por zero')
  else
    return primeiro_numero / segundo_numero
  end
end

def menu()
  puts """Bem vindo a CALCULADORA!\n
    1 - Para somar
    2 - Para subtrair
    3 - Para Multiplicar
    4 - Para Dividir
    0 - Para SAIR"""
  print('Escolha: ')
  opcao = gets().to_i()
  print(opcao)
  puts()
  return opcao
end


loop do
  opcao = menu()
  if opcao == 0
    puts('Saindo ... Volte sempre!')
    break
  elsif opcao < 0
    puts('Opção inválida')
  elsif opcao > 5
    puts('Opção inválida')
  else
    print('Digite o primeiro número: ')
    primeiro_numero = gets().to_i()
    print(primeiro_numero)
    puts()
    print('Digite o segundo número: ')
    segundo_numero = gets().to_i()
    print(segundo_numero)
    puts()
    if opcao == 1
      soma = soma(primeiro_numero, segundo_numero)
      puts("A soma entre #{primeiro_numero} + #{segundo_numero} = #{soma}")
      puts()
    elsif opcao == 2
      subtracao = subtracao(primeiro_numero, segundo_numero)
      puts("A subtração entre #{primeiro_numero} - #{segundo_numero} = #{subtracao}")
      puts()
    elsif opcao == 3
      multiplicacao = multiplicacao(primeiro_numero, segundo_numero)
      puts("A multiplicação entre #{primeiro_numero} x #{segundo_numero} = #{multiplicacao}")
      puts()
    elsif opcao == 4
      divisao = divisao(primeiro_numero, segundo_numero)
      if primeiro_numero || segundo_numero == 0
        puts(', ERRO!')
      else
        puts("A divisão entre #{primeiro_numero} / #{segundo_numero} = #{divisao}")
      end
    end
  end
end

