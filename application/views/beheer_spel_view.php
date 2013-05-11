<div class='container pagina'>

	<div class='row tekst'>
		<div class='span9'>
			<header class="jumbotron subhead">
				<h1><?php echo $titel; ?></h1>
			</header>
		</div>
	</div>

	<div class='row'>
		<div class='span4 offset3 form-search'>
			<?php $attributes = array('class' => 'form-horizontal');
			echo form_open('beheer/spel', $attributes); ?>
				<input type="text" id="search" name="search" placeholder="Spelnaam" value="<?php echo $search; ?>">
				<div class="btn-group">
					<button type="submit" class="btn">Go</button>
					<button class="btn dropdown-toggle" data-toggle="dropdown">
						<span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li>Titel</li>
						<li>Speltak</li>
						<li>Duur</li>
						<li>Deelnemers</li>
						<li>Leiding</li>
					</ul>
				</div>
			</form>
		</div>
	</div>


	<div class='row'>    
		<table class="table table-hover span7 offset2">
        
        	<thead>
          		<tr>
            		<th></th>
            		<th>Spelnaam</th>
            		<th>Speltak</th>
            		<th>Duur</th>
            		<th>Min deelnemers</th>
            		<th>Max deelnemers</th>
           			<th>Leiding</th>
            		<th>Jota</th>
            		<th>Joti</th>
          		</tr>
	        </thead>

			<tbody>
				<?php foreach ($spelen as $spel) { ?>
				<tr>
					<td><a href="<?php echo base_url(); ?>beheer/spel/<?php echo $spel['id']; ?>" data-toggle="modal"><span class="badge badge-info"><i class="icon-pencil icon-white"></i></span></a>
						<a href="<?php echo base_url(); ?>beheer/verwijder/spel/<?php echo $spel['id']; ?>"><span class="badge badge-important"><i class="icon-remove icon-white"></i></span></a>
					</td>
					<td><?php echo $spel['titel'];?></td>
					<td></td>
					<td><?php echo $spel['duur'];?></td>
					<td><?php echo $spel['min_spelers'];?></td>
					<td><?php echo $spel['max_spelers'];?></td>
					<td><?php echo $spel['leiding'];?></td>
					<td><?php echo $spel['jota'];?></td>
					<td><?php echo $spel['joti'];?></td>

				</tr>
				<?php } ?>

			</tbody>

    	</table>

</div>