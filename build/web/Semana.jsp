<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Semana</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="css/semana.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
  </script>
</head>

<body>
  <div class="row">
    <div class="col-12 bien"><%
                String nombre ="gus";
                out.println("Bienvenido a tu registro de semana "+nombre);
                %>
    </div>
  </div><br>
  <div class="row">

    <div class="col-9">


      <div class="tablas">

        <div class="container-sm">
          <h2>Registro de semana</h2>
          <p>Estos son los gastos de la semana que estar cursando</p>
          <table class="table table-striped">
            <thead>
              <tr>
                <th>Gasto Semanal</th>
                <th>Lunes</th>
                <th>Martes</th>
                <th>Miercoles</th>
                <th>Jueves</th>
                <th>Viernes</th>
                <th>Gasto total</th>
                <th>Dinero sobrante</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Gasto de transporte</td>
                <td>$50</td>
                <td>$50</td>
                <td>$50</td>
                <td>$50</td>
                <td>$50</td>
                <td>$50</td>
                <td>--</td>
              </tr>
              <tr>
                <td>Gasto de comida</td>
                <td>$45</td>
                <td>$45</td>
                <td>$45</td>
                <td>$45</td>
                <td>$45</td>
                <td>$45</td>
                <td>--</td>
              </tr>
              <tr>
                <td>Gasto de servicio telefonico</td>
                <td>Dooley</td>
                <td>$15</td>
                <td>$15</td>
                <td>$15</td>
                <td>$15</td>
                <td>$15</td>
                <td>--</td>
              </tr>

            </tbody>
          </table>
        </div>
      </div>




      <div class="container-sm">
        <br><br>
        <h2>Gatos del dia</h2>
        <p>Estos son tus gastos de tu semana</p>
        <table class="table table-striped">
          <thead>
            <tr>
              <th>Gastos</th>
              <th>Gastos Diarios</th>
              <th>Gasto Semanales</th>
              <th>Gastos Mensuales</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Gasto de transporte</td>
              <td>$110</td>
              <td>$110</td>
              <td>--</td>

            </tr>
            <tr>
              <td>Gasto de comida</td>
              <td>$110</td>
              <td>$110</td>
              <td>--</td>
            </tr>


            <tr>
              <td>Gasto de servicio telefonico</td>
              <td>$110</td>
              <td>$110</td>
              <td>--</td>
            </tr>

            <tr>
              <td>Gastos Extras</td>
              <td>$110</td>
              <td>$110</td>
              <td>--</td>

            </tr>
          </tbody>
        </table>
      </div>
    </div>
    <div class="col-3">
      <div class="top">
        <div class="row ">
          <form>
            <button type="submit" name="gasex">Agregar gasto emergente</button>
            <button type="submit" name="gasex">Agregar Saldo</button>
          </form>
        </div>
          <br>        
        <div class="row">
          <div class="col-12">
            <div class="row">
              <div class="co1-12">Saldo de cuenta</div>
            </div>
          </div>
        </div>
          <br>
      </div>
    </div>
  </div>
  </div>
</body>

</html>