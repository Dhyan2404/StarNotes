package com.sun.org.apache.xpath.internal;

import javax.xml.transform.SourceLocator;

/* loaded from: classes10.dex */
public interface ExpressionNode extends SourceLocator {
    void exprAddChild(ExpressionNode expressionNode, int i);

    ExpressionNode exprGetChild(int i);

    int exprGetNumChildren();

    ExpressionNode exprGetParent();

    void exprSetParent(ExpressionNode expressionNode);
}
