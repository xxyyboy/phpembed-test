<?php
    header('Content-Type: text/plain');

    class Sample {
        public function __construct() {
            $this->message = 'hoge fuga foobar';
        }

        public function getMessage() {
            return "ゲッツ!!";
        }
    }

    var_dump(new Sample());

    $cb = function() {
        return array("hoge fuga foobar");
    };

//    return array("hoge", "fuga", 1, array("foobar"), $cb);


/*
    return function() {
        var_dump(array("hoge", "fuga"));
    };
*/
?>
