T = readtable('data.csv', 'Format', 'auto');
T = fillmissing(T, 'constant', 0, 'DataVariables', {'casi_da_sospetto_diagnostico', 'casi_da_screening', 'casi_testati'});
T = removevars(T, {'data', 'stato', 'note', 'ingressi_terapia_intensiva', 'note_test', 'note_casi', 'totale_positivi_test_molecolare', 'totale_positivi_test_antigenico_rapido', 'tamponi_test_molecolare', 'tamponi_test_antigenico_rapido'});
Italia = table2array(T);

Italia=[ones(length(Italia),1) Italia];

%%%%% DATI %%%% 

POS=Italia(:,6);
ICU=Italia(:,3);
OSP=Italia(:,4);
GUA=Italia(:,9);
MOR=Italia(:,10);
NEWPOS=Italia(:,8);
NEWDEATHS=diff(Italia(:,10));
