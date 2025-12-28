-- content portfolio size :- count total titles ,group  by year
select count(cleaned_netflix_dataset_analysis.title) as  content_portfolio  ,cleaned_netflix_dataset_analysis.release_year from cleaned_netflix_dataset_analysis
group by release_year
limit 10 ;
-- Average quality score :- calculate average IMDB score
select * from cleaned_netflix_dataset_analysis  limit 10 ;

select round(avg(cast(cleaned_netflix_dataset_analysis.imdb_score as NUMERIC)),2) as avg_imdb_scores
from cleaned_netflix_dataset_analysis;
--Content type distribution :- Count movies vs TV shows ,calculate %
select * from cleaned_netflix_dataset_analysis limit 10;
select cleaned_netflix_dataset_analysis.type,count(*) as count,round(count(*) * 100.0 /sum(count(*)) over(),2) as percentages
from cleaned_netflix_dataset_analysis
group by cleaned_netflix_dataset_analysis.type;

-- Genre Diversity :- list all genres, count how many titles in each
    select * from cleaned_netflix_dataset_analysis limit 10 ;
select genres, count(cleaned_netflix_dataset_analysis.title) from cleaned_netflix_dataset_analysis
group by genres
limit 5 ;

--High -performance Content :- Count titles with Imdb >7.5
select count(cleaned_netflix_dataset_analysis.title) as Count_title from cleaned_netflix_dataset_analysis
where cast(imdb_score as numeric ) > 7.5
limit 5 ;
select * from cleaned_netflix_dataset_analysis ;

-- Content Age distribution :- avg age by genre
select cleaned_netflix_dataset_analysis.genres,round(avg(Case
                                                             When cleaned_netflix_dataset_analysis.age_certification = 'G'
                                                                 Then 0
                                                             when cleaned_netflix_dataset_analysis.age_certification = 'PG'
                                                                 Then 10
                                                             when cleaned_netflix_dataset_analysis.age_certification = 'PG-13'
                                                                 Then 13
                                                             when cleaned_netflix_dataset_analysis.age_certification = 'R'
                                                                 Then 17
                                                             when cleaned_netflix_dataset_analysis.age_certification = 'NC-17'
                                                                 Then 18
                                                             when cleaned_netflix_dataset_analysis.age_certification = 'TV-Y'
                                                                 Then 0
                                                             when cleaned_netflix_dataset_analysis.age_certification = 'TV-Y7'
                                                                 Then 7
                                                             when cleaned_netflix_dataset_analysis.age_certification = 'TV-G'
                                                                 Then 0
                                                             when cleaned_netflix_dataset_analysis.age_certification = 'TV-PG'
                                                                 Then 10
                                                             when cleaned_netflix_dataset_analysis.age_certification = 'TV-14'
                                                                 Then 14
                                                             when cleaned_netflix_dataset_analysis.age_certification = 'TV-MA'
                                                                 Then 17
                                                     Else null
                                                    end),2) as avg_age_rating
from cleaned_netflix_dataset_analysis
group by cleaned_netflix_dataset_analysis.genres
limit 5 ;
--Geographic concentration :- count content by country
select count(cleaned_netflix_dataset_analysis.title) as content , cleaned_netflix_dataset_analysis.production_countries from cleaned_netflix_dataset_analysis
group by production_countries
limit 5 ;

-- Rating distribution :- count content by country
    select  count(cleaned_netflix_dataset_analysis.title) as content ,production_countries from cleaned_netflix_dataset_analysis
    group by production_countries
    limit 5 ;







-- content completeness :- check % of title with complete , info
select  cleaned_netflix_dataset_analysis.description,round(count(cleaned_netflix_dataset_analysis.runtime)*100.0)/count(*),2  as title_complete
from cleaned_netflix_dataset_analysis
group by description
limit 5 ;
-- Top genre performance :- Multiply genre count * average score
select count(genres) *round((avg(cast(cleaned_netflix_dataset_analysis.imdb_score as numeric)) ),2)as Top_genre_performace
from cleaned_netflix_dataset_analysis;