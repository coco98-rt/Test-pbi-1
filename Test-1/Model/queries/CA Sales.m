let
    Source = Csv.Document(File.Contents("C:\Users\BalajiShewale\Downloads\PowerBI_Bootcamp_2021\Data\InternationalSales\CA Sales.csv"),[Delimiter=",", Columns=6, Encoding=1252, QuoteStyle=QuoteStyle.None]),
    #"Promoted Headers" = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"ProductID", Int64.Type}, {"Date", type date}, {"Zip", type text}, {"Units", Int64.Type}, {"Revenue", type number}, {"Country", type text}})
in
    #"Changed Type"