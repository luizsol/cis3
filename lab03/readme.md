# Roteiro de aula

## Nomes dos sinais presentes no arquivo `plasma_tbw.vhd`

* `clk` : o clock
* `reset` : sinal de reset
* `uart_write` : flag de escrita na uart
* `uart_read` : flag de leitura da uart
* `address` : endereço de escrita
* `byte_we` : ?
* `data_write` : porta de escrita de dados na uart
* `data_read` : porta de leitura de dados da uart
* `mem_pause_in` : ?
* `gpio0_out` : um gpio de saída
* `gpioA_in` : um gpio de entrada

## Valor do período de relógio

```vhdl
--Constants
	CONSTANT PERIOD 			: time := 20 ns;
```

## Código do componente

EP2C3F672C6

## Número de elementos lógicos utilizados 

4.898

## Número de registradores utilizados

1.556

