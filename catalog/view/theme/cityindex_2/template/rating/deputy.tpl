<?php echo $header; ?>
<section class="wrap_block mt-6 article_block">
    <div class="container">

        <div class="row hidden">
            <div class="col-xs-12 ">
                <ol class="breadcrumb article_block__breadcrumb">
                    <li><a href="#">Главная</a></li>
                    <li><a href="#">медиа</a></li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 ">
                <h1 class="article_block__title robo_bold">Рейтинг заметности депутатов Мосгордумы</h1>
                <p class="module-subtitle">Исследовательский центр Cityindex подготовил рейтинг заметности депутатов Мосгордумы на основе упоминаний в социальных медиа за март 2016 года.
                <br> <a href="#" type="button" data-toggle="modal" data-target="#metod">Методика составления рейтинга.</a>
                 <br>
                </p>
                <div class="link-bottom hidden"> <a class="to-top-link " href="#about_ret" data-toggle="tooltip" title="пояснения к рейтингу">
                    <i class="fa fa-angle-down"></i>
                </a>
            </div>
        </div>

              <div class="row">
                    <div class="col-sm-12">
                        <div class="text-center m-b-60">
                            <table class="table table-bordered reiting__table">
                                <thead>
                                    <tr>
                                        <th>№</th>
                                        <th class="hidden">Динамика
                                            <div class="tolbar-box" data-toggle="tooltip" title="Изменение позиции объекта в рейтинге по сравнению с предыдущим периодом" data-placement="top"></div>
                                        </th>
                                        <th>ФИО</th>
                                       <!--  <th>Фракция</th> -->
                                        <th>
                                            <div class="tolbar-box" data-toggle="tooltip" title="Суммарный охват первичных сообщений и репостов, без учета пересечений аудиторий" data-placement="top"></div>Суммарный охват сообщений</th>
                                        <th>
                                            <div class="tolbar-box" data-toggle="tooltip" title="Количество социальных действий: Likes + Shares + Comments" data-placement="top"></div>Суммарное число СД</th>
                                        <th class="active">Индекс заметности</th>
                                    </tr>
                                </thead>
                                <tbody>

                                  <?php if(!empty($list)){ ?>
                                   <?php $i = 1; ?>
                                    <?php foreach ($list as $vl) { ?>
                                      <tr>
                                        <th scope="row"><?php echo $i;?></th>
                                        <td class="hidden"><?php echo $vl['object_positionChange'];?></td>
                                        <td class="title__table"><?php echo $vl['object_name'];?><div class="tolbar-box" data-toggle="tooltip" title="<?php echo $vl['object_description'];?>" data-placement="top" ></div></td>
                                       <!--  <td><?php echo $vl['object_description'];?></td> -->
                                        <td><?php echo $vl['object_total_posts_coverage'];?></td>
                                        <td><?php echo $vl['object_total_social']; ?></td>
                                        <td class="active"><?php echo $vl['object_index'];?></td>
                                      </tr>
                                    <?php $i++;} ?>
                                  <?php } ?>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>


            </div>
</section>



        <div class="modal fade " id="metod" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content modal-custom">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Методика составления рейтинга</h4>
                    </div>
                    <div class="modal-body">
                        <div class="panel-body">
                            Индекс заметности объекта в социальных медиа рассчитывается на основе двух показателей: совокупного охвата всех сообщений с упоминаниями этого объекта и количества социальных действий пользователей, связанных с объектом (репостов соответствующих сообщений, комментариев к ним, лайков и других). Для расчёта индекса на первом этапе вычисляется общий аудиторный охват всех сообщений с упоминаниями объекта и его соотношение с суммой всех социальных действий, сгенерированных данными сообщениями. В зависимости от величины этого соотношения объекту присваивается весовой коэффициент. На втором этапе данный весовой коэффициент применяется к общему аудиторному охвату сообщений с упоминаниями объекта, после чего и вычисляется средний индекс заметности объекта в социальных медиа в рассматриваемый период.
                        </div>
                    </div>
                </div>
            </div>
        </div>
<?php echo $content_bottom; ?>

<?php echo $footer; ?>
