SELECT 
  MIN(plan.plan_value) AS 'faturamento_minimo',
  MAX(plan.plan_value) AS 'faturamento_maximo',
  ROUND(AVG(plan.plan_value), 2) AS 'faturamento_medio',
  ROUND(SUM(plan.plan_value), 2) AS 'faturamento_total'
FROM SpotifyClone.plans AS plan
INNER JOIN SpotifyClone.users AS us
ON us.plan_id = plan.plan_id;