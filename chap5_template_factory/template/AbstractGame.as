package {

    import flash.display.MovieClip;

    public class AbstractGame extends MovieClip {

        public function AbstractGame():void{
            trace("AbstractGame()");
        }

        // テンプレートメソッド
        public final function initialize():void { // finalはサブクラスによってオーバライド出来ない
        trace("initialize() - template");
            createField();
            createTeam("red");
            createTeam("blue");
            startGame();
        }

        // 以下定義のみする、実際の内容はサブクラス側で定義する
        // （親クラスでは抽象的な定義＝抽象メソッドのみ、サブクラス側でオーバーライドして使う）
        // （抽象クラスは自身はインスタンスを持たない）
        // asではJaavのabstract制御が使えないので直接読んだ場合はエラー表示
        public function createField():void {
            trace("createField() - template");
            throw new Error("Abstract Method!");
        }

        public function createTeam(name:String):void {
            trace("createTeam() - template");
            throw new Error("Abstract Method!");
        }

        public function startGame():void {
            trace("startGame() - template");
            throw new Error("Abstract Method!");
        }
    }

}


