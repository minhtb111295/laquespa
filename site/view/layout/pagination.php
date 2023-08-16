<ul class='pagination justify-content-center mb-0'>
    <li class='page-item'><a class='page-link'>Page <?= $page ?> / <?= $totalPages ?></a></li>
    <li class='page-item <?= $page == 1 ? 'disabled' : '' ?>'><a class='page-link' href="javascript:void(0)" onclick="gotoPage(<?= $page - 1 ?>)">Previous</a></li>
    <?php for ($i = 1; $i <= $totalPages; $i++) : ?>
        <li class='page-item <?= $page == $i ? 'active' : '' ?>'><a class='page-link' href="javascript:void(0)" onclick="gotoPage(<?= $i ?>)"><?= $i ?></a></li>
    <?php endfor ?>
    <li class='page-item <?= $page == $totalPages ? 'disabled' : '' ?>'><a class='page-link' href="javascript:void(0)" onclick="gotoPage(<?= $page + 1 ?>)">Next</a></li>
    <li class='page-item <?= $page == $totalPages ? 'disabled' : '' ?>'><a class='page-link' href="javascript:void(0)" onclick="gotoPage(<?= $totalPages ?>)">Last</a></li>
</ul>