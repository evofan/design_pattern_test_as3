package {

    import flash.display.MovieClip;

    public class MyClass {

        private static var _instance:MyClass;

        public function MyClass():void {
            trace("MyClass()");
        }

        public static function getIncetance():MyClass {

            trace("getIncetance()");
            if (MyClass._instance == null) {
                trace("新規インスタンスを作成");
                MyClass._instance = new MyClass();
            } else {
                trace("既存インスタンスを返す");
            }
            return MyClass._instance;

        }

    }

}


