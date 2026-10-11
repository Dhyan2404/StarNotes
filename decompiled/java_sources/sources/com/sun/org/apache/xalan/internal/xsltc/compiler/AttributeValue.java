package com.sun.org.apache.xalan.internal.xsltc.compiler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public abstract class AttributeValue extends Expression {
    public static final AttributeValue create(SyntaxTreeNode syntaxTreeNode, String str, Parser parser) {
        if (str.indexOf(123) == -1 && str.indexOf(125) == -1) {
            SimpleAttributeValue simpleAttributeValue = new SimpleAttributeValue(str);
            simpleAttributeValue.setParser(parser);
            simpleAttributeValue.setParent(syntaxTreeNode);
            return simpleAttributeValue;
        }
        return new AttributeValueTemplate(str, parser, syntaxTreeNode);
    }
}
