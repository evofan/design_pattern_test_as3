package {

    import flash.display.MovieClip;
    import IField;

    public class AbstractGame extends MovieClip {

        public function AbstractGame():void {
            trace("AbstractGame() constructor");
        }

        // テンプレートメソッド
        public final function initialize():void { // finalはサブクラスによってオーバライド出来ない
            trace("initialize() - template");

            var field:IField = createField();
            field.drawField();

            createField();
            createTeam("red");
            createTeam("blue");
            startGame();
        }

        // ファクトリーメソッド
        // 以下定義のみする、実際の内容はサブクラス側で定義する
        // （親クラスでは抽象的な定義＝抽象メソッドのみ、サブクラス側でオーバーライドして使う）
        // （抽象クラスは自身はインスタンスを持たない）
        // asではJaavのabstract制御が使えないので直接読んだ場合はエラー表示
        public function createField():IField {
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

// ★抽象クラスの考えは、ライブラリやフーレムワークで使われるオブジェクト指向設計では非常に重要な概念
// ★なぜなら、抽象クラスはサブクラスに共通の基本動作を与える確実な方法だから（インターフェースにあるものを実装しないとエラーになる）
//
// ★テンプレートメソッド...後から生成されるサブクラスによって詳細が特定されるような、汎用的なアルゴリズムに使える
// ★ファクトリーメソッド...サブクラスの型が確定していなくても、抽象クラスからオブジェクトを生成する事が出来る


