CREATE DATABASE foodfacts ENCODING 'UTF8';
\c foodfacts

CREATE TABLE openfoodfacts (
    code VARCHAR, 
    url VARCHAR, 
    creator VARCHAR, 
    created_t VARCHAR, 
    created_datetime VARCHAR, 
    last_modified_t VARCHAR, 
    last_modified_datetime VARCHAR, 
    product_name VARCHAR, 
    abbreviated_product_name VARCHAR, 
    generic_name VARCHAR, 
    quantity VARCHAR, 
    packaging VARCHAR, 
    packaging_tags VARCHAR, 
    packaging_en VARCHAR, 
    packaging_text VARCHAR, 
    brands VARCHAR, 
    brands_tags VARCHAR, 
    categories VARCHAR, 
    categories_tags VARCHAR, 
    categories_en VARCHAR, 
    origins VARCHAR, 
    origins_tags VARCHAR, 
    origins_en VARCHAR, 
    manufacturing_places VARCHAR, 
    manufacturing_places_tags VARCHAR, 
    labels VARCHAR, 
    labels_tags VARCHAR, 
    labels_en VARCHAR, 
    emb_codes VARCHAR, 
    emb_codes_tags VARCHAR, 
    first_packaging_code_geo VARCHAR, 
    cities VARCHAR, 
    cities_tags VARCHAR, 
    purchase_places VARCHAR, 
    stores VARCHAR, 
    countries VARCHAR, 
    countries_tags VARCHAR, 
    countries_en VARCHAR, 
    ingredients_text VARCHAR, 
    allergens VARCHAR, 
    allergens_en VARCHAR, 
    traces VARCHAR, 
    traces_tags VARCHAR, 
    traces_en VARCHAR, 
    serving_size VARCHAR, 
    serving_quantity VARCHAR, 
    no_nutriments VARCHAR, 
    additives_n VARCHAR, 
    additives VARCHAR, 
    additives_tags VARCHAR, 
    additives_en VARCHAR, 
    nutriscore_score DECIMAL, 
    nutriscore_grade VARCHAR, 
    nova_group VARCHAR, 
    pnns_groups_1 VARCHAR, 
    pnns_groups_2 VARCHAR, 
    food_groups VARCHAR, 
    food_groups_tags VARCHAR, 
    food_groups_en VARCHAR, 
    states VARCHAR, 
    states_tags VARCHAR, 
    states_en VARCHAR, 
    brand_owner VARCHAR, 
    ecoscore_score DECIMAL, 
    ecoscore_grade VARCHAR, 
    main_category VARCHAR, 
    main_category_en VARCHAR, 
    image_url VARCHAR, 
    image_small_url VARCHAR, 
    image_ingredients_url VARCHAR, 
    image_ingredients_small_url VARCHAR, 
    image_nutrition_url VARCHAR, 
    image_nutrition_small_url VARCHAR, 
    "energy-kj_100g" FLOAT, 
    "energy-kcal_100g" FLOAT, 
    energy_100g VARCHAR, 
    "energy-from-fat_100g" VARCHAR, 
    fat_100g VARCHAR, 
    "saturated-fat_100g" VARCHAR, 
    "butyric-acid_100g" VARCHAR, 
    "caproic-acid_100g" VARCHAR, 
    "caprylic-acid_100g" VARCHAR, 
    "capric-acid_100g" VARCHAR, 
    "lauric-acid_100g" VARCHAR, 
    "myristic-acid_100g" VARCHAR, 
    "palmitic-acid_100g" VARCHAR, 
    "stearic-acid_100g" VARCHAR, 
    "arachidic-acid_100g" VARCHAR, 
    "behenic-acid_100g" VARCHAR, 
    "lignoceric-acid_100g" VARCHAR, 
    "cerotic-acid_100g" VARCHAR, 
    "montanic-acid_100g" VARCHAR, 
    "melissic-acid_100g" VARCHAR, 
    "monounsaturated-fat_100g" VARCHAR, 
    "polyunsaturated-fat_100g" VARCHAR, 
    "omega-3-fat_100g" VARCHAR, 
    "alpha-linolenic-acid_100g" VARCHAR, 
    "eicosapentaenoic-acid_100g" VARCHAR, 
    "docosahexaenoic-acid_100g" VARCHAR, 
    "omega-6-fat_100g" VARCHAR, 
    "linoleic-acid_100g" VARCHAR, 
    "arachidonic-acid_100g" VARCHAR, 
    "gamma-linolenic-acid_100g" FLOAT, 
    "dihomo-gamma-linolenic-acid_100g" FLOAT, 
    "omega-9-fat_100g" FLOAT, 
    "oleic-acid_100g" FLOAT, 
    "elaidic-acid_100g" FLOAT, 
    "gondoic-acid_100g" FLOAT, 
    "mead-acid_100g" FLOAT, 
    "erucic-acid_100g" FLOAT, 
    "nervonic-acid_100g" FLOAT, 
    "trans-fat_100g" FLOAT, 
    cholesterol_100g FLOAT, 
    carbohydrates_100g FLOAT, 
    sugars_100g FLOAT, 
    sucrose_100g FLOAT, 
    glucose_100g FLOAT, 
    fructose_100g FLOAT, 
    lactose_100g FLOAT, 
    maltose_100g FLOAT, 
    maltodextrins_100g FLOAT, 
    starch_100g FLOAT, 
    polyols_100g FLOAT, 
    fiber_100g FLOAT, 
    "soluble-fiber_100g" FLOAT, 
    "insoluble-fiber_100g" FLOAT, 
    proteins_100g FLOAT, 
    casein_100g FLOAT, 
    "serum-proteins_100g" FLOAT, 
    nucleotides_100g FLOAT, 
    salt_100g FLOAT, 
    sodium_100g FLOAT, 
    alcohol_100g FLOAT, 
    "vitamin-a_100g" FLOAT, 
    "beta-carotene_100g" FLOAT, 
    "vitamin-d_100g" FLOAT, 
    "vitamin-e_100g" FLOAT, 
    "vitamin-k_100g" FLOAT, 
    "vitamin-c_100g" FLOAT, 
    "vitamin-b1_100g" FLOAT, 
    "vitamin-b2_100g" FLOAT, 
    "vitamin-pp_100g" FLOAT, 
    "vitamin-b6_100g" FLOAT, 
    "vitamin-b9_100g" FLOAT, 
    folates_100g FLOAT, 
    "vitamin-b12_100g" FLOAT, 
    biotin_100g FLOAT, 
    "pantothenic-acid_100g" FLOAT, 
    silica_100g FLOAT, 
    bicarbonate_100g FLOAT, 
    potassium_100g FLOAT, 
    chloride_100g FLOAT, 
    calcium_100g FLOAT, 
    phosphorus_100g FLOAT, 
    iron_100g FLOAT, 
    magnesium_100g FLOAT, 
    zinc_100g FLOAT, 
    copper_100g FLOAT, 
    manganese_100g FLOAT, 
    fluoride_100g FLOAT, 
    selenium_100g FLOAT, 
    chromium_100g FLOAT, 
    molybdenum_100g FLOAT, 
    iodine_100g FLOAT, 
    caffeine_100g FLOAT, 
    taurine_100g FLOAT, 
    ph_100g FLOAT, 
    "fruits-vegetables-nuts_100g" FLOAT, 
    "fruits-vegetables-nuts-dried_100g" FLOAT, 
    "fruits-vegetables-nuts-estimate_100g" FLOAT, 
    "fruits-vegetables-nuts-estimate-from-ingredients_100g" FLOAT, 
    "collagen-meat-protein-ratio_100g" FLOAT, 
    cocoa_100g FLOAT, 
    chlorophyl_100g FLOAT, 
    "carbon-footprint_100g" FLOAT, 
    "carbon-footprint-from-meat-or-fish_100g" FLOAT, 
    "nutrition-score-fr_100g" FLOAT, 
    "nutrition-score-uk_100g" FLOAT, 
    "glycemic-index_100g" FLOAT, 
    "water-hardness_100g" FLOAT, 
    choline_100g FLOAT, 
    phylloquinone_100g FLOAT, 
    "beta-glucan_100g" FLOAT, 
    inositol_100g FLOAT, 
    carnitine_100g FLOAT
);

\copy openfoodfacts from program 'tr -d ''\r'' </docker-entrypoint-initdb.d/foodfacts.csv' with (format csv, header, delimiter E'\t', quote E'\003')
