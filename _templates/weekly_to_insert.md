<%*
const m = tp.file.title.match(/(\d{4})-W(\d{2})/);
const year = Number(m[1]);
const weekNumIso = Number(m[2]);

const saturday = window.moment().isoWeekYear(year).isoWeek(weekNumIso).isoWeekday(6);
const quarter = Math.floor((saturday.month()) / 3) + 1;

const startOfQuarter = saturday.clone().startOf('quarter').isoWeek();
const weekNumQuarter = weekNumIso - startOfQuarter + 1;

const weekDays = [
  "Суббота",
  "Воскресенье",
  "Понедельник",
  "Вторник",
  "Среда",
  "Четверг",
  "Пятница"
];

let resultLinks = weekDays.map((d, i) => {
  let date = saturday.clone().add(i, 'days').format("YYYY-MM-DD");
  return `[[${date}|${d}]]`;
}).join(' - ');

tR += `# Планы и проекты
== Q${quarter}. Неделя ${weekNumQuarter} ==
### Планы по дням
${resultLinks}

🧩 - задача
`;
%>
