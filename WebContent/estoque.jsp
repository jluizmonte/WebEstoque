<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/estilo.css" />

<title>Estoque - VendasNSoft</title>
</head>
<body>
	<h1>Bem-Vindo a seu estoque</h1>
	<h2>Aqui você poderá consultar o estoque atual de seu
		estabelecimento</h2>
	<table border="1">
		<caption align="top" id="produto">Produtos</caption>
		<tr height="2">
			<th>Nome</th>
			<th>Marca</th>
			<th>Descrição</th>
			<th>Quantidade</th>
			<th>Valor Total</th>
			<th>Valor Unitário</th>
			<th>Valor Venda</th>
		</tr>
		<tr>
			<td><input type="text" value="FARINHA DE TRIGO" name=""></td>
			<td><input type="text" value="DONA BENTA" name=""></td>
			<td><input type="text" value="SEM FERMENTO" name=""></td>
			<td><input type="text" size="2" value="50" name=""></td>
			<td><input type="text" value="100,00" name=""></td>
			<td><input type="text" value="2,00" name=""></td>
			<td><input type="text" value="2,50" name=""></td>
		</tr>
	</table>
	<!-- <table id="tbVendas" rules="rows">
		<thead>
			<tr>
				<th></th>
				<th>Codigo</th>
				<th>Data</th>
				<th>Itens</th>
				<th>Total</th>
			</tr>
		</thead>
		<tbody>
			<tr class="linhaVenda">
				<td></td>
				<td>01</td>
				<td>01/01/2001</td>
				<td>2</td>
				<td>10,00</td>
			</tr>
			<tr class="linhaItens">
				<td colspan="5">Itens
					<table class="tbItens" rules="rows">
						<thead>
							<tr>
								<th>Codigo</th>
								<th>Descricao</th>
								<th>Quantidade</th>
								<th>Valor Unitario</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>A1</td>
								<td>Produto A 1</td>
								<td>1</td>
								<td>7,00</td>
							</tr>
							<tr>
								<td>A2</td>
								<td>Produto A 2</td>
								<td>1</td>
								<td>3,00</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
			<tr class="linhaVenda">
				<td></td>
				<td>02</td>
				<td>02/02/2001</td>
				<td>3</td>
				<td>20,00</td>
			</tr>
			<tr class="linhaItens">
				<td colspan="5">Itens
					<table class="tbItens" rules="rows">
						<thead>
							<tr>
								<th>Codigo</th>
								<th>Descricao</th>
								<th>Quantidade</th>
								<th>Valor Unitario</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>B1</td>
								<td>Produto B 1</td>
								<td>1</td>
								<td>10,00</td>
							</tr>
							<tr>
								<td>B2</td>
								<td>Produto B 2</td>
								<td>2</td>
								<td>5,00</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		<tbody>
	</table>
 -->
</body>
</html>