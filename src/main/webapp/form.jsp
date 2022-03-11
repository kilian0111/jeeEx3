<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="keen-ui/dist/keen-ui.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Title</title>
    <style>
        input, select{
            margin-left:1rem;
            margin-top: 1rem;

        }
        button{
            margin-top: 4rem;
        }

    </style>
</head>
<body style="background-color:black;">
<div id="ici" style="text-align: center" >
    <form method="post">
        <div style="display: flex; text-align: center">
                    <input type="text" name="nom" placeholder="nom">
                    <input type="text" name="prenom" placeholder="prenom">
                    <select name="categorie" id="pet-select">
                        <option value="Adulte">Adulte</option>
                        <option value="Etudiant">Etudiant</option>
                        <option value="Enfant">Enfant</option>
                    </select>
        </div>

        <button type="submit" name="valider" value="recapituler" class="btn btn-success" > Recapituler </button>
        <button type="submit" name="valider" value="calculer" class="btn btn-success" > Calculer </button>
    </form>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/underscore@1.13.2/underscore-umd-min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
        crossorigin="anonymous"></script>
</body>
</html>