package com.sun.org.apache.xalan.internal.xsltc.runtime;

import java.util.ListResourceBundle;

/* loaded from: classes10.dex */
public class ErrorMessages_zh_CN extends ListResourceBundle {
    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        return new Object[][]{new Object[]{BasisLibrary.RUN_TIME_INTERNAL_ERR, "“{0}”中存在运行时内部错误"}, new Object[]{BasisLibrary.RUN_TIME_COPY_ERR, "在执行 <xsl:copy> 时发生运行时错误。"}, new Object[]{"DATA_CONVERSION_ERR", "从“{0}”到“{1}”的转换无效。"}, new Object[]{BasisLibrary.EXTERNAL_FUNC_ERR, "XSLTC 不支持外部函数“{0}”。"}, new Object[]{BasisLibrary.EQUALITY_EXPR_ERR, "等式表达式中的自变量类型未知。"}, new Object[]{BasisLibrary.INVALID_ARGUMENT_ERR, "在对“{1}”的调用中的自变量类型“{0}”无效"}, new Object[]{BasisLibrary.FORMAT_NUMBER_ERR, "试图使用模式“{1}”格式化数值“{0}”。"}, new Object[]{BasisLibrary.ITERATOR_CLONE_ERR, "无法克隆迭代器“{0}”。"}, new Object[]{BasisLibrary.AXIS_SUPPORT_ERR, "不支持轴“{0}”的迭代器。"}, new Object[]{BasisLibrary.TYPED_AXIS_SUPPORT_ERR, "不支持输入的轴“{0}”的迭代器。"}, new Object[]{"STRAY_ATTRIBUTE_ERR", "属性“{0}”在元素外。"}, new Object[]{BasisLibrary.STRAY_NAMESPACE_ERR, "名称空间说明“{0}”=“{1}”在元素外。"}, new Object[]{BasisLibrary.NAMESPACE_PREFIX_ERR, "没有说明名称空间前缀“{0}”。"}, new Object[]{BasisLibrary.DOM_ADAPTER_INIT_ERR, "使用错误类型的源 DOM 创建了 DOMAdapter。"}, new Object[]{BasisLibrary.PARSER_DTD_SUPPORT_ERR, "正在使用的 SAX 解析器不处理 DTD 说明事件。"}, new Object[]{BasisLibrary.NAMESPACES_SUPPORT_ERR, "正在使用的 SAX 解析器不支持 XML 名称空间。"}, new Object[]{BasisLibrary.CANT_RESOLVE_RELATIVE_URI_ERR, "无法解析 URI 引用“{0}”。"}};
    }
}
