-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2022 at 03:51 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_m3`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Programming', 'programming', '2022-05-30 18:21:28', '2022-05-30 18:21:28'),
(2, 'Web Design', 'web-design', '2022-05-30 18:21:28', '2022-05-30 18:21:28'),
(3, 'Personal', 'personal', '2022-05-30 18:21:28', '2022-05-30 18:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_12_125442_create_posts_table', 1),
(6, '2022_05_18_140506_create_categories_table', 1),
(7, '2022_06_01_005315_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'Sit quaerat veritatis quos dolor.', 'dolores-explicabo-quod-eius-sapiente', NULL, 'Ut magni ipsum corporis expedita explicabo inventore et voluptatem. Excepturi similique libero sequi animi. Accusantium ducimus neque ut pariatur sit quasi. Laboriosam aliquam blanditiis eos voluptatibus ab et consequatur.', '<p> Rerum sequi vel occaecati non doloribus magni ratione. Tempora accusamus perspiciatis qui corrupti veniam. Consequatur earum sint qui impedit et nam. </p><p> Laudantium quam accusamus consequatur et voluptas consequatur. Possimus ut eos rerum dolore non aspernatur. Veritatis et blanditiis at quidem libero qui. Sapiente vero aspernatur velit adipisci voluptas nisi vitae. </p><p> Ut tempore voluptate dignissimos non aperiam. Aut ea accusantium nulla sunt qui sed. Iusto fugit saepe enim et exercitationem illo consequatur. Illo sit optio est suscipit nemo sed sapiente. </p>', NULL, '2022-05-30 18:21:29', '2022-05-30 18:21:29'),
(2, 3, 3, 'Soluta rerum omnis non molestias voluptas possimus dolor labore enim.', 'rerum-sequi-debitis-dolorem-et-in-et', NULL, 'Eligendi id cum ab modi et aspernatur repellendus. Dolores reprehenderit corporis ducimus temporibus minima molestias rerum. Id neque voluptatem rerum itaque. Et ipsa molestiae placeat et provident veniam vero.', '<p> Rerum voluptate recusandae eos aut nesciunt. Explicabo earum minus et magni. </p><p> Et impedit reiciendis doloremque quis veniam. In nemo provident nesciunt quia. Rem voluptates ducimus aut quidem. </p><p> Assumenda eos ut mollitia esse. Placeat architecto laboriosam voluptatem praesentium deleniti. Recusandae eum necessitatibus rem minus. </p>', NULL, '2022-05-30 18:21:29', '2022-05-30 18:21:29'),
(3, 1, 3, 'Est ad ex.', 'eos-aliquid-quo-nam', NULL, 'Cum accusantium velit et totam id. Qui atque nam numquam ipsam ipsam provident consequatur. Esse laborum dolores expedita temporibus unde.', '<p> Natus inventore reprehenderit ducimus illum. Asperiores itaque fugit laboriosam illo. Maiores rem consequatur labore alias. Sit et eum aut alias commodi. Fugit unde quis quis qui. </p><p> Aut sit ex cum. Ut nemo quod quibusdam repellendus. Est cum ut debitis et sed. </p><p> Qui modi labore distinctio velit reiciendis nulla laborum. Reiciendis ipsum molestias et repellendus. Libero quaerat totam consequatur voluptates. </p><p> Repudiandae reiciendis rerum dolore quae fugiat inventore. Excepturi rerum explicabo doloribus delectus. Provident et iusto eum aliquam. </p>', NULL, '2022-05-30 18:21:29', '2022-05-30 18:21:29'),
(4, 3, 2, 'Ut dolorum praesentium laboriosam mollitia ut illum.', 'iure-maxime-praesentium-quod-autem-quas-qui-sed-dolore', NULL, 'Pariatur rerum sit eius quia rem quisquam ea. Ratione fugit voluptas aut occaecati. Beatae molestiae et voluptatibus ullam.', '<p> Voluptas qui sunt earum ea illo illum. Deleniti blanditiis eaque minus. Repellendus distinctio accusamus voluptas sequi veniam sequi suscipit. </p><p> Expedita qui est aliquid dignissimos voluptatem assumenda. Est rem ut facilis nisi reiciendis praesentium quo. Veritatis dolor eum maxime a ut. Aut non ipsam aut alias quo ab. Aliquam autem laudantium aut sint. </p><p> Ducimus commodi non dolorem earum aliquam deleniti. Fugit voluptatem quisquam cumque est corrupti. Sed officiis et aspernatur consequatur veritatis. Occaecati sit deserunt qui quasi. </p><p> Aliquid pariatur esse voluptas praesentium soluta delectus quo quia. Ipsum quia exercitationem officia ipsam fugiat. Dolorem animi quia animi libero consequatur minus blanditiis. Est distinctio et ratione porro. </p>', NULL, '2022-05-30 18:21:29', '2022-05-30 18:21:29'),
(5, 3, 3, 'Qui blanditiis reprehenderit et quibusdam vero quis.', 'dolores-nemo-nihil-qui-laudantium-itaque', NULL, 'Aperiam quis est fugit laboriosam. A ipsam voluptas odit aliquam molestiae placeat rerum.', '<p> Repudiandae corporis quis pariatur libero temporibus. Culpa corrupti deleniti et molestiae maiores optio dolorem. Quam sit deleniti est excepturi omnis iure. </p><p> Animi ea provident molestias quae rem. Ut occaecati voluptatibus sint consequatur sint cum. Consequatur illum ipsum dolor voluptate aliquam aut rerum. Sed rerum vitae commodi fugiat quia beatae deserunt. </p><p> Et nisi qui non inventore iusto dignissimos. Ea optio optio quae tempore hic molestiae eligendi. Repellat pariatur sequi voluptas quasi magni dignissimos occaecati neque. </p><p> Qui ipsum magni et. Ex sint odit consequuntur cum cupiditate voluptatum et. Veniam sunt laborum dolor magni autem non. Officia eum inventore qui qui earum eius. </p>', NULL, '2022-05-30 18:21:29', '2022-05-30 18:21:29'),
(6, 1, 3, 'Accusamus nihil possimus.', 'voluptas-iste-saepe-sed-commodi-voluptatem-quia-et', NULL, 'Ullam at quibusdam provident sed non aut. Sapiente consequuntur tempore a consequatur. Corrupti ipsam quia deserunt blanditiis a voluptas. Repellat ullam aut eum et accusantium aut.', '<p> Rerum enim quasi vel veritatis odio ratione. Tenetur eveniet et ipsum voluptatibus eos dignissimos. Porro voluptatibus et consequatur excepturi ullam illo minima molestias. </p><p> Sint et consequatur perferendis eum similique. Ut dolor laborum et et dolore id sit eius. Sunt debitis aliquam doloribus voluptates. </p><p> Quis temporibus repellendus mollitia sed. Asperiores nihil id optio esse iure deserunt. Ipsum molestiae tempora tempora nisi nemo rerum. </p>', NULL, '2022-05-30 18:21:29', '2022-05-30 18:21:29'),
(7, 3, 3, 'Ut repellendus id.', 'similique-soluta-magnam-suscipit-voluptatem-quis-odio', NULL, 'Voluptas quam perferendis sapiente. Est minus aut rem culpa. Rerum sint labore laudantium corporis quis officiis.', '<p> Consequatur dolore voluptatem libero soluta. Assumenda molestiae qui nulla unde id. Odio quis molestiae at. Harum eos occaecati est at est ut. </p><p> Perferendis eum qui consequuntur vel laborum. Enim eum laboriosam numquam aspernatur omnis reiciendis rerum. Incidunt consequatur similique repellendus perferendis. Cupiditate dolorum molestiae consequatur consequatur. </p><p> Et minima aut optio quod aut. Placeat veritatis sit sapiente. Dolores voluptates et amet qui debitis repudiandae totam. Ut cum qui pariatur et. </p><p> Quisquam explicabo debitis qui voluptatem. Velit atque voluptatibus nihil expedita impedit sint aut. Reprehenderit quia saepe consequuntur hic recusandae nemo maiores. Vel culpa culpa temporibus nisi aut. </p><p> Alias eum eaque ducimus sed. Ipsa praesentium possimus dignissimos inventore. Aspernatur placeat sunt aliquid. Veritatis omnis assumenda sit unde. </p>', NULL, '2022-05-30 18:21:29', '2022-05-30 18:21:29'),
(8, 3, 2, 'Voluptates in aut.', 'aut-dolorem-rem-reiciendis-cupiditate-ipsum-iusto-doloremque', NULL, 'Enim exercitationem possimus et quia corporis distinctio sapiente. Quas ut dolorem ut earum. Vitae quo et repellat repellat eos omnis. Sit nihil in hic ea.', '<p> Iusto sequi mollitia qui perferendis quia. Excepturi molestias consequatur dignissimos veniam. Earum eaque itaque nihil perferendis. </p><p> Voluptatibus maxime et quos voluptatem aut neque. Doloremque maxime blanditiis qui quo nisi autem. Et occaecati aut nam similique sed at. </p><p> Et qui laudantium omnis. Natus aspernatur dignissimos tenetur repellendus non beatae expedita. Dolores qui ex voluptas ut laborum. </p><p> Eligendi esse esse est itaque. Sequi autem magni omnis animi. Ea numquam dicta commodi. </p><p> Incidunt quasi enim non velit eos ea. Aut atque modi quia molestias suscipit. Sed esse illo neque occaecati reprehenderit. Ullam animi in quas tempora. </p>', NULL, '2022-05-30 18:21:29', '2022-05-30 18:21:29'),
(9, 2, 3, 'Aliquam aut excepturi tempore eum quo et.', 'quo-mollitia-laboriosam-hic-quasi-at', NULL, 'Voluptas accusantium harum velit sed non consequatur. Aut quia quaerat tempore dolorem deserunt consectetur. Corporis unde provident omnis blanditiis exercitationem enim. Et atque quam soluta.', '<p> Sequi non et alias accusamus dignissimos voluptas fugiat. Numquam magnam vel et eius mollitia sit nam. Optio harum dolorem maxime eaque eum sunt. </p><p> Sed accusamus est accusantium asperiores sit maxime voluptatibus. Qui velit consequuntur dolorem dolor fugiat omnis rerum. Ullam magnam illo reprehenderit eius beatae ullam. </p><p> Quisquam odio doloribus totam ipsam vel sequi exercitationem. Placeat accusantium eos qui. Ut cumque voluptatem corporis aut ratione iure quae. Tempore voluptatem quia omnis repellendus dolores cupiditate beatae aut. </p><p> Commodi repellat explicabo porro magni. Qui sunt alias qui molestias sint delectus. Consequatur omnis velit aut distinctio voluptate quae earum. Quis quis voluptate ut incidunt beatae. </p><p> Autem ex omnis et et ullam. Est sequi numquam soluta quaerat. Fugit molestias aliquam aut voluptatem in et. Et illo non minus voluptatem. </p><p> Amet expedita maxime modi architecto dolores quidem et. Et delectus pariatur et sit ea suscipit deserunt numquam. Officiis eos libero dolorem consequatur aliquid. </p>', NULL, '2022-05-30 18:21:29', '2022-05-30 18:21:29'),
(10, 3, 3, 'Illo nulla odit doloribus eligendi.', 'quasi-est-quaerat-consectetur-quisquam-vero-voluptatum-aut-velit', NULL, 'Non labore dolor perferendis placeat quia sed. Error et consectetur consequuntur adipisci. Molestiae iusto qui corrupti illo praesentium.', '<p> Facilis at fugit maiores libero. Natus et atque voluptas iste in quod non. Eos labore libero voluptatem voluptate itaque voluptas. Nihil quia nam est tempora exercitationem ipsum. Quidem quod eaque possimus numquam iste sed excepturi. </p><p> Ut id neque et fuga. Quia dolor officia sint sapiente qui. Ut impedit rerum accusantium nemo nam sunt. </p><p> Aspernatur architecto inventore nesciunt error qui in velit eius. Ut eos ducimus architecto blanditiis occaecati quis. Quis quae omnis debitis molestiae voluptas vitae. </p><p> Non eum aut est voluptatem odio et. Asperiores ut est accusamus. Autem sed aspernatur quos et earum laborum. </p><p> Ut nihil sed qui eius. Et sint totam omnis ipsum. Repudiandae sit necessitatibus quod voluptatem soluta dolor molestiae omnis. Hic qui in earum doloremque. </p><p> Dolores commodi ut et. Ullam explicabo doloribus mollitia aspernatur. Et dolores laborum doloremque possimus. Beatae deleniti consectetur neque ea doloremque. </p><p> Autem est et quis aut recusandae aut magni nulla. Dolor laboriosam id illo. </p>', NULL, '2022-05-30 18:21:29', '2022-05-30 18:21:29'),
(11, 2, 2, 'Dolores beatae laudantium.', 'veniam-amet-quasi-et-et-dolores', NULL, 'Exercitationem aut voluptate ut et. Autem perspiciatis eum qui voluptas aut nihil dolorem. Animi laboriosam cum repudiandae facilis expedita amet dolores.', '<p> Deleniti qui ut odit saepe itaque nostrum omnis. Nostrum atque eum et culpa vero vero. Minus eos inventore minima libero laboriosam. </p><p> Rerum neque et sequi omnis porro error. Incidunt deleniti voluptas earum adipisci nihil reiciendis. Aut voluptas est ea possimus dolor blanditiis similique. Non voluptatem dolorum quibusdam repellendus autem beatae molestias. </p><p> Laboriosam consequatur nulla neque molestiae ad. Dolor voluptatem porro corrupti perspiciatis repellat ipsum. Tenetur est ut officiis maiores voluptatum deleniti ut. Vero et est porro hic temporibus. Aut animi occaecati corrupti sed. </p><p> Ut est quo labore illo sapiente porro odio. Qui vel et nam rerum. Dolor et cupiditate aut sed architecto impedit. Est dolores nihil minima dolore quam architecto laboriosam iste. </p><p> A modi dolorum esse corrupti nisi vitae odit nam. Rem enim nisi officiis non quaerat. Quisquam et voluptas autem quos assumenda totam nihil molestiae. Est dolor quisquam dolores explicabo incidunt possimus eius. </p><p> Amet ab quia suscipit commodi. Facilis voluptas eos corrupti vel tempora suscipit voluptates. Sapiente tempore consequatur deserunt nostrum voluptatibus et inventore. Voluptatum tempora qui fugiat consectetur est provident fuga. </p><p> Sit quo reiciendis sed at. Enim quo dolorum id soluta dolorem. Velit sit deleniti ut officia provident nemo dolorum. Et et nihil perferendis. </p>', NULL, '2022-05-30 18:21:29', '2022-05-30 18:21:29'),
(12, 3, 2, 'Non a iste et rerum.', 'et-dolor-quia-veniam-quia', NULL, 'Qui aliquam maiores cupiditate. Ullam ab aut sed corporis dolor corrupti similique maxime. Eveniet consectetur ut ducimus quibusdam officiis rerum porro. Perferendis eligendi aperiam sequi aliquid voluptate aut aut.', '<p> Quas veniam ab qui qui minus. Voluptatibus quis aliquid dolores tempore fuga deserunt illum. Delectus eveniet error repellat et. Et dicta aut placeat ad. </p><p> Ipsum optio mollitia sit ea blanditiis illo tempora ipsa. Ipsa quia veritatis magnam. Et rerum quos occaecati. </p><p> Perferendis voluptatem ea molestiae possimus adipisci cum atque laboriosam. Consequatur dolorem aperiam harum magnam amet. Laudantium quaerat odio dolores incidunt reprehenderit. Quaerat laborum error veritatis minima vitae exercitationem. </p>', NULL, '2022-05-30 18:21:29', '2022-05-30 18:21:29'),
(13, 1, 1, 'Accusantium ipsam nulla.', 'sequi-et-a-perferendis-quo', NULL, 'Ut esse rem nobis voluptate sunt. Aut nisi beatae amet non iste eos inventore. At non fuga quia architecto voluptate. Temporibus cumque ut quia natus aut nobis enim.', '<p> Non ea earum sapiente ipsam sed alias quis. Sit qui quo praesentium molestias ratione adipisci dolores. Et et et veniam sequi et est odio. </p><p> Ut assumenda enim praesentium quia. Occaecati esse consequuntur laboriosam atque ducimus enim nam ut. Amet et quaerat est. </p><p> Quia in ipsa est dolorem voluptatem vero harum. Vel reiciendis sed omnis corporis corporis et autem. </p><p> Non distinctio praesentium eos ipsa ea rem. Minus sunt voluptas dolore corporis sequi sint. Qui eaque molestiae et tempore autem ducimus ipsum velit. </p><p> Quam hic deleniti ut consectetur quisquam. Sint id ut non esse iste rerum. Vel iusto eum sit amet velit est. </p><p> Sit id at dolorum voluptatem voluptatem vel excepturi. Magnam repellat distinctio expedita quisquam vitae. Ad laudantium ut et in ipsa dolore quas. Nesciunt dolorem itaque accusantium recusandae esse nemo. </p><p> Sint et ipsa ratione. Ad necessitatibus molestias pariatur laudantium repellat. Enim dolorem aut quod sit quos aut. </p>', NULL, '2022-05-30 18:21:29', '2022-05-30 18:21:29'),
(14, 1, 3, 'Officiis nam labore illum nostrum repellat et in dolorem.', 'nihil-eligendi-quia-sunt-voluptatum', NULL, 'Eius inventore minima ipsa. Esse qui eligendi itaque voluptatem ipsam sequi. Eligendi vel omnis molestiae et molestias.', '<p> Aut consectetur corporis maiores sed beatae quod ad cupiditate. Voluptates fugit architecto aperiam ut voluptatem. </p><p> Est omnis explicabo quia laboriosam. Veniam sed ad dignissimos laborum. Quisquam facilis fugit hic accusamus ipsum. Et maxime ratione dolorem dolores sit ut eveniet praesentium. Aliquam voluptas eligendi aut sunt possimus sed dolorum nihil. </p><p> Beatae voluptas odio voluptatem quis et quis. In nobis reprehenderit voluptas. </p>', NULL, '2022-05-30 18:21:29', '2022-05-30 18:21:29'),
(15, 2, 3, 'Alias sit unde animi.', 'expedita-aut-voluptas-rerum-pariatur-est-sed', NULL, 'Veniam laudantium similique ullam aut doloribus qui non. Soluta voluptas est dolorum reprehenderit cupiditate itaque. Est voluptate aliquid officiis enim quo voluptas quod odio. Dolorem qui culpa ab et eius. Dolore quis dolorem quaerat minima.', '<p> Doloribus veniam voluptatum harum quaerat molestias quisquam. In libero eius voluptatem est ut. Sed aut non omnis aspernatur accusantium. </p><p> Voluptatum non velit repudiandae nihil. Praesentium qui qui omnis velit quo ut. Nulla nihil veritatis maiores facere quo molestiae quam. </p><p> Sed autem veniam voluptas fuga vel blanditiis et non. Dolorem voluptatem ab nam exercitationem. Velit et laboriosam dolorem placeat quia. Quibusdam quia quisquam atque aspernatur. </p><p> Quis ut ut amet eum fuga. Enim provident ut aut magnam laboriosam nihil. Quia tenetur quos voluptatem. Quia at qui quod est nam aut et. </p><p> Asperiores aliquid cumque debitis et reprehenderit voluptate illo. Placeat quo quaerat qui voluptate in porro. Magni nesciunt necessitatibus earum ut totam et. Et voluptatibus excepturi accusantium aliquam placeat. </p><p> Ratione maiores esse officia. Ut in rerum dolorem eum rem sit numquam molestias. Nihil quia deserunt commodi occaecati rerum repellendus a. </p>', NULL, '2022-05-30 18:21:29', '2022-05-30 18:21:29'),
(16, 1, 3, 'Atque velit nesciunt aliquam assumenda unde.', 'minima-officia-itaque-minima-similique-quo', NULL, 'Saepe ipsa illum assumenda quisquam. Quia vitae et fuga quaerat molestiae. Quam rem tempora minima sunt impedit quis aut.', '<p> Facilis unde quia quam necessitatibus dolores molestiae quis. Excepturi fugit doloribus possimus quae magni modi praesentium officiis. Adipisci ut necessitatibus quia illum et quia et. Corporis nostrum temporibus earum aliquid facere et nesciunt. </p><p> Ut nam ea doloremque ut. Delectus tempora quaerat voluptas fugiat laborum sunt quaerat. Omnis ut aut quia aliquid atque eum vero. Blanditiis sit eaque officia amet nulla. </p><p> Occaecati dolores commodi itaque. Sed tempore quia voluptatibus iure aspernatur facere quae. Quas nulla excepturi eos porro asperiores quod ex consequuntur. A quasi consequatur odit aliquid nihil tenetur. </p><p> Sed non sunt ut dolores quis et odio. Quia accusamus quo dolorum neque eligendi. Non sint sit tempora et voluptas optio omnis. </p><p> Sequi odio placeat reprehenderit unde aperiam. Et porro corporis maxime quaerat voluptatibus. Assumenda qui quas voluptatibus suscipit quis animi. Eius sit ea sapiente nostrum sint dicta. </p><p> Iste ea iusto voluptatem laborum asperiores. Ut labore sunt voluptatem alias. Molestiae qui accusamus iusto sit. Mollitia in aut qui earum. </p>', NULL, '2022-05-30 18:21:29', '2022-05-30 18:21:29'),
(17, 2, 3, 'Ipsa unde quisquam placeat voluptas dolorem.', 'repellat-quod-totam-ut-aut-quia', NULL, 'Qui omnis dignissimos recusandae deleniti laborum. Dolor amet quidem mollitia exercitationem quibusdam eum. Eius id aut repellat occaecati.', '<p> Unde repudiandae est aut officia. Dolorum totam ex et facere. Quis ducimus ipsam eveniet in. Enim ab aut asperiores ut in et. </p><p> Ut rerum quos nostrum impedit. Architecto officia nostrum occaecati eius. Odio amet suscipit dolores sequi earum. Eius aspernatur voluptas optio aut qui. </p><p> Consectetur voluptates a incidunt hic et qui ea odio. Modi accusantium debitis veniam vel nihil tenetur cumque. Quo quia provident accusantium veniam. </p><p> Exercitationem laudantium dolores qui illo vitae. Temporibus ut ad temporibus magnam vitae quis qui explicabo. Modi aliquam eos inventore ut consequatur reiciendis. Repellat ducimus sed voluptatibus non iusto saepe excepturi debitis. </p><p> Libero excepturi voluptates assumenda molestiae enim dolorum dolores similique. Fugit fuga laudantium quos doloremque soluta quia sed. Dolore expedita voluptas corrupti. </p><p> Est minima veritatis non reprehenderit inventore commodi ea vel. Eos sint nam corrupti quis repellat. </p><p> Aut culpa fugiat et ab eligendi. At laudantium explicabo maiores numquam. Eius illum voluptas et dolor. Quod et earum omnis aut ut nulla. </p>', NULL, '2022-05-30 18:21:29', '2022-05-30 18:21:29'),
(18, 1, 3, 'Et repudiandae dolores qui tenetur quia laboriosam velit omnis cumque error eos.', 'consequatur-voluptatem-nulla-qui-maxime-perspiciatis-expedita', NULL, 'Quisquam velit deserunt et tempora repellendus laudantium. Rerum cum eveniet quo libero. Eaque sapiente et autem voluptatem. Dicta fugiat dolorum sed consequatur neque.', '<p> Dolor eveniet rerum qui omnis. Dolorum perspiciatis non quia laboriosam. Repellat quis corporis quis libero voluptatem consequuntur voluptate. </p><p> Est dicta est est. Nobis error animi earum fugit. Dolor qui error ad culpa earum. Aut autem et impedit itaque vero tempora. </p><p> Excepturi quam consectetur earum nobis neque cum. A ut occaecati ea laudantium. Iusto exercitationem id impedit ullam veritatis adipisci error. </p><p> Voluptatum aspernatur aut facilis qui. Harum et facilis quo. </p>', NULL, '2022-05-30 18:21:29', '2022-05-30 18:21:29'),
(19, 3, 2, 'Voluptas nemo nesciunt voluptatem dignissimos.', 'odit-enim-repudiandae-autem-nihil-voluptatem-assumenda-possimus', NULL, 'Omnis iure natus at laudantium et odit sed iusto. Assumenda rerum ullam placeat amet doloribus. Sed quos sequi incidunt.', '<p> Qui et explicabo facere sunt. Voluptatem laborum omnis ut ipsam tenetur doloremque perspiciatis. Saepe fugiat voluptas dolore quas eius maiores. </p><p> Sit aliquid in est eligendi reprehenderit optio. Et tempore qui deserunt incidunt nobis. Laudantium facilis perspiciatis ratione. Quo ut provident totam omnis dolores aut. </p><p> Aliquam dolor nihil error omnis. Labore sed illum ratione ea provident. </p><p> Voluptas necessitatibus dolores nemo dicta et deserunt sint est. Aliquid quis aut provident voluptas. Dolorem aut consequatur nisi aliquid deserunt ea fugiat. Dolore perferendis alias necessitatibus itaque vero ducimus. </p><p> Distinctio optio eligendi minus sit autem fugiat dignissimos. Esse voluptatem culpa modi odio ut est et qui. Tempore ex iure qui optio qui et maxime. </p><p> Ipsa consequatur dolorum et sit. Maiores iste cumque sed incidunt eveniet. Ab nam veniam qui odio est. Quis voluptates consequuntur voluptas amet harum. </p><p> Dolorum excepturi consequuntur eveniet velit non. Doloremque eveniet rem consequatur facere deleniti placeat. Qui aperiam eaque ut quia ipsa. </p>', NULL, '2022-05-30 18:21:29', '2022-05-30 18:21:29'),
(20, 3, 3, 'Qui necessitatibus occaecati voluptate et quisquam.', 'porro-fugiat-reprehenderit-et-voluptas-assumenda', NULL, 'Vero aut esse voluptatem. Temporibus nesciunt dolorum doloribus eum praesentium explicabo. Dolorem qui dolorem occaecati ab.', '<p> Et cupiditate nobis omnis voluptas esse. Cum qui corporis qui veniam voluptas quia. Accusamus rerum aliquid maxime. Qui eum omnis sed voluptatibus est. Iusto autem aut cum quod est eum rem nam. </p><p> Beatae laboriosam esse et et in delectus magni. Qui animi occaecati et explicabo. </p><p> Dolores rerum maiores deserunt et. Ut est commodi omnis dicta. Voluptas sapiente dolore nam nihil esse odio nam. Accusamus molestiae in unde necessitatibus. Autem incidunt ab sed. </p>', NULL, '2022-05-30 18:21:29', '2022-05-30 18:21:29'),
(21, 3, 5, 'Kegiatan Ngaji', 'kegiatan-ngaji', 'gambar-postingan/gPBwaMJpWqYmK4ybnoN41lFZtxwQXaz79s3eyBl5.jpg', 'klajljaljsaljslajsalk', '<div>klajljaljsaljslajsalk</div>', NULL, '2022-05-30 18:46:46', '2022-05-30 18:46:46'),
(23, 3, 5, 'Ngaji daerahan', 'ngaji-daerahan', 'gambar-postingan/WgEZss21SkX3SHWPIHbkywdXx8krEMWrCEJMODC3.jpg', 'jlkajlkdalkjdlkdlanclanlcaocnlljnfvmvmc.smcpisdjmkng.,nj.dnlgafmfanfiacm acmpilcmcknvuabv, vle vojsvwm osnm lnaklmapkdakdmandoiqvm donisjmsabjNLMpo0jndlimmnmc mphdlmklcncdz,oam.MLLASNSLLNLNlnjonmknnKI...', '<div>jlkajlkdalkjdlkdlanclanlcaocnlljnfvmvmc.smcpisdjmkng.,nj.dnlgafmfanfiacm acmpilcmcknvuabv, vle vojsvwm osnm lnaklmapkdakdmandoiqvm donisjmsabjNLMpo0jndlimmnmc mphdlmklcncdz,oam.MLLASNSLLNLNlnjonmknnKInmlmlmmpnklanllannl LMAKLMSLAKMCLSAC LKASNOKWQOINWQWLKMOIWQMMSAMASILnosnonONSLNLNlkJMASKC&gt;?v&lt;?aLCAPOSA.MCK&lt;/A[J[JA[JSLKNS ASLNCISML CXMNCN O ODNANIACLAMC,SALSA</div>', NULL, '2022-05-30 20:23:51', '2022-05-30 20:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Admin M3', 'admin', 'mangga3@gmail.com', NULL, '$2y$10$hxN8we9P7AUpkrdj0ghI1eWbWm29Texs1ErJrOlq3Byik1xLwA/Ry', NULL, '2022-05-30 18:21:25', '2022-05-30 18:21:25', 0),
(2, 'Cakrawala Saptono', 'rnurdiyanti', 'bwacana@example.com', '2022-05-30 18:21:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BS7iSaAqQOqsxm0OPF7OSIkRKhBuysalhzT1jAlAdKlrqM7PuBcsDQWBTGu9', '2022-05-30 18:21:28', '2022-05-30 18:21:28', 1),
(3, 'Prasetyo Suryono', 'ade.salahudin', 'ksaefullah@example.net', '2022-05-30 18:21:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9wIEQbrbWX', '2022-05-30 18:21:28', '2022-05-30 18:21:28', 0),
(4, 'Galang Mustofa', 'rika.halimah', 'ethamrin@example.com', '2022-05-30 18:21:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'thzOEhPV0r', '2022-05-30 18:21:28', '2022-05-30 18:21:28', 0),
(5, 'Maulana Brian', 'maulanabrian', 'maulanabrian@gmail.com', NULL, '$2y$10$nxZYdlbZ.pN5ZLTXc6u6K..p.O2.h6UMWOL3F722TOY2DvHz8Hmtu', NULL, '2022-05-30 18:37:26', '2022-05-30 18:37:26', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
