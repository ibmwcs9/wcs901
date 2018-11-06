/**
 * @license Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/licensePortions Copyright IBM Corp., 2009-2015.
 */

CKEDITOR.plugins.setLang( 'a11yhelp', 'ja',
{
	//do not translate anything with the form ${xxx} 
	
	title : "ヘルプ",
	contents : "ヘルプ・コンテンツ。このダイアログを閉じるには ESC キーを押します。",
	legend :
	[
		{
			name : "アクセス支援機能の使用方法",
			items :
			[
				{
					name : "エディターのツールバー",
					legend: "ツールバーに移動するには、${toolbarFocus} を押します。 " +
						"次のツールバー・グループに移動するには TAB キーを使用し、前のツールバー・グループに移動するには SHIFT+TAB キーを使用します。" +
						"次のツールバー・ボタンに移動するには右矢印キーを使用し、前のツールバー・ボタンに移動するには左矢印キーを使用します。 " +
						"ツールバー・ボタンをアクティブにするには、SPACE キーか ENTER キーを押します。"
				},

				{
					name: "エディターのダイアログ",
					legend:
						"ダイアログの中で TAB キーを押すと、次のダイアログ要素に移動し、SHIFT+TAB キーを押すと、前のダイアログ要素に移動します。ダイアログを送信するには、ENTER キーを押します。ダイアログをキャンセルするには、ESC キーを押します。" +
						"ダイアログに複数のタブがある場合、ALT+F10 または TAB を使用することでダイアログのタブ移動順序の一部としてタブ・リストにアクセスできます。" +
						"タブ・リストにフォーカスした状態で、右矢印と左矢印を使用して、それぞれ次のタブ、前のタブに移動します。"
				},

				{
					name : "エディターのコンテキスト・メニュー",
					legend :
						"コンテキスト・メニューを開くには、${contextMenu} か APPLICATION キーを押します。 " +
						"次のメニュー・オプションに移動するには、TAB キーか下矢印キーを使用します。 " +
						"前のオプションに移動するには、SHIFT+TAB キーか上矢印キーを使用します。 " +
						"メニュー・オプションを選択するには、SPACE キーか ENTER キーを押します。 " +
						"現在のオプションのサブメニューを開くには、SPACE キー、ENTER キー、右矢印キーを使用します。 " +
						"親メニュー項目に戻るには、ESC キーか左矢印キーを使用します。 " +
						"コンテキスト・メニューを閉じるには、ESC キーを使用します。"
				},

				{
					name : "エディターのリスト・ボックス",
					legend :
						"リスト・ボックス内の次のリスト項目に移動するには、TAB キーか下矢印キーを使用します。 " +
						"前のリスト項目に移動するには、SHIFT+TAB キーか上矢印キーを使用します。 " +
						"リスト・オプションを選択するには、SPACE キーか ENTER キーを押します。 " +
						"リスト・ボックスを閉じるには、ESC キーを押します。"
				},

				{
					name : "エディターのエレメント・パス・バー (使用可能な場合*)",
					legend :
						"エレメント・パス・バーに移動するには、${elementsPathFocus} を押します。 " +
						"次のエレメント・ボタンに移動するには、TAB キーか右矢印キーを使用します。 " +
						"前のボタンに移動するには、SHIFT+TAB キーか左矢印キーを使用します。 " +
						"エディター内のエレメントを選択するには、SPACE キーか ENTER キーを押します。"
				}
			]
		},
		{
			name : "コマンド",
			items :
			[
				{
					name : " 取り消しコマンド",
					legend : "${undo} を押します"
				},
				{
					name : " やり直しコマンド",
					legend : "${redo} を押します"
				},
				{
					name : " 太字コマンド",
					legend : "${bold} を押します"
				},
				{
					name : " イタリック・コマンド",
					legend : "${italic} を押します"
				},
				{
					name : " 下線コマンド",
					legend : "${underline} を押します"
				},
				{
					name : " リンク・コマンド",
					legend : "${link} を押します"
				},
				{
					name : " ツールバー省略表示コマンド (使用可能な場合*)",
					legend : "${toolbarCollapse} を押します"
				},
				{
					name: ' 前のフォーカス・スペースへのアクセス・コマンド',
					legend: 'カーソルの直前にある到達できないフォーカス・スペースにスペースを挿入するには、${accessPreviousSpace} を押します。 ' +
						'到達できないフォーカス・スペースは、マウスまたはキーボードを使用してカーソルを置くことのできないエディター内の ' + 
						'位置です。 例: このコマンドを使用して、隣接する 2 つのテーブル要素の間にコンテンツを挿入します。'
				},
				{
					name: ' 次のフォーカス・スペースへのアクセス・コマンド',
					legend: 'カーソルの直後にある到達できないフォーカス・スペースにスペースを挿入するには、${accessNextSpace} を押します。 ' +
						'到達できないフォーカス・スペースは、マウスまたはキーボードを使用してカーソルを置くことのできないエディター内の ' +
						'位置です。 例: このコマンドを使用して、隣接する 2 つのテーブル要素の間にコンテンツを挿入します。'
				},
				{
					name : " インデントの増加",
					legend : "${indent} を押します"
				},
				{
					name : " インデントの減少",
					legend : "${outdent} を押します"
				},				
				{
					name : " 左から右のテキスト方向",
					legend : "${bidiltr} を押します"
				},
				{
					name : " 右から左のテキスト方向",
					legend : "${bidirtl} を押します"
				},
				{
					name: ' 永続的なペン',
					legend: '永続的なペンのアクティブ/非アクティブを切り換えるには、エディター内で ${ibmpermanentpen} (Mac の場合は Alt+Cmd+T) を押します。'
				},
				{
					name : " アクセス支援機能のヘルプ",
					legend : "${a11yHelp} を押します"
				}
			]
		},
		
		{	//added by ibm
			name : "注記",
			items :
			[
				{	
					name : "",
					legend : "* 一部の機能は、管理者によって使用不可に設定されている場合があります。"
				}
			]
		}
	],
	backspace: 'Backspace',
	tab: 'タブ',
	enter: 'Enter',
	shift: 'Shift',
	ctrl: 'Ctrl',
	alt: 'Alt',
	pause: 'Pause',
	capslock: 'Caps Lock',
	escape: 'Esc',
	pageUp: 'Page Up',
	pageDown: 'Page Down',
	end: '終了',
	home: 'ホーム',
	leftArrow: '左矢印',
	upArrow: '上矢印',
	rightArrow: '右矢印',
	downArrow: '下矢印',
	insert: '挿入',
	'delete': '削除',
	leftWindowKey: '左 Windows キー',
	rightWindowKey: '右 Windows キー',
	selectKey: 'キーの選択',
	numpad0: 'テン・キー 0',
	numpad1: 'テン・キー 1',
	numpad2: 'テン・キー 2',
	numpad3: 'テン・キー 3',
	numpad4: 'テン・キー 4',
	numpad5: 'テン・キー 5',
	numpad6: 'テン・キー 6',
	numpad7: 'テン・キー 7',
	numpad8: 'テン・キー 8',
	numpad9: 'テン・キー 9',
	multiply: '乗算記号',
	add: '追加',
	subtract: '減算記号',
	decimalPoint: '小数点',
	divide: '除算記号',
	f1: 'F1',
	f2: 'F2',
	f3: 'F3',
	f4: 'F4',
	f5: 'F5',
	f6: 'F6',
	f7: 'F7',
	f8: 'F8',
	f9: 'F9',
	f10: 'F10',
	f11: 'F11',
	f12: 'F12',
	numLock: 'Num Lock',
	scrollLock: 'Scroll Lock',
	semiColon: 'セミコロン',
	equalSign: '等号',
	comma: 'コンマ',
	dash: 'ダッシュ',
	period: 'ピリオド',
	forwardSlash: 'スラッシュ',
	graveAccent: '抑音符号',
	openBracket: '左大括弧',
	backSlash: '円記号 (\)',
	closeBracket: '右大括弧',
	singleQuote: '単一引用符',
	
	ibm :
	{
		helpLinkDescription : "詳細ヘルプ・トピックを新規ウィンドウで開く",
		helpLink : "詳細ヘルプ・トピック"
	}

});

