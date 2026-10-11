package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.INVOKESTATIC;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.StringType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;

/* loaded from: classes10.dex */
final class TransletOutput extends Instruction {
    private boolean _append;
    private Expression _filename;

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void display(int i) {
        indent(i);
        Util.println("TransletOutput: " + this._filename);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void parseContents(Parser parser) {
        String attribute = getAttribute("file");
        String attribute2 = getAttribute(RequestParameters.SUBRESOURCE_APPEND);
        if (attribute == null || attribute.equals("")) {
            reportError(this, parser, ErrorMsg.REQUIRED_ATTR_ERR, "file");
        }
        this._filename = AttributeValue.create(this, attribute, parser);
        if (attribute2 == null || !(attribute2.toLowerCase().equals("yes") || attribute2.toLowerCase().equals("true"))) {
            this._append = false;
        } else {
            this._append = true;
        }
        parseChildren(parser);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        if (classGenerator.getParser().getXSLTC().isSecureProcessing()) {
            int addMethodref = constantPool.addMethodref(Constants.BASIS_LIBRARY_CLASS, "unallowed_extension_elementF", "(Ljava/lang/String;)V");
            instructionList.append(new PUSH(constantPool, "redirect"));
            instructionList.append(new INVOKESTATIC(addMethodref));
            return;
        }
        instructionList.append(methodGenerator.loadHandler());
        int addMethodref2 = constantPool.addMethodref(Constants.TRANSLET_CLASS, "openOutputHandler", "(Ljava/lang/String;Z)Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;");
        int addMethodref3 = constantPool.addMethodref(Constants.TRANSLET_CLASS, "closeOutputHandler", "(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V");
        instructionList.append(classGenerator.loadTranslet());
        this._filename.translate(classGenerator, methodGenerator);
        instructionList.append(new PUSH(constantPool, this._append));
        instructionList.append(new INVOKEVIRTUAL(addMethodref2));
        instructionList.append(methodGenerator.storeHandler());
        translateContents(classGenerator, methodGenerator);
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(methodGenerator.loadHandler());
        instructionList.append(new INVOKEVIRTUAL(addMethodref3));
        instructionList.append(methodGenerator.storeHandler());
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        if (!(this._filename.typeCheck(symbolTable) instanceof StringType)) {
            this._filename = new CastExpr(this._filename, Type.String);
        }
        typeCheckContents(symbolTable);
        return Type.Void;
    }
}
