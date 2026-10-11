package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.INVOKESPECIAL;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import java.util.Enumeration;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class AttributeValueTemplate extends AttributeValue {
    static final String DELIMITER = "\ufffe";
    static final int IN_EXPR = 1;
    static final int IN_EXPR_DQUOTES = 3;
    static final int IN_EXPR_SQUOTES = 2;
    static final int OUT_EXPR = 0;

    public AttributeValueTemplate(String str, Parser parser, SyntaxTreeNode syntaxTreeNode) {
        setParent(syntaxTreeNode);
        setParser(parser);
        try {
            parseAVTemplate(str, parser);
        } catch (NoSuchElementException unused) {
            reportError(syntaxTreeNode, parser, ErrorMsg.ATTR_VAL_TEMPLATE_ERR, str);
        }
    }

    private void parseAVTemplate(String str, Parser parser) {
        String str2;
        String nextToken;
        StringTokenizer stringTokenizer = new StringTokenizer(str, "{}\"'", true);
        StringBuffer stringBuffer = new StringBuffer();
        char c = 0;
        loop0: while (true) {
            String str3 = null;
            while (stringTokenizer.hasMoreTokens()) {
                if (str3 != null) {
                    str2 = null;
                } else {
                    str2 = str3;
                    str3 = stringTokenizer.nextToken();
                }
                if (str3.length() == 1) {
                    char charAt = str3.charAt(0);
                    if (charAt == '\"') {
                        if (c == 1) {
                            c = 3;
                        } else if (c == 3) {
                            c = 1;
                        }
                        stringBuffer.append(str3);
                    } else if (charAt == '\'') {
                        if (c == 1) {
                            c = 2;
                        } else if (c == 2) {
                            c = 1;
                        }
                        stringBuffer.append(str3);
                    } else if (charAt != '{') {
                        if (charAt != '}') {
                            stringBuffer.append(str3);
                        } else if (c == 0) {
                            nextToken = stringTokenizer.nextToken();
                            if (nextToken.equals("}")) {
                                stringBuffer.append(nextToken);
                            } else {
                                reportError(getParent(), parser, ErrorMsg.ATTR_VAL_TEMPLATE_ERR, str);
                                str3 = nextToken;
                            }
                        } else if (c == 1) {
                            stringBuffer.append(DELIMITER);
                            c = 0;
                        } else if (c == 2 || c == 3) {
                            stringBuffer.append(str3);
                        }
                    } else if (c == 0) {
                        nextToken = stringTokenizer.nextToken();
                        if (nextToken.equals("{")) {
                            stringBuffer.append(nextToken);
                        } else {
                            stringBuffer.append(DELIMITER);
                            c = 1;
                            str3 = nextToken;
                        }
                    } else if (c == 1 || c == 2 || c == 3) {
                        reportError(getParent(), parser, ErrorMsg.ATTR_VAL_TEMPLATE_ERR, str);
                    }
                } else {
                    stringBuffer.append(str3);
                }
                str3 = str2;
            }
            break loop0;
        }
        if (c != 0) {
            reportError(getParent(), parser, ErrorMsg.ATTR_VAL_TEMPLATE_ERR, str);
        }
        StringTokenizer stringTokenizer2 = new StringTokenizer(stringBuffer.toString(), DELIMITER, true);
        while (stringTokenizer2.hasMoreTokens()) {
            String nextToken2 = stringTokenizer2.nextToken();
            if (nextToken2.equals(DELIMITER)) {
                addElement(parser.parseExpression(this, stringTokenizer2.nextToken()));
                stringTokenizer2.nextToken();
            } else {
                addElement(new LiteralExpr(nextToken2));
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("AVT:[");
        int elementCount = elementCount();
        for (int i = 0; i < elementCount; i++) {
            stringBuffer.append(elementAt(i).toString());
            if (i < elementCount - 1) {
                stringBuffer.append(' ');
            }
        }
        stringBuffer.append(']');
        return stringBuffer.toString();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        if (elementCount() == 1) {
            ((Expression) elementAt(0)).translate(classGenerator, methodGenerator);
            return;
        }
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        int addMethodref = constantPool.addMethodref(Constants.STRING_BUFFER_CLASS, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V");
        INVOKEVIRTUAL invokevirtual = new INVOKEVIRTUAL(constantPool.addMethodref(Constants.STRING_BUFFER_CLASS, RequestParameters.SUBRESOURCE_APPEND, "(Ljava/lang/String;)Ljava/lang/StringBuffer;"));
        int addMethodref2 = constantPool.addMethodref(Constants.STRING_BUFFER_CLASS, "toString", "()Ljava/lang/String;");
        instructionList.append(new NEW(constantPool.addClass(Constants.STRING_BUFFER_CLASS)));
        instructionList.append(InstructionConstants.DUP);
        instructionList.append(new INVOKESPECIAL(addMethodref));
        Enumeration elements = elements();
        while (elements.hasMoreElements()) {
            ((Expression) elements.nextElement()).translate(classGenerator, methodGenerator);
            instructionList.append(invokevirtual);
        }
        instructionList.append(new INVOKEVIRTUAL(addMethodref2));
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        Vector contents = getContents();
        int size = contents.size();
        for (int i = 0; i < size; i++) {
            Expression expression = (Expression) contents.elementAt(i);
            Type typeCheck = expression.typeCheck(symbolTable);
            Type type = Type.String;
            if (!typeCheck.identicalTo(type)) {
                contents.setElementAt(new CastExpr(expression, type), i);
            }
        }
        Type type2 = Type.String;
        this._type = type2;
        return type2;
    }
}
