select name_enrollee, if(sum(bonus) is null, 0, sum(bonus)) as Бонус
from enrollee
           left join enrollee_achievement on enrollee.enrollee_id = enrollee_achievement.enrollee_id
           left join achievement on achievement.achievement_id = enrollee_achievement.achievement_id
group by name_enrollee
order by name_enrollee;