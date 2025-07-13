-- ------------------------------------------KPI-1-------------------------------------
select Ticker as "Stock" ,avg(VOLUME) AS "Avg Daily Traded Volume" 
FROM STOCK_DATA
group by ticker 
order by avg(volume) DESC; 

 -- ------------------------------------------KPI-2--------------------------------------       
select Ticker as "Stock" ,round(avg(beta),4) AS "Avg of Beta values" 
FROM STOCK_DATA 
group by ticker 
order by avg(beta)  DESC ;

-- ------------------------------------------KPI-3--------------------------------------
        
select Ticker as "Stock" ,sum(dividend_amount) AS "Dividend Amount" 
FROM STOCK_DATA 
group by ticker 
order by avg(dividend_amount)  DESC;

select Ticker as "Stock" ,sum(dividend_amount) AS "Dividend Amount" 
FROM STOCK_DATA 
group by ticker 
order by avg(dividend_amount);

-- ------------------------------------------KPI-4--------------------------------------
                
select Ticker as "Stock" , round(avg(PE_ratio),3) AS "Avg P/E Ratio" 
FROM STOCK_DATA 
group by ticker
order by avg(PE_Ratio)  DESC; 

select Ticker as "Stock" , round(avg(PE_ratio),3) AS "Avg P/E Ratio" 
FROM STOCK_DATA 
group by ticker
order by avg(PE_Ratio); 

-- ------------------------------------------KPI-5--------------------------------------

select Ticker as "Stock" ,CONCAT((ROUND((avg(market_cap)/1000000000),3))," B") AS "Avg Market Capital" 
FROM STOCK_DATA 
group by ticker 
order by avg(market_cap)  DESC ;

select Ticker as "Stock" ,CONCAT((ROUND((avg(market_cap)/1000000000),3))," B") AS "Avg Market Capital" 
FROM STOCK_DATA 
group by ticker 
order by avg(market_cap);

-- ------------------------------------------KPI-6-------------------------------------- 

select Ticker as "Stock" ,round(avg(adjusted_close),2)  AS "Avg Stock Price" ,
max(52_week_high) as "52 Week High" 
FROM STOCK_DATA 
group by ticker 
order by ticker  DESC ;
        
-- ------------------------------------------KPI-7--------------------------------------        

select Ticker as "Stock" ,round(avg(adjusted_close),2)  AS "Avg Stock Price" ,
min(52_week_low) as "52 Week Low" 
FROM STOCK_DATA 
group by ticker 
order by ticker  DESC ;

-- ------------------------------------------KPI-8--------------------------------------        

select TICKER,date,rsi_14 as "RSI (14 Days)",MACD ,
(CASE 
WHEN RSI_14 <=45 AND MACD >0 THEN "BUY"
WHEN RSI_14 >=69 AND MACD <0 THEN "SELL"
ELSE "WAIT"
END) AS "Buy/Wait/Sell"
FROM STOCK_DATA;
