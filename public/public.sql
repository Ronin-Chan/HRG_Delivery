/*
 Navicat Premium Data Transfer

 Source Server         : 90017db-new
 Source Server Type    : PostgreSQL
 Source Server Version : 160008 (160008)
 Source Host           : hrg-database.postgres.database.azure.com:5432
 Source Catalog        : postgres
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 160008 (160008)
 File Encoding         : 65001

 Date: 06/06/2025 12:30:09
*/


-- ----------------------------
-- Sequence structure for card_translations_translation_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."card_translations_translation_id_seq";
CREATE SEQUENCE "public"."card_translations_translation_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for cards_card_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cards_card_id_seq";
CREATE SEQUENCE "public"."cards_card_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for post_service_answers_answer_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_service_answers_answer_id_seq";
CREATE SEQUENCE "public"."post_service_answers_answer_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for post_service_questions_question_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_service_questions_question_id_seq";
CREATE SEQUENCE "public"."post_service_questions_question_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for pre_quiz_answers_answer_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pre_quiz_answers_answer_id_seq";
CREATE SEQUENCE "public"."pre_quiz_answers_answer_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for pre_quiz_questions_question_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pre_quiz_questions_question_id_seq";
CREATE SEQUENCE "public"."pre_quiz_questions_question_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for students_student_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."students_student_id_seq";
CREATE SEQUENCE "public"."students_student_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_user_id_seq";
CREATE SEQUENCE "public"."users_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for card_translations
-- ----------------------------
DROP TABLE IF EXISTS "public"."card_translations";
CREATE TABLE "public"."card_translations" (
  "translation_id" int4 NOT NULL DEFAULT nextval('card_translations_translation_id_seq'::regclass),
  "card_id" int4,
  "language_code" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "text_content" varchar(9999) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of card_translations
-- ----------------------------
INSERT INTO "public"."card_translations" VALUES (24, 24, 'en', 'By law schools must provide breaks in the day for meals rest and relaxation. If you were given the opportunity how would you work out how much time should be allocated to meal breaks rest relaxation and school holidays? Explain.');
INSERT INTO "public"."card_translations" VALUES (25, 25, 'en', 'The UN sets minimum standards for essentials such as food clothing medical care social services unemployment support disability widowhood and old age. What issues do you think the UN considered when they made this rule? Explain.');
INSERT INTO "public"."card_translations" VALUES (26, 26, 'en', 'The UN says education in the early years should be free and accessible to everyone. Also parents should have a choice in the kind of education given to their children. What do you think the UN is trying to achieve with this rule? Explain.');
INSERT INTO "public"."card_translations" VALUES (31, 31, 'en', 'You develop a sensory system for detecting earthquakes before they happen. Move your token to the Earthquake space and resume play.');
INSERT INTO "public"."card_translations" VALUES (32, 32, 'en', 'Your school installs a sensor operated system to detect fires before they spread. Move your token to the Fire space and resume play.');
INSERT INTO "public"."card_translations" VALUES (33, 33, 'en', 'You develop body warming clothing powered through walking to keep people warm during the winter. Move your token to the Freeze space and resume play.');
INSERT INTO "public"."card_translations" VALUES (34, 34, 'en', 'You develop a GPS tracking system for people to be found after an avalanche. Move your token to the Avalanche space and resume play.');
INSERT INTO "public"."card_translations" VALUES (35, 35, 'en', 'You develop a sensory system for detecting volcanos before they erupt. Move your token to the Volcano space and resume play.');
INSERT INTO "public"."card_translations" VALUES (36, 36, 'en', 'You develop body warming clothing powered through walking. Move your token to the Freeze space and resume play.');
INSERT INTO "public"."card_translations" VALUES (37, 37, 'en', 'You develop a sensory system for detecting volcanos before they erupt. Move your token to the Volcano space and resume play.');
INSERT INTO "public"."card_translations" VALUES (38, 38, 'en', 'You develop a GPS tracking system for people to be found after an avalanche. Move your token to the Avalanche space and resume play.');
INSERT INTO "public"."card_translations" VALUES (39, 39, 'en', 'Your school installs a sensor operated sprinkler system. Move your token to the Fire space and resume play.');
INSERT INTO "public"."card_translations" VALUES (40, 40, 'en', 'You develop a sensory system for detecting earthquakes before they happen. Move your token to the Earthquake space and resume play.');
INSERT INTO "public"."card_translations" VALUES (41, 41, 'en', 'Your football team beat the opponent. You shake hands with the players from the losing team and compliment them on a good game. Roll the die to see how many tokens you earn.');
INSERT INTO "public"."card_translations" VALUES (42, 42, 'en', 'A new student joins your class mid-term. You take time to make the student feel welcome and included in your class. Roll the die to see how many tokens you earn.');
INSERT INTO "public"."card_translations" VALUES (43, 43, 'en', 'During a classroom debate about human rights you continually interrupt the debater who is in favour of human rights because you disagree with human rights. Roll the die to see how many tokens you lose.');
INSERT INTO "public"."card_translations" VALUES (44, 44, 'en', 'You push and shove to get to the front of the line for the school bus so you can get the best seat. Roll the die to see how many tokens you lose.');
INSERT INTO "public"."card_translations" VALUES (45, 45, 'en', 'At lunch time you sit next to a boy whose religion requires him to eat a special diet. Respectfully you ask to taste his food and take an interest in his religion. Roll the die to see how many tokens you earn.');
INSERT INTO "public"."card_translations" VALUES (46, 46, 'en', 'You tell a joke that makes boys look smarter than girls. Roll the die to see how many tokens you lose.');
INSERT INTO "public"."card_translations" VALUES (47, 47, 'en', 'During class time a piece of paper containing a nasty rumor about Gabriela gets passed to you. Instead of passing it on you tear it up and throw it away. Roll the die to see how many tokens you earn.');
INSERT INTO "public"."card_translations" VALUES (48, 48, 'en', 'During lunch break you see a student fall down the stairs at your school. While other students laugh you help the student get up. Roll the die to see how many tokens you earn.');
INSERT INTO "public"."card_translations" VALUES (49, 49, 'en', 'During a scavenger hunt you lock another player in a room so that player can’t be found. Roll the die to see how many tokens you lose.');
INSERT INTO "public"."card_translations" VALUES (50, 50, 'en', 'You do not want Taniya in your class next year. You try and prevent Taniya from exercising her freedom of choice when it comes to subject choices for next year. Roll the die to see how many tokens you lose.');
INSERT INTO "public"."card_translations" VALUES (128, 128, 'en', 'You have strong opinions about what is right and wrong. However when students disagree with you you shut them down instead of considering their point of view. Roll the die to see how many tokens you lose.');
INSERT INTO "public"."card_translations" VALUES (129, 129, 'en', 'At the interschool baseball match you throw rotten fruit at the opposing team and yell obscenities. Roll the die to see how many tokens you lose.');
INSERT INTO "public"."card_translations" VALUES (130, 130, 'en', 'You are the editor of your school newspaper. You decide to feature a series of articles about leaders who have helped less privileged people. Roll the die to see how many tokens you earn.');
INSERT INTO "public"."card_translations" VALUES (57, 57, 'en', 'The UN says everyone is entitled without any discrimination to equal protection. At lunch time an older student snatches your lunch money out of your hand and says ‘Tell anyone and you are dead meat’. How would you handle this situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (61, 61, 'en', 'At school together with a group of other students you are all accused of cheating during a school exam. However you did not cheat and know the law says everyone must be presumed innocent until proven guilty. How would you handle the situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (110, 110, 'en', 'Essentially, the UN aims to protect the rights and freedoms of all people so that they can live with equality and dignity. How else could people’s rights and freedoms be protected? Explain.');
INSERT INTO "public"."card_translations" VALUES (111, 111, 'en', 'You develop a sensory system for detecting earthquakes before they happen. Move your token to the Earthquake space and resume play.');
INSERT INTO "public"."card_translations" VALUES (112, 112, 'en', 'Your school installs a sensor operated system to detect fires before they spread. Move your token to the Fire space and resume play.');
INSERT INTO "public"."card_translations" VALUES (113, 113, 'en', 'You develop body warming clothing powered through walking to keep people warm during the winter. Move your token to the Freeze space and resume play.');
INSERT INTO "public"."card_translations" VALUES (114, 114, 'en', 'You develop a GPS tracking system for people to be found after an avalanche. Move your token to the Avalanche space and resume play.');
INSERT INTO "public"."card_translations" VALUES (115, 115, 'en', 'You develop a sensory system for detecting volcanos before they erupt. Move your token to the Volcano space and resume play.');
INSERT INTO "public"."card_translations" VALUES (116, 116, 'en', 'Your school installs a sensor operated sprinkler system. Move your token to the Fire space and resume play.');
INSERT INTO "public"."card_translations" VALUES (117, 117, 'en', 'You develop body warming clothing powered through walking. Move your token to the Freeze space and resume play.');
INSERT INTO "public"."card_translations" VALUES (118, 118, 'en', 'You develop a GPS tracking system for people to be found after an avalanche. Move your token to the Avalanche space and resume play.');
INSERT INTO "public"."card_translations" VALUES (119, 119, 'en', 'You develop a sensory system for detecting volcanos before they erupt. Move your token to the Volcano space and resume play.');
INSERT INTO "public"."card_translations" VALUES (120, 120, 'en', 'You develop a sensory system for detecting earthquakes before they happen. Move your token to the Earthquake space and resume play.');
INSERT INTO "public"."card_translations" VALUES (121, 121, 'en', 'Your school loses the interschool basketball match. And loses badly. Instead of shaking hands and congratulating the winning team you call the referee and the winning team discriminatory names. Roll the die to see how many tokens you lose.');
INSERT INTO "public"."card_translations" VALUES (122, 122, 'en', 'Ava is your best friend. But you both have different opinions about religion. Instead of letting your differences get in the way of your friendship you both agree to respect each other’s differences. Roll the die to see how many tokens you earn.');
INSERT INTO "public"."card_translations" VALUES (123, 123, 'en', 'During a classroom debate you boo the debater who argues that asylum seekers have the right to be treated with freedom equality and dignity. Roll the die to see how many tokens you lose.');
INSERT INTO "public"."card_translations" VALUES (124, 124, 'en', 'Even though you have a busy schedule at school and after school you volunteer some of your time to teach English to people who sought asylum in your country. Roll the die to see how many tokens you earn.');
INSERT INTO "public"."card_translations" VALUES (125, 125, 'en', 'During a woodworking class Deon cuts his finger and then pees his pants (in shock). While the teacher gets first aid you shelter Deon from other students so they cannot see that Deon peed his pants. Roll the die to see how many tokens you earn.');
INSERT INTO "public"."card_translations" VALUES (126, 126, 'en', 'Whilst standing in the ticket queue at the movies you notice an alternative ethnic group and make racist jokes in a loud enough voice to be heard by them. Roll the die to see how many tokens you lose.');
INSERT INTO "public"."card_translations" VALUES (127, 127, 'en', 'At the mall you often see some groups of people treated poorly by shopkeepers. After raising the matter with your parents you ask your school how you can make a positive difference. Roll the die to see how many tokens you earn.');
INSERT INTO "public"."card_translations" VALUES (142, 142, 'en', 'Milani wanted to get to know you in a more personal way. So she hacked your laptop, read your communications and diary. You found out. You know the UN says everyone is entitled to privacy. What issues would you consider before doing anything? Explain.');
INSERT INTO "public"."card_translations" VALUES (144, 144, 'en', 'Your school has decided to support a family who has sought asylum from persecution and has moved to your neighborhood. Your school asked you to help the asylum seekers assimilate into your neighborhood. How would you go about helping? Explain.');
INSERT INTO "public"."card_translations" VALUES (154, 154, 'en', 'The UN says everyone is entitled to breaks and holidays. You get a part-time job downtown at Mike’s Diner. Soon you learn that the staff who take their legal breaks during shift time no longer get shifts. You need the income. What would you do? Explain.');
INSERT INTO "public"."card_translations" VALUES (2, 2, 'en', 'At school camp you were taught that everyone is born free and is entitled to equality dignity and rights. You were also taught that prisons are for people who commit serious crimes. Do you think prisoners are entitled to equality dignity and rights? Explain.');
INSERT INTO "public"."card_translations" VALUES (6, 6, 'en', 'Yang has autism which means he has trouble understanding facial expressions. The UN says everyone is entitled to be treated as a person yet Yang is left out of too many school activities because of his disability. How do you think Yang could be treated as a person and included equally in school activities? Explain.');
INSERT INTO "public"."card_translations" VALUES (7, 7, 'en', 'You know that discrimination is illegal. On the playing field at school sports teams regularly call each other discriminatory names about each others appearance as if it is okay and acceptable. After all it’s only a game. Do you think this behavior is acceptable? Explain.');
INSERT INTO "public"."card_translations" VALUES (150, 150, 'en', 'You love music. In fact, your life would be empty without it. Outside of school, you hang out in the park with groups of rockers and play music. An old lady approaches you and says, ‘I don’t like your music, take it elsewhere’. You know you and your rocker friends have the right to peaceful assembly and association. How do you handle the situation with dignity and respect towards the old lady? Explain.');
INSERT INTO "public"."card_translations" VALUES (155, 155, 'en', 'Some say workers should be paid the minimum wages possible to keep the cost of clothes and products as cheap as possible. The UN says everyone is entitled to a minimum standard of living. If you were offered clothing you know had been made by people who cannot afford a minimum standard of living, what factors would you consider before making your decision? Explain.');
INSERT INTO "public"."card_translations" VALUES (14, 14, 'en', 'The term asylum is used to describe a situation when a country takes in people for protection from another country because the other country has been persecuting them due to their race religion or political beliefs. The UN says everyone is entitled to asylum. What issues do you think the UN considered when they said everyone is entitled to asylum? Explain.');
INSERT INTO "public"."card_translations" VALUES (18, 18, 'en', 'The UN says ‘Everyone has the right to freedom of thought conscience (character) and religion’. What do you think would happen if everyone in your school had easy access to each other’s thoughts inner feelings conscience (character) and religion? Explain.');
INSERT INTO "public"."card_translations" VALUES (17, 17, 'en', 'Property can be anything such as clothing money cell phones computers cars and a home. The UN says everyone has the right to own property. During a class discussion your teacher asked what would happen if everyone just helped themselves to whatever they wanted whenever they wanted it. If it was your turn to respond what would you say? Explain.');
INSERT INTO "public"."card_translations" VALUES (27, 27, 'en', 'Cultural life is a term that refers to the unique qualities of a community improved through participation in for example music dancing art writing sports and science that bring people together. The UN says everyone is entitled to a cultural life and the benefits associated with participation. What do you think might happen to any people who are excluded from a cultural life? Explain.');
INSERT INTO "public"."card_translations" VALUES (23, 23, 'en', 'The UN says everyone has the right to work and to choose the sort of work they want to do equal pay for equal work and the right to be a member of a trade union for protection of his or her rights. If everyone’s work rights were not protected what do you think might happen? Explain.');
INSERT INTO "public"."card_translations" VALUES (22, 22, 'en', 'The UN says everyone is entitled to the free development of their personality (character). If a student shows signs of developing a thief’s personality and has previously broken several school rules should that student still be entitled to the free development of their personality? Explain.');
INSERT INTO "public"."card_translations" VALUES (21, 21, 'en', 'Everyone knows Raymond has a stutter/stammer. So what’s the big deal? Well Raymond has opinions and ideas and would like to express them just as the UN says he has a right to do so. The big deal is that no one takes the time to listen to Raymond. Raymond gets frustrated and feels excluded. What could your school do to help Raymond feel included? Explain.');
INSERT INTO "public"."card_translations" VALUES (30, 30, 'en', 'The UN has developed a series of rules called Articles based on everyone (without exception) having rights & responsibilities when it comes to freedom equality and dignity. What do you think the world would be like if people had limited freedom were not treated equally or were not treated with dignity? Explain.');
INSERT INTO "public"."card_translations" VALUES (28, 28, 'en', 'The UN says everyone should be protected by basic rules and laws in relation to everyone’s rights and freedoms. Yet some might say there are too many basic rules and laws. What do you think would happen in your school community and throughout the world if we did not have basic rules and laws? Explain.');
INSERT INTO "public"."card_translations" VALUES (29, 29, 'en', 'Along with rights and freedoms the UN also says that all people have duties and responsibilities to their community as part of the development of their personalities (characters). Describe how you think peoples’ personalities would develop if people had rights and freedoms without duties and responsibilities. Explain.');
INSERT INTO "public"."card_translations" VALUES (54, 54, 'en', 'You are invited to Steven’s place after school. Steven wants to play a computer game which involves characters becoming slaves and slaves being traded to make money. Although it seems fun you know that slavery and slave trade violates human being’s basic rights and is against the law. You feel uncomfortable but want to fit in. How would you handle the situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (56, 56, 'en', 'Regardless of your upbringing beliefs and family you have the right to be treated as a person worthy of respect says the UN. As a person you are kind caring and friendly. However in the playground some students treat you in ways that are not kind caring and friendly. How could you handle this situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (55, 55, 'en', 'Sara is known to be ticklish. In fact she can become hysterical if she is tickled too much. While this might sound funny to some the UN could argue that it is cruel and degrading behavior. If you were tickled to the point of hysteria how would you handle the situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (53, 53, 'en', 'As a Grade 8 student you are teamed up as a school mentor with Oliva a Grade 5 student moving up in the fall. Based on the UN your school’s motto is ‘Everyone has the right to life liberty and security of person’. Oliva asks you what the school motto means. What would you say?');
INSERT INTO "public"."card_translations" VALUES (51, 51, 'en', 'Your family won the opportunity to be one of the first families to help colonize planet Mars. Part of your family’s job will be to follow the UN’s rules by making sure all human beings are born free and equal in dignity and rights and treat each other in a spirit of ‘understanding and friendship’. Explain how your family could go about fulfilling their job.');
INSERT INTO "public"."card_translations" VALUES (52, 52, 'en', 'Without question and regardless of background religious & political beliefs or financial status everyone has freedom and rights says the UN. You want to hang out with Ashley which is okay with Ashley. However Pedro who also likes Ashley says no. How would you handle this situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (76, 76, 'en', 'Your mom’s work takes your family to another country. In that country, education is not compulsory or required, and it is very expensive for those who can afford it. You have been given the choice to go to school or join the children in the streets. What option would you pick? Explain.');
INSERT INTO "public"."card_translations" VALUES (80, 80, 'en', 'School rules help to maintain social order and discipline. They also help to ensure that students rights and freedoms are protected. A group of disruptive students want to defy your school rules. They put pressure on you to participate in their disruptive activities.  You feel uncomfortable but want to somehow fit in. How would you handle the situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (77, 77, 'en', 'Heidi is mean. She is trying to isolate you by preventing you from participating in activities that bring people together. You know the UN says everyone is entitled to a cultural life involving activities such as music, dancing, art, writing, sports and science that bring people together. How would you handle this situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (82, 82, 'en', 'You know the UN says everyone has equal rights and freedoms and must be treated with dignity and equality. You also know that it is common for bias, prejudices and stereotyping to develop from birth. How could your community help counteract bias, prejudices and stereotyping and foster an environment of dignity and equality? Explain.');
INSERT INTO "public"."card_translations" VALUES (84, 84, 'en', 'Your friend Amelia got a summer job supervising employees pick & pack stock for shipping. Amelia discovered the employees were not allowed to leave the building and worked extremely long hours. Amelia knows that it is illegal for people to be held in slavery or servitude and worries she will be treated similarly. Amelia needs the job to pay for her tuition fees. Amelia asks your advice. What would you say? Explain.');
INSERT INTO "public"."card_translations" VALUES (83, 83, 'en', 'A new born baby is left wrapped up on the doorstep of a hospital without any sight of its parents. The UN says everyone has the right to life, freedom and safety as a person. Whose responsibility do you think it is to make sure the baby’s rights are protected? Explain.');
INSERT INTO "public"."card_translations" VALUES (74, 74, 'en', 'During class time, your teacher reads out a news item arguing schools should be open  all year round with only a few days off at Christmas and Easter. You are asked to give your opinion. You know the UN says everyone has the right to rest, leisure and holidays. What would you say? Explain. ');
INSERT INTO "public"."card_translations" VALUES (81, 81, 'en', 'The UN says all human beings are born free and equal in dignity and rights. They are also endowed with reason and conscience (character) and should act towards one another in the spirit of understanding and friendship. Describe what you would expect to see when human beings are acting in a spirit of understanding and friendship towards each other. Explain.');
INSERT INTO "public"."card_translations" VALUES (69, 69, 'en', 'During a class discussion you are expressing an opinion about history that nobody likes. In fact, they dislike it so much they boo you. According to the UN, this would be an example of you being denied your freedom of opinion and expression. How would you handle the situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (68, 68, 'en', 'Yes, you are a bit of a dreamer and often go off in your own thoughts and imagination. The UN says you have the right and freedom to do so. Yet, other kids have begun teasing you about this on a regular basis. How would you deal with this situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (71, 71, 'en', 'You were elected to school council as a student representative. According to the UN it would be your job to follow the will (desires) of the students when performing your job. What issues would you consider if some students asked for more school rules and other students asked for less school rules? Explain.');
INSERT INTO "public"."card_translations" VALUES (75, 75, 'en', 'The UN says everyone has the right to a minimum living standard that makes for example, food, clothing, housing, education, public transport and medical care affordable. Yet, several children regularly come to school without lunch or lunch money, and ask you to share your lunch. At first you are happy to share, but soon it becomes a habit. How would you handle this situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (95, 95, 'en', 'The term ‘nationality’ can be used to describe a person’s right to belong to a particular country or nation. The UN says people have the right to a nationality and to change nationality. What do you think the world would be like if everyone could move freely and it was easier to change nationalities? Explain.');
INSERT INTO "public"."card_translations" VALUES (79, 79, 'en', 'Along with rights and freedoms, the UN also says that all people have duties and responsibilities to their community as part of the development of their personalities (characters). Let’s say you have been given the choice to have rights without responsibilities or rights with responsibilities. Which would you choose? Explain. ');
INSERT INTO "public"."card_translations" VALUES (78, 78, 'en', 'The UN would say school rules are put in place to make sure that everyone’s rights and freedoms are maintained. You have the choice to go to a school with fewer rules, so you have more freedom to do what you want or to a school with more rules and less freedoms. Which school would you choose? Explain.');
INSERT INTO "public"."card_translations" VALUES (100, 100, 'en', 'A group of people assemble downtown because they share a common interest. However, they use this assembly to forcefully coerce passers-by to join their assembly. The UN says everyone has the right to freedom of peaceful assembly and association. And no one should be compelled to belong to any assembly. How could this group recruit new members without being forceful? Explain.');
INSERT INTO "public"."card_translations" VALUES (96, 96, 'en', 'If your country is a member of the UN, its people have the right to marry with freedom of choice, equal rights and the protection of its country. Two people who grew up in the same street and regularly played together decide to marry. However, their parents disapprove due to their cultural differences. How would you advise this couple to handle their situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (99, 99, 'en', 'Raymond joins one of the school’s debating teams. He has opinions, ideas and would like to express them, just as the UN says he has a right to do so. Everyone knows Raymond has a stutter/stammer. Yet, no one takes the time to listen to him. Instead they put words in his mouth. Raymond gets frustrated and feels excluded. What changes could the school make to help Raymond feel more included? Explain.');
INSERT INTO "public"."card_translations" VALUES (98, 98, 'en', 'The UN says everyone has the right to freedom of thought, conscience (character) and religion. Also, everyone has the right to freedom of speech. What is your opinion about a situation when propaganda or peer pressure is used to influence others to change their thoughts, feelings and beliefs about matters such as religion, freedom, war, politics and prejudice? Explain.');
INSERT INTO "public"."card_translations" VALUES (93, 93, 'en', 'One way teens develop independence, confidence and resiliency is through travel and adventures. Maybe this is why the UN says everyone has the right to free movement and to live where they want within their country (subject to available housing). What do you think life would be like if people did not have this freedom? Explain.');
INSERT INTO "public"."card_translations" VALUES (97, 97, 'en', 'Property can be anything such as clothing, money, cell phones, computers, cars and a home. The UN says everyone has the right to own property. Two homeless people are seen fighting in the street about blankets left by passing people. If the police were called, how do you think they should handle the situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (103, 103, 'en', 'According to the UN everyone has the right to work and to choose the sort of work they want to do, equal pay for equal work, and the right to be a member of a trade union for protection of his or her rights. Yet, some say its best for grandparents to retire and make room for younger workers. What do you think? Explain.
');
INSERT INTO "public"."card_translations" VALUES (109, 109, 'en', 'Along with having rights and freedoms, the UN says all people have duties and responsibilities to their communities as part of the development of their personalities (character). Yet, some say duties and responsibilities get in the way of people’s rights and freedoms. What do you think? Explain.');
INSERT INTO "public"."card_translations" VALUES (107, 107, 'en', 'Cultural life is a protected human right that refers to the unique qualities of a community improved through participation in for example scientific inquiry, literacy and artistic activities. During a writer’s camp, two people read each other’s work. One person seems to take an idea from the other person’s work and turns it into a best-selling book. What issues would you consider when expressing an opinion about this behavior? Explain.');
INSERT INTO "public"."card_translations" VALUES (101, 101, 'en', 'The UN says everyone regardless of income, status and background has the right to participate in the government of their country. Furthermore, people elected to participate in the government of their country are required to follow the will of the people when performing their job. What issues do you think politicians need to consider to ensure that they are correctly following the will of the people? Explain. ');
INSERT INTO "public"."card_translations" VALUES (106, 106, 'en', 'The UN says education in the early years should be free and accessible to everyone, and that parents should have a choice in the kind of education given to their children. Some could argue differently. What do you think are the pros and cons of free and accessible education in the early years? Explain.');
INSERT INTO "public"."card_translations" VALUES (133, 133, 'en', 'Imagine, you are the captain of the Titanic, which has just hit an iceberg and is rapidly sinking. You know everyone has the right to life, liberty and security. You also know there are not enough life vests on board for everyone to have one. How would you handle this situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (131, 131, 'en', 'The UN says everyone is born free and equal in dignity and human rights and should treat each other in a spirit of understanding and friendship. However, in your school, there are some students you just don’t like. Even so, you need to treat them in the spirit of understanding and friendship. Give one example of how you could do so. Explain.');
INSERT INTO "public"."card_translations" VALUES (132, 132, 'en', 'Even though the UN says everyone is entitled to rights and freedoms, one way some people get more power is by limiting the rights and freedoms of other people. Imagine you were elected the president or prime minister of your country with the power to make changes. How would you address the issue of peoples’ rights and freedoms in your country? Explain.');
INSERT INTO "public"."card_translations" VALUES (145, 145, 'en', 'As part of a class assignment, your group has been selected to develop a framework for a new world order which following the United Nations  Declaration of Human Rights must allow its inhabitants the right to a nationality and to change nationality.  What issues would you consider when developing  your framework? Explain.');
INSERT INTO "public"."card_translations" VALUES (139, 139, 'en', 'One day, your teacher walked into class and told a joke. You thought the joke was hilarious and burst into fits of uncontrollable laughter. The teacher wanted to start the lesson, but you could not stop laughing. Your teacher gave you two detentions. You believe your rights were violated since the UN says you should be protected from unfair judgments. How do you handle this situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (147, 147, 'en', 'You are the youngest of three children born on your family’s farm. Your parents believe that the farm should be passed on to the first born. However, you learned from the UN, everyone has the right to own property alone as well as in association with others and no one shall be arbitrarily deprived of his or her property. You love your parents and your siblings but want your share. How do you handle this situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (136, 136, 'en', 'Soon after getting a summer job, you feel like a soulless machine. Your supervisor continually harasses you to increase your output. He even clocks the amount of time you spend in the bathroom. You know the UN says everyone is entitled to recognition (rights) and equal treatment as a human being, but you also need the job to pay your living expenses. How do you handle this situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (138, 138, 'en', 'You witness what you think was a robbery by a student at your school. You were taught that everyone has the right to an effective remedy (solution). Although you intensely dislike this student, should this student be given the benefit of doubt and be entitled to an effective remedy by your school? Explain.');
INSERT INTO "public"."card_translations" VALUES (134, 134, 'en', 'You are invited to Steven’s place to watch him compete to win a prize for being the best online slave trader. It seems like an exciting and fun game, and you would like to cheer Steven on. However, you know that slavery and slave trade violates everyone’s basic rights. You feel uncomfortable but want to fit in. How would you handle this situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (135, 135, 'en', 'As close friends, you and Chayton hang out together and share almost everything. Surprisingly, Chayton shared a secret of yours with another student. The secret was spread throughout your school. You are furious and fuming mad. The UN says inhuman or degrading treatment or punishments is illegal. You want to get back at Chayton BIG time. With this knowledge, how do you handle this situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (146, 146, 'en', 'You are madly in love with your next-door neighbor. You are both almost of full age and would like to marry each other. However, both sets of parents dislike each other and refuse to give their approval for you both to marry. The UN says you both have the right to marry freely. You both love your parents and do not want to upset them. How do you handle this situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (159, 159, 'en', 'You have been taught there is a connection between your duties to the community and the free and full development of your personality (character). You have been given the choice to just take without contributing to your community, or take and contribute to your community. What issues would you consider before making your choice? Explain.');
INSERT INTO "public"."card_translations" VALUES (1, 1, 'en', 'A note is secretly passed around during class time. It says ‘Don’t invite Luis to the ball game’. At school you were taught that all people should treat each other with dignity friendship and understanding. The note lands on the teacher’s desk. What do you think the teacher should do? Explain.');
INSERT INTO "public"."card_translations" VALUES (3, 3, 'en', 'The UN says everyone has the right to life freedom and safety. While Santiago is involved in a science class dissecting dead mice for science purposes he wonders how the right to life freedom and safety applies to animals. If Santiago asked your opinion what would you say? Explain.');
INSERT INTO "public"."card_translations" VALUES (4, 4, 'en', 'Imagine a highly engaging game hits the online world. It uses slavery and slave trade to teach teens how to manage money. It was an instant hit. However three months later it became banned. Although you have been taught slavery in all forms is prohibited do you think this game should have been banned? Explain.');
INSERT INTO "public"."card_translations" VALUES (8, 8, 'en', 'People make mistakes some more seriously than others. It is one way people learn. Some people make mistakes that break the law accidentally or purposefully. The UN says everyone has the right to a fair and effective solution. During a class test you see your friend copying the answers from another student. What issues would you consider before doing anything? Explain.');
INSERT INTO "public"."card_translations" VALUES (10, 10, 'en', 'If someone breaks the law either knowingly or unknowingly that person according to the UN is entitled to fair treatment by an independent judge or court. If the person going to court had already confessed to assualting someone in the past should the person be given fair treatment? Explain.');
INSERT INTO "public"."card_translations" VALUES (9, 9, 'en', 'At the mall you see a Grade 12 student arrested by the police and taken away with his hands cuffed. The police say they are protecting the mall from people with undesirable appearances. The UN says people are not allowed to be arrested or detained unfairly using appearance as the only reason. How else could police keep the mall safe fairly? Explain.');
INSERT INTO "public"."card_translations" VALUES (5, 5, 'en', 'Emily gets really mad at Keanu because Keanu spread a mean rumor about her at school. Keanu will not apologize or retract the rumor. Even though Emily knows that torture or punishment is prohibited she is tempted to get back at Keanu. What else could Emily do? Explain.');
INSERT INTO "public"."card_translations" VALUES (16, 16, 'en', 'Noah sits next to you in class. He tells you his older sister Madison wants to marry Daniel but their parents have chosen another husband for Madison. Naturally Madison is upset. The UN says everyone of age has the right to marry freely and divorce freely. Noah asks your opinion on the matter. What would you say? Explain.');
INSERT INTO "public"."card_translations" VALUES (13, 13, 'en', 'A member of a group of people who live an alternative life far from the city wants to visit the city. The group says no. They don''t want any of their members getting influenced by city life. You know everyone has the right to free movement and to live where they want within their country (subject to available housing). What is your opinion about this group''s decision to hold back this member? Explain.');
INSERT INTO "public"."card_translations" VALUES (20, 20, 'en', 'Your friend Michelle is elected to school council as a student representative. According to the UN it would be your friend’s job to follow the will (desires) of the students when performing her job. What steps do you think your friend could take if the will of the students involved having some school rules changed? Explain.');
INSERT INTO "public"."card_translations" VALUES (12, 12, 'en', 'If privacy means your right to keep your personal thoughts opinions relationships and the contents of your laptop & phone secret then the law should protect your privacy. Can you think of situations when it would be okay for someone else to access your privacy? Explain.');
INSERT INTO "public"."card_translations" VALUES (15, 15, 'en', 'The term nationality can be used to describe a person’s right to belong to a particular country or nation. The UN says people have the right to a nationality and to change nationality. Why do you think nationality and the right to change it is important? Explain.');
INSERT INTO "public"."card_translations" VALUES (11, 11, 'en', 'During a ball game the referee charges Jose with swearing and gives him a three-week suspension. Jose did not swear. Due to Jose’s distinct accent almost everyone knows Jose did not swear. The UN says everyone has the right to be presumed innocent until proven guilty. What could you advise Jose to do? Explain.');
INSERT INTO "public"."card_translations" VALUES (19, 19, 'en', 'Your school’s basketball team was looking forward to meeting up at the mall for a celebratory lunch. When the team arrived at the mall security told them that groups are not allowed to congregate in public spaces. Yet based on the UN you know your team has the right to do so peacefully. How could your team handle this situation if it happened again? Explain.');
INSERT INTO "public"."card_translations" VALUES (60, 60, 'en', 'You are on summer camp. Another student complains to the camp organizers of being bullied by you. You know the complaint is untrue and unfounded. At school you were taught that you are entitled to a fair and open hearing for matters like this. How would you handle the situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (59, 59, 'en', 'Your teacher told a joke. You thought it was hilarious and burst into fits of uncontrollable laughter. The teacher wanted to start the class but you couldn''''t stop laughing. The teacher gave you two detentions for being disruptive. You believe your rights were violated since the UN says you should be protected from unfair judgments. How do you handle this situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (58, 58, 'en', 'People make mistakes some more seriously than others. It is one way people learn. Some people make mistakes that break the law accidentally or purposefully. The UN says everyone has the right to a fair and effective solution. During a class test you see your friend copying the answers from another student. What issues would you consider before doing anything? Explain.');
INSERT INTO "public"."card_translations" VALUES (72, 72, 'en', 'The UN says everyone is a member of society (community) and has the right to freely develop his or her personality (character). Playing sports is one way people develop their personality. Imagine you are wheelchair bound and cannot play sports. How else could you develop your personality? Explain.');
INSERT INTO "public"."card_translations" VALUES (70, 70, 'en', 'It’s the weekend, you and your friends are hanging out at the public skate park. A man comes up to your group and says, ‘You’re only allowed here if you join our skate club’. You have been taught differently by the UN. How would you handle the situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (67, 67, 'en', 'You are on an airplane watching a movie on your iPad. The teenage girl behind asks to try out your iPad. You agree. When you ask for your iPad back, the girl says she wants to keep it and refuses to give it back. The UN says you are entitled to own property. While respecting the girl’s right to  freedom, equality & dignity what could you say or do to get your iPad back? Explain.');
INSERT INTO "public"."card_translations" VALUES (62, 62, 'en', 'Your parents are filling in a form for you to go on a summer camp. The form requests the login details of your social media accounts. You were taught at school the UN gives you rights to your privacy. How could you protect your privacy while providing the login details of your social media accounts to the camp organizers?  Explain.');
INSERT INTO "public"."card_translations" VALUES (63, 63, 'en', 'The UN says everyone has the right to move freely within their country and (subject to available housing) live almost anywhere within their country. Your government wants to house a large group of refugees in your neighborhood and wants to know your opinion. What issues would you consider before sharing your opinion? Explain.');
INSERT INTO "public"."card_translations" VALUES (66, 66, 'en', 'The UN says everyone of full age has the right, without any limitation, to marry. In some cultures where people have other beliefs, marriages are arranged by parents. Imagine, you are of full age and in love. But your parents arranged for you to marry someone else. How would you handle the situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (65, 65, 'en', 'The UN says people have the right to a nationality and to change nationality. The term nationality can be used to describe a person’s right to belong to a particular country or nation. Your family would like to move to another country for a few years to experience a different lifestyle. You have the choice to change your nationality. What would you do? Explain.');
INSERT INTO "public"."card_translations" VALUES (64, 64, 'en', 'Your parents ask you to share your bedroom as they have taken in a family seeking asylum. This term asylum refers to  people being persecuted due to their race, religion or political beliefs being entitled to safety. What issues would you consider before giving your parents your response? Explain.');
INSERT INTO "public"."card_translations" VALUES (73, 73, 'en', 'You know the UN says everyone has the right to work with favorable conditions (pay, breaks etc). While having a meal at Joe’s diner you hear one person say to the other person, ‘Food would be more affordable if we did not have to tip servers’. They then turn to you and ask your opinion. What would you say? Explain.');
INSERT INTO "public"."card_translations" VALUES (91, 91, 'en', 'Innocent until proven guilty is a fundamental UN human right. A group of students from your school say they saw a criminal act. Should the person they say they saw committing a criminal act be presumed guilty without the person having the opportunity to defend themselves? Explain.');
INSERT INTO "public"."card_translations" VALUES (87, 87, 'en', 'It has become common for children and teens to belong to a mixture of family types with parents in a variety of relationships. The UN says all people are equal before the law and are entitled without any discrimination to equal protection before the law. Some of these families find discriminatory graffiti outside their homes. What could your community do to counteract this activity? Explain.');
INSERT INTO "public"."card_translations" VALUES (92, 92, 'en', 'Typically, privacy means people’s right to keep their personal thoughts, opinions, relationships and the contents of their devices secret. Desmond and Anthony were working on a take-home test in the library with their laptops open. Without asking, Anthony decides to explore the contents of Desmond’s laptop while Desmond is in the wash room. Before expressing your opinion about Anthony’s behaviour what issues would you consider? Explain.');
INSERT INTO "public"."card_translations" VALUES (90, 90, 'en', 'A nurse with an excellent professional record is charged with stealing prescription drugs from the hospital where she works. This nurse follows a certain faith and lives in a community known to discriminate against her faith. The UN says everyone is entitled equally to a fair and impartial public hearing. In this case, should the discrimination against the nurse’s faith be included in her defence alongside her excellent professional record? Explain. ');
INSERT INTO "public"."card_translations" VALUES (85, 85, 'en', 'The UN says no one shall be subjected to torture, cruel, inhuman or degrading treatment or punishment. Lily dumps Ethan, her boyfriend, one week before the school prom because she got a better offer from Nate, the football captain. Ethan is hurt. He is also really angry and wants to get back at Lily. If you were Ethan’s friend, what advice would you give him? Explain.');
INSERT INTO "public"."card_translations" VALUES (89, 89, 'en', 'During a visit to the mall you see Emmet, a classmate, being frog-marched out of the mall with his hands cuffed behind his back. Emmet says he was identified as a security risk because of his appearance. You know no one shall be subjected to arbitrary arrest, detention or exile. What could your community do to prevent this sort of arbitrary arrest taking place in the future? Explain.');
INSERT INTO "public"."card_translations" VALUES (88, 88, 'en', 'At school, a student stole another student’s phone, sold it and got caught. Based on the UN, the school had the choice to call the police or have the community’s youth services committee review the case and impose a consequence. The school chose not to call the police. What do you think would be an appropriate consequence? Explain.');
INSERT INTO "public"."card_translations" VALUES (86, 86, 'en', 'Recognition as a person before the law is considered everyone’s right according to the UN. A person with a mental health problem has committed a crime. Is that person entitled to the same level of recognition (rights) before the law as a person without mental health challenges? Explain.');
INSERT INTO "public"."card_translations" VALUES (94, 94, 'en', 'The term asylum is used to describe a situation when a country takes in people for protection from another country because the other country has been persecuting them due to their race, religion or political beliefs. The UN says everyone is entitled to asylum. The number of people seeking asylum seems to be rapidly increasing.  Before expressing your opinion about this situation, what factors would you consider? Explain.');
INSERT INTO "public"."card_translations" VALUES (105, 105, 'en', 'The UN says everyone has the right to a minimum living standard that makes goods and services such as food, clothing, housing, education, public transport and medical care affordable. What issues would you consider if asked whose responsibility it is to maintain minimum living standards? Explain.
');
INSERT INTO "public"."card_translations" VALUES (108, 108, 'en', 'The UN says everyone should be protected by basic rules and laws in relation to everyone’s rights and freedoms. At school you are asked to vote for a reduction in school rules so that there is more freedom for students. Before casting your vote, what issues would you consider? Explain.');
INSERT INTO "public"."card_translations" VALUES (104, 104, 'en', 'The UN says schools must provide breaks in the day for meals, rest and relaxation. If given the opportunity, how would you work out how much time should be allocated to meal breaks, relaxation and school holidays? Explain.');
INSERT INTO "public"."card_translations" VALUES (102, 102, 'en', 'The UN says everyone is a member of society (community) and has the right to freely develop their personality (character). Socializing is one-way people develop their personality. When prisoners are kept in isolation in jail, what impact do you think it has on their personality? Explain.');
INSERT INTO "public"."card_translations" VALUES (149, 149, 'en', 'During your presentation in a school debate, several students interrupt and slam your argument before you have even finished your presentation. You know that everyone has the right to freedom of opinion and expression without interference. How do you handle the situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (152, 152, 'en', 'Near the mall you see an adult intimidating a child. The child looks fearful and afraid. As the adult leaves, the child begins to cry and looks towards you for help. You know everyone has the right to the free and dignified development of his/her personality (character) and to feel secure and safe. How do you handle the situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (156, 156, 'en', 'You have been offered a scholarship to study in Finland. In Finland, regardless of income, status and intellectual ability, all students go to the same school system. In your country, the system is quite different. What issues would you consider before making your decision? Explain.');
INSERT INTO "public"."card_translations" VALUES (148, 148, 'en', 'One of your close friends who was born to one religion decides to change to another religion. The UN says she has the free right to do so. Although you respect your friend’s new religious beliefs, they are different from yours and now cause tension to your relationship. How do you handle this situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (160, 160, 'en', 'School rules help maintain social order and discipline. They also help to ensure that students’ rights and freedoms are protected. A group of disruptive students defy your school rules. They put pressure on you to participate in their activities. You want to look cool and fit in, but do not want to defy your school’s rules. How do you handle the situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (158, 158, 'en', 'You have been sent to Mars to help colonize it. When you arrive you discover mayhem, disorganization and a culture of oppression, bullying and harassment. The UN says everyone is entitled to a social order with freedoms and rights. You have been given a leadership role. What issues would you consider when exercising your leadership role? Explain.');
INSERT INTO "public"."card_translations" VALUES (137, 137, 'en', 'You have a part-time job in a fast food café. While at work, you see a server drop a plate of food she is carrying. Her supervisor screams at her, calls her names and says something nasty about her appearance. The server looks at you for help. You know discrimination is illegal. How would you handle this situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (143, 143, 'en', 'You decide to explore your country before making a career decision. The UN says everyone has the right to freedom of movement within their country.  However, at the beginning of your adventure, Border Force security prevent you from boarding your plane because without explanation they see your appearance as a security risk. How would you handle the situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (140, 140, 'en', 'Ben is known to have light fingers. You are at a party. You discover your phone is missing. You scream out, ‘My phone has been stolen, grab Ben’. Also, without thinking, your friends surround Ben and search him. Sofia turns to your friends and says, ‘Release Ben, he has rights. It’s illegal to take the law into your own hands’. If you had the experience again, how could you assert your rights without breaking the law? Explain.');
INSERT INTO "public"."card_translations" VALUES (157, 157, 'en', 'Your friend Emile invites you to meet for lunch at a new trendy café. As you walk through the front door of the café, you feel intimidated by the cultural difference you see. Everyone seems to be staring at you. Although you know everyone has the right to freely participate in the cultural life of its community that brings people together, you feel like escaping. How do you handle the situation? Explain.
');
INSERT INTO "public"."card_translations" VALUES (141, 141, 'en', 'You see a theft in a busy café. A lady has taken the purse from another lady’s bag and run down the street. You call the police. The police arrive, question you and inform you that everyone is innocent until proven guilty. The other lady steps forward and explains she asked her friend to take her purse because she needed to buy something from another store before it closed. Next time, how would you handle such a situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (151, 151, 'en', 'You are elected to school council as a student representative. According to the UN, as a student representative you are required to follow the will of the students when performing your job. Soon after, you are  pressured to join a group of students dealing in drugs. You feel uncomfortable,  want to fit in, but also know dealing in drugs is illegal. How do you handle this  situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (153, 153, 'en', 'Let’s say you were born the child of a baker. You feel duty bound to become a baker as well and join the family business. You also know you are entitled to a free choice of employment. Your career interests lie elsewhere and you love your family. How do you handle the situation? Explain.');
INSERT INTO "public"."card_translations" VALUES (254, 134, 'de', 'Du bist zu Steven eingeladen, um ihm dabei zuzusehen, wie er um den Preis als bester Online-Sklavenhändler kämpft. Es scheint ein aufregendes und lustiges Spiel zu sein, und Du möchtest Steven anfeuern. Du weißt jedoch, dass Sklaverei und Sklavenhandel die Grundrechte aller verletzen. Du fühlst Dich unwohl, möchtest Dich aber anpassen. Erkläre, wie Du mit dieser Situation umgehen würdest.');
INSERT INTO "public"."card_translations" VALUES (255, 135, 'de', 'Als enge Freunde hängst Du mit Chayton zusammen ab und Ihr teilt fast alles. Überraschenderweise hat Chayton ein Geheimnis von Dir mit einem anderen Schüler geteilt. Das Geheimnis wurde in Deiner Schule verbreitet. Du bist stinksauer und wütend. Die UNO sagt, dass unmenschliche oder erniedrigende Behandlung oder Bestrafung illegal ist. Du willst es Chayton aber unbedingt heimzahlen. Erkläre, wie Du angesichts dieses Wissens mit der Situation umgehst.');
INSERT INTO "public"."card_translations" VALUES (256, 136, 'de', 'Kurz nachdem Du einen Sommerjob bekommen hast, fühlst Du Dich wie eine seelenlose Maschine. Dein Vorgesetzter schikaniert Dich ständig, um Deine Leistung zu steigern. Er misst sogar die Zeit, die Du im Badezimmer verbringst. Du weißt, dass die UNO sagt, dass alle einen Anspruch auf Anerkennung und Gleichbehandlung als Mensch haben, aber Du brauchst den Job auch, um Deinen Lebensunterhalt zu bestreiten. Erkläre, wie Du mit dieser Situation umgehst.');
INSERT INTO "public"."card_translations" VALUES (257, 137, 'de', 'Du hast einen Nebenjob in einem Fast-Food-Café. Während der Arbeit siehst Du, wie eine Kellnerin einen Teller mit Essen fallen lässt, den sie trägt. Deine Vorgesetzte schreit sie an, ruft ihren Namen und sagt etwas Gemeines über ihr Aussehen. Die Kellnerin sieht Dich hilfesuchend an. Du weißt, dass Diskriminierung illegal ist. Erkläre, wie Du mit dieser Situation umgehen würdest.');
INSERT INTO "public"."card_translations" VALUES (259, 139, 'de', 'Eines Tages kam dein Lehrer in die Klasse und erzählte einen Witz. Du fandest den Witz urkomisch und brachst in unkontrollierbares Gelächter aus. Der Lehrer wollte den Unterricht beginnen, aber Du konntest nicht aufhören zu lachen. Dein Lehrer hat Dir zwei Nachsitzen gegeben. Du glaubst, dass Deine Rechte verletzt wurden, da die UNO sagt, dass Du vor unfairen Urteilen geschützt werden solltest. Erkläre, wie Du mit dieser Situation umgehst.');
INSERT INTO "public"."card_translations" VALUES (260, 140, 'de', 'Ben ist bekannt dafür, leichte Finger zu haben. Du bist auf einer Party, und stellst fest, dass Dein Telefon fehlt. Du schreist: „Mein Handy wurde gestohlen, schnappt Euch Ben“. Außerdem umzingeln deine Freunde Ben ohne nachzudenken und durchsuchen ihn. Sofia wendet sich an Deine Freunde und sagt: „Lasst Ben frei, er hat Rechte. Es ist illegal, das Gesetz selbst in die Hand zu nehmen“. Wenn Du die Erfahrung noch einmal machen würdest, erkläre, wie Du Deine Rechte geltend machen könntest, ohne gegen das Gesetz zu verstoßen.');
INSERT INTO "public"."card_translations" VALUES (261, 141, 'de', 'Sie sehen einen Diebstahl in einem belebten Café. Eine Dame hat den Geldbeutel aus der Handtasche einer anderen Dame genommen und ist die Straße hinuntergelaufen. Du rufst die Polizei. Die Polizei kommt, verhört Dich und teilt Dir mit, dass alle unschuldig sind, bis ihre Schuld bewiesen ist. Die andere Dame tritt vor und erklärt, dass sie ihre Freundin gebeten hatte, ihren Geldbeutel zu nehmen, weil sie etwas in einem anderen Geschäft kaufen musste, bevor es zumachte. Erkläre, wie Du ein anderes Mal mit dieser Situation umgehen würdest.');
INSERT INTO "public"."card_translations" VALUES (262, 142, 'de', 'Milani wollte Dich persönlich kennenlernen. Also hackte sie Deinen Laptop, las Deine Mitteilungen und Dein Tagebuch. Du hast das herausbekommen. Du weißt, dass die UNO sagt, dass jeder das Recht auf Privatsphäre hat. Erkläre, welche Probleme Du berücksichtigen würdest, bevor Du etwas unternimmst.');
INSERT INTO "public"."card_translations" VALUES (263, 143, 'de', 'Du beschließt, Dein Land zu erkunden, bevor Du eine Karriereentscheidung triffst. Die UNO sagt, dass alle das Recht auf Bewegungsfreiheit innerhalb ihres Landes haben. Zu Beginn Deines Abenteuers hindern Dich die Sicherheitskräfte der Border Force jedoch daran, in Dein Flugzeug einzusteigen, da sie Dein Erscheinen ohne Erklärung als Sicherheitsrisiko einstufen. Erkläre, wie Du mit der Situation umgehen würdest.');
INSERT INTO "public"."card_translations" VALUES (264, 144, 'de', 'Deine Schule hat beschlossen, eine Familie zu unterstützen, die vor Verfolgung Asyl gesucht hat und in Deine Nachbarschaft gezogen ist. Deine Schule hat Dich gebeten, den Asylsuchenden bei der Integration in Deine Nachbarschaft zu helfen. Erkläre, wie Du helfen würdest.');
INSERT INTO "public"."card_translations" VALUES (265, 145, 'de', 'Im Rahmen einer Klassenaufgabe wurde Deine Gruppe ausgewählt, einen Rahmen für eine neue Weltordnung zu entwickeln, die gemäß der UNO Erklärung der Menschenrechte ihren Bewohnern das Recht auf eine Nationalität und auf einen Wechsel der Nationalität einräumen muss. Erkläre, welche Aspekte Du bei der Entwicklung Deines Rahmens berücksichtigen würdest.');
INSERT INTO "public"."card_translations" VALUES (266, 146, 'de', 'Du bist unsterblich in Deine Nachbarin verliebt. Ihr seid beide fast volljährig und möchtet heiraten. Beide Elternpaare mögen sich jedoch nicht und weigern sich, ihre Zustimmung zu geben, dass Ihr beide heiratet. Die UNO sagt, Ihr habt beide das Recht, frei zu heiraten. Ihr beide liebt eure Eltern und wollt sie nicht verärgern. Erkläre, wie Ihr mit dieser Situation umgeht.');
INSERT INTO "public"."card_translations" VALUES (267, 147, 'de', 'Du bist das jüngste von drei Kindern, die auf dem Bauernhof Deiner Familie geboren wurden. Deine Eltern sind der Meinung, dass der Hof an den Erstgeborenen weitergegeben werden sollte. Du hast jedoch von der UNO gelernt, dass jeder das Recht hat, Eigentum zu besitzen, sowohl allein als auch in Gemeinschaft mit anderen, und niemand darf willkürlich seines Eigentums beraubt werden. Du liebst Deine Eltern und Deine Geschwister, willst aber Deinen Anteil. Erkläre, wie Du mit dieser Situation umgehst.');
INSERT INTO "public"."card_translations" VALUES (268, 148, 'de', 'Einer Deiner engen Freunde, der in einer Religion geboren wurde, beschließt, zu einer anderen Religion zu wechseln. Die UNO sagt, er habe das freie Recht dazu. Obwohl Du die neuen religiösen Überzeugungen Deines Freundes respektierst, unterscheiden sie sich von Deinen und verursachen nun Spannungen in Eurer Beziehung. Erkläre, wie Du mit dieser Situation umgehst.');
INSERT INTO "public"."card_translations" VALUES (269, 149, 'de', 'Während Deiner Präsentation in einer Schuldebatte unterbrechen Dich einige Schüler und machen sich über Deine Argumentation lustig, bevor Du Deine Präsentation überhaupt beendet hast. Du weißt, dass alle das Recht auf freie Meinungsäußerung und ungehinderte Meinungsäußerung haben. Erkläre, wie Du mit dieser Situation umgehst.');
INSERT INTO "public"."card_translations" VALUES (270, 150, 'de', 'Du liebst Musik. Tatsächlich wäre Dein Leben ohne sie leer. Außerhalb der Schule hängst Du mit Rockergruppen im Park ab und machst Musik. Eine alte Dame kommt auf Dich zu und sagt: „Ich mag Deine Musik nicht, spiel sie woanders“. Du weißt, dass Du und Deine Rockerfreunde das Recht auf friedliche Versammlung und Vereinigung habt. Erkläre, wie Du mit Würde und Respekt gegenüber der alten Dame mit der Situation umgehst.');
INSERT INTO "public"."card_translations" VALUES (271, 151, 'de', 'Du wirst als Schülervertreter in den Schulrat gewählt. Laut UNO bist Du als Studierendenvertreter verpflichtet, bei der Ausübung Deiner Tätigkeit dem Willen der Studierenden zu folgen. Bald darauf wirst Du unter Druck gesetzt, Dich einer Gruppe von Studierenden anzuschließen, die mit Drogen handeln. Du fühlst Dich unwohl, willst Dich anpassen, weißt aber auch, dass der Handel mit Drogen illegal ist. Erkläre, wie Du mit dieser Situation umgehst.');
INSERT INTO "public"."card_translations" VALUES (272, 152, 'de', 'In der Nähe des Einkaufszentrums siehst Du einen Erwachsenen, der ein Kind einschüchtert. Das Kind sieht beängstigt und ängstlich aus. Als der Erwachsene geht, beginnt das Kind zu weinen und schaut hilfesuchend zu Dir. Du weißt, dass alle das Recht haben, ihre Persönlichkeit frei und in Würde zu entfalten und sich sicher und geborgen zu fühlen. Erkläre, wie Du mit dieser Situation umgehst.');
INSERT INTO "public"."card_translations" VALUES (274, 154, 'de', 'Die UNO sagt, dass jeder Anspruch auf Pausen und Urlaub hat. Du bekommst einen Teilzeitjob in Mike''s Diner in der Innenstadt. Bald erfährst Du, dass Mitarbeitende, die während der Schichtzeit ihre gesetzliche Pause machen, keine Schichten mehr bekommen. Du brauchst das Einkommen. Erkläre, was Du tun würdest.');
INSERT INTO "public"."card_translations" VALUES (275, 155, 'de', 'Einige sagen, Arbeiter sollten nur den Mindestlohn erhalten, um die Kosten für Kleidung und Produkte so niedrig wie möglich zu halten. Die UNO sagt, dass jeder Anspruch auf einen Mindestlebensstandard hat. Dir wird Kleidung angeboten, von der Du weißt, dass sie von Menschen hergestellt wurde, die sich keinen Mindestlebensstandard leisten können. Erkläre, welche Faktoren Du berücksichtigen würdest, bevor Du entscheidest, ob Du kaufen willst.');
INSERT INTO "public"."card_translations" VALUES (276, 156, 'de', 'Dir wurde ein Stipendium für ein Studium in Finnland angeboten. In Finnland besuchen alle Schüler unabhängig von Einkommen, Status und intellektuellen Fähigkeiten dasselbe Schulsystem. In Deinem Land ist das System ganz anders. Erkläre, welche Punkte Du berücksichtigen würdest, bevor Du entscheidest, ob Du das Studienangebot in Anspruch nimmst.');
INSERT INTO "public"."card_translations" VALUES (277, 157, 'de', 'Dein Freund Emile lädt Dich zum Mittagessen in ein neues trendiges Café ein. Als Du durch die Vordertür des Cafés gehst, fühlst Du Dich eingeschüchtert von den kulturellen Unterschieden, die Du siehst. Alle scheinen Dich anzustarren. Obwohl Du weißt, dass jeder das Recht hat, frei am kulturellen Leben seiner Gemeinschaft teilzunehmen, das Menschen zusammenbringt, hast Du Lust auf Flucht. Erkläre, wie Du mit der Situation umgehst.');
INSERT INTO "public"."card_translations" VALUES (278, 158, 'de', 'Du wurdest zum Mars geschickt, um bei der Kolonisierung zu helfen. Bei Deiner Ankunft entdeckst Du Chaos, Desorganisation und eine Kultur der Unterdrückung, Mobbing und Belästigung. Die UNO sagt, dass alle Anspruch auf eine Gesellschaftsordnung mit Freiheiten und Rechten haben. Dir wurde eine Führungsrolle übertragen. Erkläre, welche Themen Du bei der Ausübung Deiner Führungsrolle berücksichtigen würdest.');
INSERT INTO "public"."card_translations" VALUES (279, 159, 'de', 'Dir wurde beigebracht, dass zwischen Deinen Pflichten gegenüber der Gemeinschaft und der freien und vollen Entfaltung Deiner Persönlichkeit ein Zusammenhang besteht. Du hast die Wahl, einfach zu nehmen, ohne zu Deiner Gemeinde beizutragen, oder zu nehmen und zur Gemeinde beizutragen. Erkläre, welche Aspekte Du berücksichtigen würdest, bevor Du Deine Wahl triffst.');
INSERT INTO "public"."card_translations" VALUES (280, 160, 'de', 'Schulregeln helfen, die soziale Ordnung und Disziplin aufrechtzuerhalten. Sie tragen auch dazu bei, dass die Rechte und Freiheiten der Studierenden geschützt werden. Eine Gruppe störender Studierender widersetzt sich Deinen Schulregeln. Sie üben Druck auf Dich aus, an ihren Aktivitäten teilzunehmen. Du willst cool aussehen und dazu passen, aber Dich nicht über die Regeln Deiner Schule hinwegsetzen. Erkläre, wie Du mit der Situation umgehst.');
INSERT INTO "public"."card_translations" VALUES (184, 24, 'de', 'Laut Gesetz müssen Schulen tagsüber Pausen für Mahlzeiten, Ruhe und Entspannung vorsehen. Erkläre, wie viel Zeit Du für Essenspausen, Ruhe und Entspannung einplanen würdest, wenn Du dies bestimmen könntest.');
INSERT INTO "public"."card_translations" VALUES (191, 81, 'de', 'Die UNO sagt, dass alle Menschen frei und gleich an Würde und Rechten geboren sind. Sie sind auch mit Vernunft und Gewissen ausgestattet und sollen im Sinne der Verständigung und Freundschaft miteinander umgehen. Beschreibe und erkläre, was Du erwarten würdest, falls Menschen im Sinne der Verständigung und Freundschaft miteinander handeln.');
INSERT INTO "public"."card_translations" VALUES (192, 82, 'de', 'Du weißt, dass die UNO sagt, dass alle die gleichen Rechte und Freiheiten haben und mit Würde und Gleichberechtigung behandelt werden müssen. Du weißt auch, dass Vorurteile und Stereotypen sich häufig von Geburt an weiterentwickeln. Erkläre, wie Deine Gemeinde dazu beitragen könnte, Vorurteilen und Stereotypen entgegenzuwirken und ein Umfeld der Würde und Gleichberechtigung zu fördern.');
INSERT INTO "public"."card_translations" VALUES (193, 83, 'de', 'Ein neugeborenes Baby wird eingewickelt auf der Türschwelle eines Krankenhauses zurückgelassen, ohne dass seine Eltern zu finden sind. Die UNO sagt, dass alle das Recht auf Leben, Freiheit und Sicherheit als Person haben. Erkläre, wessen Verantwortung es Deiner Meinung nach ist, dafür zu sorgen, dass die Rechte des Babys geschützt werden?');
INSERT INTO "public"."card_translations" VALUES (194, 84, 'de', 'Deine Freundin Amelia hat einen Sommerjob bekommen, bei dem sie Mitarbeitende beim Kommissionieren und Packen von Lagerbeständen für den Versand überwacht. Amelia entdeckt, dass die Mitarbeitenden das Gebäude nicht verlassen dürfen und extrem lange Arbeitszeiten haben. Amelia weiß, dass es illegal ist, Menschen in Sklaverei oder Leibeigenschaft zu halten, und befürchtet, dass sie ähnlich behandelt werden könnte. Amelia braucht den Job, um ihre Studiengebühren zu bezahlen. Amelia bittet Dich um Rat. Was würdest Du ihr sagen? Wieso?');
INSERT INTO "public"."card_translations" VALUES (195, 85, 'de', 'Die UNO sagt, dass niemand Folter, grausamer, unmenschlicher oder erniedrigender Behandlung oder Bestrafung ausgesetzt werden darf. Lily verlässt ihren Freund Ethan eine Woche vor dem Abschlussball, weil sie ein besseres Angebot von Nate, dem Football-Kapitän, bekommen hat. Ethan ist verletzt. Er ist auch sehr wütend und will es Lily heimzahlen. Wenn Du Ethans Freund wärst, erkläre, welchen Rat Du ihm geben würdest.');
INSERT INTO "public"."card_translations" VALUES (196, 86, 'de', 'Die Anerkennung als rechtsfähige Person gilt laut UNO als Recht aller. Eine Person mit psychischen Problemen hat ein Verbrechen begangen. Erkläre, ob diese Person Anspruch auf die gleiche Anerkennung (Rechte) vor dem Gesetz hat wie eine Person ohne psychische Gesundheitsprobleme.');
INSERT INTO "public"."card_translations" VALUES (197, 87, 'de', 'Es ist üblich geworden, dass Kinder und Jugendliche zu einer Mischung von Familientypen gehören, mit Eltern in einer Vielzahl von Beziehungen. Die UNO sagt, dass alle Menschen vor dem Gesetz gleich sind und ohne Diskriminierung Anspruch auf den gleichen Schutz vor dem Gesetz haben. Einige dieser Familien finden diskriminierende Graffiti vor ihren Häusern. Erkläre, was Deine Gemeinde tun könnte, um dieser Aktivität entgegenzuwirken.');
INSERT INTO "public"."card_translations" VALUES (198, 88, 'de', 'In der Schule stahl ein Schüler das Telefon eines anderen Schülers, verkaufte es und wurde erwischt. Nach Angaben der Vereinten Nationen hatte die Schule die Wahl, die Polizei zu rufen oder den Jugenddienstausschuss der Gemeinde den Fall überprüfen und Konsequenzen ziehen zu lassen. Die Schule verzichtete darauf, die Polizei zu rufen. Erkläre, was Deiner Meinung nach eine angemessene Konsequenz wäre.');
INSERT INTO "public"."card_translations" VALUES (281, 41, 'de', 'Deine Fußballmannschaft schlägt den Gegner. Du schüttelst den Spielern der unterlegenen Mannschaft die Hand und beglückwünschst sie zu einem guten Spiel. Wirf die Würfel, um zu sehen, wie viele Chips Du verdienst.');
INSERT INTO "public"."card_translations" VALUES (282, 42, 'de', 'Ein neuer Schüler kommt während des Semesters in Deine Klasse. Du nimmst Dir Zeit, damit sich der Schüler willkommen und in Deine Klasse aufgenommen fühlt. Wirf die Würfel, um zu sehen, wie viele Chips Du verdienst.');
INSERT INTO "public"."card_translations" VALUES (283, 43, 'de', 'Während einer Unterrichtsdebatte über Menschenrechte unterbrichst Du ständig den Debattierer, der für die Menschenrechte ist, weil Du mit den Menschenrechten nicht einverstanden bist. Wirf die Würfel, um zu sehen, wie viele Chips Du verlierst.');
INSERT INTO "public"."card_translations" VALUES (284, 44, 'de', 'Du schiebst und schiebst, um an die Spitze der Warteschlange für den Schulbus zu gelangen, damit Du den besten Platz ergattern kannst. Wirf die Würfel, um zu sehen, wie viele Chips Du verlierst.');
INSERT INTO "public"."card_translations" VALUES (285, 45, 'de', 'In der Mittagspause sitzt Du neben einem Jungen, der aufgrund seiner Religion eine spezielle Diät einhalten muss. Respektvoll bittest Du darum, sein Essen zu probieren und zeigst Interesse an seiner Religion. Wirf die Würfel, um zu sehen, wie viele Chips Du verdienst.');
INSERT INTO "public"."card_translations" VALUES (286, 46, 'de', 'Du erzählst einen Witz, der Jungs klüger aussehen lässt als Mädchen. Wirf die Würfel, um zu sehen, wie viele Chips Du verlierst.');
INSERT INTO "public"."card_translations" VALUES (287, 47, 'de', 'Während der Unterrichtszeit verhinderst Du, dass ein böses Gerücht über Gabriela in Form einer Notiz im Klassenzimmer verbreitet wird. Wirf die Würfel, um zu sehen, wie viele Chips Du verdienst.');
INSERT INTO "public"."card_translations" VALUES (288, 48, 'de', 'In der Mittagspause siehst Du einen Schüler an Deiner Schule die Treppe hinunterfallen. Während andere Schüler lachen, hilfst Du dem Schüler aufzustehen. Wirf die Würfel, um zu sehen, wie viele Chips Du verdienst.');
INSERT INTO "public"."card_translations" VALUES (289, 49, 'de', 'Während einer Schnitzeljagd sperrst Du einen anderen Spieler in einen Raum, damit dieser Spieler nicht gefunden werden kann. Wirf die Würfel, um zu sehen, wie viele Chips Du verlierst.');
INSERT INTO "public"."card_translations" VALUES (290, 50, 'de', 'Du willst Taniya nächstes Jahr nicht in deiner Klasse haben. Du versuchst, Taniya daran zu hindern, ihre Wahlfreiheit auszuüben, wenn es um die Fächerwahl für das nächste Jahr geht. Wirf die Würfel, um zu sehen, wie viele Chips Du verlierst.');
INSERT INTO "public"."card_translations" VALUES (291, 121, 'de', 'Deine Schule verliert das Basketballspiel zwischen den Schulen, und zwar stark. Du gibst dem Schiedsrichter und dem Siegerteam diskriminierende Namen und übernimmst keine Verantwortung für den Verlust Deines Teams. Wirf die Würfel, um zu sehen, wie viele Chips Du verlierst.');
INSERT INTO "public"."card_translations" VALUES (292, 122, 'de', 'Ava ist Deine beste Freundin. Aber Ihr habt beide unterschiedliche Meinungen über Religion. Anstatt zuzulassen, dass Eure Unterschiede Eurer Freundschaft im Wege stehen, stimmt Ihr beide zu, die Unterschiede der anderen zu respektieren. Wirf die Würfel, um zu sehen, wie viele Chips Du verdienst.');
INSERT INTO "public"."card_translations" VALUES (293, 123, 'de', 'Während einer Klassendebatte buhst Du den Debattierer aus, der argumentiert, dass Asylbewerber das Recht haben, mit Freiheit, Gleichheit und Würde behandelt zu werden. Wirf die Würfel, um zu sehen, wie viele Chips Du verlierst.');
INSERT INTO "public"."card_translations" VALUES (294, 124, 'de', 'Auch wenn Du in der Schule und nach der Schule einen vollen Terminkalender hast, leistest Du einen Teil Deiner Zeit ehrenamtlich, um Menschen, die in Deinem Land Asyl beantragt haben, Deutsch beizubringen. Wirf die Würfel, um zu sehen, wie viele Chips Du verdienst.');
INSERT INTO "public"."card_translations" VALUES (295, 125, 'de', 'Während eines Holzbearbeitungskurses schneidet sich Deon in den Finger und pinkelt sich dann (unter Schock) in die Hose. Während der Lehrer Erste Hilfe leistet, schützt Du Deon vor anderen Schülern, damit sie nicht sehen können, dass Deon sich in die Hose gemacht hat. Wirf die Würfel, um zu sehen, wie viele Chips Du verdienst.');
INSERT INTO "public"."card_translations" VALUES (296, 126, 'de', 'Während Du in der Warteschlange an der Kinokasse stehst, machst Du rassistische Witze mit einer Stimme, die laut genug ist, um von Minoritätsgruppen gehört zu werden. Wirf die Würfel, um zu sehen, wie viele Chips Du verlierst.');
INSERT INTO "public"."card_translations" VALUES (297, 127, 'de', 'Im Einkaufszentrum sieht man oft einige Gruppen von Menschen, die von Ladenbesitzern schlecht behandelt werden. Nachdem Du die Angelegenheit mit Deinen Eltern angesprochen hast, fragst Du Deine Schule, wie Du etwas Positives bewirken kannst. Wirf die Würfel, um zu sehen, wie viele Chips Du verdienst.');
INSERT INTO "public"."card_translations" VALUES (298, 128, 'de', 'Du hast starke Meinungen darüber, was richtig und falsch ist. Wenn andere Studierenden jedoch nicht Deiner Meinung sind, schaltest Du sie ab, anstatt ihren Standpunkt zu berücksichtigen. Wirf die Würfel, um zu sehen, wie viele Chips Du verlierst.');
INSERT INTO "public"."card_translations" VALUES (299, 129, 'de', 'Beim Interschool-Baseballspiel wirfst Du faule Früchte auf die gegnerische Mannschaft und brüllst Beleidigungen. Wirf die Würfel, um zu sehen, wie viele Chips Du verlierst.');
INSERT INTO "public"."card_translations" VALUES (300, 130, 'de', 'Du bist Redakteur Deiner Schülerzeitung. Du beschließt, eine Reihe von Artikeln über Führungskräfte zu veröffentlichen, die weniger privilegierten Menschen geholfen haben. Wirf die Würfel, um zu sehen, wie viele Chips Du verdienst.');
INSERT INTO "public"."card_translations" VALUES (301, 31, 'de', 'Du entwickelst ein sensorisches System, um Erdbeben zu erkennen, bevor sie auftreten. Verschiebe Deinen Spielstein auf das Erdbebenfeld und setze das Spiel fort.');
INSERT INTO "public"."card_translations" VALUES (302, 32, 'de', 'Deine Schule installiert eine sensorbetriebene Sprinkleranlage. Bewege Deinen Spielstein auf das Feuerfeld und setze das Spiel fort.');
INSERT INTO "public"."card_translations" VALUES (303, 33, 'de', 'Du entwickelst körperwärmende Kleidung, die durch Gehen angetrieben wird. Bewege Deinen Spielstein auf das Freeze-Feld und setze das Spiel fort.');
INSERT INTO "public"."card_translations" VALUES (304, 34, 'de', 'Du entwickelst ein GPS-Ortungssystem, um Personen nach einer Lawine zu finden. Verschiebe Deinen Spielstein auf das Lawinen-Feld und setze das Spiel fort.');
INSERT INTO "public"."card_translations" VALUES (305, 35, 'de', 'Du entwickelst ein sensorisches System zur Erkennung von Vulkanen, bevor sie ausbrechen. Bewege Deinen Spielstein auf das Vulkanfeld und setze das Spiel fort.');
INSERT INTO "public"."card_translations" VALUES (306, 36, 'de', 'Du entwickelst körperwärmende Kleidung, die durch Gehen angetrieben wird. Bewege Deinen Spielstein auf das Freeze-Feld und setze das Spiel fort.');
INSERT INTO "public"."card_translations" VALUES (307, 37, 'de', 'Du entwickelst ein sensorisches System zur Erkennung von Vulkanen, bevor sie ausbrechen. Bewege Deinen Spielstein auf das Vulkanfeld und setze das Spiel fort.');
INSERT INTO "public"."card_translations" VALUES (308, 38, 'de', 'Du entwickelst ein GPS-Ortungssystem, um Personen nach einer Lawine zu finden. Verschiebe Deinen Spielstein auf das Lawinen-Feld und setze das Spiel fort.');
INSERT INTO "public"."card_translations" VALUES (309, 39, 'de', 'Deine Schule installiert eine sensorbetriebene Sprinkleranlage. Bewege Deinen Spielstein auf das Feuerfeld und setze das Spiel fort.');
INSERT INTO "public"."card_translations" VALUES (310, 40, 'de', 'Du entwickelst ein sensorisches System, um Erdbeben zu erkennen, bevor sie auftreten. Verschiebe Deinen Spielstein auf das Erdbebenfeld und setze das Spiel fort.
');
INSERT INTO "public"."card_translations" VALUES (311, 111, 'de', 'Du entwickelst ein sensorisches System, um Erdbeben zu erkennen, bevor sie auftreten. Verschiebe Deinen Spielstein auf das Erdbebenfeld und setze das Spiel fort.
');
INSERT INTO "public"."card_translations" VALUES (312, 112, 'de', 'Deine Schule installiert eine sensorbetriebene Sprinkleranlage. Bewege Deinen Spielstein auf das Feuerfeld und setze das Spiel fort.');
INSERT INTO "public"."card_translations" VALUES (222, 52, 'de', 'Ohne Frage und unabhängig von Hintergrund, religiöser und politischer Überzeugung oder finanziellem Status haben alle Freiheiten und Rechte, sagt die UNO. Du willst mit Ashley herumhängen, was für Ashley in Ordnung ist. Pedro, der auch Ashley mag, sagt jedoch nein. Erkläre, wie Du mit dieser Situation umgehen würdest.');
INSERT INTO "public"."card_translations" VALUES (223, 53, 'de', 'Als Schüler der 8. Klasse arbeitest Du als Schulmentor mit Oliva zusammen, einer Schülerin der 5. Klasse, die im Herbst aufsteigt. In Anlehnung an die UN lautet das Motto Deiner Schule: „Alle haben das Recht auf Leben, Freiheit und Sicherheit der Person“. Oliva fragt dich, was das Schulmotto bedeutet. Was würdest Du sagen?');
INSERT INTO "public"."card_translations" VALUES (224, 54, 'de', 'Du bist nach der Schule zu Steven eingeladen. Steven möchte ein Computerspiel spielen, bei dem Charaktere zu Sklaven werden und Sklaven gehandelt werden, um Geld zu verdienen. Obwohl es lustig erscheint, weißt Du, dass Sklaverei und Sklavenhandel die Grundrechte der Menschen verletzen und gegen das Gesetz verstoßen. Du fühlst dich unwohl, möchtest Dich aber anpassen. Erkläre, wie Du mit der Situation umgehen würdest.');
INSERT INTO "public"."card_translations" VALUES (225, 55, 'de', 'Sara ist dafür bekannt, kitzelig zu sein. Tatsächlich kann sie hysterisch werden, wenn sie zu sehr gekitzelt wird. Während dies für manche komisch klingen mag, könnte die UNO argumentieren, dass es sich um grausames und erniedrigendes Verhalten handelt. Wenn Du die Person wärst, die gekitzelt wird und es nicht mehr lustig findet, nenne und erkläre zwei Beispiele dafür, was Du tun könntest.');
INSERT INTO "public"."card_translations" VALUES (226, 56, 'de', 'Unabhängig von Deiner Erziehung, Deinem Glauben und Deiner Familie hast Du das Recht, als eine Person behandelt zu werden, die Respekt verdient, sagt die UNO. Als Person bist Du nett, fürsorglich und freundlich. Auf dem Spielplatz behandeln Dich einige Schüler jedoch auf eine Weise, die nicht nett, fürsorglich und freundlich ist. Erkläre, wie Du mit dieser Situation umgehen könntest.');
INSERT INTO "public"."card_translations" VALUES (227, 57, 'de', 'Die UNO sagt, dass alle ohne Diskriminierung Anspruch auf gleichen Schutz haben. In der Mittagspause reißt Dir ein älterer Schüler dein Essensgeld aus der Hand und sagt: „Sag es jemandem, dann bist Du tot“. Erkläre, wie Du mit dieser Situation umgehen würdest.');
INSERT INTO "public"."card_translations" VALUES (313, 113, 'de', 'Du entwickelst körperwärmende Kleidung, die durch Gehen angetrieben wird. Bewege Deinen Spielstein auf das Freeze-Feld und setze das Spiel fort.');
INSERT INTO "public"."card_translations" VALUES (314, 114, 'de', 'Du entwickelst ein GPS-Ortungssystem, um Personen nach einer Lawine zu finden. Verschiebe Deinen Spielstein auf das Lawinen-Feld und setze das Spiel fort.');
INSERT INTO "public"."card_translations" VALUES (315, 115, 'de', 'Du entwickelst ein sensorisches System zur Erkennung von Vulkanen, bevor sie ausbrechen. Bewege Deinen Spielstein auf das Vulkanfeld und setze das Spiel fort.');
INSERT INTO "public"."card_translations" VALUES (316, 116, 'de', 'Deine Schule installiert eine sensorbetriebene Sprinkleranlage. Bewege Deinen Spielstein auf das Feuerfeld und setze das Spiel fort.');
INSERT INTO "public"."card_translations" VALUES (317, 117, 'de', 'Du entwickelst körperwärmende Kleidung, die durch Gehen angetrieben wird. Bewege Deinen Spielstein auf das Freeze-Feld und setze das Spiel fort.');
INSERT INTO "public"."card_translations" VALUES (318, 118, 'de', 'Du entwickelst ein GPS-Ortungssystem, um Personen nach einer Lawine zu finden. Verschiebe Deinen Spielstein auf das Lawinen-Feld und setze das Spiel fort.');
INSERT INTO "public"."card_translations" VALUES (319, 119, 'de', 'Du entwickelst ein sensorisches System zur Erkennung von Vulkanen, bevor sie ausbrechen. Bewege Deinen Spielstein auf das Vulkanfeld und setze das Spiel fort.
');
INSERT INTO "public"."card_translations" VALUES (320, 120, 'de', 'Du entwickelst ein sensorisches System, um Erdbeben zu erkennen, bevor sie auftreten. Verschiebe Deinen Spielstein auf das Erdbebenfeld und setze das Spiel fort.');
INSERT INTO "public"."card_translations" VALUES (251, 131, 'de', 'Die UNO sagt, dass alle frei und gleich an Würde und Menschenrechten geboren sind und einander im Geiste des Verständnisses und der Freundschaft behandeln sollten. Allerdings gibt es an Deiner Schule einige Studierende, die Du einfach nicht magst. Trotzdem musst Du sie im Geiste des Verständnisses und der Freundschaft behandeln. Erkläre ein Beispiel dafür, wie Du dies tun könntest.');
INSERT INTO "public"."card_translations" VALUES (252, 132, 'de', 'Auch wenn die UNO sagt, dass jeder Anspruch auf Rechte und Freiheiten hat, besteht eine Möglichkeit für manche Menschen, mehr Macht zu erlangen, darin, die Rechte und Freiheiten anderer Menschen einzuschränken. Stelle Dir vor, Du wärst zum Oberhaupt Deines Landes gewählt worden und hättest die Macht, Änderungen vorzunehmen. Erkläre, wie Du die Frage der Rechte und Freiheiten der Menschen in Deinem Land angehen würdest.');
INSERT INTO "public"."card_translations" VALUES (253, 133, 'de', 'Stelle Dir vor, Du bist Kapitän der Titanic, die gerade einen Eisberg getroffen hat und schnell sinkt. Du weißt, dass alle das Recht auf Leben, Freiheit und Sicherheit haben. Du weißt auch, dass es nicht genug Schwimmwesten an Bord gibt, damit alle eine haben könnten. Erkläre, wie Du mit dieser Situation umgehen würdest.');
INSERT INTO "public"."card_translations" VALUES (258, 138, 'de', 'Du wirst Zeuge eines Raubüberfalls durch einen Studierenden Deiner Schule. Dir wurde beigebracht, dass alle das Recht auf einen wirksamen Rechtsbehelf haben. Du magst diesen Schüler absolut nicht. Erkläre, ob Du im Zweifelsfall mit diesem Studierenden sprechen solltest, um ihm Anspruch auf ein wirksames Rechtsmittel durch Eure Schule zu geben.');
INSERT INTO "public"."card_translations" VALUES (161, 1, 'de', 'Während der Unterrichtszeit wird heimlich ein Zettel herumgereicht. Da steht: „Lade Luis nicht zum Ballspiel ein“. In der Schule wurde Dir beigebracht, dass alle Menschen mit Würde, Freundschaft und Verständnis miteinander umgehen sollten. Der Zettel landet auf dem Lehrerpult. Erkläre, was der Lehrer Deiner Meinung nach tun sollte.');
INSERT INTO "public"."card_translations" VALUES (162, 2, 'de', 'Im Schullager wurde Dir beigebracht, dass jeder frei geboren ist und Anspruch auf Gleichheit, Würde und Rechte hat. Dir wurde auch beigebracht, dass Gefängnisse für Menschen sind, die schwere Verbrechen begehen. Erkläre, ob Du glaubst, dass Gefangene Anspruch auf Gleichheit, Würde und Rechte haben.');
INSERT INTO "public"."card_translations" VALUES (163, 3, 'de', 'Die UNO sagt, dass jeder das Recht auf Leben, Freiheit und Sicherheit hat. Während Santiago in einem naturwissenschaftlichen Unterricht tote Mäuse für wissenschaftliche Zwecke seziert, fragt er sich, wie das Recht auf Leben, Freiheit und Sicherheit für Tiere gilt. Erkläre, was Du sagen würdest, falls Santiago Dich nach Deiner Meinung fragen würde.');
INSERT INTO "public"."card_translations" VALUES (164, 4, 'de', 'Stelle Dir vor, ein hochinteressantes Spiel kommt in die Online-Welt. Es nutzt Sklaverei und Sklavenhandel, um Teenagern beizubringen, wie man mit Geld umgeht. Das Spiel war ein sofortiger Hit; drei Monate später wurde es jedoch verboten. Dir wurde beigebracht, dass Sklaverei in allen Formen verboten ist – erkläre, ob Du denkst, dass dieses Spiel hätte verboten werden sollen.');
INSERT INTO "public"."card_translations" VALUES (165, 5, 'de', 'Emily wird richtig sauer auf Keanu, weil Keanu in der Schule ein gemeines Gerücht über sie verbreitet hat. Keanu entschuldigt sich nicht und nimmt das Gerücht auch nicht zurück. Obwohl Emily weiß, dass Folter oder Bestrafung verboten sind, ist sie versucht, es Keanu heimzuzahlen. Erkläre, was Emily sonst noch tun könnte.');
INSERT INTO "public"."card_translations" VALUES (166, 6, 'de', 'Yang hat Autismus, was bedeutet, dass er Schwierigkeiten hat, Gesichtsausdrücke zu verstehen. Die UNO sagt, dass jeder das Recht hat, als Person behandelt zu werden, doch Yang wird wegen seiner Behinderung von zu vielen schulischen Aktivitäten ausgeschlossen. Erkläre, wie Yang Deiner Meinung nach als Person behandelt und gleichberechtigt in Schulaktivitäten einbezogen werden könnte.');
INSERT INTO "public"."card_translations" VALUES (167, 7, 'de', 'Du weißt, dass Diskriminierung illegal ist. Auf dem Spielfeld in der Schule beschimpfen sich Sportmannschaften regelmäßig mit diskriminierenden Namen über das Erscheinungsbild des anderen, als sei es in Ordnung und akzeptabel. Schließlich ist es nur ein Spiel. Nenne und erkläre zwei Beispiele dafür, wie sich Mannschaften auf dem Spielfeld respektvoll verhalten könnten.');
INSERT INTO "public"."card_translations" VALUES (168, 8, 'de', 'Menschen machen Fehler, einige schwerwiegender als andere. Es ist eine Art, wie Menschen lernen. Manche Menschen machen versehentlich oder absichtlich Fehler, die gegen das Gesetz verstoßen. Die UNO sagt, dass jeder das Recht auf eine faire und effektive Lösung hat. Schlage eine faire und effektive Lösung für den Fall vor, dass ein Schüler Deiner Schule dabei erwischt wird, anstößige Bilder in Bibliotheksbücher zu zeichnen.');
INSERT INTO "public"."card_translations" VALUES (273, 153, 'de', 'Nehmen wir an, Du wurdest als Kind eines Bäckers geboren. Du fühlst Dich verpflichtet, auch Bäcker zu werden und in den Familienbetrieb einzusteigen. Du weißt auch, dass Du Anspruch auf freie Berufswahl hast. Deine beruflichen Interessen liegen woanders und Du liebst Deine Familie. Erkläre, wie Du mit dieser Situation umgehst.');
INSERT INTO "public"."card_translations" VALUES (169, 9, 'de', 'Im Einkaufszentrum siehst Du einen Schüler der 12. Klasse, der von der Polizei festgenommen und mit gefesselten Händen abgeführt wird. Die Polizei sagt, dass sie das Einkaufszentrum vor Menschen mit unerwünschtem Aussehen schützen. Die UNO sagt, dass Menschen nicht festgenommen oder zu Unrecht inhaftiert werden dürfen, nur weil das Äußere der einzige Grund ist. Erkläre, wie die Polizei das Einkaufszentrum sonst fair schützen könnte?');
INSERT INTO "public"."card_translations" VALUES (170, 10, 'de', 'Wenn jemand wissentlich oder unwissentlich gegen das Gesetz verstößt, hat diese Person laut UNO Anspruch auf eine faire Behandlung durch einen unabhängigen Richter oder Gericht. Falls die Person vor Gericht bereits gestanden hat, jemanden in der Vergangenheit angegriffen zu haben, erkläre, ob diese Person fair behandelt werden sollte.');
INSERT INTO "public"."card_translations" VALUES (171, 11, 'de', 'Während eines Ballspiels klagt der Schiedsrichter Jose wegen Fluchens an und sperrt ihn für drei Wochen. Jose fluchte nicht. Aufgrund von Joses deutlichem Akzent weiß fast jeder, dass Jose nicht geflucht hat. Die UNO sagt, dass jeder das Recht hat, als unschuldig zu gelten, bis seine Schuld bewiesen ist. Erkläre, was Du Jose raten kannst.');
INSERT INTO "public"."card_translations" VALUES (172, 12, 'de', 'Wenn Privatsphäre Dein Recht bedeutet, Deine persönlichen Gedanken, Meinungen, Beziehungen und den Inhalt Deines Laptops und Telefons geheim zu halten, dann sollte das Gesetz Deine Privatsphäre schützen. Erkläre, ob Du Dir Situationen vorstellen kannst, in denen es für jemand anderen in Ordnung wäre, auf Deine Privatsphäre zuzugreifen.');
INSERT INTO "public"."card_translations" VALUES (173, 13, 'de', 'Ein Mitglied einer Gruppe von Menschen, die fernab der Stadt ein alternatives Leben führen, möchte die Stadt besuchen. Die Gruppe sagt nein. Sie wollen nicht, dass eines ihrer Mitglieder vom Stadtleben beeinflusst wird. Du weißt, dass alle das Recht haben, sich frei zu bewegen und innerhalb ihres Landes dort zu leben, wo sie wollen (vorbehaltlich verfügbarer Wohnungen). Erkläre, was Du von der Entscheidung dieser Gruppe hältst, dieses Mitglied zurückzuhalten.');
INSERT INTO "public"."card_translations" VALUES (174, 14, 'de', 'Der Begriff Asyl beschreibt eine Situation, in der ein Land Menschen aus einem anderen Land zum Schutz aufnimmt, weil das andere Land sie aufgrund ihrer Rasse, Religion oder politischen Überzeugung verfolgt. Die UNO sagt, dass alle einen Anspruch auf Asyl haben. Erkläre, welche Probleme die Vereinten Nationen Deiner Meinung nach dabei berücksichtigen wollten.');
INSERT INTO "public"."card_translations" VALUES (175, 15, 'de', 'Der Begriff Nationalität kann das Recht einer Person auf Zugehörigkeit zu einem bestimmten Land oder einer bestimmten Nation beschreiben. Die UNO sagt, dass Menschen das Recht auf eine Nationalität und auf einen Wechsel der Nationalität haben. Erkläre, warum Deiner Meinung nach die Staatsangehörigkeit und das Recht auf Wechsel der Staatsangehörigkeit wichtig sind.');
INSERT INTO "public"."card_translations" VALUES (176, 16, 'de', 'Noah sitzt im Unterricht neben Dir. Er erzählt Dir, dass seine ältere Schwester Madison Daniel heiraten möchte, aber Madisons Eltern haben einen anderen Ehemann für sie ausgesucht. Natürlich ist Madison verärgert. Die UNO sagt, dass jeder volljährige das Recht hat, frei zu heiraten und sich frei scheiden zu lassen. Noah fragt Dich nach Deiner Meinung zu diesem Thema. Erkläre, was Du sagen würdest.');
INSERT INTO "public"."card_translations" VALUES (177, 17, 'de', 'Eigentum kann alles sein, wie Kleidung, Geld, Telefone, Computer, Autos und ein Zuhause. Die UNO sagt, dass jeder das Recht auf Eigentum hat. Während einer Unterrichtsdiskussion fragte Deine Lehrerin, was passieren würde, wenn sich alle einfach selbst dessen bedienen würden, was sie wollten, wann immer sie es wollten. Was sagst Du, wenn Du an der Reihe zu antworten bist?');
INSERT INTO "public"."card_translations" VALUES (178, 18, 'de', 'Die UNO sagt: „Jeder hat das Recht auf Gedanken-, Gewissens- (Charakter-) und Religionsfreiheit“. Erkläre, was Deiner Meinung nach passieren würde, falls alle in Deiner Schule leichten Zugang zu den Gedanken, inneren Gefühlen, dem Gewissen (Charakter) und der Religion der anderen hätten.');
INSERT INTO "public"."card_translations" VALUES (179, 19, 'de', 'Jeder weiß, dass Raymond stottert. Was ist also die große Sache daran? Nun, Raymond hat Meinungen und Ideen und würde sie gerne äußern, genau wie die UNO sagt, dass er das Recht dazu hat. Das große Problem ist, dass sich niemand die Zeit nimmt, Raymond zuzuhören. Raymond ist frustriert und fühlt sich ausgeschlossen. Erkläre, was Deine Schule tun könnte, damit sich Raymond integriert fühlt.');
INSERT INTO "public"."card_translations" VALUES (180, 20, 'de', 'Das Basketballteam Deiner Schule freute sich darauf, sich im Einkaufszentrum zu einem festlichen Mittagessen zu treffen. Als das Team im Einkaufszentrum ankam, teilte ihnen der Sicherheitsdienst mit, dass es Gruppen nicht gestattet sei, sich im öffentlichen Raum zu versammeln. Doch basierend auf den Vereinten Nationen weißt Du, dass Dein Team das Recht hat, dies friedlich zu tun. Erkläre, wie Dein Team mit dieser Situation umgehen könnte, falls sie sich wiederholen sollte.');
INSERT INTO "public"."card_translations" VALUES (181, 21, 'de', 'Deine Freundin Michelle wird als Schülervertreterin in den Schulrat gewählt. Laut UNO wäre es Michelles Aufgabe, bei der Ausübung ihrer Tätigkeit dem Willen (Wunsch) der Schüler zu folgen. Falls die Schüler möchten, dass einige Schulregeln geändert werden, erkläre, welche Schritte Michelle Deiner Meinung nach unternehmen könnte.');
INSERT INTO "public"."card_translations" VALUES (182, 22, 'de', 'Die UNO sagt, dass jeder das Recht auf die freie Entfaltung seiner Persönlichkeit (Charakter) hat. Eine Schülerin hat zuvor gegen mehrere Schulregeln verstoßen und zeigt Anzeichen einer Entwicklung der Persönlichkeit eines Diebes. Erkläre, ob sie Anspruch auf freie Entfaltung ihrer Persönlichkeit haben sollte.');
INSERT INTO "public"."card_translations" VALUES (183, 23, 'de', 'Die UNO sagt, dass alle das Recht haben zu arbeiten und die Art der Arbeit zu wählen, die sie tun möchten, gleichen Lohn für gleiche Arbeit zu bekommen, und das Recht, Mitglied einer Gewerkschaft zum Schutz ihrer Rechte zu sein. Erkläre, was Deiner Meinung nach passieren würde, wenn die Arbeitsrechte aller nicht geschützt würden.');
INSERT INTO "public"."card_translations" VALUES (185, 25, 'de', 'Die UNO legt Mindeststandards für lebensnotwendige Güter wie Nahrung, Kleidung, medizinische Versorgung, soziale Dienste, Arbeitslosigkeit, Unterstützung, Behinderung, Verwitwung und Alter fest. Erkläre, welche Probleme die Vereinten Nationen Deiner Meinung nach berücksichtigt haben, als sie diese Regel aufstellten.');
INSERT INTO "public"."card_translations" VALUES (186, 26, 'de', 'Die UNO sagt, Bildung in den frühen Jahren sollte kostenlos und für alle zugänglich sein. Außerdem sollten Eltern die Wahl haben, welche Art von Bildung ihren Kindern gegeben wird. Erkläre, was Du glaubst, dass die UNO mit dieser Regel zu erreichen versucht.');
INSERT INTO "public"."card_translations" VALUES (187, 27, 'de', 'Kulturelles Leben ist ein Begriff, der sich auf gemeinschaftliche Aktivitäten wie Musik, Tanz, Kunst, Schreiben, Sport und Wissenschaft bezieht, die Menschen zusammenbringen. Die UNO sagt, dass jeder einen Anspruch auf ein kulturelles Leben und dessen Vorteile hat. Erkläre, was Deiner Meinung nach mit Menschen geschehen könnte, die vom kulturellen Leben ausgeschlossen sind.');
INSERT INTO "public"."card_translations" VALUES (188, 28, 'de', 'Die UNO sagt, dass die Rechte und Freiheiten aller durch grundlegende Regeln und Gesetze geschützt werden sollten. Einige mögen jedoch sagen, dass es zu viele grundlegende Regeln und Gesetze gibt. Gib zwei Beispiele an, die erklären, was in Deiner Schulgemeinschaft und in der Welt passieren könnte, wenn wir keine grundlegenden Regeln und Gesetze hätten.');
INSERT INTO "public"."card_translations" VALUES (189, 29, 'de', 'Neben Rechten und Freiheiten sagt die UNO auch, dass alle Menschen in Bezug auf die Entwicklung ihrer Persönlichkeit Pflichten und Verantwortungen gegenüber ihrer Gemeinde haben. Beschreibe und erkläre, wie sich Deiner Meinung nach die Persönlichkeit der Menschen entwickeln würde, wenn sie Rechte und Freiheiten ohne Pflichten und Verantwortungen hätten.');
INSERT INTO "public"."card_translations" VALUES (190, 30, 'de', 'Die UNO hat eine Reihe von Regeln entwickelt, die als Artikel bezeichnet werden und darauf basieren, dass alle (ohne Ausnahme) Rechte und Pflichten haben, wenn es um Freiheit, Gleichheit und Würde geht. Erkläre, wie die Welt Deiner Meinung nach aussehen würde, wenn die Menschen eingeschränkte Freiheiten hätten, nicht gleich- oder nicht würdevoll behandelt würden.');
INSERT INTO "public"."card_translations" VALUES (199, 89, 'de', 'Während eines Besuchs im Einkaufszentrum siehst Du, wie Emmet, ein Klassenkamerad, mit am Rücken gefesselten Händen aus dem Einkaufszentrum geleitet wird. Emmet sagt, er sei wegen seines Aussehens als Sicherheitsrisiko identifiziert worden. Du weißt, dass niemand willkürlich festgenommen, inhaftiert oder verbannt werden darf. Erkläre, was Deine Gemeinde tun könnte, um diese Art willkürlicher Verhaftung in der Zukunft zu verhindern.');
INSERT INTO "public"."card_translations" VALUES (200, 90, 'de', 'Eine Krankenschwester mit hervorragenden beruflichen Leistungen wird beschuldigt, verschreibungspflichtige Medikamente aus dem Krankenhaus gestohlen zu haben, in dem sie arbeitet. Diese Krankenschwester folgt einem bestimmten Glauben und lebt in einer Gemeinde, die dafür bekannt ist, gegen diesen Glauben zu diskriminieren. Die UNO sagt, dass jeder das gleiche Recht auf eine faire und unparteiische öffentliche Anhörung hat. Erkläre, ob in diesem Fall die Diskriminierung des Glaubens der Krankenschwester neben ihrer hervorragenden beruflichen Laufbahn in ihre Verteidigung aufgenommen werden sollte.');
INSERT INTO "public"."card_translations" VALUES (201, 91, 'de', 'Obwohl sie sich bewusst sind, dass Menschen sich irren können, ist eine Gruppe von Schülern Deiner Schule davon überzeugt, dass sie ein Verbrechen gesehen haben, und fordert ein Eingreifen der Polizei. Erkläre, was die UNO Deiner Meinung nach verhindern will, indem sie sagt, dass Unschuld bis zum Beweis der Schuld ein grundlegendes Menschenrecht ist.');
INSERT INTO "public"."card_translations" VALUES (202, 92, 'de', 'Gewöhnlich bedeutet Datenschutz das Recht der Menschen, ihre persönlichen Gedanken, Meinungen, Beziehungen und den Inhalt ihrer Geräte geheim zu halten. Desmond und Anthony arbeiteten mit offenen Laptops an einem Take-Home-Test in der Bibliothek. Ohne zu fragen beschließt Anthony, den Inhalt von Desmonds Laptop zu untersuchen, während Desmond im Waschraum ist. Erkläre, welche Aspekte Du berücksichtigen musst, um eine Meinung zu Anthonys Verhalten bilden zu können.');
INSERT INTO "public"."card_translations" VALUES (203, 93, 'de', 'Eine Möglichkeit, wie Jugendliche Unabhängigkeit, Selbstvertrauen und Belastbarkeit entwickeln, sind Reisen und Abenteuer. Vielleicht sagt die UNO deshalb, dass alle das Recht haben, sich frei zu bewegen und innerhalb ihres Landes dort zu leben, wo sie möchten (vorbehaltlich verfügbarer Unterkünfte). Erkläre, wie Du denkst, dass das Leben aussehen würde, wenn die Menschen diese Freiheit nicht hätten.');
INSERT INTO "public"."card_translations" VALUES (204, 94, 'de', 'Der Begriff Asyl wird verwendet, um eine Situation zu beschreiben, in der ein Land Menschen aus einem anderen Land zum Schutz aufnimmt, weil das andere Land sie aufgrund ihrer Rasse, Religion oder politischen Überzeugung verfolgt. Die UNO sagt, dass alle einen Anspruch auf Asyl haben. Die Anzahl der Asylsuchenden scheint rapide zu steigen. Erkläre, welche Faktoren Deiner Meinung nach zu dieser Situation beitragen.');
INSERT INTO "public"."card_translations" VALUES (205, 95, 'de', 'Der Begriff „Nationalität“ kann verwendet werden, um das Recht einer Person auf Zugehörigkeit zu einem bestimmten Land oder einer bestimmten Nation zu beschreiben. Die UNO sagt, dass Menschen ein Recht auf eine Nationalität und auf einen Wechsel der Nationalität haben. Erkläre, wie Deiner Meinung nach die Welt aussehen würde, wenn sich alle frei bewegen könnten und es einfacher wäre, die Nationalität zu wechseln.');
INSERT INTO "public"."card_translations" VALUES (206, 96, 'de', 'Wenn Dein Land Mitglied der UNO ist, haben seine Bürger das Recht, mit freier Wahl, gleichen Rechten und dem Schutz ihres Landes zu heiraten. Zwei Menschen, die in derselben Straße aufgewachsen sind und regelmäßig zusammen gespielt haben, beschließen zu heiraten. Ihre Eltern lehnen dies jedoch aufgrund ihrer kulturellen Unterschiede ab. Erkläre, wie Du diesem Paar raten würdest, mit dieser Situation umzugehen.');
INSERT INTO "public"."card_translations" VALUES (207, 97, 'de', 'Eigentum kann alles Mögliche sein, z.B. Kleidung, Geld, Telefon, Computer, Auto oder ein Zuhause. Die UNO sagt, dass jeder das Recht auf Eigentum hat. Zwei Obdachlose kämpfen auf der Straße um Decken, die Passanten zurückgelassen haben. Wenn die Polizei gerufen wird, erkläre, wie sie Deiner Meinung nach mit der Situation umgehen sollte.');
INSERT INTO "public"."card_translations" VALUES (208, 98, 'de', 'Die UNO sagt, dass alle das Recht auf Freiheit der Gedanken, des Gewissens und der Religion haben. Außerdem haben alle das Recht auf Meinungsfreiheit. Erkläre Deine Meinung zur Verwendung von Propaganda, Marketing oder Gruppenzwang, um die Gedanken, Gefühle und Überzeugungen von Menschen zu Themen wie Religion, Freiheit, Krieg, Politik und Vorurteile zu beeinflussen.');
INSERT INTO "public"."card_translations" VALUES (209, 99, 'de', 'Raymond schließt sich einem der Debattierteams der Schule an. Er hat Meinungen, Ideen und möchte sie äußern, so wie die UNO sagt, dass er das Recht dazu hat. Jeder weiß, dass Raymond stottert. Doch niemand nimmt sich die Zeit, ihm zuzuhören; stattdessen legen sie ihm Worte in den Mund. Raymond ist frustriert und fühlt sich ausgeschlossen. Erkläre, welche Änderungen die Schule vornehmen könnte, damit sich Raymond stärker integriert fühlt.');
INSERT INTO "public"."card_translations" VALUES (210, 100, 'de', 'Eine Gruppe von Menschen versammelt sich in der Innenstadt, weil sie Interesse an einer gemeinsamen Sache teilen. Sie nutzen jedoch diese Versammlung, um Passanten gewaltsam zu zwingen, sich ihrer Versammlung anzuschließen. Die UNO sagt, dass jeder das Recht auf Versammlungs- und Vereinigungsfreiheit hat. Und niemand sollte gezwungen werden, irgendeiner Versammlung anzugehören. Erkläre, wie diese Gruppe neue Mitglieder rekrutieren könnte, ohne aufdringlich zu sein.');
INSERT INTO "public"."card_translations" VALUES (211, 101, 'de', 'Die UNO sagt, dass alle unabhängig von Einkommen, Status und Hintergrund das Recht haben, sich an der Regierung ihres Landes zu beteiligen. Darüber hinaus müssen Personen, die zur Teilnahme an der Regierung ihres Landes gewählt wurden, bei der Ausübung dieser Tätigkeit dem Willen des Volkes folgen. Nenne und erkläre zwei Beispiele dafür, wie gewählte Personen sicherstellen können, dass sie den Willen des Volkes korrekt befolgen.');
INSERT INTO "public"."card_translations" VALUES (212, 102, 'de', 'Die UNO sagt, dass alle Mitglied der Gesellschaft (Gemeinde) sind und das Recht haben, ihre Persönlichkeit frei zu entfalten. Geselligkeit ist eine Möglichkeit, wie Menschen ihre Persönlichkeit entwickeln. Erkläre, welche Auswirkungen die Isolation von Gefangenen im Gefängnis Deiner Meinung nach auf ihre Persönlichkeit hat.');
INSERT INTO "public"."card_translations" VALUES (213, 103, 'de', 'Laut UNO haben alle das Recht zu arbeiten und die Art der Arbeit zu wählen, die sie ausüben möchten, gleichen Lohn für gleiche Arbeit zu bekommen, und das Recht, Mitglied einer Gewerkschaft zum Schutz ihrer Rechte zu sein. Einige sagen jedoch, dass die Großeltern sich besser zurückzuziehen sollten, um Arbeitsplätze für jüngere Arbeitnehmer zu schaffen. Erkläre Deine Meinung dazu.');
INSERT INTO "public"."card_translations" VALUES (214, 104, 'de', 'Die UNO sagt, dass Schulen tagsüber Pausen für Mahlzeiten, Ruhe und Entspannung anbieten müssen. Einige Schulen und Eltern halten es für eine gute Idee, die Schulstunden zu verlängern, da dies mehr Unterrichtszeit bietet und sich an die Bürozeiten der Eltern anpasst. Wenn Du es entscheiden könntest, erkläre, wie viel Zeit Du für Unterricht, Essenspausen, Erholung und Entspannung einteilen würdest.');
INSERT INTO "public"."card_translations" VALUES (215, 105, 'de', 'Die UNO sagt, dass alle das Recht auf einen Mindestlebensstandard haben, der Güter und Dienstleistungen wie Nahrung, Kleidung, Wohnung, Bildung, öffentliche Verkehrsmittel und medizinische Versorgung bezahlbar macht. Nenne und erkläre zwei Beispiele dafür, wie ein Mindestlebensstandard aufrechterhalten werden könnte.');
INSERT INTO "public"."card_translations" VALUES (216, 106, 'de', 'Die UNO sagt, dass Bildung in den frühen Jahren kostenlos und für alle zugänglich sein sollte, und dass Eltern die Wahl haben sollten, welche Art von Bildung ihre Kinder bekommen. Manche könnten anders argumentieren. Erkläre Deiner Meinung nach die Vor- und Nachteile einer kostenlosen und zugänglichen Bildung in den frühen Jahren.');
INSERT INTO "public"."card_translations" VALUES (217, 107, 'de', 'Kulturelles Leben ist ein geschütztes Menschenrecht, das sich auf die einzigartigen Qualitäten einer Gemeinde bezieht, die sich beispielsweise durch die Teilnahme an wissenschaftlicher Untersuchung, Bildung und künstlerischer Aktivität entwickeln. Während eines Schreibcamps lesen sich zwei Personen gegenseitig die Arbeit vor. Eine der zwei scheint eine Idee aus der Arbeit der anderen Person zu übernehmen und davon zu profitieren, dass sie sie in einen Bestseller umwandelt. Erkläre Deine Meinung zu diesem Szenario.');
INSERT INTO "public"."card_translations" VALUES (218, 108, 'de', 'Die UNO sagt, dass die Rechte und Freiheiten von allen durch grundlegende Regeln und Gesetze geschützt werden sollten. In der Schule wirst Du gebeten, für eine Reduzierung der Schulregeln zu stimmen, damit die Studierenden mehr Freiheit haben. Erkläre, welche Themen Du Dir überlegen würdest, bevor Du Deine Stimme abgibst.');
INSERT INTO "public"."card_translations" VALUES (219, 109, 'de', 'Zusammen mit Rechten und Freiheiten sagt die UNO, dass zur Entwicklung der Persönlichkeit aller Menschen auch Pflichten und Verantwortungen gegenüber ihrer Gemeinde gehören. Einige sagen jedoch, dass Pflichten und Verantwortungen die Rechte und Freiheiten der Menschen einschränken. Erkläre, was Du dazu denkst.');
INSERT INTO "public"."card_translations" VALUES (220, 110, 'de', 'Im Grunde genommen zielt die UNO darauf ab, die Rechte und Freiheiten aller Menschen zu schützen, damit sie gleichberechtigt und in Würde leben können. Nenne und erkläre zwei Beispiele dafür, wie die Freiheiten und Rechte der Menschen geschützt werden können, damit sie gleichberechtigt und in Würde leben können.');
INSERT INTO "public"."card_translations" VALUES (221, 51, 'de', 'Deine Familie gewinnt die Gelegenheit, als eine der ersten Familien dabei zu helfen, den Planeten Mars zu kolonisieren. Ein Teil der Aufgabe Deiner Familie wird es sein, die Regeln der Vereinten Nationen umzusetzen, indem Ihr dafür sorgt, dass alle Menschen frei und gleich an Würde und Rechten geboren werden und einander im Sinne von „Verständnis und Freundschaft“ behandeln. Erkläre, wie Deine Familie diese Aufgabe erfüllen könnte.');
INSERT INTO "public"."card_translations" VALUES (228, 58, 'de', 'Menschen machen Fehler, manche schwerwiegender als andere. Es ist eine Art, wie Menschen lernen. Manche Menschen machen – ob aus Versehen oder Absicht – Fehler, die gegen das Gesetz verstoßen. Die UNO sagt, dass alle ein Recht auf eine faire und effektive Lösung haben. In der Schule wirst Du beim Einbrechen in das Schließfach einer anderen Schülerin erwischt. Erkläre, was der Schuldirektor Deiner Meinung nach tun sollte, um Dir eine faire und effektive Lösung zu bieten.');
INSERT INTO "public"."card_translations" VALUES (229, 59, 'de', 'Dein Lehrer hat einen Witz erzählt. Du fandest es urkomisch und brachst in unkontrollierbares Gelächter aus. Der Lehrer wollte den Unterricht beginnen, aber Du konntest nicht aufhören zu lachen. Der Lehrer hat dir zwei Mal Nachsitzen gegeben, weil Du störend warst. Du glaubst, dass Deine Rechte verletzt wurden, da die UNO sagt, dass Du vor unfairen Urteilen geschützt werden solltest. Erkläre, wie Du mit dieser Situation umgehst.');
INSERT INTO "public"."card_translations" VALUES (230, 60, 'de', 'Du bist im Sommercamp. Ein anderer Schüler beschwert sich bei den Camp-Organisatoren darüber, von Dir gemobbt zu werden. Du weißt, dass die Beschwerde unwahr und unbegründet ist. In der Schule wurde Dir beigebracht, dass Du in solchen Angelegenheiten ein Recht auf eine faire und offene Anhörung hast. Erkläre, wie Du mit der Situation umgehen würdest.');
INSERT INTO "public"."card_translations" VALUES (231, 61, 'de', 'In der Schule wirst Du zusammen mit einer Gruppe anderer Schüler beschuldigt, während einer Schulprüfung geschummelt zu haben. Du hast jedoch nicht betrogen und weißt, dass das Gesetz besagt, dass jeder als unschuldig gelten muss, bis seine Schuld bewiesen ist. Erkläre, wie Du mit dieser Situation umgehen würdest.');
INSERT INTO "public"."card_translations" VALUES (232, 62, 'de', 'Deine Eltern füllen ein Formular aus, damit Du an einem Sommercamp teilnehmen kannst. Das Formular besagt, dass Du Dein Telefon während des Camps abgeben und es nur zu bestimmten Zeiten verwenden darfst. Erkläre, wie Du Deine Privatsphäre schützen könntest, während Du gleichzeitig den Camp-Regeln zustimmst.');
INSERT INTO "public"."card_translations" VALUES (233, 63, 'de', 'Die UNO sagt, dass alle das Recht haben, sich innerhalb ihres Landes frei zu bewegen und (vorbehaltlich verfügbarer Wohnungen) fast überall in ihrem Land zu leben. Deine Regierung möchte eine große Gruppe von Flüchtlingen in Deiner Nachbarschaft unterbringen und möchte Deine Meinung wissen. Erkläre, was Du bedenken würdest, bevor Du Deine Meinung ausdrückst.');
INSERT INTO "public"."card_translations" VALUES (234, 64, 'de', 'Deine Eltern bitten Dich, Dein Schlafzimmer mit jemandem zu teilen, da sie eine asylsuchende Familie aufgenommen haben. Der Begriff Asyl bezieht sich darauf, dass Menschen, die aufgrund ihrer Rasse, Religion oder politischen Überzeugung verfolgt werden, Anspruch auf Sicherheit haben. Erkläre, was Du bedenken würdest, bevor Du Deinen Eltern Deine Antwort gibst.');
INSERT INTO "public"."card_translations" VALUES (235, 65, 'de', 'Die UNO sagt, alle Menschen haben das Recht auf eine Nationalität und auf einen Wechsel der Nationalität. Der Begriff Nationalität kann verwendet werden, um das Recht einer Person auf Zugehörigkeit zu einem bestimmten Land oder einer bestimmten Nation zu beschreiben. Deine Familie möchte für ein paar Jahre in ein anderes Land ziehen, um einen anderen Lebensstil kennenzulernen. Du hast die Möglichkeit, Deine Staatsangehörigkeit zu ändern. Erkläre, was Du tun würdest.');
INSERT INTO "public"."card_translations" VALUES (236, 66, 'de', 'Die UNO sagt, dass alle Volljährigen das Recht haben, ohne Einschränkung zu heiraten. In einigen Kulturen, in denen die Menschen andere Überzeugungen haben, werden Ehen von den Eltern arrangiert. Stelle Dir vor, Du bist volljährig und verliebt. Aber Deine Eltern haben dafür gesorgt, dass Du jemand anderen heiratest. Erkläre, wie Du mit dieser Situation umgehen würdest.');
INSERT INTO "public"."card_translations" VALUES (237, 67, 'de', 'Du sitzt in einem Flugzeug und schaust Dir einen Film auf Deinem Tablet an. Das Teenager-Mädchen dahinter bittet darum, Dein Tablet auszuprobieren. Du stimmst zu. Als Du nach Deinem Tablet fragst, sagt das Mädchen, dass sie es behalten möchte und weigert sich, es zurückzugeben. Die UNO sagt, Du hast Anspruch auf Eigentum. Erkläre, was Du sagen oder tun könntest, um Dein Tablet zurückzubekommen, und dabei auch das Recht des Mädchens auf Freiheit, Gleichheit und Würde respektierst.');
INSERT INTO "public"."card_translations" VALUES (238, 68, 'de', 'Ja, Du bist ein Träumer und gehst regelmäßig in Deinen eigenen Gedanken und Vorstellungen auf und ab. Die UN sagt, Du hast das Recht und die Freiheit, dies zu tun. Andere Kinder haben jedoch begonnen, Dich regelmäßig zu ärgern, wenn Du dies tust. Erkläre, wie Du mit dieser Situation umgehen würdest.');
INSERT INTO "public"."card_translations" VALUES (239, 69, 'de', 'Während einer Unterrichtsdiskussion äußerst Du eine Meinung über Geschichte, die niemand mag. Tatsächlich missfällt ihnen Deine Bemerkung so sehr, dass sie Dich ausbuhen. Laut UNO wäre dies ein Beispiel dafür, dass Dir Deine Meinungs- und Meinungsfreiheit verweigert wird. Erkläre, wie Du mit der Situation umgehen würdest.');
INSERT INTO "public"."card_translations" VALUES (240, 70, 'de', 'Es ist Wochenende, Du und Deine Freunde hängen im öffentlichen Skatepark ab. Ein Mann kommt auf Deine Gruppe zu und sagt: „Hier darfst Du nur rein, wenn Du unserem Skateclub beitrittst“. Du wurdest von der UNO anders belehrt. Erkläre, wie Du mit der Situation umgehen würdest.');
INSERT INTO "public"."card_translations" VALUES (241, 71, 'de', 'Du wurdest als Schülervertreter*in in den Schulrat gewählt. Laut UNO wäre es Deine Aufgabe, bei der Ausübung Deiner Tätigkeit den Wünschen der Studierenden zu folgen. Erkläre, welche Überlegungen Du in Betracht ziehen würdest, wenn einige Studierende mehr Schulregeln und andere Studierende weniger Schulregeln fordern würden.');
INSERT INTO "public"."card_translations" VALUES (242, 72, 'de', 'Die UNO sagt, dass alle Mitglied der Gesellschaft sind und das Recht haben, ihre Persönlichkeit frei zu entfalten. Sport ist eine Art, wie Menschen ihre Persönlichkeit entwickeln. Stelle Dir vor, Du bist an den Rollstuhl gebunden und hast wenig Mobilität. Erkläre, wie Du sonst Deine Persönlichkeit entwickeln könntest.');
INSERT INTO "public"."card_translations" VALUES (243, 73, 'de', 'Du weißt, dass die UNO sagt, dass alle das Recht haben, zu günstigen Bedingungen (Bezahlung, Pausen usw.) zu arbeiten. Beim Essen im Joe''s Diner hörst Du eine Person zur anderen sagen: „Das Essen wäre bezahlbarer, wenn wir der Bedienung kein Trinkgeld geben müssten“. Sie wenden sich dann an Dich und fragen Dich nach Deiner Meinung. Erkläre, was Du dazu sagen würdest.');
INSERT INTO "public"."card_translations" VALUES (244, 74, 'de', 'Während der Unterrichtszeit liest Dein Lehrer eine Nachricht vor, in der er argumentiert, dass die Schulen das ganze Jahr über geöffnet sein sollten, mit nur wenigen freien Tagen an Weihnachten und Ostern. Du wirst um Deine Meinung gebeten. Du weißt, dass die UNO sagt, dass jeder das Recht auf Ruhe, Freizeit und Urlaub hat. Erkläre, wie Du antworten würdest.');
INSERT INTO "public"."card_translations" VALUES (245, 75, 'de', 'Die UNO sagt, dass jeder das Recht auf einen Mindestlebensstandard hat, der beispielsweise Nahrung, Kleidung, Wohnung, Bildung, öffentliche Verkehrsmittel und medizinische Versorgung bezahlbar macht. Dennoch kommen mehrere Kinder regelmäßig ohne Mittagessen oder Geld für das Mittagessen in die Schule und bitten Dich, Dein Mittagessen zu teilen. Am Anfang teilt man gerne, aber bald wird es zur Gewohnheit. Erkläre, wie Du mit dieser Situation umgehen würdest.');
INSERT INTO "public"."card_translations" VALUES (246, 76, 'de', 'Die Arbeit Deiner Mutter führt Deine Familie in ein anderes Land. In diesem Land ist Bildung nicht obligatorisch oder erforderlich, und es ist sehr teuer für diejenigen, die es sich leisten können. Du hast die Wahl, zur Schule zu gehen oder Dich den Kindern auf der Straße anzuschließen. Erkläre, welche Option Du wählen würdest.');
INSERT INTO "public"."card_translations" VALUES (247, 77, 'de', 'Heidi ist gemein. Sie versucht, Dich zu isolieren, indem sie Dich daran hindert, an Aktivitäten teilzunehmen, die Menschen zusammenbringen. Du weißt, dass die UNO sagt, dass alle einen Anspruch auf ein kulturelles Leben haben, das Aktivitäten wie Musik, Tanz, Kunst, Schreiben, Sport und Wissenschaft umfasst, die Menschen zusammenbringen. Erkläre, wie Du mit dieser Situation umgehen würdest.');
INSERT INTO "public"."card_translations" VALUES (248, 78, 'de', 'Die UNO würde sagen, dass Schulregeln eingeführt werden, um sicherzustellen, dass die Rechte und Freiheiten aller gewahrt bleiben. Du hast die Wahl, auf eine Schule mit weniger Regeln zu gehen, wo Du mehr Freiheit hättest, das zu tun, was Du willst, oder auf eine Schule mit mehr Regeln und weniger Freiheiten. Erkläre, welche Schule Du wählen würdest.');
INSERT INTO "public"."card_translations" VALUES (249, 79, 'de', 'Neben Rechten und Freiheiten sagt die UNO zusätzlich, dass alle Menschen im Rahmen der Entwicklung ihrer Persönlichkeit auch Pflichten und Verantwortungen gegenüber ihrer Gemeinschaft haben. Nehmen wir an, Du hast die Wahl, Rechte mit oder ohne Pflichten zu haben. Erkläre, welche Option Du nehmen würdest.');
INSERT INTO "public"."card_translations" VALUES (250, 80, 'de', 'Schulregeln helfen, die soziale Ordnung und Disziplin aufrechtzuerhalten. Sie tragen auch dazu bei, dass die Rechte und Freiheiten der Studierenden geschützt werden. Eine Gruppe störender Schüler will sich über Eure Schulregeln hinwegsetzen. Sie üben Druck auf Dich aus, Dich an ihren störenden Aktivitäten zu beteiligen. Du fühlst Dich unwohl, willst Dich aber irgendwie einfügen. Erkläre, wie Du mit dieser Situation umgehen würdest.');

-- ----------------------------
-- Table structure for cards
-- ----------------------------
DROP TABLE IF EXISTS "public"."cards";
CREATE TABLE "public"."cards" (
  "card_id" int4 NOT NULL DEFAULT nextval('cards_card_id_seq'::regclass),
  "card_type" varchar(255) COLLATE "pg_catalog"."default",
  "age_group" varchar(255) COLLATE "pg_catalog"."default",
  "token" int4,
  "effect" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of cards
-- ----------------------------
INSERT INTO "public"."cards" VALUES (45, 'Chance', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (48, 'Chance', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (47, 'Chance', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (41, 'Chance', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (44, 'Chance', 'child', -1, NULL);
INSERT INTO "public"."cards" VALUES (60, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (56, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (74, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (70, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (66, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (65, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (69, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (52, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (80, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (51, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (116, 'BounceBack', 'teenager', 0, 'Fire');
INSERT INTO "public"."cards" VALUES (76, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (58, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (72, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (62, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (64, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (43, 'Chance', 'child', -1, NULL);
INSERT INTO "public"."cards" VALUES (79, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (68, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (67, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (53, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (54, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (55, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (59, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (90, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (42, 'Chance', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (94, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (82, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (46, 'Chance', 'child', -1, NULL);
INSERT INTO "public"."cards" VALUES (104, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (107, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (49, 'Chance', 'child', -1, NULL);
INSERT INTO "public"."cards" VALUES (108, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (122, 'Chance', 'teenager', 1, NULL);
INSERT INTO "public"."cards" VALUES (128, 'Chance', 'teenager', 1, NULL);
INSERT INTO "public"."cards" VALUES (124, 'Chance', 'teenager', 1, NULL);
INSERT INTO "public"."cards" VALUES (125, 'Chance', 'teenager', 1, NULL);
INSERT INTO "public"."cards" VALUES (130, 'Chance', 'teenager', 1, NULL);
INSERT INTO "public"."cards" VALUES (88, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (123, 'Chance', 'teenager', -1, NULL);
INSERT INTO "public"."cards" VALUES (84, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (92, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (106, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (110, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (109, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (85, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (91, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (89, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (93, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (95, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (100, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (81, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (83, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (105, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (101, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (144, 'FED', 'teenager', 0, 'zoom');
INSERT INTO "public"."cards" VALUES (148, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (132, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (133, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (145, 'FED', 'teenager', 0, 'scale');
INSERT INTO "public"."cards" VALUES (147, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (149, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (146, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (135, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (134, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (131, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (136, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (137, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (139, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (138, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (142, 'FED', 'teenager', 0, 'rotate');
INSERT INTO "public"."cards" VALUES (140, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (127, 'Chance', 'teenager', 1, NULL);
INSERT INTO "public"."cards" VALUES (126, 'Chance', 'teenager', -1, NULL);
INSERT INTO "public"."cards" VALUES (23, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (36, 'BounceBack', 'child', 0, 'Freeze');
INSERT INTO "public"."cards" VALUES (39, 'BounceBack', 'child', 0, 'Fire');
INSERT INTO "public"."cards" VALUES (35, 'BounceBack', 'child', 0, 'Volcano');
INSERT INTO "public"."cards" VALUES (121, 'Chance', 'teenager', -1, NULL);
INSERT INTO "public"."cards" VALUES (129, 'Chance', 'teenager', -1, NULL);
INSERT INTO "public"."cards" VALUES (57, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (75, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (61, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (71, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (73, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (77, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (63, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (78, 'FED', 'child', 0, NULL);
INSERT INTO "public"."cards" VALUES (102, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (103, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (97, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (96, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (87, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (86, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (98, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (99, 'Article', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (151, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (160, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (159, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (158, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (157, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (156, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (152, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (153, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (155, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (154, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (150, 'FED', 'teenager', 0, NULL);
INSERT INTO "public"."cards" VALUES (143, 'FED', 'teenager', 0, 'fade');
INSERT INTO "public"."cards" VALUES (141, 'FED', 'teenager', 0, 'flip');
INSERT INTO "public"."cards" VALUES (14, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (21, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (2, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (6, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (25, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (10, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (28, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (26, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (18, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (16, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (22, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (1, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (5, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (24, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (31, 'BounceBack', 'child', 0, 'Earthquake');
INSERT INTO "public"."cards" VALUES (32, 'BounceBack', 'child', 0, 'Fire');
INSERT INTO "public"."cards" VALUES (33, 'BounceBack', 'child', 0, 'Freeze');
INSERT INTO "public"."cards" VALUES (37, 'BounceBack', 'child', 0, 'Volcano');
INSERT INTO "public"."cards" VALUES (38, 'BounceBack', 'child', 0, 'Avalanche');
INSERT INTO "public"."cards" VALUES (40, 'BounceBack', 'child', 0, 'Earthquake');
INSERT INTO "public"."cards" VALUES (111, 'BounceBack', 'teenager', 0, 'Earthquake');
INSERT INTO "public"."cards" VALUES (112, 'BounceBack', 'teenager', 0, 'Fire');
INSERT INTO "public"."cards" VALUES (113, 'BounceBack', 'teenager', 0, 'Freeze');
INSERT INTO "public"."cards" VALUES (114, 'BounceBack', 'teenager', 0, 'Avalanche');
INSERT INTO "public"."cards" VALUES (115, 'BounceBack', 'teenager', 0, 'Volcano');
INSERT INTO "public"."cards" VALUES (117, 'BounceBack', 'teenager', 0, 'Freeze');
INSERT INTO "public"."cards" VALUES (118, 'BounceBack', 'teenager', 0, 'Avalanche');
INSERT INTO "public"."cards" VALUES (119, 'BounceBack', 'teenager', 0, 'Volcano');
INSERT INTO "public"."cards" VALUES (120, 'BounceBack', 'teenager', 0, 'Earthquake');
INSERT INTO "public"."cards" VALUES (3, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (20, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (30, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (29, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (19, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (12, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (27, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (8, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (4, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (11, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (13, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (7, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (15, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (9, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (17, 'Article', 'child', 1, NULL);
INSERT INTO "public"."cards" VALUES (50, 'Chance', 'child', -1, NULL);
INSERT INTO "public"."cards" VALUES (34, 'BounceBack', 'child', 0, 'Avalanche');

-- ----------------------------
-- Table structure for map
-- ----------------------------
DROP TABLE IF EXISTS "public"."map";
CREATE TABLE "public"."map" (
  "cell_number" int4 NOT NULL,
  "cell_type" varchar(255) COLLATE "pg_catalog"."default",
  "cell_info" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of map
-- ----------------------------
INSERT INTO "public"."map" VALUES (1, 'FED', NULL);
INSERT INTO "public"."map" VALUES (2, 'Article', NULL);
INSERT INTO "public"."map" VALUES (3, 'FED', NULL);
INSERT INTO "public"."map" VALUES (4, 'Article', NULL);
INSERT INTO "public"."map" VALUES (6, 'Chance', NULL);
INSERT INTO "public"."map" VALUES (7, 'FED', NULL);
INSERT INTO "public"."map" VALUES (8, 'Article', NULL);
INSERT INTO "public"."map" VALUES (9, 'FED', NULL);
INSERT INTO "public"."map" VALUES (10, 'Chance', NULL);
INSERT INTO "public"."map" VALUES (12, 'Article', NULL);
INSERT INTO "public"."map" VALUES (13, 'Article', NULL);
INSERT INTO "public"."map" VALUES (14, 'FED', NULL);
INSERT INTO "public"."map" VALUES (15, 'Chance', NULL);
INSERT INTO "public"."map" VALUES (17, 'FED', NULL);
INSERT INTO "public"."map" VALUES (18, 'Article', NULL);
INSERT INTO "public"."map" VALUES (19, 'Article', NULL);
INSERT INTO "public"."map" VALUES (21, 'FED', NULL);
INSERT INTO "public"."map" VALUES (22, 'Article', NULL);
INSERT INTO "public"."map" VALUES (23, 'Chance', NULL);
INSERT INTO "public"."map" VALUES (24, 'FED', NULL);
INSERT INTO "public"."map" VALUES (25, 'FED', NULL);
INSERT INTO "public"."map" VALUES (26, 'Chance', NULL);
INSERT INTO "public"."map" VALUES (27, 'Article', NULL);
INSERT INTO "public"."map" VALUES (29, 'FED', NULL);
INSERT INTO "public"."map" VALUES (30, 'Article', NULL);
INSERT INTO "public"."map" VALUES (5, 'Bounce', 'Freeze');
INSERT INTO "public"."map" VALUES (11, 'Bounce', 'Fire');
INSERT INTO "public"."map" VALUES (16, 'Bounce', 'Volcano');
INSERT INTO "public"."map" VALUES (20, 'Bounce', 'Earthquake');
INSERT INTO "public"."map" VALUES (28, 'Bounce', 'Avalanche');

-- ----------------------------
-- Table structure for post_survey_answers
-- ----------------------------
DROP TABLE IF EXISTS "public"."post_survey_answers";
CREATE TABLE "public"."post_survey_answers" (
  "answer_id" int4 NOT NULL DEFAULT nextval('post_service_answers_answer_id_seq'::regclass),
  "student_id" int4,
  "question_id" int4,
  "selected_option_index" varchar(255) COLLATE "pg_catalog"."default",
  "written_answer" varchar(255) COLLATE "pg_catalog"."default",
  "answer_content" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of post_survey_answers
-- ----------------------------
INSERT INTO "public"."post_survey_answers" VALUES (244, 1, 4, '-1', 'Yes', 'REG');
INSERT INTO "public"."post_survey_answers" VALUES (245, 1, 5, '-1', 'Yes', 'GDSFG');
INSERT INTO "public"."post_survey_answers" VALUES (246, 1, 2, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (247, 1, 3, '-1', 'Yes', 'DSFG');
INSERT INTO "public"."post_survey_answers" VALUES (248, 1, 1, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (256, 1, 2, '0', 'No', '0');
INSERT INTO "public"."post_survey_answers" VALUES (265, 1, 5, '-1', 'Yes', 'ASFSFSD');
INSERT INTO "public"."post_survey_answers" VALUES (281, 1, 4, '-1', 'Yes', 'hello');
INSERT INTO "public"."post_survey_answers" VALUES (282, 1, 5, '-1', 'Yes', 'hello');
INSERT INTO "public"."post_survey_answers" VALUES (283, 1, 2, '0', 'No', '0');
INSERT INTO "public"."post_survey_answers" VALUES (284, 1, 3, '-1', 'Yes', 'hello');
INSERT INTO "public"."post_survey_answers" VALUES (285, 1, 1, '0', 'No', '0');
INSERT INTO "public"."post_survey_answers" VALUES (288, 1, 4, '-1', 'Yes', 'freedom');
INSERT INTO "public"."post_survey_answers" VALUES (289, 1, 5, '-1', 'Yes', 'freedom');
INSERT INTO "public"."post_survey_answers" VALUES (290, 1, 2, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (291, 1, 2, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (293, 1, 1, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (295, 1, 5, '-1', 'Yes', 'l');
INSERT INTO "public"."post_survey_answers" VALUES (296, 1, 3, '-1', 'Yes', 'freedom');
INSERT INTO "public"."post_survey_answers" VALUES (297, 1, 1, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (298, 1, 4, '-1', 'Yes', 'a');
INSERT INTO "public"."post_survey_answers" VALUES (299, 1, 5, '-1', 'Yes', 'a');
INSERT INTO "public"."post_survey_answers" VALUES (301, 1, 2, '0', 'No', '0');
INSERT INTO "public"."post_survey_answers" VALUES (1, 1, 1, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (2, 1, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (3, 1, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (4, 1, 4, 'I found Freedom of expression most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (5, 1, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (6, 2, 1, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (7, 2, 2, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (8, 2, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (9, 2, 4, 'I found Right to privacy most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (10, 2, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (11, 3, 1, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (12, 3, 2, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (13, 3, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (14, 3, 4, 'I found Right to privacy most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (15, 3, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (16, 4, 1, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (17, 4, 2, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (18, 4, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (19, 4, 4, 'I found Freedom of expression most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (20, 4, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (21, 5, 1, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (22, 5, 2, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (23, 5, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (24, 5, 4, 'I found Right to education most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (25, 5, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (26, 6, 1, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (27, 6, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (28, 6, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (29, 6, 4, 'I found Freedom of expression most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (30, 6, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (31, 7, 1, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (32, 7, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (33, 7, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (34, 7, 4, 'I found Right to privacy most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (35, 7, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (36, 8, 1, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (37, 8, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (38, 8, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (39, 8, 4, 'I found Right to privacy most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (40, 8, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (41, 9, 1, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (42, 9, 2, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (43, 9, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (44, 9, 4, 'I found Right to education most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (45, 9, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (46, 10, 1, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (47, 10, 2, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (48, 10, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (49, 10, 4, 'I found Right to privacy most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (50, 10, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (51, 11, 1, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (52, 11, 2, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (302, 1, 3, '-1', 'Yes', 'a');
INSERT INTO "public"."post_survey_answers" VALUES (305, 1, 1, '1', 'No', '1');
INSERT INTO "public"."post_survey_answers" VALUES (306, 1, 4, '-1', 'Yes', 'l');
INSERT INTO "public"."post_survey_answers" VALUES (308, 1, 2, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (309, 1, 3, '-1', 'Yes', 'l');
INSERT INTO "public"."post_survey_answers" VALUES (335, 1, 4, '-1', 'Yes', 'gd');
INSERT INTO "public"."post_survey_answers" VALUES (336, 1, 5, '-1', 'Yes', 'gjk');
INSERT INTO "public"."post_survey_answers" VALUES (337, 1, 4, '-1', 'Yes', 'sad');
INSERT INTO "public"."post_survey_answers" VALUES (338, 1, 2, '0', 'No', '0');
INSERT INTO "public"."post_survey_answers" VALUES (339, 1, 5, '-1', 'Yes', 'asd');
INSERT INTO "public"."post_survey_answers" VALUES (340, 1, 2, '0', 'No', '0');
INSERT INTO "public"."post_survey_answers" VALUES (341, 1, 3, '-1', 'Yes', 'das');
INSERT INTO "public"."post_survey_answers" VALUES (344, 1, 1, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (345, 1, 4, '-1', 'Yes', 'sdf');
INSERT INTO "public"."post_survey_answers" VALUES (346, 1, 5, '-1', 'Yes', 'dfs');
INSERT INTO "public"."post_survey_answers" VALUES (347, 1, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (348, 1, 3, '-1', 'Yes', 'asd');
INSERT INTO "public"."post_survey_answers" VALUES (349, 1, 1, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (355, 1, 4, '-1', 'Yes', 'gk');
INSERT INTO "public"."post_survey_answers" VALUES (356, 1, 5, '-1', 'Yes', 'h''h');
INSERT INTO "public"."post_survey_answers" VALUES (357, 1, 2, '1', 'No', '1');
INSERT INTO "public"."post_survey_answers" VALUES (358, 1, 3, '-1', 'Yes', 'h');
INSERT INTO "public"."post_survey_answers" VALUES (53, 11, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (54, 11, 4, 'I found Non‑discrimination most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (55, 11, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (56, 12, 1, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (57, 12, 2, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (58, 12, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (59, 12, 4, 'I found Right to education most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (60, 12, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (61, 13, 1, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (62, 13, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (63, 13, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (64, 13, 4, 'I found Right to education most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (65, 13, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (66, 14, 1, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (67, 14, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (68, 14, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (69, 14, 4, 'I found Right to privacy most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (70, 14, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (71, 15, 1, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (72, 15, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (73, 15, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (74, 15, 4, 'I found Non‑discrimination most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (75, 15, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (76, 16, 1, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (77, 16, 2, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (78, 16, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (79, 16, 4, 'I found Right to privacy most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (80, 16, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (81, 17, 1, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (82, 17, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (83, 17, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (84, 17, 4, 'I found Right to privacy most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (85, 17, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (86, 18, 1, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (87, 18, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (88, 18, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (89, 18, 4, 'I found Freedom of expression most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (90, 18, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (91, 19, 1, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (92, 19, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (93, 19, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (94, 19, 4, 'I found Non‑discrimination most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (95, 19, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (96, 20, 1, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (97, 20, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (98, 20, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (99, 20, 4, 'I found Non‑discrimination most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (100, 20, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (101, 21, 1, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (102, 21, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (103, 21, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (104, 21, 4, 'I found Freedom of expression most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (105, 21, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (106, 22, 1, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (107, 22, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (108, 22, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (109, 22, 4, 'I found Freedom of expression most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (110, 22, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (111, 23, 1, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (112, 23, 2, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (113, 23, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (114, 23, 4, 'I found Freedom of expression most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (115, 23, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (116, 24, 1, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (117, 24, 2, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (118, 24, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (119, 24, 4, 'I found Right to education most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (120, 24, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (121, 25, 1, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (122, 25, 2, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (123, 25, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (217, 1, 1, '0', 'No', NULL);
INSERT INTO "public"."post_survey_answers" VALUES (218, 1, 4, '-1', 'Yes', NULL);
INSERT INTO "public"."post_survey_answers" VALUES (124, 25, 4, 'I found Non‑discrimination most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (125, 25, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (126, 26, 1, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (127, 26, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (128, 26, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (129, 26, 4, 'I found Freedom of expression most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (130, 26, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (131, 27, 1, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (132, 27, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (133, 27, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (134, 27, 4, 'I found Right to education most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (135, 27, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (136, 28, 1, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (137, 28, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (138, 28, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (139, 28, 4, 'I found Non‑discrimination most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (140, 28, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (141, 29, 1, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (142, 29, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (143, 29, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (144, 29, 4, 'I found Freedom of expression most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (145, 29, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (146, 30, 1, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (147, 30, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (148, 30, 3, 'Universal Declaration of Human Rights, Convention on the Rights of the Child, and Geneva Conventions, among others.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (149, 30, 4, 'I found Right to education most impactful because it underpins many other rights.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (150, 30, 5, 'I plan to challenge discriminatory comments online and support campaigns that promote equal access to education.', 'Yes', '-1');
INSERT INTO "public"."post_survey_answers" VALUES (286, 1, 4, '-1', 'Yes', 'q');
INSERT INTO "public"."post_survey_answers" VALUES (292, 1, 3, '-1', 'Yes', 'q');
INSERT INTO "public"."post_survey_answers" VALUES (300, 1, 2, '0', 'No', '0');
INSERT INTO "public"."post_survey_answers" VALUES (303, 1, 3, '-1', 'Yes', 'k');
INSERT INTO "public"."post_survey_answers" VALUES (307, 1, 5, '-1', 'Yes', 'l');
INSERT INTO "public"."post_survey_answers" VALUES (310, 1, 1, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (311, 1, 4, '-1', 'Yes', 'ff');
INSERT INTO "public"."post_survey_answers" VALUES (312, 1, 5, '-1', 'Yes', 'dsf');
INSERT INTO "public"."post_survey_answers" VALUES (313, 1, 4, '-1', 'Yes', 'lkl');
INSERT INTO "public"."post_survey_answers" VALUES (314, 1, 5, '-1', 'Yes', 'kl');
INSERT INTO "public"."post_survey_answers" VALUES (315, 1, 2, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (316, 1, 2, '0', 'No', '0');
INSERT INTO "public"."post_survey_answers" VALUES (317, 1, 3, '-1', 'Yes', 'sad');
INSERT INTO "public"."post_survey_answers" VALUES (319, 1, 4, '-1', 'Yes', 'g');
INSERT INTO "public"."post_survey_answers" VALUES (320, 1, 1, '1', 'No', '1');
INSERT INTO "public"."post_survey_answers" VALUES (322, 1, 5, '-1', 'Yes', 'hg');
INSERT INTO "public"."post_survey_answers" VALUES (323, 1, 2, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (324, 1, 3, '-1', 'Yes', 'hj');
INSERT INTO "public"."post_survey_answers" VALUES (325, 1, 5, '-1', 'Yes', 'h');
INSERT INTO "public"."post_survey_answers" VALUES (326, 1, 1, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (327, 1, 4, '-1', 'Yes', 'uk');
INSERT INTO "public"."post_survey_answers" VALUES (329, 1, 5, '-1', 'Yes', 'ghy');
INSERT INTO "public"."post_survey_answers" VALUES (330, 1, 3, '-1', 'Yes', 'f');
INSERT INTO "public"."post_survey_answers" VALUES (332, 1, 2, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (333, 1, 3, '-1', 'Yes', 'sfe');
INSERT INTO "public"."post_survey_answers" VALUES (334, 1, 1, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (342, 1, 3, '-1', 'Yes', 'fhh');
INSERT INTO "public"."post_survey_answers" VALUES (343, 1, 1, '1', 'No', '1');
INSERT INTO "public"."post_survey_answers" VALUES (359, 1, 1, '1', 'No', '1');
INSERT INTO "public"."post_survey_answers" VALUES (360, 1, 4, '-1', 'Yes', 'g');
INSERT INTO "public"."post_survey_answers" VALUES (361, 1, 5, '-1', 'Yes', 'k');
INSERT INTO "public"."post_survey_answers" VALUES (362, 1, 2, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (363, 1, 3, '-1', 'Yes', 'k');
INSERT INTO "public"."post_survey_answers" VALUES (364, 1, 1, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (372, 1, 2, '0', 'No', '0');
INSERT INTO "public"."post_survey_answers" VALUES (377, 1, 4, '-1', 'Yes', 'test');
INSERT INTO "public"."post_survey_answers" VALUES (380, 1, 3, '-1', 'Yes', '123');
INSERT INTO "public"."post_survey_answers" VALUES (390, 1, 4, '-1', 'Yes', 'test');
INSERT INTO "public"."post_survey_answers" VALUES (391, 1, 5, '-1', 'Yes', 'test');
INSERT INTO "public"."post_survey_answers" VALUES (392, 1, 2, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (393, 1, 4, '-1', 'Yes', 'oil');
INSERT INTO "public"."post_survey_answers" VALUES (394, 1, 3, '-1', 'Yes', 'test');
INSERT INTO "public"."post_survey_answers" VALUES (395, 1, 5, '-1', 'Yes', ';oil');
INSERT INTO "public"."post_survey_answers" VALUES (396, 1, 1, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (397, 1, 2, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (398, 1, 3, '-1', 'Yes', 'k,k,');
INSERT INTO "public"."post_survey_answers" VALUES (399, 1, 1, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (277, 1, 4, '-1', 'Yes', 'ff');
INSERT INTO "public"."post_survey_answers" VALUES (278, 1, 5, '-1', 'Yes', 'jj');
INSERT INTO "public"."post_survey_answers" VALUES (279, 1, 2, '0', 'No', '0');
INSERT INTO "public"."post_survey_answers" VALUES (280, 1, 3, '-1', 'Yes', 'fg');
INSERT INTO "public"."post_survey_answers" VALUES (287, 1, 5, '-1', 'Yes', 'q');
INSERT INTO "public"."post_survey_answers" VALUES (294, 1, 4, '-1', 'Yes', 'f');
INSERT INTO "public"."post_survey_answers" VALUES (304, 1, 1, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (318, 1, 3, '-1', 'Yes', 'jkj');
INSERT INTO "public"."post_survey_answers" VALUES (321, 1, 4, '-1', 'Yes', 'gui');
INSERT INTO "public"."post_survey_answers" VALUES (328, 1, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (331, 1, 1, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (350, 1, 4, '-1', 'Yes', 's');
INSERT INTO "public"."post_survey_answers" VALUES (351, 1, 5, '-1', 'Yes', 'gh');
INSERT INTO "public"."post_survey_answers" VALUES (352, 1, 2, '1', 'No', '1');
INSERT INTO "public"."post_survey_answers" VALUES (353, 1, 3, '-1', 'Yes', 'f');
INSERT INTO "public"."post_survey_answers" VALUES (354, 1, 1, '1', 'No', '1');
INSERT INTO "public"."post_survey_answers" VALUES (365, 1, 4, '-1', 'Yes', 'f');
INSERT INTO "public"."post_survey_answers" VALUES (366, 1, 5, '-1', 'Yes', 'f');
INSERT INTO "public"."post_survey_answers" VALUES (367, 1, 4, '-1', 'Yes', 'test');
INSERT INTO "public"."post_survey_answers" VALUES (368, 1, 2, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (369, 1, 3, '-1', 'Yes', 'ff');
INSERT INTO "public"."post_survey_answers" VALUES (370, 1, 5, '-1', 'Yes', 'test');
INSERT INTO "public"."post_survey_answers" VALUES (371, 1, 1, '0', 'No', '0');
INSERT INTO "public"."post_survey_answers" VALUES (373, 1, 3, '-1', 'Yes', 'test');
INSERT INTO "public"."post_survey_answers" VALUES (374, 1, 1, '3', 'No', '3');
INSERT INTO "public"."post_survey_answers" VALUES (375, 1, 4, '-1', 'Yes', '123');
INSERT INTO "public"."post_survey_answers" VALUES (376, 1, 5, '-1', 'Yes', '123');
INSERT INTO "public"."post_survey_answers" VALUES (378, 1, 2, '0', 'No', '0');
INSERT INTO "public"."post_survey_answers" VALUES (379, 1, 5, '-1', 'Yes', 'test');
INSERT INTO "public"."post_survey_answers" VALUES (381, 1, 2, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (382, 1, 1, '0', 'No', '0');
INSERT INTO "public"."post_survey_answers" VALUES (383, 1, 3, '-1', 'Yes', 'test');
INSERT INTO "public"."post_survey_answers" VALUES (384, 1, 1, '2', 'No', '2');
INSERT INTO "public"."post_survey_answers" VALUES (385, 1, 4, '-1', 'Yes', 'gjh');
INSERT INTO "public"."post_survey_answers" VALUES (386, 1, 5, '-1', 'Yes', 'k');
INSERT INTO "public"."post_survey_answers" VALUES (387, 1, 2, '4', 'No', '4');
INSERT INTO "public"."post_survey_answers" VALUES (388, 1, 3, '-1', 'Yes', 'jhhb');
INSERT INTO "public"."post_survey_answers" VALUES (389, 1, 1, '2', 'No', '2');

-- ----------------------------
-- Table structure for post_survey_questions
-- ----------------------------
DROP TABLE IF EXISTS "public"."post_survey_questions";
CREATE TABLE "public"."post_survey_questions" (
  "question_id" int4 NOT NULL DEFAULT nextval('post_service_questions_question_id_seq'::regclass),
  "question_text" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "options" varchar(255) COLLATE "pg_catalog"."default",
  "question_type" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of post_survey_questions
-- ----------------------------
INSERT INTO "public"."post_survey_questions" VALUES (4, 'What specific human rights concepts did you find most enlightening or impactful?', '', 'text');
INSERT INTO "public"."post_survey_questions" VALUES (5, 'In what ways do you think your increased understanding of human rights concepts from
today’s workshop could influence your actions or advocacy efforts in the future?', NULL, 'text');
INSERT INTO "public"."post_survey_questions" VALUES (2, 'How effective was the educational gameplay in enhancing your understanding of human
rights concepts?', '["Very ineffective", "Slightly ineffective", "Moderately effective", "Very effective", "Extremely effective"]
', 'multi-choice');
INSERT INTO "public"."post_survey_questions" VALUES (3, 'Can you now name any international human rights declarations? If yes, which ones?', '', 'text');
INSERT INTO "public"."post_survey_questions" VALUES (1, 'How familiar are you now with human rights concepts?', '["Very Unfamiliar", "Somewhat Unfamiliar", "Neutral or Unsure", "Somewhat Familiar", "Very Familiar"]', 'multi-choice');

-- ----------------------------
-- Table structure for pre_survey_answers
-- ----------------------------
DROP TABLE IF EXISTS "public"."pre_survey_answers";
CREATE TABLE "public"."pre_survey_answers" (
  "answer_id" int4 NOT NULL DEFAULT nextval('pre_quiz_answers_answer_id_seq'::regclass),
  "student_id" int4,
  "question_id" int4,
  "answer_content" varchar(255) COLLATE "pg_catalog"."default",
  "written_answer" varchar(255) COLLATE "pg_catalog"."default",
  "selected_option_index" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of pre_survey_answers
-- ----------------------------
INSERT INTO "public"."pre_survey_answers" VALUES (1, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (2, 1, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (3, 1, 3, 'War crimes.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (4, 1, 4, 'UDHR', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (5, 1, 5, 'Guides behaviour.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (6, 2, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (7, 2, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (8, 2, 3, 'Poverty.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (9, 2, 4, 'Geneva Conventions', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (10, 2, 5, 'Helps people recognise their rights.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (11, 3, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (12, 3, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (13, 3, 3, 'Political oppression.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (14, 3, 4, 'UDHR', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (15, 3, 5, 'Guides behaviour.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (16, 4, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (17, 4, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (18, 4, 3, 'Child labor.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (19, 4, 4, 'UDHR', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (20, 4, 5, 'Guides behaviour.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (21, 5, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (22, 5, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (23, 5, 3, 'Gender inequality.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (24, 5, 4, 'UDHR', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (25, 5, 5, 'Helps people recognise their rights.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (26, 6, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (27, 6, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (28, 6, 3, 'War crimes.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (29, 6, 4, 'Geneva Conventions', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (30, 6, 5, 'Helps people recognise their rights.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (31, 7, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (32, 7, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (33, 7, 3, 'Child labor.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (34, 7, 4, 'UDHR', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (35, 7, 5, 'Guides behaviour.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (36, 8, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (37, 8, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (38, 8, 3, 'Political oppression.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (39, 8, 4, 'CEDAW', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (40, 8, 5, 'Helps people recognise their rights.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (41, 9, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (42, 9, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (43, 9, 3, 'Gender inequality.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (44, 9, 4, 'CRC', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (45, 9, 5, 'Helps people recognise their rights.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (46, 10, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (47, 10, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (48, 10, 3, 'Political oppression.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (49, 10, 4, 'CEDAW', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (50, 10, 5, 'Raises awareness.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (51, 11, 1, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (52, 11, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (53, 11, 3, 'Poverty.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (54, 11, 4, 'Geneva Conventions', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (55, 11, 5, 'Helps people recognise their rights.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (56, 12, 1, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (57, 12, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (58, 12, 3, 'Poverty.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (59, 12, 4, 'UDHR', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (60, 12, 5, 'Helps people recognise their rights.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (61, 13, 1, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (62, 13, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (63, 13, 3, 'Gender inequality.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (64, 13, 4, 'UDHR', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (65, 13, 5, 'Raises awareness.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (66, 14, 1, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (67, 14, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (68, 14, 3, 'Poverty.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (69, 14, 4, 'CRC', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (70, 14, 5, 'Helps people recognise their rights.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (71, 15, 1, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (72, 15, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (73, 15, 3, 'Gender inequality.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (74, 15, 4, 'UDHR', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (75, 15, 5, 'Raises awareness.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (76, 16, 1, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (77, 16, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (78, 16, 3, 'War crimes.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (79, 16, 4, 'CRC', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (80, 16, 5, 'Guides behaviour.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (81, 17, 1, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (82, 17, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (83, 17, 3, 'Child labor.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (84, 17, 4, 'CRC', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (85, 17, 5, 'Guides behaviour.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (86, 18, 1, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (87, 18, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (88, 18, 3, 'Political oppression.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (89, 18, 4, 'UDHR', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (90, 18, 5, 'Helps people recognise their rights.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (91, 19, 1, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (92, 19, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (93, 19, 3, 'Political oppression.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (94, 19, 4, 'CRC', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (95, 19, 5, 'Helps people recognise their rights.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (96, 20, 1, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (97, 20, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (98, 20, 3, 'Political oppression.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (99, 20, 4, 'UDHR', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (100, 20, 5, 'Raises awareness.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (101, 21, 1, '2', 'No', '2');
INSERT INTO "public"."pre_survey_answers" VALUES (102, 21, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (103, 21, 3, 'Poverty.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (104, 21, 4, 'CEDAW', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (105, 21, 5, 'Guides behaviour.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (106, 22, 1, '2', 'No', '2');
INSERT INTO "public"."pre_survey_answers" VALUES (107, 22, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (108, 22, 3, 'Poverty.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (109, 22, 4, 'Geneva Conventions', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (110, 22, 5, 'Raises awareness.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (111, 23, 1, '2', 'No', '2');
INSERT INTO "public"."pre_survey_answers" VALUES (112, 23, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (113, 23, 3, 'Poverty.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (114, 23, 4, 'Geneva Conventions', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (115, 23, 5, 'Guides behaviour.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (116, 24, 1, '2', 'No', '2');
INSERT INTO "public"."pre_survey_answers" VALUES (117, 24, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (118, 24, 3, 'Poverty.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (119, 24, 4, 'UDHR', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (120, 24, 5, 'Guides behaviour.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (121, 25, 1, '2', 'No', '2');
INSERT INTO "public"."pre_survey_answers" VALUES (122, 25, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (123, 25, 3, 'Political oppression.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (124, 25, 4, 'Geneva Conventions', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (125, 25, 5, 'Helps people recognise their rights.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (126, 26, 1, '2', 'No', '2');
INSERT INTO "public"."pre_survey_answers" VALUES (127, 26, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (128, 26, 3, 'Gender inequality.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (129, 26, 4, 'CEDAW', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (130, 26, 5, 'Raises awareness.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (131, 27, 1, '2', 'No', '2');
INSERT INTO "public"."pre_survey_answers" VALUES (132, 27, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (133, 27, 3, 'Child labor.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (134, 27, 4, 'Geneva Conventions', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (135, 27, 5, 'Guides behaviour.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (136, 28, 1, '2', 'No', '2');
INSERT INTO "public"."pre_survey_answers" VALUES (137, 28, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (138, 28, 3, 'Poverty.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (139, 28, 4, 'UDHR', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (140, 28, 5, 'Helps people recognise their rights.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (141, 29, 1, '2', 'No', '2');
INSERT INTO "public"."pre_survey_answers" VALUES (142, 29, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (143, 29, 3, 'War crimes.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (144, 29, 4, 'CRC', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (145, 29, 5, 'Raises awareness.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (146, 30, 1, '2', 'No', '2');
INSERT INTO "public"."pre_survey_answers" VALUES (147, 30, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (148, 30, 3, 'Poverty.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (149, 30, 4, 'UDHR', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (150, 30, 5, 'Helps people recognise their rights.', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (434, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (435, 1, 3, '12', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (436, 1, 4, '`1', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (437, 1, 5, '`1', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (438, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (439, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (440, 1, 3, 'starving', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (441, 1, 4, '动态 know', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (442, 1, 5, '11', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (443, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (444, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (445, 1, 3, '1223', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (446, 1, 4, '1223', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (447, 1, 5, '1223', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (448, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (449, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (450, 1, 3, 'kk', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (451, 1, 4, 'a', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (452, 1, 5, 'jj', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (453, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (454, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (455, 1, 3, '1', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (456, 1, 4, '1', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (457, 1, 5, '1', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (458, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (459, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (460, 1, 3, '123', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (461, 1, 4, '123', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (462, 1, 5, '123', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (463, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (464, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (465, 1, 3, '123', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (466, 1, 4, '123', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (467, 1, 5, '123', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (468, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (469, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (470, 1, 3, 'f', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (471, 1, 4, 'f', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (472, 1, 5, 'f', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (473, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (474, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (475, 1, 3, 'f', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (476, 1, 4, 'f', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (477, 1, 5, 'f', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (478, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (479, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (480, 1, 3, 'l', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (481, 1, 4, 'l', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (482, 1, 5, 'l', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (483, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (484, 1, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (485, 1, 3, 'jj', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (486, 1, 4, 'l', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (487, 1, 5, 'l', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (488, 1, 1, '2', 'No', '2');
INSERT INTO "public"."pre_survey_answers" VALUES (489, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (490, 1, 3, 'sss', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (491, 1, 4, 'hello', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (492, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (493, 1, 5, 'hello', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (494, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (495, 1, 3, '1', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (496, 1, 4, '1', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (497, 1, 5, '1', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (498, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (499, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (500, 1, 3, 'f', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (501, 1, 4, 'f', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (502, 1, 5, 'f', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (503, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (504, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (505, 1, 3, 'l', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (506, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (507, 1, 4, 'l', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (508, 1, 5, 'l', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (509, 1, 1, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (510, 1, 3, 'k', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (511, 1, 4, 'h', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (512, 1, 5, 'j', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (513, 1, 1, '2', 'No', '2');
INSERT INTO "public"."pre_survey_answers" VALUES (514, 1, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (515, 1, 3, 'll', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (516, 1, 4, 'k', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (517, 1, 5, 'l', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (518, 1, 1, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (519, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (520, 1, 3, 'k', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (521, 1, 4, 'k', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (522, 1, 5, 'k', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (523, 1, 1, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (524, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (525, 1, 3, '1''1', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (526, 1, 4, '1', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (527, 1, 5, '1', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (528, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (529, 1, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (530, 1, 3, 'fresh water', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (531, 1, 4, 'freedom', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (532, 1, 5, 'better qulity of love', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (533, 1, 1, '2', 'No', '2');
INSERT INTO "public"."pre_survey_answers" VALUES (534, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (535, 1, 3, 'w', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (536, 1, 4, 'w', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (537, 1, 5, 'w', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (538, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (539, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (540, 1, 3, 'as', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (541, 1, 4, 'asd', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (542, 1, 5, 'das', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (543, 1, 1, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (544, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (545, 1, 3, 'qwe', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (546, 1, 4, 'weAwe', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (547, 1, 5, 'we', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (548, 1, 1, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (549, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (550, 1, 3, 'kj', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (551, 1, 4, 'l', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (552, 1, 5, 'l', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (553, 1, 1, '2', 'No', '2');
INSERT INTO "public"."pre_survey_answers" VALUES (554, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (555, 1, 3, 'jho', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (556, 1, 4, 'j', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (557, 1, 5, 'k', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (558, 1, 1, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (559, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (560, 1, 3, 's', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (561, 1, 4, 's', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (562, 1, 5, 's', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (563, 1, 1, '2', 'No', '2');
INSERT INTO "public"."pre_survey_answers" VALUES (564, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (565, 1, 3, 'sad', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (566, 1, 4, 'h', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (567, 1, 5, 'u', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (568, 1, 1, '3', 'No', '3');
INSERT INTO "public"."pre_survey_answers" VALUES (569, 1, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (570, 1, 3, 'kk', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (571, 1, 4, 'nn', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (572, 1, 5, 'm', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (573, 1, 1, '2', 'No', '2');
INSERT INTO "public"."pre_survey_answers" VALUES (574, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (575, 1, 3, '11', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (576, 1, 4, '11', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (577, 1, 5, '11', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (578, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (579, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (580, 1, 3, 'gh', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (581, 1, 4, 'ool''', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (582, 1, 5, 'k', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (583, 1, 1, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (584, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (585, 1, 3, 'hh', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (586, 1, 4, 'h', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (587, 1, 5, 'h', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (588, 1, 1, '2', 'No', '2');
INSERT INTO "public"."pre_survey_answers" VALUES (589, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (590, 1, 3, 'g', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (591, 1, 4, 'h', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (592, 1, 5, 'h', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (593, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (594, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (595, 1, 3, 'Straving', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (596, 1, 4, 'no', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (597, 1, 5, 'maybe', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (598, 1, 1, '2', 'No', '2');
INSERT INTO "public"."pre_survey_answers" VALUES (599, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (600, 1, 3, 'sdf', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (601, 1, 4, 'dsf', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (602, 1, 5, 'dsf', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (603, 1, 1, '2', 'No', '2');
INSERT INTO "public"."pre_survey_answers" VALUES (604, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (605, 1, 3, '1', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (606, 1, 4, '1', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (607, 1, 5, '1', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (608, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (609, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (610, 1, 3, 'f', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (611, 1, 4, 'f', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (612, 1, 5, 'f', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (613, 1, 1, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (614, 1, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (615, 1, 3, 'TEST', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (616, 1, 4, 'JIOM', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (617, 1, 5, 'TEST', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (618, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (619, 1, 2, '1', 'No', '1');
INSERT INTO "public"."pre_survey_answers" VALUES (620, 1, 3, 'cvhgsf', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (621, 1, 4, 'fgh', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (622, 1, 5, 'yfgufk', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (623, 1, 1, '4', 'No', '4');
INSERT INTO "public"."pre_survey_answers" VALUES (624, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (625, 1, 3, 'tesrt', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (626, 1, 4, 'test', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (627, 1, 5, 'test', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (628, 1, 1, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (629, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (630, 1, 3, '1', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (631, 1, 4, '1', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (632, 1, 5, '1''', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (633, 1, 1, '2', 'No', '2');
INSERT INTO "public"."pre_survey_answers" VALUES (634, 1, 2, '0', 'No', '0');
INSERT INTO "public"."pre_survey_answers" VALUES (635, 1, 3, 'hello', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (636, 1, 4, 'hello', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (637, 1, 5, 'hello', 'Yes', '-1');
INSERT INTO "public"."pre_survey_answers" VALUES (638, 1, 1, '0', 'No', '0');

-- ----------------------------
-- Table structure for pre_survey_questions
-- ----------------------------
DROP TABLE IF EXISTS "public"."pre_survey_questions";
CREATE TABLE "public"."pre_survey_questions" (
  "question_id" int4 NOT NULL DEFAULT nextval('pre_quiz_questions_question_id_seq'::regclass),
  "question_text" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "options" varchar(255) COLLATE "pg_catalog"."default",
  "question_type" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of pre_survey_questions
-- ----------------------------
INSERT INTO "public"."pre_survey_questions" VALUES (2, 'Have you participated in any human rights workshops or educational activities before?', '["Yes", "No"]', 'multi-choice');
INSERT INTO "public"."pre_survey_questions" VALUES (3, 'What do you think are the most pressing human rights issues in the world?', '', 'text');
INSERT INTO "public"."pre_survey_questions" VALUES (4, 'Can you name any international human rights declarations? If yes, please list them', NULL, 'text');
INSERT INTO "public"."pre_survey_questions" VALUES (5, 'How do you think understanding human rights can impact society or your daily life?', NULL, 'text');
INSERT INTO "public"."pre_survey_questions" VALUES (1, 'How familiar are you with human rights concepts?', '["Very Unfamiliar", "Somewhat Unfamiliar", "Neutral or Unsure", "Somewhat Familiar", "Very Familiar"]', 'multi-choice');

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS "public"."students";
CREATE TABLE "public"."students" (
  "student_id" int4 NOT NULL DEFAULT nextval('students_student_id_seq'::regclass),
  "student_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO "public"."students" VALUES (1, 'A');
INSERT INTO "public"."students" VALUES (2, 'B');
INSERT INTO "public"."students" VALUES (3, 'adam');
INSERT INTO "public"."students" VALUES (4, 'luther');
INSERT INTO "public"."students" VALUES (5, 'alex');
INSERT INTO "public"."students" VALUES (6, 'louis');
INSERT INTO "public"."students" VALUES (7, 'martin');
INSERT INTO "public"."students" VALUES (8, 'jimmy');
INSERT INTO "public"."students" VALUES (9, 'key');
INSERT INTO "public"."students" VALUES (10, 'simmon');
INSERT INTO "public"."students" VALUES (11, 'Apple');
INSERT INTO "public"."students" VALUES (12, 'A');
INSERT INTO "public"."students" VALUES (13, 'B');
INSERT INTO "public"."students" VALUES (14, 'adam');
INSERT INTO "public"."students" VALUES (15, 'luther');
INSERT INTO "public"."students" VALUES (16, 'alex');
INSERT INTO "public"."students" VALUES (17, 'louis');
INSERT INTO "public"."students" VALUES (18, 'martin');
INSERT INTO "public"."students" VALUES (19, 'jimmy');
INSERT INTO "public"."students" VALUES (20, 'key');
INSERT INTO "public"."students" VALUES (21, 'simmon');
INSERT INTO "public"."students" VALUES (22, 'A');
INSERT INTO "public"."students" VALUES (23, 'B');
INSERT INTO "public"."students" VALUES (24, 'adam');
INSERT INTO "public"."students" VALUES (25, 'luther');
INSERT INTO "public"."students" VALUES (26, 'alex');
INSERT INTO "public"."students" VALUES (27, 'louis');
INSERT INTO "public"."students" VALUES (28, 'martin');
INSERT INTO "public"."students" VALUES (29, 'jimmy');
INSERT INTO "public"."students" VALUES (30, 'key');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "user_id" int4 NOT NULL DEFAULT nextval('users_user_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "password_hash" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "role" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES (1, 'John', '$2a$10$Hj...', 'admin');
INSERT INTO "public"."users" VALUES (2, 'Jason', '$2a$10$Hj...', 'teacher');
INSERT INTO "public"."users" VALUES (3, 'Peter', '$2a$10$Hj...', 'teacher');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."card_translations_translation_id_seq"
OWNED BY "public"."card_translations"."translation_id";
SELECT setval('"public"."card_translations_translation_id_seq"', 343, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."cards_card_id_seq"
OWNED BY "public"."cards"."card_id";
SELECT setval('"public"."cards_card_id_seq"', 160, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."post_service_answers_answer_id_seq"
OWNED BY "public"."post_survey_answers"."answer_id";
SELECT setval('"public"."post_service_answers_answer_id_seq"', 399, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."post_service_questions_question_id_seq"
OWNED BY "public"."post_survey_questions"."question_id";
SELECT setval('"public"."post_service_questions_question_id_seq"', 25, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."pre_quiz_answers_answer_id_seq"
OWNED BY "public"."pre_survey_answers"."answer_id";
SELECT setval('"public"."pre_quiz_answers_answer_id_seq"', 638, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."pre_quiz_questions_question_id_seq"
OWNED BY "public"."pre_survey_questions"."question_id";
SELECT setval('"public"."pre_quiz_questions_question_id_seq"', 27, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."students_student_id_seq"
OWNED BY "public"."students"."student_id";
SELECT setval('"public"."students_student_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."users_user_id_seq"
OWNED BY "public"."users"."user_id";
SELECT setval('"public"."users_user_id_seq"', 1, true);

-- ----------------------------
-- Primary Key structure for table card_translations
-- ----------------------------
ALTER TABLE "public"."card_translations" ADD CONSTRAINT "card_translations_pkey" PRIMARY KEY ("translation_id");

-- ----------------------------
-- Checks structure for table cards
-- ----------------------------
ALTER TABLE "public"."cards" ADD CONSTRAINT "cards_age_group_check" CHECK (age_group::text = ANY (ARRAY['child'::character varying::text, 'teenager'::character varying::text]));
ALTER TABLE "public"."cards" ADD CONSTRAINT "cards_card_type_check" CHECK (card_type::text = ANY (ARRAY['FED'::character varying::text, 'Article'::character varying::text, 'BounceBack'::character varying::text, 'Chance'::character varying::text]));

-- ----------------------------
-- Primary Key structure for table cards
-- ----------------------------
ALTER TABLE "public"."cards" ADD CONSTRAINT "cards_pkey" PRIMARY KEY ("card_id");

-- ----------------------------
-- Checks structure for table map
-- ----------------------------
ALTER TABLE "public"."map" ADD CONSTRAINT "map_type_check" CHECK (cell_type::text = ANY (ARRAY['Article'::character varying::text, 'Bounce'::character varying::text, 'Chance'::character varying::text, 'FED'::character varying::text]));

-- ----------------------------
-- Primary Key structure for table map
-- ----------------------------
ALTER TABLE "public"."map" ADD CONSTRAINT "map_pkey" PRIMARY KEY ("cell_number");

-- ----------------------------
-- Primary Key structure for table post_survey_answers
-- ----------------------------
ALTER TABLE "public"."post_survey_answers" ADD CONSTRAINT "post_service_answers_pkey" PRIMARY KEY ("answer_id");

-- ----------------------------
-- Checks structure for table post_survey_questions
-- ----------------------------
ALTER TABLE "public"."post_survey_questions" ADD CONSTRAINT "post_service_questions_question_type_check" CHECK (question_type::text = ANY (ARRAY['multi-choice'::character varying::text, 'text'::character varying::text]));

-- ----------------------------
-- Primary Key structure for table post_survey_questions
-- ----------------------------
ALTER TABLE "public"."post_survey_questions" ADD CONSTRAINT "post_service_questions_pkey" PRIMARY KEY ("question_id");

-- ----------------------------
-- Primary Key structure for table pre_survey_answers
-- ----------------------------
ALTER TABLE "public"."pre_survey_answers" ADD CONSTRAINT "pre_quiz_answers_pkey" PRIMARY KEY ("answer_id");

-- ----------------------------
-- Primary Key structure for table pre_survey_questions
-- ----------------------------
ALTER TABLE "public"."pre_survey_questions" ADD CONSTRAINT "pre_quiz_questions_pkey" PRIMARY KEY ("question_id");

-- ----------------------------
-- Primary Key structure for table students
-- ----------------------------
ALTER TABLE "public"."students" ADD CONSTRAINT "students_pkey" PRIMARY KEY ("student_id");

-- ----------------------------
-- Checks structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_role_check" CHECK (role::text = ANY (ARRAY['teacher'::character varying::text, 'admin'::character varying::text]));

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("user_id");

-- ----------------------------
-- Foreign Keys structure for table card_translations
-- ----------------------------
ALTER TABLE "public"."card_translations" ADD CONSTRAINT "card_translations_card_id_fkey" FOREIGN KEY ("card_id") REFERENCES "public"."cards" ("card_id") ON DELETE CASCADE ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table post_survey_answers
-- ----------------------------
ALTER TABLE "public"."post_survey_answers" ADD CONSTRAINT "post_service_answers_question_id_fkey" FOREIGN KEY ("question_id") REFERENCES "public"."post_survey_questions" ("question_id") ON DELETE CASCADE ON UPDATE RESTRICT;
ALTER TABLE "public"."post_survey_answers" ADD CONSTRAINT "post_service_answers_student_id_fkey" FOREIGN KEY ("student_id") REFERENCES "public"."students" ("student_id") ON DELETE CASCADE ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table pre_survey_answers
-- ----------------------------
ALTER TABLE "public"."pre_survey_answers" ADD CONSTRAINT "pre_quiz_answers_question_id_fkey" FOREIGN KEY ("question_id") REFERENCES "public"."pre_survey_questions" ("question_id") ON DELETE CASCADE ON UPDATE RESTRICT;
ALTER TABLE "public"."pre_survey_answers" ADD CONSTRAINT "pre_quiz_answers_student_id_fkey" FOREIGN KEY ("student_id") REFERENCES "public"."students" ("student_id") ON DELETE CASCADE ON UPDATE RESTRICT;
