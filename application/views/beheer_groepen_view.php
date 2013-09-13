<script type="text/javascript">
    $(document).ready(function() {
        $("#groepen_beheer").tablesorter();
    }); 
</script>
<div class='container pagina'>
	<div class='row-fluid tekst'>
		<div class='span7 offset1'>
			<header class="jumbotron subhead">
				<h1><?php echo $titel; ?></h1>
			</header>
		</div>
	</div>

	<div class='row-fluid'>
		<div class='span4 offset3 form-search'>
			<?php $attributes = array('class' => 'form-horizontal');
			echo form_open('beheer/groep', $attributes); ?>
				<input type="text" id="search" name="search" placeholder="Groepsnaam" value="<?php echo $search; ?>">
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


    <div class='row-fluid'>
		<div class='span10 offset1'>
		<!-- <table id="spellen_beheer" class="table table-hover tablesorter"> -->
		<table id="groepen_beheer" class="table tablesorter">
        
        	<thead>
          		<tr>
            		<th></th>
            		<th>Groepsnaam</th>
            		<th>Email</th>
            		<th>Jota</th>
            		<th>Joti</th>
          		</tr>
	        </thead>

			<tbody>
				<?php foreach ($groepen as $groep) { ?>
				<tr>
					<td><a href="<?php echo base_url(); ?>beheer/groep/<?php echo $spel['id']; ?>" data-toggle="modal"><span class="badge badge-info"><i class="icon-pencil icon-white"></i></span></a>
						<a href="<?php echo base_url(); ?>beheer/verwijder/groep/<?php echo $groep['id']; ?>"><span class="badge badge-important"><i class="icon-remove icon-white"></i></span></a>
					</td>
					<td><?php echo $spel['naam'];?></td>
					<td><?php // if (isset($speltakken[$spel['id']])) { echo $speltakken[$spel['id']]; } else { echo "-"; }?></td>
					<td><?php if ($spel['jota'] > 0) { ?><i class="icon-ok"></i><?php } ;?></td>
					<td><?php if ($spel['joti'] > 0) { ?><i class="icon-ok"></i><?php } ;?></td>

				</tr>
				<?php } ?>

			</tbody>

    	</table>
    	</div>

    </div>

</div>
