-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Ноя 29 2020 г., 17:37
-- Версия сервера: 10.3.25-MariaDB-0ubuntu0.20.04.1
-- Версия PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `parse_yahoo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `publication_date` varchar(255) NOT NULL,
  `type_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `text`, `image`, `publication_date`, `type_id`) VALUES
(1, 'Iâ€™m 60, my spouse is 45 â€” can I retire if our expenses are $12,000 a month?', 'https://www.marketwatch.com/story/im-60-my-spouse-is-45-can-i-retire-if-our-expenses-are-12000-a-month-2020-09-02?siteid=yhoof2&yptr=yahoo', '../uploads/8c4b84a3daf09fe45d0999e6bd39542e', '2020-11-28T23:04:00Z', 1),
(2, 'EV battery developer QuantumScape begins trading on NYSE', 'https://finance.yahoo.com/news/ev-battery-developer-quantum-scape-begins-trading-on-nyse-153744553.html', '../uploads/51fd6b50-2f6f-11eb-bfdf-7cad2837759a', '2020-11-27T15:37:44Z', 1),
(3, 'A Giant Fund Sold Alibaba, Apple, and Intel Stock. Hereâ€™s What It Bought.', 'https://www.barrons.com/articles/fund-sold-alibaba-stock-apple-intel-stock-bought-gm-stock-51606326904?siteid=yhoof2&yptr=yahoo', '../uploads/thumbnail.jpg', '2020-11-29T12:00:00Z', 1),
(4, 'Dow Jones Futures: Stock Market Rally Flashes Mixed Signals; Why Apple, Nio, Zoom Video Are Important', 'https://www.investors.com/market-trend/stock-market-today/dow-jones-futures-stock-market-rally-signals-apple-stock-nio-zoom-in-focus/?src=A00220&yptr=yahoo', '../uploads/7009328d95c23df6351c4a1d33db531c', '2020-11-29T13:56:10Z', 1),
(5, 'Goldman Sachs: These 3 Stocks Could Spike Over 40%', 'https://finance.yahoo.com/news/goldman-sachs-3-stocks-could-165525123.html', '../uploads/5e2ac47e13465ba6277481334252e8fc', '2020-11-27T16:55:25Z', 1),
(6, 'The Rules on RMDs for Inherited IRA Beneficiaries', 'https://www.investopedia.com/articles/personal-finance/102815/rules-rmds-ira-beneficiaries.asp?utm_campaign=quote-yahoo&utm_source=yahoo&utm_medium=referral&yptr=yahoo', '../uploads/c9df74e97946b37ae6350b636f2eca22', '2020-11-28T22:54:05Z', 1),
(7, 'Barron\'s Picks And Pans This Week: Apple, Ford, Royal Dutch Shell, Tesla And A Hair Salon Chain', 'https://finance.yahoo.com/news/barrons-picks-pans-week-apple-211111482.html', '../uploads/55ffb4d38db0da8cd5ed7ecc0ec2a53c', '2020-11-28T21:11:11Z', 1),
(8, 'These Are The 5 Best Stocks To Buy And Watch Now', 'https://www.investors.com/research/best-stocks-to-buy-now/?src=A00220&yptr=yahoo', '../uploads/d286311e6de86e24602ae294b1416a97', '2020-11-28T23:28:04Z', 1),
(9, 'Bidenâ€™s plans will help those â€˜fearful of outliving their retirement savingsâ€™', 'https://finance.yahoo.com/news/biden-plan-retirement-savings-181837629.html', '../uploads/bb070d50-2ab9-11eb-afbf-a2af2e3bb837', '2020-11-28T15:54:58Z', 1),
(10, 'Bearish Bets: 2 Shaky Stocks You Should Consider Shorting This Week', 'https://realmoney.thestreet.com/investing/stocks/bearish-bets-2-shaky-stocks-you-should-consider-shorting-this-week-15500818?puc=yahoo&cm_ven=YAHOO&yptr=yahoo', '../uploads/d52dc3fdca6e53f888848b434793031e', '2020-11-29T14:00:00Z', 1),
(11, '30 dividend stocks selected for value as the U.S. economy gathers steam', 'https://www.marketwatch.com/story/30-dividend-stocks-selected-for-value-as-the-u-s-economy-gathers-steam-11606493996?siteid=yhoof2&yptr=yahoo', '../uploads/thumbnail.jpg', '2020-11-27T16:20:00Z', 1),
(12, 'What Parts of Joe Bidenâ€™s Tax Plan Could Passâ€”and How Those Changes Could Affect You', 'https://www.barrons.com/articles/joe-biden-wants-to-change-tax-policy-heres-what-he-might-accomplish-51606496735?siteid=yhoof2&yptr=yahoo', '../uploads/thumbnail.jpg', '2020-11-27T17:05:00Z', 1),
(13, 'A Top Pension Sold Bank of America, Wells Fargo, and Exxon Stock. Hereâ€™s What It Bought.', 'https://www.barrons.com/articles/fund-sold-bank-of-america-stock-wells-fargo-and-exxon-bought-jpmorgan-51606249147?siteid=yhoof2&yptr=yahoo', '../uploads/thumbnail.jpg', '2020-11-28T13:51:00Z', 1),
(14, 'I have 4 goals for my money in retirement', 'https://www.marketwatch.com/story/i-have-4-goals-for-my-money-in-retirement-11595440416?siteid=yhoof2&yptr=yahoo', '../uploads/thumbnail.jpg', '2020-11-27T18:17:00Z', 1),
(15, 'Why Warren Buffett says you should refinance your mortgage', 'https://finance.yahoo.com/news/why-warren-buffett-thinks-refinance-193000512.html', '../uploads/e478c0ebbb6d02d9cd77b65ae3ebdea7', '2020-11-28T19:30:00Z', 1),
(16, 'Celebrities use mortgages to build wealth â€” and you can, too', 'https://finance.yahoo.com/news/celebrities-mortgages-build-wealth-too-190000616.html', '../uploads/1a03f2ce68571322f58b5e4d72c2fb2c', '2020-11-28T19:00:00Z', 1),
(17, 'How This Small Biotech Is Targeting Obesity â€” And Why Shares Are Surging', 'https://www.investors.com/news/technology/rythm-stock-surges-obesity-drug-gains-fda-approval/?src=A00220&yptr=yahoo', '../uploads/4b8ab2db8a0f4678579fd14b97045eb4', '2020-11-27T18:19:12Z', 1),
(18, 'Why the Stock Market Keeps Rising â€” and Why Its Next Test Comes Next Week', 'https://www.barrons.com/articles/why-the-stock-market-keeps-risingand-why-its-next-test-comes-next-week-51606515605?siteid=yhoof2&yptr=yahoo', '../uploads/thumbnail.jpg', '2020-11-27T22:20:00Z', 1),
(19, 'Best Dividend Stocks for December 2020', 'https://www.investopedia.com/best-dividend-stocks-4774650?utm_campaign=quote-yahoo&utm_source=yahoo&utm_medium=referral&yptr=yahoo', '../uploads/3b6779fe69fdaadb88c74033bda3a937', '2020-11-27T15:58:06Z', 1),
(20, 'EV Stocks Like QuantumScape and Fisker Are Red- Hot. Few Analysts Follow Them.', 'https://www.barrons.com/articles/ev-stocks-like-quantumscape-are-red-hot-few-analysts-follow-them-51606493275?siteid=yhoof2&yptr=yahoo', '../uploads/thumbnail.jpg', '2020-11-27T16:07:00Z', 1),
(21, 'Benzinga\'s Bulls And Bears Of The Week: AstraZeneca, Disney, Ford, GE, Roku And More', 'https://finance.yahoo.com/news/benzingas-bulls-bears-week-astrazeneca-170603009.html', '../uploads/f60035db53325b2d7d5d91558aa71e58', '2020-11-28T17:06:03Z', 1),
(22, 'Gold Price Breaks Down On Vaccine News, But Bottom May Be Near', 'https://www.investors.com/research/gold-stocks-investing-price/?src=A00220&yptr=yahoo', '../uploads/161c8703892ae64a43ae9d13c6990675', '2020-11-28T16:55:38Z', 1),
(23, 'Ford Can Be Fixed. Why Its Stock Could Double.', 'https://www.barrons.com/articles/ford-can-be-fixed-why-its-stock-could-double-51606511745?siteid=yhoof2&yptr=yahoo', '../uploads/thumbnail.jpg', '2020-11-27T21:15:00Z', 1),
(24, 'Man who called Dow 20,000 says 3 factors will make 2021 â€˜a very good yearâ€™ for stocks', 'https://www.marketwatch.com/story/man-who-called-dow-20-000-says-3-factors-will-make-2021-a-very-good-year-for-stocks-11606493414?siteid=yhoof2&yptr=yahoo', '../uploads/thumbnail.jpg', '2020-11-27T16:10:00Z', 1),
(25, 'Best Growth Stocks for December 2020', 'https://www.investopedia.com/investing/best-growth-stocks/?utm_campaign=quote-yahoo&utm_source=yahoo&utm_medium=referral&yptr=yahoo', '../uploads/078b69bb46306f53c27d5b9cacf7e5ed', '2020-11-27T15:27:59Z', 1),
(26, 'Three paths Exxon could take with its dividend', 'https://www.marketwatch.com/story/three-paths-exxon-could-take-with-its-dividend-11606507207?siteid=yhoof2&yptr=yahoo', '../uploads/thumbnail.jpg', '2020-11-27T20:00:00Z', 1),
(27, 'AMD, Apple Chipmakers Qorvo, Qualcomm Lead 5 Stocks Near Buy Points', 'https://www.investors.com/news/technology/amd-stock-qorvo-qualcomm-taiwan-semiconductor-analog-devices-near-buy-points/?src=A00220&yptr=yahoo', '../uploads/b3ce3fcb0c7d94fe58c856567229f9e0', '2020-11-28T13:00:54Z', 1),
(28, 'BofA\'s Takeaways On Nio\'s 2021 Plans', 'https://finance.yahoo.com/news/bofas-takeaways-nios-2021-plans-173033826.html', '../uploads/83f0cb341433624fba6e3cb680f08571', '2020-11-27T17:30:33Z', 1),
(29, '3 Dividend Gold Stocks', 'https://finance.yahoo.com/news/3-dividend-gold-stocks-194213643.html', '../uploads/af6ea3e72a3ad4197ca72c635c8665d0', '2020-11-27T19:42:13Z', 1),
(30, 'One To Watch: Competitor To Tesla\'s Ultracapacitor Company Raises $48M After Hinting At IPO', 'https://finance.yahoo.com/news/one-watch-competitor-teslas-ultracapacitor-203137907.html', '../uploads/a29bd770bb677d98388a9052a48947da', '2020-11-28T20:31:37Z', 1),
(31, 'Citron Shorts Palantir, Calls Stock A \'Full Casino\'', 'https://finance.yahoo.com/news/citron-shorts-palantir-calls-stock-155049923.html', '../uploads/9c95a8cabcb20dacbd50379fcd2c9f66', '2020-11-27T15:50:49Z', 1),
(32, 'These money and investing tips can help you ready your portfolio for the Biden administration', 'https://www.marketwatch.com/story/these-money-and-investing-tips-can-help-you-ready-your-portfolio-for-the-biden-administration-2020-11-08?siteid=yhoof2&yptr=yahoo', '../uploads/713e50cf39ae77714f26f42e5bde0800', '2020-11-28T20:10:00Z', 1),
(33, '6 Top Stocks Under $10 This Past Week: DPW Holdings Rises', 'https://www.thestreet.com/investing/top-stocks-under-10-this-past-week-fuel-tech-rises-dpw-kaixin?puc=yahoo&cm_ven=YAHOO&yptr=yahoo', '../uploads/thumbnail.jpg', '2020-11-28T14:38:00Z', 1),
(34, 'Guggenheim Fund Files to Be Able to Invest Up to Almost $500M in Bitcoin Through GBTC', 'https://finance.yahoo.com/news/guggenheim-fund-files-able-invest-022605235.html', '../uploads/1b5b2e3e72c0b969ebff6e29d0837858', '2020-11-29T02:26:05Z', 1),
(35, 'How Ford CEO Farley Matches Up Against His Peers', 'https://www.barrons.com/articles/how-ford-ceo-farley-matches-up-against-his-peers-51606658400?siteid=yhoof2&yptr=yahoo', '../uploads/thumbnail.jpg', '2020-11-29T14:00:00Z', 1),
(36, 'EV Battery Maker QuantumScape Just Went Public. Its Stock Soared 55%.', 'https://www.barrons.com/articles/ev-battery-maker-quantumscape-went-public-its-stock-soared-55-51606513410?siteid=yhoof2&yptr=yahoo', '../uploads/thumbnail.jpg', '2020-11-27T21:43:00Z', 1),
(37, 'Is GM Stock A Buy? General Motors Hits EV Accelerator, Races Toward Record Highs', 'https://www.investors.com/research/gm-stock-buy-now/?src=A00220&yptr=yahoo', '../uploads/f8d9a8732f65bb7fc843b3f0c2075805', '2020-11-28T16:58:14Z', 1),
(38, 'What Wall Street Thinks of a Potential Salesforce Deal for Slack', 'https://www.barrons.com/articles/what-wall-street-thinks-of-a-potential-salesforce-deal-for-slack-51606500776?siteid=yhoof2&yptr=yahoo', '../uploads/thumbnail.jpg', '2020-11-27T18:12:00Z', 1),
(39, 'Why Gold Prices Could Be Set For Another Rally', 'https://finance.yahoo.com/news/why-gold-prices-could-set-160000381.html', '../uploads/6b1a0d0d64b1a699a0921af32fe3f2b9', '2020-11-28T16:00:00Z', 1),
(40, 'Here Are 5 Tax Moves to Consider for an Unusual Year', 'https://www.barrons.com/articles/here-are-5-tax-moves-to-consider-for-an-unusual-year-51606496167?siteid=yhoof2&yptr=yahoo', '../uploads/thumbnail.jpg', '2020-11-27T16:56:00Z', 1),
(41, '4 Big Reasons Your Expenses Could Rise in Retirement', 'https://www.investopedia.com/articles/personal-finance/060514/4-big-reasons-your-expenses-could-rise-retirement.asp?utm_campaign=quote-yahoo&utm_source=yahoo&utm_medium=referral&yptr=yahoo', '../uploads/1ee2503fcaf7cbbf6abf240db17a584e', '2020-11-28T19:27:04Z', 1),
(42, 'DraftKingsâ€™ Customer Data Sets It Apart From the Competition, Says Analyst', 'https://finance.yahoo.com/news/draftkings-customer-data-sets-apart-224035309.html', '../uploads/46dafa6ab7dbbf01fd2fa3f9e0878dc1', '2020-11-27T22:40:35Z', 1),
(43, 'Salesforce Stock To Record Big Investment Gain From Snowflake IPO, Says Analyst', 'https://www.investors.com/news/technology/crm-stock-to-record-big-gain-snowflake-ipo-zoom-video/?src=A00220&yptr=yahoo', '../uploads/491fbe98c00eb30f0760fa8a96fabb3d', '2020-11-27T18:32:00Z', 1),
(44, 'Retirement in Brief: A Memory-Loss Trap to Avoid, a Call for National Savings Dashboard, and an Idea to Lessen Longevity Risk', 'https://www.barrons.com/articles/retirement-in-brief-a-memory-loss-trap-to-avoid-a-call-for-national-savings-dashboard-and-an-idea-to-lessen-longevity-risk-51606568401?siteid=yhoof2&yptr=yahoo', '../uploads/thumbnail.jpg', '2020-11-28T13:00:00Z', 1),
(45, 'House to consider measure next week that could banish Chinese stocks from U.S. that don\'t comply with audit rules', 'https://www.marketwatch.com/story/house-to-consider-measure-next-week-that-could-banish-chinese-stocks-from-us-that-dont-comply-with-audit-rules-2020-11-27?siteid=yhoof2&yptr=yahoo', '../uploads/thumbnail.jpg', '2020-11-27T23:27:00Z', 1),
(46, 'Top Retirement Strategies for Government Employees', 'https://www.investopedia.com/articles/personal-finance/112514/top-retirement-strategies-government-employees.asp?utm_campaign=quote-yahoo&utm_source=yahoo&utm_medium=referral&yptr=yahoo', '../uploads/14d4ae256ebf7d703ddf0b9fe95475d5', '2020-11-28T17:46:47Z', 1),
(47, 'Ripple Is Cashing Out a Third of Its Stake in Surging MoneyGram', 'https://finance.yahoo.com/news/ripple-cashing-third-stake-surging-233258353.html', '../uploads/f09787c7cc6ac1fc8fd18298cc390cc4', '2020-11-27T23:32:58Z', 1),
(48, 'David Prowse, the original Darth Vader in \'Star Wars,\' dies at 85', 'https://www.yahoo.com/entertainment/star-wars-actor-david-prowse-134137703.html', '../uploads/bcbd3575f7326bf68344664893250714', '2020-11-29T14:55:44Z', 2),
(49, 'Walmart\'s extended Black Friday TV deals are still so goodâ€”starting at $200', 'https://www.yahoo.com/entertainment/best-black-friday-tv-deals-walmart-111340628.html', '../uploads/7d2beca0-3011-11eb-befb-868d32304083', '2020-11-29T14:40:52Z', 2),
(50, '\'Act of kindness\': Blake Lively, Ryan Reynolds give $500,000 to help at-risk youth in Canada', 'https://www.yahoo.com/entertainment/act-kindness-blake-lively-ryan-190150259.html', '../uploads/352963146203e4a8176717f4786e0ff6', '2020-11-29T01:05:01Z', 2),
(51, 'â€˜Duck Dynastyâ€™ star Bella Robertson, 18, gets engaged to Jacob Mayo â€” see the ring!', 'https://www.yahoo.com/entertainment/duck-dynasty-star-bella-robertson-232800682.html', '../uploads/1def3be9e5e7b8bb9468c2d81441ad6d', '2020-11-28T23:28:00Z', 2),
(52, 'The best headphones deals on Amazon are still going strongâ€”from Bose to Sony', 'https://www.yahoo.com/entertainment/best-headphones-black-friday-deals-amazon-111213278.html', '../uploads/2b3b32d0-2f93-11eb-bef7-73db1f4162c8', '2020-11-28T23:12:20Z', 2),
(53, 'Peacock Apologizes for Selena Gomez â€˜Saved by the Bellâ€™ Jokes, Donates to Her Lupus Charity', 'https://www.yahoo.com/entertainment/peacock-apologizes-selena-gomez-saved-222344329.html', '../uploads/7c3f766e7aa3b471b12c28d90494151d', '2020-11-28T22:23:44Z', 2),
(54, 'Sharon Stone shows off legs in black lingerie, says she\'s \'astounded\' to model at 62', 'https://www.yahoo.com/entertainment/sharon-stone-shows-off-legs-in-black-lingerie-says-shes-astounded-to-model-at-62-213442856.html', '../uploads/f6550590-31b9-11eb-b9df-cbdd5930314f', '2020-11-28T21:34:42Z', 2),
(55, 'Kate Hudson shares personal, never-before-seen family photos on new Instagram page', 'https://www.yahoo.com/entertainment/kate-hudson-shares-personal-never-212204216.html', '../uploads/fcc659a4827c53a5943c6e7765916a5e', '2020-11-28T21:22:04Z', 2),
(56, 'Ozzy Osbourne says his greatest regret is cheating on wife Sharon: \'I\'m lucky she didnâ€™t leave me\'', 'https://www.yahoo.com/entertainment/ozzy-osbourne-says-one-of-his-greatest-regrets-is-cheating-on-wife-sharon-im-lucky-she-didnt-leave-me-202133787.html', '../uploads/a0bde1d0-8d20-11ea-b7bd-0fd881a126ad', '2020-11-28T20:21:33Z', 2),
(57, 'Anne Hathaway Has the Most Relatable Response About Her Biggest Motherhood Challenges', 'https://www.yahoo.com/entertainment/anne-hathaway-most-relatable-response-200548281.html', '../uploads/8b0d900f50287a12c66dfd18cf7d814c', '2020-11-28T20:05:48Z', 2),
(58, 'Elizabeth Hurley, 55, and her big sister stun in bikini throwback photo', 'https://www.yahoo.com/entertainment/elizabeth-hurley-55-and-her-sister-57-stun-in-bikini-throwback-photo-193704540.html', '../uploads/5957af30-319c-11eb-bbb7-48087b85d2b8', '2020-11-28T19:37:04Z', 2),
(59, 'Selena Gomez\'s Fans Express Outrage Over Saved By the Bell Reboot Mocking Her Kidney Transplant', 'https://www.yahoo.com/entertainment/selena-gomezs-fans-express-outrage-193025796.html', '../uploads/c955cd47b429fe4cde60d841b132eb77', '2020-11-28T19:30:25Z', 2),
(60, 'It\'s Cyber weekend, people! Amazon\'s best TV deals just went live', 'https://www.yahoo.com/entertainment/best-tv-cyber-monday-deals-amazon-192005039.html', '../uploads/896199b0-31a2-11eb-acdb-182bd858083a', '2020-11-28T19:20:05Z', 2),
(61, 'Did â€˜The Mandalorianâ€™ Just Ruin Baby Yoda?', 'https://www.yahoo.com/entertainment/did-mandalorian-just-ruin-baby-173021020.html', '../uploads/d11688b859e424a4b3b001f14158fe57', '2020-11-28T19:13:21Z', 2),
(62, 'Ryan Reynolds and Blake Lively Donate $500,000 to Charity Supporting Homeless Youth in Canada', 'https://www.yahoo.com/entertainment/ryan-reynolds-blake-lively-donate-190031733.html', '../uploads/ed65519f1859171e9590b3ab895204ab', '2020-11-28T19:00:31Z', 2),
(63, 'Fans praise Angelina Jolie after father Jon Voight\'s pro-Trump viral video', 'https://www.yahoo.com/entertainment/fans-sympathize-with-angelina-jolie-after-father-jon-voughts-pro-trump-video-goes-viral-184707419.html', '../uploads/0b2d1b50-9300-11ea-b377-6532a8f3302e', '2020-11-28T18:47:07Z', 2),
(64, 'Barack Obama says Drake has his \'stamp of approval\' to play him in a biopic', 'https://www.yahoo.com/entertainment/barack-obama-says-drake-stamp-170453407.html', '../uploads/afe5c4cde828209393a5f29e6f825ab1', '2020-11-28T17:04:53Z', 2),
(65, 'Patrick Duffy Explains the Appeal of Lifetime Christmas Movies: \'Love Always Wins at the End\'', 'https://www.yahoo.com/entertainment/patrick-duffy-explains-appeal-lifetime-170036773.html', '../uploads/d7e77d8e7a42cf37bbe57b0b2149c7f0', '2020-11-28T17:00:36Z', 2),
(66, 'Vanessa Bryant Says It Was \'Love at First Sight\' with Husband Kobe Bryant When They Met 21 Years Ago', 'https://www.yahoo.com/entertainment/vanessa-bryant-says-love-first-164557194.html', '../uploads/cd4aff4af54dd8f731a0765cf2c06b04', '2020-11-28T16:45:57Z', 2),
(67, 'Drake Snuggles Up to 3-Year-Old Son Adonis in Sweet Post-Thanksgiving Snap', 'https://www.yahoo.com/entertainment/drake-snuggles-3-old-son-160059715.html', '../uploads/c8ead2528b554210573c12931cfb6515', '2020-11-28T16:00:59Z', 2),
(68, 'Best Black Friday And Cyber Monday Deals For 2020', 'https://www.yahoo.com/entertainment/analysts-predicting-black-friday-cyber-180021790.html', '../uploads/2041fd38c367f1e44a70c9c29be149ea', '2020-11-28T16:00:21Z', 2),
(69, 'Alycia Pascual-PeÃ±a is Saved by the Bell\'s newest football star â€” and she\'s ready to smash the patriarchy', 'https://www.yahoo.com/entertainment/alycia-pascual-pe-saved-bell-160004251.html', '../uploads/48faf9b56e110103bad3a6a9a4a7c0d8', '2020-11-28T16:00:04Z', 2),
(70, 'Anderson Cooper Reflects on Making Gravy with Late Friend Anthony Bourdain: \'He Is So, So Missed\'', 'https://www.yahoo.com/entertainment/anderson-cooper-reflects-making-gravy-154547797.html', '../uploads/c597b303876d3681dc82460b0de4bdbc', '2020-11-28T15:45:47Z', 2),
(71, 'Rachael Ray Has a â€˜Covid-Safeâ€™ Thanksgiving Three Months After Her Devastating House Fire', 'https://www.yahoo.com/entertainment/rachael-ray-covid-safe-thanksgiving-222628453.html', '../uploads/482b7f828c810727131fe2047e0bd858', '2020-11-27T22:26:28Z', 2),
(72, 'West Wing Actor Richard Schiff Warns \'You Don\'t Want This\' After COVID-19 Hospitalization', 'https://www.yahoo.com/entertainment/west-wing-actor-richard-schiff-221835197.html', '../uploads/11ba4c46ac918994559c6bb1b3c2bde0', '2020-11-27T22:18:35Z', 2),
(73, 'Hurry! Amazon just knocked over $100 off Sony\'s top-rated 49-inch TV', 'https://www.yahoo.com/entertainment/sony-49-inch-4k-tv-sale-215503489.html', '../uploads/58123bc0-096c-11eb-baef-1e0a3b16765e', '2020-11-27T21:55:03Z', 2),
(74, 'Bachelor Nation\'s Arie Luyendyk Jr. Reveals He Tested Positive for COVID-19: \'It\'s Been Rough\'', 'https://www.yahoo.com/entertainment/bachelor-nations-arie-luyendyk-jr-215228601.html', '../uploads/cfc7334908a94b84709bd3bbfb9e46ea', '2020-11-27T21:52:28Z', 2),
(75, 'Ann Wilson reveals details of Carrie Brownstein-penned Heart biopic: â€˜It\'s really coolâ€™', 'https://www.yahoo.com/entertainment/ann-wilson-reveals-details-of-carrie-brownsteinpenned-heart-biopic-its-really-cool-214701528.html', '../uploads/55b6e630-30f6-11eb-b37f-f7514fc7b8f5', '2020-11-27T21:47:01Z', 2),
(76, 'Amazon just knocked $60 off this stellar soundbar for Black Fridayâ€”get it for $90!', 'https://www.yahoo.com/entertainment/wohome-tv-soundbar-black-friday-204205773.html', '../uploads/3386e5c0-1def-11eb-b68f-d41a459b567a', '2020-11-27T20:42:05Z', 2),
(77, 'James Van Der Beek Poses with Family for Thanksgiving After Moving: \'Ready for a New Story\'', 'https://www.yahoo.com/entertainment/james-van-der-beek-poses-203800466.html', '../uploads/dd9cbde3e464d69536a2670efdcaac42', '2020-11-27T20:38:00Z', 2),
(78, 'JBL\'s hottest earbuds are $40 off for one day only on Black Friday', 'https://www.yahoo.com/entertainment/jbl-tune-120tws-deal-202521822.html', '../uploads/f9a7b8b0-0e3b-11eb-996a-d75bbb88c2ae', '2020-11-27T20:25:21Z', 2),
(79, 'Shawn Mendes Reveals \'Strong, Confident\' Camila Cabello Helped Him Overcome His Body Image Issues', 'https://www.yahoo.com/entertainment/shawn-mendes-reveals-strong-confident-192956831.html', '../uploads/5e1f64a1177252d21d11c3f998294151', '2020-11-27T19:29:56Z', 2),
(80, 'For the love of laptops: Unbelievable Black Friday deals at Amazon, starting at just $120', 'https://www.yahoo.com/entertainment/best-black-friday-laptops-deals-190936348.html', '../uploads/7c7dbc20-30de-11eb-b4ef-e8be33b17836', '2020-11-27T19:09:36Z', 2),
(81, 'Eric Clapton Sparks Backlash for New Anti-Lockdown Song With Van Morrison', 'https://www.yahoo.com/entertainment/eric-clapton-sparks-backlash-anti-184515061.html', '../uploads/2145f63b8e222b1e15aa2781bafd37b1', '2020-11-27T18:45:15Z', 2),
(82, 'Kristin Cavallari Plays \"F--k, Marry, Kill\" With Stephen Colletti, Brody Jenner and Justin Bobby', 'https://www.yahoo.com/entertainment/kristin-cavallari-plays-f-k-181300025.html', '../uploads/13e36595790daf7696596fc63e8a1457', '2020-11-27T18:13:00Z', 2),
(83, 'Michael Jordan Donates $2 Million From His Doc â€˜The Last Danceâ€™ to Food Banks', 'https://www.yahoo.com/entertainment/michael-jordan-donates-2-million-180729509.html', '../uploads/c430e567e3f78e02b054b892ac2bdf7f', '2020-11-27T18:07:29Z', 2),
(84, 'Chrissy Teigen Reflects on \"Brutal, Exhausting, Sad\" 2 Months After Pregnancy Loss', 'https://www.yahoo.com/entertainment/chrissy-teigen-reflects-brutal-exhausting-180426497.html', '../uploads/71b37a7ee2bac85cbcfa5ecbb2a79ab7', '2020-11-27T18:04:26Z', 2),
(85, 'Courteney Cox Re-Creates Monicaâ€™s Iconic â€˜Friendsâ€™ Thanksgiving Turkey Dance', 'https://www.yahoo.com/entertainment/courtney-cox-creates-monica-iconic-175753967.html', '../uploads/4d90b1a2a2f8b1b11d85cc2d96981714', '2020-11-27T17:57:53Z', 2),
(86, 'Ratings: Masked Singer Dominates Thanksgiving With 21-Month Highs', 'https://www.yahoo.com/entertainment/ratings-masked-singer-dominates-thanksgiving-175506150.html', '../uploads/3be7b723c69f24acfacbb0570293c750', '2020-11-27T17:55:06Z', 2),
(87, 'Kate Middletonâ€™s â€˜Influentialâ€™ Work for Children and Families Will Likely Have a â€˜Long-Term Impactâ€™: Expert', 'https://www.yahoo.com/entertainment/kate-middleton-influential-children-families-175008898.html', '../uploads/6e04760e6666a13069202b6e9f75a551', '2020-11-27T17:50:08Z', 2),
(88, 'John Travolta Thanks Fans for Their Support on His First Thanksgiving Since Kelly Preston\'s Death', 'https://www.yahoo.com/entertainment/john-travolta-thanks-fans-support-164631117.html', '../uploads/eb16d80bdbebc77b0cb40f811e2f7d1b', '2020-11-27T16:46:31Z', 2),
(89, 'Jennifer Lopez Releases Sultry New Single \'In The Morning\' as Fans Rejoice', 'https://www.yahoo.com/entertainment/jennifer-lopez-releases-sultry-single-162842983.html', '../uploads/d43fdb5620f2ded3ce2ee860fd409fa1', '2020-11-27T16:28:42Z', 2),
(90, '\'Rocky IV\' at 35: Dolph Lundgren on putting Sylvester Stallone in the hospital and scaring Carl Weathers', 'https://www.yahoo.com/entertainment/rocky-iv-dolph-lundgren-ivan-drago-sylvester-stallone-hospital-carl-weathers-apollo-creed-160042269.html', '../uploads/237c01f0-dbd4-11e9-bfbf-5d522f49c16e', '2020-11-27T16:00:42Z', 2),
(91, 'Courteney Cox Stuffs Her Head Inside a Turkey to Recreate Iconic Friends Thanksgiving Dance', 'https://www.yahoo.com/entertainment/courteney-cox-stuffs-her-head-154857396.html', '../uploads/d7d2392a012c50e78bd0b69a4ea24d45', '2020-11-27T15:48:57Z', 2),
(92, 'Hurryâ€”Apple AirPod prices are lower than they\'ve ever been for Black Friday!', 'https://www.yahoo.com/entertainment/black-friday-apple-airpods-deals-amazon-153701489.html', '../uploads/4acd0a50-fc31-11ea-be4b-f7fbdad6fd5e', '2020-11-27T15:37:01Z', 2),
(93, '\'It\'s a breeze\': This easy-to-use Roku streaming device is just $24 at Amazon right now', 'https://www.yahoo.com/entertainment/black-friday-roku-premiere-deal-152255666.html', '../uploads/5ac50440-30bf-11eb-bfcf-06805d9d6533', '2020-11-27T15:22:55Z', 2),
(94, 'Quick! Bose wireless earbuds are $40 off right now: \'Best earbuds ever\'', 'https://www.yahoo.com/entertainment/bose-soundsport-free-sale-140102630.html', '../uploads/6d4e0470-30b7-11eb-b753-7a36f2ab5e71', '2020-11-27T14:01:02Z', 2),
(95, 'â€˜Mariah Careyâ€™s Magical Christmas Specialâ€™ Gets Festive Trailer', 'https://www.yahoo.com/entertainment/mariah-carey-christmas-special-gets-133036119.html', '../uploads/4a702b4a5edf48573223955c7bb9fdbc', '2020-11-27T13:30:36Z', 2),
(96, 'It\'s Black Friday, people! Amazon\'s best TV deals just went live', 'https://www.yahoo.com/entertainment/best-tv-black-friday-deals-amazon-114056417.html', '../uploads/91d89da0-30ad-11eb-befc-5ac22f6d47e1', '2020-11-27T11:41:03Z', 2),
(97, 'Listen up! Walmart\'s extended Black Friday deals on headphones are still bonkersâ€” prices start at just $17', 'https://www.yahoo.com/entertainment/best-headphones-black-friday-deals-walmart-111804193.html', '../uploads/bd3ddd20-3251-11eb-bfee-25e5abde0327', '2020-11-29T15:05:02Z', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `type_articles`
--

CREATE TABLE `type_articles` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `type_articles`
--

INSERT INTO `type_articles` (`id`, `type`) VALUES
(1, 'news'),
(2, 'entertainment');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `type_id` (`type_id`);

--
-- Индексы таблицы `type_articles`
--
ALTER TABLE `type_articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT для таблицы `type_articles`
--
ALTER TABLE `type_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type_articles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
