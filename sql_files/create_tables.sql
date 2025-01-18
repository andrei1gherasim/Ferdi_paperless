CREATE DATABASE "Ferdi"
    WITH
    OWNER = paperless
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- Table: PAYS
CREATE TABLE PAYS (
    "PaysCode" VARCHAR PRIMARY KEY,
    "PaysComplet" VARCHAR
);

INSERT INTO PAYS ("PaysCode", "PaysComplet") VALUES
    ('AGO', 'Angola'),
    ('BEN', 'Bénin'),
    ('BFA', 'Burkina Faso'),
    ('CMR', 'Cameroun'),
    ('CAF', 'Centrafrique'),
    ('COG', 'Congo (République du)'),
    ('COD', 'Congo (République Démocratique du)'),
    ('CIV', 'Côte d''Ivoire'),
    ('GAB', 'Gabon'),
    ('GHA', 'Ghana'),
    ('GIN', 'Guinée (Conakry)'),
    ('KEN', 'Kenya'),
    ('LBR', 'Liberia'),
    ('MDG', 'Madagascar'),
    ('MLI', 'Mali'),
    ('MRT', 'Mauritanie'),
    ('MOZ', 'Mozambique'),
    ('NER', 'Niger'),
    ('NGA', 'Nigeria'),
    ('SEN', 'Sénégal'),
    ('SLE', 'Sierra Leone'),
    ('ZAF', 'Afrique du Sud'),
    ('TZA', 'Tanzanie'),
    ('TCD', 'Tchad'),
    ('ZWE', 'Zimbabwe');

-- Table: ANNEES
CREATE TABLE ANNEES (
    "AnnéeCode" VARCHAR PRIMARY KEY,
    "AnnéeComplet" VARCHAR
);

INSERT INTO ANNEES ("AnnéeCode", "AnnéeComplet") VALUES
    ('1900', '1900'),
    ('1901', '1901'),
    ('1902', '1902'),
    ('1903', '1903'),
    ('1904', '1904'),
    ('1905', '1905'),
    ('1906', '1906'),
    ('1907', '1907'),
    ('1908', '1908'),
    ('1909', '1909'),
    ('1910', '1910'),
    ('1911', '1911'),
    ('1912', '1912'),
    ('1913', '1913'),
    ('1914', '1914'),
    ('1915', '1915'),
    ('1916', '1916'),
    ('1917', '1917'),
    ('1918', '1918'),
    ('1919', '1919'),
    ('1920', '1920'),
    ('1921', '1921'),
    ('1922', '1922'),
    ('1923', '1923'),
    ('1924', '1924'),
    ('1925', '1925'),
    ('1926', '1926'),
    ('1927', '1927'),
    ('1928', '1928'),
    ('1929', '1929'),
    ('1930', '1930'),
    ('1931', '1931'),
    ('1932', '1932'),
    ('1933', '1933'),
    ('1934', '1934'),
    ('1935', '1935'),
    ('1936', '1936'),
    ('1937', '1937'),
    ('1938', '1938'),
    ('1939', '1939'),
    ('1940', '1940'),
    ('1941', '1941'),
    ('1942', '1942'),
    ('1943', '1943'),
    ('1944', '1944'),
    ('1945', '1945'),
    ('1946', '1946'),
    ('1947', '1947'),
    ('1948', '1948'),
    ('1949', '1949'),
    ('1950', '1950'),
    ('1951', '1951'),
    ('1952', '1952'),
    ('1953', '1953'),
    ('1954', '1954'),
    ('1955', '1955'),
    ('1956', '1956'),
    ('1957', '1957'),
    ('1958', '1958'),
    ('1959', '1959'),
    ('1960', '1960'),
    ('1961', '1961'),
    ('1962', '1962'),
    ('1963', '1963'),
    ('1964', '1964'),
    ('1965', '1965'),
    ('1966', '1966'),
    ('1967', '1967'),
    ('1968', '1968'),
    ('1969', '1969'),
    ('1970', '1970'),
    ('1971', '1971'),
    ('1972', '1972'),
    ('1973', '1973'),
    ('1974', '1974'),
    ('1975', '1975'),
    ('1976', '1976'),
    ('1977', '1977'),
    ('1978', '1978'),
    ('1979', '1979'),
    ('1980', '1980'),
    ('1981', '1981'),
    ('1982', '1982'),
    ('1983', '1983'),
    ('1984', '1984'),
    ('1985', '1985'),
    ('1986', '1986'),
    ('1987', '1987'),
    ('1988', '1988'),
    ('1989', '1989'),
    ('1990', '1990'),
    ('1991', '1991'),
    ('1992', '1992'),
    ('1993', '1993'),
    ('1994', '1994'),
    ('1995', '1995'),
    ('1996', '1996'),
    ('1997', '1997'),
    ('1998', '1998'),
    ('1999', '1999'),
    ('2000', '2000'),
    ('2001', '2001'),
    ('2002', '2002'),
    ('2003', '2003'),
    ('2004', '2004'),
    ('2005', '2005'),
    ('2006', '2006'),
    ('2007', '2007'),
    ('2008', '2008'),
    ('2009', '2009'),
    ('2010', '2010'),
    ('2011', '2011'),
    ('2012', '2012'),
    ('2013', '2013'),
    ('2014', '2014'),
    ('2015', '2015'),
    ('2016', '2016'),
    ('2017', '2017'),
    ('2018', '2018'),
    ('2019', '2019'),
    ('2020', '2020'),
    ('2021', '2021'),
    ('2022', '2022'),
    ('2023', '2023'),
    ('2024', '2024'),
    ('Vigueur', 'En vigueur');

-- Table: BLOCS_LEGAUX
CREATE TABLE BLOCS_LEGAUX (
    "BlocLégalCode" VARCHAR PRIMARY KEY,
    "BlocLégalComplet" VARCHAR
);

INSERT INTO BLOCS_LEGAUX ("BlocLégalCode", "BlocLégalComplet") VALUES
    ('Lég', 'Législation'),
    ('Rég', 'Réglementation'),
    ('Conv', 'Convention');

-- Table: TEXTES_LEGAUX_STANDARDS
CREATE TABLE TEXTES_LEGAUX_STANDARDS (
    "TexteLégalStandardCode" VARCHAR PRIMARY KEY,
    "BlocLégalCode" VARCHAR REFERENCES BLOCS_LEGAUX("BlocLégalCode"),
    "TexteLégalStandardCodeCourt" VARCHAR,
    "TexteLégalStandardComplet" VARCHAR
);

INSERT INTO TEXTES_LEGAUX_STANDARDS ("TexteLégalStandardCode", "BlocLégalCode", "TexteLégalStandardCodeCourt", "TexteLégalStandardComplet") VALUES
    ('Lég_Loi', 'Lég', 'Loi', 'Loi'),
    ('Lég_Ordonnance', 'Lég', 'Ordonnance', 'Ordonnance'),
    ('Rég_Décret', 'Rég', 'Décret', 'Décret'),
    ('Rég_Arrêté', 'Rég', 'Arrêté', 'Arrêté'),
    ('Rég_Circulaire', 'Rég', 'Circulaire', 'Circulaire');

-- Table: TEXTES_LEGAUX_EXACTS
CREATE TABLE TEXTES_LEGAUX_EXACTS (
    "TexteLégalExactCode" VARCHAR PRIMARY KEY,
    "TexteLégalStandardCode" VARCHAR REFERENCES TEXTES_LEGAUX_STANDARDS("TexteLégalStandardCode"),
    "TexteLégalExactCodeCourt" VARCHAR,
    "TexteLégalExactComplet" VARCHAR
);

INSERT INTO TEXTES_LEGAUX_EXACTS ("TexteLégalExactCode", "TexteLégalStandardCode", "TexteLégalExactCodeCourt", "TexteLégalExactComplet") VALUES
    ('Lég_Loi_Loi', 'Lég_Loi', 'Loi', 'Loi'),
    ('Lég_Ordonnance_Ordonnance', 'Lég_Ordonnance', 'Ordonnance', 'Ordonnance'),
    ('Lég_Ordonnance_OrdonnanceLoi', 'Lég_Ordonnance', 'OrdonnanceLoi', 'Ordonnance-Loi'),
    ('Rég_Décret_Décret', 'Rég_Décret', 'Décret', 'Décret'),
    ('Rég_Décret_DécretLoi', 'Rég_Décret', 'DécretLoi', 'Décret-Loi'),
    ('Rég_Arrêté_Arrêté', 'Rég_Arrêté', 'Arrêté', 'Arrêté'),
    ('Rég_Arrêté_ArrêtéMin', 'Rég_Arrêté', 'ArrêtéMin', 'Arrêté ministériel'),
    ('Rég_Arrêté_ArrêtéInterMin', 'Rég_Arrêté', 'ArrêtéInterMin', 'Arrêté interministériel'),
    ('Rég_Circulaire_Circulaire', 'Rég_Circulaire', 'Circulaire', 'Circulaire'),
    ('Lég_Loi_Act', 'Lég_Loi', 'Act', 'Act'),
    ('Lég_Loi_Law', 'Lég_Loi', 'Law', 'Law'),
    ('Lég_Loi_Ordinance', 'Lég_Ordonnance', 'Ordinance', 'Ordinance'),
    ('Rég_Décret_Decree', 'Rég_Décret', 'Decree', 'Decree'),
    ('Rég_Décret_SI', 'Rég_Décret', 'SI', 'Statutory Instrument'),
    ('Rég_Décret_LegisI', 'Rég_Décret', 'LegisI', 'Legislation Instrument'),
    ('Rég_Décret_LegalI', 'Rég_Décret', 'LegalI', 'Legal Instrument'),
    ('Rég_Décret_GN', 'Rég_Décret', 'GN', 'Government Notice'),
    ('Rég_Décret_LN', 'Rég_Décret', 'LN', 'Legal Notice'),
    ('Rég_Arrêté_Order', 'Rég_Arrêté', 'Order', 'Order');

-- Table: REGIMES
CREATE TABLE REGIMES (
    "RégimeCode" VARCHAR PRIMARY KEY,
    "RégimeComplet" VARCHAR
);

INSERT INTO REGIMES ("RégimeCode", "RégimeComplet") VALUES
    ('_Gen', 'Régime général'),
    ('_Invest', 'Régime des investissements'),
    ('_Min', 'Régime minier'),
    ('_Pétrol', 'Régime pétrolier'),
    ('_Gaz', 'Régime gazier'),
    ('_Forest', 'Régime forestier');

-- Table: TEXTES_FISCAUX_STANDARDS
CREATE TABLE TEXTES_FISCAUX_STANDARDS (
    "TexteFiscStandardCode" VARCHAR PRIMARY KEY,
    "RégimeCode" VARCHAR REFERENCES REGIMES("RégimeCode"),
    "TexteFiscStandardCodeCourt" VARCHAR,
    "TexteFiscStandardComplet" VARCHAR
);

INSERT INTO TEXTES_FISCAUX_STANDARDS ("TexteFiscStandardCode", "RégimeCode", "TexteFiscStandardCodeCourt", "TexteFiscStandardComplet") VALUES
    ('_Gen_CGI', '_Gen', '_CGI', 'Code général des impôts'),
    ('_Gen_IT', '_Gen', '_IT', 'Impôt sur le revenu'),
    ('_Gen_VAT', '_Gen', '_VAT', 'Taxe sur la valeur ajoutée'),
    ('_Gen_NHI', '_Gen', '_NHI', 'Assurance maladie nationale'),
    ('_Gen_LF', '_Gen', '_LF', 'Loi de finances'),
    ('_Invest_CI', '_Invest', '_CI', 'Code des investissement'),
    ('_Min_CM', '_Min', '_CM', 'Code minier'),
    ('_Pétrol_CP', '_Pétrol', '_CP', 'Code pétrolier'),
    ('_Gaz_CG', '_Gaz', '_CGI', 'Code gazier'),
    ('_Forest_CF', '_Forest', '_CF', 'Code forestier');

-- Table: TEXTES_FISCAUX_EXACTS
CREATE TABLE TEXTES_FISCAUX_EXACTS (
    "TexteFiscExactCode" VARCHAR PRIMARY KEY,
    "TexteFiscStandardCode" VARCHAR REFERENCES TEXTES_FISCAUX_STANDARDS("TexteFiscStandardCode"),
    "TexteFiscExactCodeCourt" VARCHAR,
    "TexteFiscExactComplet" VARCHAR
);

INSERT INTO TEXTES_FISCAUX_EXACTS ("TexteFiscExactCode", "TexteFiscStandardCode", "TexteFiscExactCodeCourt", "TexteFiscExactComplet") VALUES
	('_Gen_CGI_CGI', '_Gen_CGI', '_CGI', 'Code général des impôts'),
	('_Gen_CGI_CGImodif', '_Gen_CGI', '_CGImodif', 'Modification du Code général des impôts'),
	('_Gen_CGI_CGImodifModif', '_Gen_CGI', '_CGImodifModif', 'Modification de la Modification du Code général des impôts'),
	('_Gen_CGI_CGIamendé', '_Gen_CGI', '_CGIamendé', 'Code général des impôts amendé'),
	('_Gen_CGI_CGIappli', '_Gen_CGI', '_CGIappli', 'Application du Code général des impôts'),
	('_Gen_CGI_CGIappliModif', '_Gen_CGI', '_CGIappliModif', 'Modification de l''Application du Code général des impôts'),
	('_Gen_CGI_CGIsuppl', '_Gen_CGI', '_CGIsuppl', 'Supplément au Code général des impôts'),
	('_Gen_CGI_CGIsupplAppli', '_Gen_CGI', '_CGIsupplAppli', 'Application du Supplément au Code général des impôts'),
	('_Gen_CGI_CGIone', '_Gen_CGI', '_CGIone', 'Code des impôts directs et indirects'),
	('_Gen_CGI_CGIoneModif', '_Gen_CGI', '_CGIoneModif', 'Modification du Code des impôts directs et indirects'),
	('_Gen_CGI_CGIoneAmendé', '_Gen_CGI', '_CGIoneAmendé', 'Code des impôts directs et indirects amendé'),
	('_Gen_CGI_CGIbis', '_Gen_CGI', '_CGIbis', 'Code de l''enregistrement, du timbre et de l''impôt sur le revenu des capitaux mobiliers'),
	('_Gen_CGI_CGIbisModif', '_Gen_CGI', '_CGIbisModif', 'Modification du Code de l''enregistrement, du timbre et de l''impôt sur le revenu des capitaux mobiliers'),
	('_Gen_CGI_CGIbisAmendé', '_Gen_CGI', '_CGIbisAmendé', 'Code de l''enregistrement, du timbre et de l''impôt sur le revenu des capitaux mobiliers amendé'),
	('_Gen_CGI_CGIproced', '_Gen_CGI', '_CGIproced', 'Livre de procédures fiscales'),
	('_Gen_CGI_CGIprocedModif', '_Gen_CGI', '_CGIprocedModif', 'Modification du Livre de procédures fiscales'),
	('_Gen_CGI_CGIprocedAmendé', '_Gen_CGI', '_CGIprocedAmendé', 'Livre de procédures fiscales amendé'),
	('_Gen_CGI_IS', '_Gen_CGI', '_IS', 'Impôt sur les sociétés'),
	('_Gen_CGI_ISmodif', '_Gen_CGI', '_ISmodif', 'Modification de l''Impôt sur les sociétés'),
	('_Gen_CGI_ISamendé', '_Gen_CGI', '_ISamendé', 'Impôt sur les sociétés amendé'),
	('_Gen_CGI_FondsLogement', '_Gen_CGI', '_FondsLogement', 'Fonds logement'),
	('_Gen_CGI_FondsLogementAppli', '_Gen_CGI', '_FondsLogementAppli', 'Application du Fonds logement'),
	('_Gen_CGI_TaxeLogement', '_Gen_CGI', '_TaxeLogement', 'Taxe logement'),
	('_Gen_CGI_TaxeLogementAppli', '_Gen_CGI', '_TaxeLogementAppli', 'Application de la Taxe logement'),
	('_Gen_CGI_TVA', '_Gen_CGI', '_TVA', 'Taxe sur la valeur ajoutée'),
	('_Gen_CGI_CPS', '_Gen_CGI', '_CPS', 'Contribution pour prestation de services rendus'),
	('_Gen_CGI_CPSmodif', '_Gen_CGI', '_CPSmodif', 'Modification de la Contribution pour prestation de services rendus'),
	('_Gen_CGI_ISCP', '_Gen_CGI', '_ISCP', 'Impôt spécial sur certains produits'),
	('_Gen_CGI_ISCPmodif', '_Gen_CGI', '_ISCPmodif', 'Modification de l''Impôt spécial sur certains produits'),
	('_Gen_IT_IT', '_Gen_IT', '_IT', 'Impôt sur les revenus'),
	('_Gen_IT_ITmodif', '_Gen_IT', '_ITmodif', 'Modification de l''Impôt sur les revenus'),
	('_Gen_IT_ITamendé', '_Gen_IT', '_ITamendé', 'Impôt sur les revenus amendé'),
	('_Gen_IT_ITappli', '_Gen_IT', '_ITappli', 'Application de l''Impôt sur les revenus'),
	('_Gen_IT_ITappliModif', '_Gen_IT', '_ITappliModif', 'Modification de l''Application de l''Impôt sur les revenus'),
	('_Gen_VAT_VAT', '_Gen_VAT', '_VAT', 'Taxe sur la valeur ajoutée'),
	('_Gen_VAT_VATmodif', '_Gen_VAT', '_VATmodif', 'Modification de la Taxe sur la valeur ajoutée'),
	('_Gen_VAT_VATamandé', '_Gen_VAT', '_VATamandé', 'Taxe sur la valeur ajoutée amendé'),
	('_Gen_VAT_VATappli', '_Gen_VAT', '_VATappli', 'Application de la Taxe sur la valeur ajoutée'),
	('_Gen_VAT_VATappliModif', '_Gen_VAT', '_VATappliModif', 'Modification de l''Application de la Taxe sur la valeur ajoutée'),
	('_Gen_LF_LOLF', '_Gen_LF', '_LOLF', 'Loi organique relative aux lois de finances'),
	('_Gen_LF_LOLFmodif', '_Gen_LF', '_LOLFmodif', 'Modification de la Loi organique relative aux lois de finances'),
	('_Gen_LF_LF', '_Gen_LF', '_LF', 'Loi de finances'),
	('_Gen_LF_LFmodif', '_Gen_LF', '_LFmodif', 'Modification de la Loi de finances'),
	('_Gen_LF_LFratif', '_Gen_LF', '_LFratif', 'Ratification de la Loi de finances'),
	('_Gen_LF_LFR', '_Gen_LF', '_LFR', 'Loi de finances rectificative'),
	('_Gen_LF_LFRmodif', '_Gen_LF', '_LFRmodif', 'Modification de la Loi de finances rectificative'),
	('_Gen_LF_LFRratif', '_Gen_LF', '_LFRratif', 'Ratification de la Loi de finances rectificative'),
	('_Gen_LF_LFappli', '_Gen_LF', '_LFappli', 'Application de la Loi de finances'),
	('_Gen_LF_LFappliModif', '_Gen_LF', '_LFappliModif', 'Modification de l''Application de la Loi de finances'),
	('_Min_CM_CM', '_Min_CM', '_CM', 'Code minier'),
	('_Min_CM_CMmodif', '_Min_CM', '_CMmodif', 'Modification du Code minier'),
	('_Min_CM_CMamendé', '_Min_CM', '_CMamendé', 'Code minier amendé'),
	('_Min_CM_CMratif', '_Min_CM', '_CMratif', 'Ratification du Code minier'),
	('_Min_CM_CMappli', '_Min_CM', '_CMappli', 'Application du Code minier'),
	('_Min_CM_CMappliModif', '_Min_CM', '_CMappliModif', 'Modification de l''Application du Code minier'),
	('_Min_CM_CMconv', '_Min_CM', '_CMconv', 'Convention minière type'),
	('_Min_CM_CMconvModif', '_Min_CM', '_CMconvModif', 'Modification de la Convention minière type'),
	('_Min_CM_CMfisc', '_Min_CM', '_CMfisc', 'Fiscalité minière'),
	('_Min_CM_CMfiscModif', '_Min_CM', '_CMfiscModif', 'Modification de la Fiscalité minière'),
	('_Min_CM_CMsuppl', '_Min_CM', '_CMsuppl', 'Supplément au Code minier'),
	('_Min_CM_CMitie', '_Min_CM', '_CMitie', 'Initiative pour la Transparence dans les Industries Extractives'),
	('_Pétrol_CP_CP', '_Pétrol_CP', '_CP', 'Code pétrolier'),
	('_Pétrol_CP_CPmodif', '_Pétrol_CP', '_CPmodif', 'Modification du Code pétrolier'),
	('_Pétrol_CP_CPamendé', '_Pétrol_CP', '_CPamendé', 'Code pétrolier amendé'),
	('_Pétrol_CP_CPappli', '_Pétrol_CP', '_CPappli', 'Application du Code pétrolier'),
	('_Pétrol_CP_CPappliModif', '_Pétrol_CP', '_CPappliModif', 'Modification de l''Application du Code pétrolier'),
	('_Pétrol_CP_CPconv', '_Pétrol_CP', '_CPconv', 'Convention pétrolière type'),
	('_Pétrol_CP_CPconvModif', '_Pétrol_CP', '_CPconvModif', 'Modification de la Convention pétrolière type');

-- Table: TEXTES
CREATE TABLE TEXTES (
    "TexteCode" VARCHAR PRIMARY KEY,
    "PaysCode" VARCHAR REFERENCES PAYS("PaysCode"),
    "AnnéeCodeDébut" VARCHAR REFERENCES ANNEES("AnnéeCode"),
    "AnnéeCodeFin" VARCHAR REFERENCES ANNEES("AnnéeCode"),
    "TexteLégalExactCode" VARCHAR REFERENCES TEXTES_LEGAUX_EXACTS("TexteLégalExactCode"),
    "TexteFiscExactCode" VARCHAR REFERENCES TEXTES_FISCAUX_EXACTS("TexteFiscExactCode"),
    "TexteCodeArborescence" VARCHAR REFERENCES TEXTES("TexteCode"),
    "TexteCourt" VARCHAR,
    "TexteComplet" VARCHAR
);

-- Table: ASSOCIATIONS
CREATE TABLE ASSOCIATIONS (
    "AssociationCode" VARCHAR PRIMARY KEY,
    "AssociationComplet" VARCHAR
);

INSERT INTO ASSOCIATIONS ("AssociationCode", "AssociationComplet") VALUES
	('_TextePrincipal', 'Texte principal'),
	('_RatifiéPar', 'Ratifié par'),
	('_Abroge', 'Abroge'),
	('_Ratifie', 'Ratifie'),
	('_ModifiéPar', 'Modifié par'),
	('_Modifie', 'Modifie'),
	('_TexteDAppli', 'Texte d''application'),
	('_AbrogéPar', 'Abrogé par');

-- Table: ASSOCIATIONS_DES_TEXTES
CREATE TABLE ASSOCIATIONS_DES_TEXTES (
    "TexteAssociationCode" VARCHAR PRIMARY KEY,
    "TexteCode" VARCHAR REFERENCES TEXTES("TexteCode"),
    "AssociationCode" VARCHAR REFERENCES ASSOCIATIONS("AssociationCode"),
    "TexteAssociationNuméro" INT,
    "TexteCibleCode" VARCHAR REFERENCES TEXTES("TexteCode"),
    "TexteCibleArticle" VARCHAR
);

-- Table: SOURCES_DES_TEXTES
CREATE TABLE SOURCES_DES_TEXTES (
    "TexteSourcesCode" VARCHAR PRIMARY KEY,
    "TexteCode" VARCHAR REFERENCES TEXTES("TexteCode"),
    "TexteSourceNuméro" INT,
    "TexteSourceNom" VARCHAR,
    "TexteSourceLien" VARCHAR
);

-- Table: CITATIONS_DES_TEXTES
CREATE TABLE CITATIONS_DES_TEXTES (
    "TexteCitationCode" VARCHAR PRIMARY KEY,
    "TexteCode" VARCHAR REFERENCES TEXTES("TexteCode"),
    "TexteCitationArticle" VARCHAR,
    "TexteCitationComplet" VARCHAR
);

-- Table: SOUS_REGIMES
CREATE TABLE SOUS_REGIMES (
    "SousRégimeCode" VARCHAR PRIMARY KEY,
    "RégimeCode" VARCHAR REFERENCES REGIMES("RégimeCode"),
    "SousRégimeComplet" VARCHAR
);

INSERT INTO SOUS_REGIMES ("SousRégimeCode", "RégimeCode", "SousRégimeComplet") VALUES
    ('_Gen_Gen', '_Gen', 'Régime général'),
    ('_Min_Rech', '_Min', 'Recherche minière'),
    ('_Min_Expl', '_Min', 'Exploitation minière'),
    ('_Pétrol_Rech', '_Pétrol', 'Recherche pétrolière'),
    ('_Pétrol_Expl', '_Pétrol', 'Exploitation pétrolière'),
    ('_Invest_ZoneFranche', '_Invest', 'Zone franche'),
    ('_Invest_Invest', '_Invest', 'Régime des investissements');

-- Table: SOUS_REGIMES_STANDARDS
CREATE TABLE SOUS_REGIMES_STANDARDS (
    "SousRégimeStandardCode" VARCHAR PRIMARY KEY,
    "SousRégimeCode" VARCHAR REFERENCES SOUS_REGIMES("SousRégimeCode"),
    "SousRégimeStandardComplet" VARCHAR
);

INSERT INTO SOUS_REGIMES_STANDARDS ("SousRégimeStandardCode", "SousRégimeCode", "SousRégimeStandardComplet") VALUES
    ('_Gen_Gen_Gen', '_Gen_Gen', 'Régime général'),
    ('_Min_Rech_Explor', '_Min_Rech', 'Autorisation d''exploration minière'),
    ('_Min_Rech_Prospect', '_Min_Rech', 'Autorisation de prospection minière'),
    ('_Min_Rech_Rech', '_Min_Rech', 'Permis de recherche minière'),
    ('_Min_Expl_ExplArtisan', '_Min_Expl', 'Autorisation d''exploitation minière artisanale'),
    ('_Min_Expl_ExplSemiMéca', '_Min_Expl', 'Autorisation d''exploitation minière semi-mécanisée'),
    ('_Min_Expl_ExplPetite', '_Min_Expl', 'Permis d''exploitation de petite mine'),
    ('_Min_Expl_ExplGrande', '_Min_Expl', 'Permis d''exploitation de grande mine'),
    ('_Min_Expl_ExplRejets', '_Min_Expl', 'Permis d''exploitation des rejets miniers'),
    ('_Pétrol_Rech_Prospect', '_Pétrol_Rech', 'Autorisation de prospection pétrolière'),
    ('_Pétrol_Rech_Explor', '_Pétrol_Rech', 'Permis d''exploration pétrolière'),
    ('_Pétrol_Expl_ExplProvisoire', '_Pétrol_Expl', 'Permis d''exploitation pétrolière provisoire'),
    ('_Pétrol_Expl_Expl', '_Pétrol_Expl', 'Permis d''exploitation pétrolière');

-- Table: SOUS_REGIMES_EXACTS
CREATE TABLE SOUS_REGIMES_EXACTS (
    "SousRégimeExactCode" VARCHAR PRIMARY KEY,
    "TexteCode" VARCHAR REFERENCES TEXTES("TexteCode"),
    "SousRégimeStandardCode" VARCHAR REFERENCES SOUS_REGIMES_STANDARDS("SousRégimeStandardCode"),
    "SousRégimeExactComplet" VARCHAR
);

-- Table: PERIODES
CREATE TABLE PERIODES (
    "PériodeCode" VARCHAR PRIMARY KEY,
    "PériodeComplet" VARCHAR
);

INSERT INTO PERIODES ("PériodeCode", "PériodeComplet") VALUES
    ('_Aucun', 'Aucun'),
    ('_AR', 'Attribution et renouvellements'),
    ('_AR_1', 'Première année de l''attribution et renouvellements'),
    ('_AR_2', 'Deuxième année de l''attribution et renouvellements'),
    ('_AR_3', 'Troisième année de l''attribution et renouvellements'),
    ('_AR_1à2', 'Deux premières années de l''attribution et renouvellements'),
    ('_AR_1à3', 'Trois premières années de l''attribution et renouvellements'),
    ('_A', 'Attribution'),
    ('_A_1', 'Première année de l''attribution'),
    ('_A_2', 'Deuxième année de l''attribution'),
    ('_A_3', 'Troisième année de l''attribution'),
    ('_A_1à2', 'Deux premières années de l''attribution'),
    ('_A_1à3', 'Trois premières années de l''attribution'),
    ('_R', 'Renouvellements'),
    ('_R_1', 'Première année des renouvellements'),
    ('_R_2', 'Deuxième année des renouvellements'),
    ('_R_3', 'Troisième année des renouvellements'),
    ('_R_1à2', 'Deux premières années des renouvellements'),
    ('_R_1à3', 'Trois premières années des renouvellements'),
    ('_R1', 'Premier renouvellement'),
    ('_R1_1', 'Première année du premier renouvellement'),
    ('_R1_2', 'Deuxième année du premier renouvellement'),
    ('_R1_3', 'Troisième année du premier renouvellement'),
    ('_R1_1à2', 'Deux premières années du premier renouvellement'),
    ('_R1_1à3', 'Trois premières années du premier renouvellement'),
    ('_R2', 'Deuxième renouvellement'),
    ('_R2_1', 'Première année du deuxième renouvellement'),
    ('_R2_2', 'Deuxième année du deuxième renouvellement'),
    ('_R2_3', 'Troisième année du deuxième renouvellement'),
    ('_R2_1à2', 'Deux premières années du deuxième renouvellement'),
    ('_R2_1à3', 'Trois premières années du deuxième renouvellement'),
    ('_R3', 'Troisième renouvellement'),
    ('_R3_1', 'Première année du troisième renouvellement'),
    ('_R3_2', 'Deuxième année du troisième renouvellement'),
    ('_R3_3', 'Troisième année du troisième renouvellement'),
    ('_R3_1à2', 'Deux premières années du troisième renouvellement'),
    ('_R3_1à3', 'Trois premières années du troisième renouvellement'),
    ('_C', 'Cession');

-- Table: PHASES
CREATE TABLE PHASES (
    "PhaseCode" VARCHAR PRIMARY KEY,
    "PhaseComplet" VARCHAR
);

INSERT INTO PHASES ("PhaseCode", "PhaseComplet") VALUES
    ('_Aucun', 'Aucun'),
    ('_RIE', 'Recherche, investissement ou exploitation'),
    ('_R', 'Recherche'),
    ('_R_1', 'Première année de recherche'),
    ('_R_2', 'Deuxième année de recherche'),
    ('_R_3', 'Troisième année de recherche'),
    ('_R_1à2', 'Deux premières années de recherche'),
    ('_R_1à3', 'Trois premières années de recherche'),
    ('_I', 'Investissement'),
    ('_I_1', 'Première année de l''investissement'),
    ('_I_2', 'Deuxième année de l''investissement'),
    ('_I_3', 'Troisième année de l''investissement'),
    ('_I_1à2', 'Deux premières années de l''investissement'),
    ('_I_1à3', 'Trois premières années de l''investissement'),
    ('_E', 'Exploitation'),
    ('_E_1', 'Première année de l''exploitation'),
    ('_E_2', 'Deuxième année de l''exploitation'),
    ('_E_3', 'Troisième année de l''exploitation'),
    ('_E_1à2', 'Deux premières années de l''exploitation'),
    ('_E_1à3', 'Trois premières années de l''exploitation');

-- Table: SUBSTANCES
CREATE TABLE SUBSTANCES (
    "SubstanceCode" VARCHAR PRIMARY KEY,
    "SubstanceComplet" VARCHAR
);

INSERT INTO SUBSTANCES ("SubstanceCode", "SubstanceComplet") VALUES
    ('Or', 'Or');

-- Table: GROUPES_DE_SUBSTANCES
CREATE TABLE GROUPES_DE_SUBSTANCES (
    "SubstanceGroupeCode" VARCHAR PRIMARY KEY,
    "TexteCode" VARCHAR REFERENCES TEXTES("TexteCode"),
    "SubstanceGroupeComplet" VARCHAR
);

-- Table: SUBSTANCES_DE_GROUPES_DES_SUBSTANCES
CREATE TABLE SUBSTANCES_DE_GROUPES_DES_SUBSTANCES (
    "SubtanceSubstanceGroupe" VARCHAR PRIMARY KEY,
    "SubstanceGroupeCode" VARCHAR REFERENCES GROUPES_DE_SUBSTANCES("SubstanceGroupeCode"),
    "SubstanceCode" VARCHAR REFERENCES SUBSTANCES("SubstanceCode")
);

-- Table: IMPOTS_STANDARDS
CREATE TABLE IMPOTS_STANDARDS (
    "ImpôtStandardCode" VARCHAR PRIMARY KEY,
    "ImpôtStandardComplet" VARCHAR
);

INSERT INTO IMPOTS_STANDARDS ("ImpôtStandardCode", "ImpôtStandardComplet") VALUES
    ('_Validité', 'Durée de validité'),
    ('_Bonus', 'Bonus'),
    ('_DroitsFixes', 'Droits fixes'),
    ('_RedevSuper', 'Redevance superficiaire'),
    ('_RedevMin', 'Redevance minière'),
    ('_TaxeRente', 'Taxe sur la rente ou les superprofits'),
    ('_IS', 'Impôt sur les sociétés'),
    ('_IMF', 'Impôt minimum forfaitaire'),
    ('_Cession', 'Plus-value de cession'),
    ('_IRCM', 'Impôt sur le revenu des capitaux mobiliers'),
    ('_TVA', 'Taxe sur la valeur ajoutée'),
    ('_GST', 'Taxe sur les biens et services'),
    ('_ParticipEtat', 'Participation de l''Etat');

-- Table: IMPOTS_EXACTS
CREATE TABLE IMPOTS_EXACTS (
    "ImpôtExactCode" VARCHAR PRIMARY KEY,
    "TexteCode" VARCHAR REFERENCES TEXTES("TexteCode"),
    "ImpôtStandardCode" VARCHAR REFERENCES IMPOTS_STANDARDS("ImpôtStandardCode"),
    "ImpôtExactComplet" VARCHAR
);

-- Table: SOUS_IMPOTS
CREATE TABLE SOUS_IMPOTS (
    "SousImpôtCode" VARCHAR PRIMARY KEY,
    "SousImpôtComplet" VARCHAR
);

INSERT INTO SOUS_IMPOTS ("SousImpôtCode", "SousImpôtComplet") VALUES
    ('_Aucun', 'Aucun');

-- Table: SOUS_IMPOTS_DES_IMPOTS_STANDARDS
CREATE TABLE SOUS_IMPOTS_DES_IMPOTS_STANDARDS (
    "ImpôtSousImpôtCode" VARCHAR PRIMARY KEY,
    "ImpôtStandardCode" VARCHAR REFERENCES IMPOTS_STANDARDS("ImpôtStandardCode"),
    "SousImpôtCode" VARCHAR REFERENCES SOUS_IMPOTS("SousImpôtCode")
);

-- Table: AMORTISSEMENTS
CREATE TABLE AMORTISSEMENTS (
    "AmortissementCode" VARCHAR PRIMARY KEY,
    "AmortissementComplet" VARCHAR
);

INSERT INTO AMORTISSEMENTS ("AmortissementCode", "AmortissementComplet") VALUES
    ('_Aucun', 'Aucun');

-- Table: AMORTISSEMENTS_DES_SOUS_IMPOTS_DES_IMPOTS_STANDARDS
CREATE TABLE AMORTISSEMENTS_DES_SOUS_IMPOTS_DES_IMPOTS_STANDARDS (
    "ImpôtSousImpôtAmortissementCode" VARCHAR PRIMARY KEY,
    "ImpôtSousImpôtCode" VARCHAR REFERENCES SOUS_IMPOTS_DES_IMPOTS_STANDARDS("ImpôtSousImpôtCode"),
    "AmortissementCode" VARCHAR REFERENCES AMORTISSEMENTS("AmortissementCode")
);

-- Table: SOUS_AMORTISSEMENTS
CREATE TABLE SOUS_AMORTISSEMENTS (
    "SousAmortissementCode" VARCHAR PRIMARY KEY,
    "SousAmortissementComplet" VARCHAR
);

INSERT INTO SOUS_AMORTISSEMENTS ("SousAmortissementCode", "SousAmortissementComplet") VALUES
    ('_Aucun', 'Aucun');

-- Table: SOUS_AMORTISSEMENTS_DES_AMORTISSEMENTS_DES_SOUS_IMPOTS_DES_IMPOTS_STANDARDS
CREATE TABLE SOUS_AMORTISSEMENTS_DES_AMORTISSEMENTS_DES_SOUS_IMPOTS_DES_IMPOTS_STANDARDS (
    "ImpôtSousImpôtAmortissementSousAmortissementCode" VARCHAR PRIMARY KEY,
    "ImpôtSousImpôtAmortissementCode" VARCHAR REFERENCES AMORTISSEMENTS_DES_SOUS_IMPOTS_DES_IMPOTS_STANDARDS("ImpôtSousImpôtAmortissementCode"),
    "SousAmortissementCode" VARCHAR REFERENCES SOUS_AMORTISSEMENTS("SousAmortissementCode")
);

-- Table: INFORMATIONS
CREATE TABLE INFORMATIONS (
    "InformationCode" VARCHAR PRIMARY KEY,
    "InformationComplet" VARCHAR
);

INSERT INTO INFORMATIONS ("InformationCode", "InformationComplet") VALUES
    ('_Durée', 'Durée'),
    ('_DuréeMax', 'Durée maximum'),
    ('_Montant', 'Montant'),
    ('_MontantMin', 'Montant minimum'),
    ('_MontantMax', 'Montant maximum');

-- Table: INFORMATIONS_DES_SOUS_AMORTISSEMENTS_DES_AMORTISSEMENTS_DES_SOUS_IMPOTS_DES_IMPOTS_STANDARDS
CREATE TABLE INFORMATIONS_DES_SOUS_AMORTISSEMENTS_DES_AMORTISSEMENTS_DES_SOUS_IMPOTS_DES_IMPOTS_STANDARDS (
    "ImpôtSousImpôtAmortissementSousAmortissementInformationCode" VARCHAR PRIMARY KEY,
    "ImpôtSousImpôtAmortissementSousAmortissementCode" VARCHAR REFERENCES SOUS_AMORTISSEMENTS_DES_AMORTISSEMENTS_DES_SOUS_IMPOTS_DES_IMPOTS_STANDARDS("ImpôtSousImpôtAmortissementSousAmortissementCode"),
    "InformationCode" VARCHAR REFERENCES INFORMATIONS("InformationCode")
);

-- Table: UNITES
CREATE TABLE UNITES (
    "UnitéCode" VARCHAR PRIMARY KEY,
    "UnitéComplet" VARCHAR
);

INSERT INTO UNITES ("UnitéCode", "UnitéComplet") VALUES
('_Année', 'Année(s)'),
('_XOF', 'Francs CFA');

-- Table: BASE_FISCALE
CREATE TABLE BASE_FISCALE (
    "BaseFiscCode" VARCHAR PRIMARY KEY,
    "SousRégimeExactCode" VARCHAR REFERENCES SOUS_REGIMES_EXACTS("SousRégimeExactCode"),
    "PériodeCode" VARCHAR REFERENCES PERIODES("PériodeCode"),
    "PhaseCode" VARCHAR REFERENCES PHASES("PhaseCode"),
    "SubstanceGroupeCode" VARCHAR REFERENCES GROUPES_DE_SUBSTANCES("SubstanceGroupeCode"),
    "ImpôtExactCode" VARCHAR REFERENCES IMPOTS_EXACTS("ImpôtExactCode"),
    "ImpôtSousImpôtAmortissementSousAmortissementInformationCode" VARCHAR REFERENCES INFORMATIONS_DES_SOUS_AMORTISSEMENTS_DES_AMORTISSEMENTS_DES_SOUS_IMPOTS_DES_IMPOTS_STANDARDS("ImpôtSousImpôtAmortissementSousAmortissementInformationCode"),
    "AnnéeCode" VARCHAR REFERENCES ANNEES("AnnéeCode"),
    "BaseFiscValeur" VARCHAR,
    "UnitéCode" VARCHAR REFERENCES UNITES("UnitéCode")
);

-- Table: CITATIONS_DES_VALEURS_DE_LA_BASE_FISCALE
CREATE TABLE CITATIONS_DES_VALEURS_DE_LA_BASE_FISCALE (
    "BaseFiscCitationCode" VARCHAR PRIMARY KEY,
    "BaseFiscCode" VARCHAR REFERENCES BASE_FISCALE("BaseFiscCode"),
    "BaseFiscCitationNuméro" INT,
    "TexteCitationCode" VARCHAR REFERENCES CITATIONS_DES_TEXTES("TexteCitationCode")
);

-- Table: SOUS_IMPÔTS_ET_INFORMATIONS
CREATE TABLE SOUS_IMPÔTS_ET_INFORMATIONS (
    "SousImpôtInformationCode" VARCHAR PRIMARY KEY,
    "ImpôtStandardCode" VARCHAR REFERENCES IMPOTS_STANDARDS("ImpôtStandardCode"),
    "SousImpôtCode" VARCHAR REFERENCES SOUS_IMPOTS("SousImpôtCode"),
    "AmortissementCode" VARCHAR REFERENCES AMORTISSEMENTS("AmortissementCode"),
    "SousAmortissementCode" VARCHAR REFERENCES SOUS_AMORTISSEMENTS("SousAmortissementCode"),
    "InformationCode" VARCHAR REFERENCES INFORMATIONS("InformationCode")
);

INSERT INTO SOUS_IMPÔTS_ET_INFORMATIONS ("SousImpôtInformationCode", "ImpôtStandardCode", "SousImpôtCode", "AmortissementCode", "SousAmortissementCode", "InformationCode") VALUES
    ('_Validité_Durée', '_Validité', '_Aucun', '_Aucun', '_Aucun', '_Durée'),
    ('_Validité_DuréeMax', '_Validité', '_Aucun', '_Aucun', '_Aucun', '_DuréeMax'),
    ('_DroitsFixes_Montant', '_DroitsFixes', '_Aucun', '_Aucun', '_Aucun', '_Montant'),
    ('_DroitsFixes_MontantMin', '_DroitsFixes', '_Aucun', '_Aucun', '_Aucun', '_MontantMin'),
    ('_DroitsFixes_MontantMax', '_DroitsFixes', '_Aucun', '_Aucun', '_Aucun', '_MontantMax');
