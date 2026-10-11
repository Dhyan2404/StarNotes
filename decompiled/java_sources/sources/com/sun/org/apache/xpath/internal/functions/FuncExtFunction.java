package com.sun.org.apache.xpath.internal.functions;

import com.sun.org.apache.xpath.internal.Expression;
import com.sun.org.apache.xpath.internal.ExpressionNode;
import com.sun.org.apache.xpath.internal.ExpressionOwner;
import com.sun.org.apache.xpath.internal.ExtensionsProvider;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.XPathVisitor;
import com.sun.org.apache.xpath.internal.objects.XNull;
import com.sun.org.apache.xpath.internal.objects.XObject;
import com.sun.org.apache.xpath.internal.res.XPATHErrorResources;
import com.sun.org.apache.xpath.internal.res.XPATHMessages;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class FuncExtFunction extends Function {
    static final long serialVersionUID = 5196115554693708718L;
    Vector m_argVec = new Vector();
    String m_extensionName;
    Object m_methodKey;
    String m_namespace;

    /* loaded from: classes10.dex */
    public class ArgExtOwner implements ExpressionOwner {
        Expression m_exp;

        public ArgExtOwner(Expression expression) {
            this.m_exp = expression;
        }

        @Override // com.sun.org.apache.xpath.internal.ExpressionOwner
        public Expression getExpression() {
            return this.m_exp;
        }

        @Override // com.sun.org.apache.xpath.internal.ExpressionOwner
        public void setExpression(Expression expression) {
            expression.exprSetParent(FuncExtFunction.this);
            this.m_exp = expression;
        }
    }

    public FuncExtFunction(String str, String str2, Object obj) {
        this.m_namespace = str;
        this.m_extensionName = str2;
        this.m_methodKey = obj;
    }

    @Override // com.sun.org.apache.xpath.internal.functions.Function
    public void callArgVisitors(XPathVisitor xPathVisitor) {
        for (int i = 0; i < this.m_argVec.size(); i++) {
            Expression expression = (Expression) this.m_argVec.elementAt(i);
            expression.callVisitors(new ArgExtOwner(expression), xPathVisitor);
        }
    }

    @Override // com.sun.org.apache.xpath.internal.functions.Function
    public void checkNumberArgs(int i) throws WrongNumberArgsException {
    }

    @Override // com.sun.org.apache.xpath.internal.functions.Function, com.sun.org.apache.xpath.internal.Expression
    public XObject execute(XPathContext xPathContext) throws TransformerException {
        if (xPathContext.isSecureProcessing()) {
            throw new TransformerException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_EXTENSION_FUNCTION_CANNOT_BE_INVOKED, new Object[]{toString()}));
        }
        Vector vector = new Vector();
        int size = this.m_argVec.size();
        for (int i = 0; i < size; i++) {
            XObject execute = ((Expression) this.m_argVec.elementAt(i)).execute(xPathContext);
            execute.allowDetachToRelease(false);
            vector.addElement(execute);
        }
        Object extFunction = ((ExtensionsProvider) xPathContext.getOwnerObject()).extFunction(this, vector);
        return extFunction != null ? XObject.create(extFunction, xPathContext) : new XNull();
    }

    @Override // com.sun.org.apache.xpath.internal.Expression, com.sun.org.apache.xpath.internal.ExpressionNode
    public void exprSetParent(ExpressionNode expressionNode) {
        super.exprSetParent(expressionNode);
        int size = this.m_argVec.size();
        for (int i = 0; i < size; i++) {
            ((Expression) this.m_argVec.elementAt(i)).exprSetParent(expressionNode);
        }
    }

    @Override // com.sun.org.apache.xpath.internal.Expression
    public void fixupVariables(Vector vector, int i) {
        Vector vector2 = this.m_argVec;
        if (vector2 != null) {
            int size = vector2.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((Expression) this.m_argVec.elementAt(i2)).fixupVariables(vector, i);
            }
        }
    }

    public Expression getArg(int i) {
        if (i < 0 || i >= this.m_argVec.size()) {
            return null;
        }
        return (Expression) this.m_argVec.elementAt(i);
    }

    public int getArgCount() {
        return this.m_argVec.size();
    }

    public String getFunctionName() {
        return this.m_extensionName;
    }

    public Object getMethodKey() {
        return this.m_methodKey;
    }

    public String getNamespace() {
        return this.m_namespace;
    }

    @Override // com.sun.org.apache.xpath.internal.functions.Function
    public void reportWrongNumberArgs() throws WrongNumberArgsException {
        throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_INCORRECT_PROGRAMMER_ASSERTION", new Object[]{"Programmer's assertion:  the method FunctionMultiArgs.reportWrongNumberArgs() should never be called."}));
    }

    @Override // com.sun.org.apache.xpath.internal.functions.Function
    public void setArg(Expression expression, int i) throws WrongNumberArgsException {
        this.m_argVec.addElement(expression);
        expression.exprSetParent(this);
    }

    public String toString() {
        String str = this.m_namespace;
        if (str == null || str.length() <= 0) {
            return this.m_extensionName;
        }
        return "{" + this.m_namespace + "}" + this.m_extensionName;
    }
}
