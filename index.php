<?php
define("ROOT", realpath(__dir__));
require_once(ROOT . "/app/kernel/kernel.php");
Kernel::run();
?>