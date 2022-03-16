PKG="tidyverse"; if(!PKG %in% installed.packages()){install.packages(PKG)}; do.call(library, list(PKG))
PKG="magrittr"; if(!PKG %in% installed.packages()){install.packages(PKG)}; do.call(library, list(PKG))
PKG="janitor"; if(!PKG %in% installed.packages()){install.packages(PKG)}; do.call(library, list(PKG))

system("python get_googlesheets_data.py")

raw_df <- readr::read_csv("raw_df.csv") %>% janitor::clean_names()
countries <- sort(unique(raw_df$country))

for(country in unique(countries)){
    cat(paste0("\nProcessing data for", " ", country))
    
}


# country = input("Enter country: ")
# 
# df = dfObj[dfObj["country"] == country]
# df = df[df["dimension"] == "Earnings Dispersion"]
# df = df[df["description"] != ""]
# 
# final = df.filter(["year", "value"])
# 
# measure = df["measure"].values[1]
# final = final.rename(columns={"value": measure})
# final.reset_index(drop=True, inplace=True)