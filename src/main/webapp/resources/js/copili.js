var searchTerms = [
   { value: 'Migración (Frontera México-EEUU)', data: 'migracion' },
   { value: 'Migración (África-Europa)', data: 'migracion' },
   { value: 'Migración (Sureste Asiático)', data: 'migracion' },
   { value: 'Migración (Australia)', data: 'migracion' },
   { value: 'Migración (Japón)', data: 'migracion' },
   { value: 'Migración - Tráfico sexual', data: 'migracion' },
   { value: 'Migración - Niños', data: 'migracion' },
   { value: 'Migración - Salud', data: 'migracion' },
   { value: 'Migración - Drogas y narcotáfico', data: 'migracion' },
   { value: 'Migración - Refugiados', data: 'migracion' },
];

jQuery('#searchTerms').autocomplete({
    lookup: searchTerms,
    onSelect: function (suggestion) {
    }
});


$(function () {
    var parent = $("#copi-container");
    var divs = parent.children();
    while (divs.length) {
        parent.append(divs.splice(Math.floor(Math.random() * divs.length), 1)[0]);
    }
});

function search() {
    jQuery('#searchForm').submit();
}

function loadTerm(term) {	
	jQuery('#searchTerms').val(term);
}

function filterBySection(section) {
	console.log('filterBySection:' + section);
	if('all'==section) {
        jQuery('#current-section').html('Aprende / Experiencia / Cambio');
        jQuery('#current-section').css('color', '#000');
		jQuery('#breadcrumb-section > a').html('');
		showCopis('learn');
		showCopis('experience');
		showCopis('change');
	}
	if('learn'==section) {
        jQuery('#current-section').html('Aprende');
        jQuery('#current-section').css('color', '#3497d9');
        jQuery('#breadcrumb-section > a').html('Aprende');
        jQuery('#breadcrumb-section > a').css( 'color', '#3497d9' );
        jQuery('#menu-learn').css('opacity', 1);
        jQuery('#menu-experience').css('opacity', 0.5);
        jQuery('#menu-change').css('opacity', 0.5);
		hideCopis('experience');
		hideCopis('change');
		showCopis('learn');
	}
	if('experience'==section) {
        jQuery('#current-section').html('Experiencia');
        jQuery('#current-section').css('color', '#f0c311');
		jQuery('#breadcrumb-section > a').html('Experiencia');
        jQuery('#breadcrumb-section > a').css( 'color', '#f0c311' );
        jQuery('#menu-learn').css('opacity', 0.5);
        jQuery('#menu-experience').css('opacity', 1);
        jQuery('#menu-change').css('opacity', 0.5);
		hideCopis('learn');
		hideCopis('change');
		showCopis('experience');
	}
	if('change'==section) {
        jQuery('#current-section').html('Cambio');
        jQuery('#current-section').css('color', '#e64a3c');
		jQuery('#breadcrumb-section > a').html('Cambio');
        jQuery('#breadcrumb-section > a').css( 'color', '#e64a3c' );
        jQuery('#menu-learn').css('opacity', 0.5);
        jQuery('#menu-experience').css('opacity', 0.5);
        jQuery('#menu-change').css('opacity', 1);
		hideCopis('learn');
		hideCopis('experience');
		showCopis('change');
	}
}

function hideCopis(section) {
	console.log('hideCopis:' + section);
	if('learn'==section) {
		jQuery('.copi.learn').hide(100);
	}
	if('experience'==section) {
		jQuery('.copi.experience').hide(100);
	}
	if('change'==section) {
		jQuery('.copi.change').hide(100);
	}
}

function showCopis(section) {
	console.log('showCopis:' + section);
	if('learn'==section) {
		jQuery('.copi.learn').fadeIn();
	}
	if('experience'==section) {
		jQuery('.copi.experience').fadeIn();
	}
	if('change'==section) {
		jQuery('.copi.change').fadeIn();
	}
}