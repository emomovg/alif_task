<?php include_once __DIR__."/../header.php"; ?>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="container">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 style="text-align: right;">Contacts</h1>
                    </div>
                </div>
                <div class="row mb-2">
                <a class="btn btn-secondary btn-sm" href="/?model=contact&action=create">
                    <i class="fas fa-pencil-alt">
                    </i>
                    Create New Contact
                </a>
                </div>
            </div>
        </section>

        <!-- Main content -->
        <section class="container">

            <!-- Default box -->
            <div class="card">

                <div class="card-body p-0">
                    <table class="table table-striped projects">
                        <thead>
                        <th>ID</th>
                        <th>Name</th>
                        <th>PhoneNumber</th>
                        <th>Mail</th>
                        <th>Actions</th>
                        </thead>
                        <tbody>
                        <?php foreach ($all as $contact): ?>
                            <tr>
                                <td><?=$contact['id']?></td>
                                <td><?=$contact['name']?></td>
                                <td><a href="/?model=phoneNumber&action=read&contactId=<?=$contact['id']?>"><img src="/img/phone.jpg" style="width: 25px; height: 25px; text-align: center;"></a></td>
                                <td><a href="/?model=email&action=read&contactId=<?=$contact['id']?>"><img src="/img/mail.jpg" style="width: 25px; height: 25px; text-align: center;"></a></td>

                                <td style="width: 200px;">
                                    <a class="btn btn-info btn-sm" href="/?model=contact&action=update&id=<?=$contact['id']?>">
                                        <i class="fas fa-pencil-alt">
                                        </i>
                                        Edit
                                    </a>
                                    <a class="btn btn-danger btn-sm" href="/?model=contact&action=delete&id=<?=$contact['id']?>">
                                        <i class="fas fa-trash">
                                        </i>
                                        Delete
                                    </a>

                                </td>
                            </tr>
                        <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

<?php if ($total_pages > 0): ?>
<div class="container">
    <ul class="ownPagination">
        <?php if ($page > 1): ?>
            <li class="prev"><a href="/?model=contact&action=read&page=<?php echo $page-1 ?>">Prev</a></li>
        <?php endif; ?>

        <?php if ($page > 3): ?>
            <li class="start"><a href="/?model=contact&action=read&page=1">1</a></li>
            <li class="dots">...</li>
        <?php endif; ?>

        <?php if ($page-2 > 0): ?><li class="page"><a href="/?model=contact&action=read&page=<?php echo $page-2 ?>"><?php echo $page-2 ?></a></li><?php endif; ?>
        <?php if ($page-1 > 0): ?><li class="page"><a href="/?model=contact&action=read&page=<?php echo $page-1 ?>"><?php echo $page-1 ?></a></li><?php endif; ?>

        <li class="currentpage"><a href="/?model=contact&action=read&page=<?php echo $page ?>"><?php echo $page ?></a></li>

        <?php if ($page+1 < $total_pages+1): ?><li class="page"><a href="/?model=contact&action=read&page=<?php echo $page+1 ?>"><?php echo $page+1 ?></a></li><?php endif; ?>
        <?php if ($page+2 < $total_pages+1): ?><li class="page"><a href="/?model=contact&action=read&page=<?php echo $page+2 ?>"><?php echo $page+2 ?></a></li><?php endif; ?>

        <?php if ($page < $total_pages-2): ?>
            <li class="dots">...</li>
            <li class="end"><a href="/?model=contact&action=read&page=<?php echo $total_pages ?>"><?php echo $total_pages ?></a></li>
        <?php endif; ?>

        <?php if ($page < $total_pages): ?>
            <li class="next"><a href="/?model=contact&action=read&page=<?php echo $page+1 ?>">Next</a></li>
        <?php endif; ?>
    </ul>
</div>
<?php endif; ?>

<?php include_once __DIR__."/../footer.php"; ?>