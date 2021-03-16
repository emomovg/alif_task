<?php
include_once __DIR__."/../header.php";
?>

    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 style="text-align: right;">Create Email</h1>
                    </div>
                </div>
            </div>
        </section>

        <section class="content">
            <div class="container">
                <!-- /.card-header -->
                <!-- form start -->
                <form  class="form-horizontal" action="/?model=email&action=save&contactId=<?=$_GET['contactId']  ?>" method="post" enctype="multipart/form-data">
                    <div class="card-body">
                        <input type ="hidden" value="<?=$email['id'] ?? '' ?>" name = "id">
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">ContactId</label>
                            <div class="col-sm-10">
                                <input type="text" value="<?=$_GET['contactId']?>" name="contactId" class="form-control" readonly>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Email</label>
                            <div class="col-sm-10">
                                <input type="email" value="<?=$email['email'] ?? '' ?>" name="email" class="form-control">
                            </div>
                        </div>
                        <div class="form-group row">
                            <input type="submit"  class="btn btn-success" value="Save">
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </div>
<?php
include_once __DIR__."/../footer.php";
?>