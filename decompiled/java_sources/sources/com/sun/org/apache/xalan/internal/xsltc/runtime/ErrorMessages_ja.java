package com.sun.org.apache.xalan.internal.xsltc.runtime;

import java.util.ListResourceBundle;

/* loaded from: classes10.dex */
public class ErrorMessages_ja extends ListResourceBundle {
    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        return new Object[][]{new Object[]{BasisLibrary.RUN_TIME_INTERNAL_ERR, "''{0}'' でランタイム内部エラー"}, new Object[]{BasisLibrary.RUN_TIME_COPY_ERR, "<xsl:copy> を実行時にランタイム・エラー。"}, new Object[]{"DATA_CONVERSION_ERR", "''{0}'' から ''{1}'' への変換が無効です。"}, new Object[]{BasisLibrary.EXTERNAL_FUNC_ERR, "外部関数 ''{0}'' は XSLTC によりサポートされていません。"}, new Object[]{BasisLibrary.EQUALITY_EXPR_ERR, "等式内の引き数が不明です。"}, new Object[]{BasisLibrary.INVALID_ARGUMENT_ERR, "''{1}'' への呼び出し中の引き数タイプ ''{0}'' が無効です"}, new Object[]{BasisLibrary.FORMAT_NUMBER_ERR, "数値 ''{0}'' をパターン ''{1}'' を使用してフォーマット設定しようとしています。"}, new Object[]{BasisLibrary.ITERATOR_CLONE_ERR, "イテレーター ''{0}'' を複製できません。"}, new Object[]{BasisLibrary.AXIS_SUPPORT_ERR, "軸 ''{0}'' のイテレーターはサポートされていません。"}, new Object[]{BasisLibrary.TYPED_AXIS_SUPPORT_ERR, "型付きの軸 ''{0}'' のイテレーターはサポートされていません。"}, new Object[]{"STRAY_ATTRIBUTE_ERR", "属性 ''{0}'' がエレメントの外側です。"}, new Object[]{BasisLibrary.STRAY_NAMESPACE_ERR, "ネーム・スペース宣言 ''{0}''=''{1}'' がエレメントの外側です。"}, new Object[]{BasisLibrary.NAMESPACE_PREFIX_ERR, "接頭部 ''{0}'' のネーム・スペースが宣言されていません。"}, new Object[]{BasisLibrary.DOM_ADAPTER_INIT_ERR, "DOMAdapter が間違ったタイプのソース DOM を使用して作成されました。"}, new Object[]{BasisLibrary.PARSER_DTD_SUPPORT_ERR, "使用中の SAX パーサーは DTD 宣言イベントを処理しません。"}, new Object[]{BasisLibrary.NAMESPACES_SUPPORT_ERR, "使用中の SAX パーサーには XML ネーム・スペースのサポートがありません。"}, new Object[]{BasisLibrary.CANT_RESOLVE_RELATIVE_URI_ERR, "URI 参照 ''{0}'' を解決できませんでした。"}};
    }
}
