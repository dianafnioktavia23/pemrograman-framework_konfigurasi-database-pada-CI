<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Mahasiswa</title>
</head>
<body>
<h1>Data Mahasiswa</h1>
    <table border ="1" cellspacing="5" cellpadding="5">
        <tr>
            <th>No</th>
            <th>Nama </th>
            <th>Npm</th>
            <th>Prodi</th>
        </tr>
        <?php $i = 1 ;?>
        <?php foreach($data_mahasiswa as $row): ?>
            <tr>
                <td><?= $i++;?></td>
                <td><?php echo $row['nama']?></td>
                <td><?= $row['npm']?></td>
                <td><?= $row['prodi']?></td>
            </tr>
        <?php endforeach;?>
    </table>
</body>
</html>