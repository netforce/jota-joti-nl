-- Add explorers as spelgebied and speltak

INSERT INTO `gebied` (`id`, `speltak_id`, `naam`, `kaartloc`) VALUES
(43, 14, 'Explorers', '290,116,760,585');

-- Add explorers as spelgebied and speltak

INSERT INTO `speltak` (`id`, `naam`) VALUES
(14, 'Explorers');

INSERT INTO `gebied` (`id`, `speltak_id`, `naam`, `kaartloc`) VALUES
(43, 14, 'Explorers', '290,116,760,585');

-- bind scout-games to explorers also

INSERT INTO `spel_gebied` (`spel_id`, `gebied_id`) VALUES
(300, 43),
(301, 43),
(302, 43),
(303, 43),
(304, 43),
(305, 43),
(306, 43),
(307, 43),
(308, 43),
(309, 43),
(310, 43),
(311, 43),
(312, 43),
(313, 43),
(314, 43),
(315, 43),
(316, 43),
(317, 43),
(318, 43),
(319, 43),
(320, 43),
(321, 43),
(322, 43),
(323, 43),
(324, 43),
(325, 43),
(326, 43),
(327, 43),
(328, 43),
(329, 43),
(330, 43),
(331, 43),
(332, 43),
(333, 43),
(334, 43),
(335, 43),
(336, 43),
(337, 43),
(338, 43),
(339, 43),
(340, 43),
(341, 43),
(343, 43),
(343, 43),
(344, 43),
(345, 43),
(346, 43),
(347, 43),
(348, 43),
(349, 43),
(350, 43),
(351, 43),
(352, 43),
(353, 43),
(354, 43),
(355, 43),
(356, 43),
(357, 43),
(358, 43),
(359, 43),
(360, 43),
(361, 43),
(362, 43),
(363, 43),
(364, 43),
(365, 43),
(366, 43),
(367, 43),
(368, 43),
(369, 43),
(370, 43),
(371, 43),
(371, 43),
(372, 43),
(373, 43),
(374, 43),
(375, 43),
(376, 43),
(377, 43),
(378, 43),
(379, 43),
(380, 43),
(381, 43);

-- Add movie bijlages

INSERT INTO `bijlage` (`id`, `omschrijving`, `filename`, `timestamp`) VALUES
(74, 'Filmpje eindspel Bevers', 'Bevers.zip', '2013-09-29 15:52:19'),
(73, 'Filmpje eindspel Welpen', 'Welpen.zip', '2013-09-29 15:52:19');

INSERT INTO `spel_bijlage` (`spel_id`, `bijlage_id`) VALUES
(43, 74),
(44, 74),
(125, 73),
(126, 73);

>>>>>>> 9f3fd149a229fc9df8401a106e6536c4ac3866d2
