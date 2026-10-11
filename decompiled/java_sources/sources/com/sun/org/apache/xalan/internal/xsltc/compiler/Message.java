package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.INVOKESPECIAL;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.bcel.internal.generic.StackInstruction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;

/* loaded from: classes10.dex */
final class Message extends Instruction {
    private boolean _terminate = false;

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void parseContents(Parser parser) {
        String attribute = getAttribute(com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_TERMINATE);
        if (attribute != null) {
            this._terminate = attribute.equals("yes");
        }
        parseChildren(parser);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        instructionList.append(classGenerator.loadTranslet());
        int elementCount = elementCount();
        if (elementCount != 0) {
            if (elementCount == 1) {
                SyntaxTreeNode syntaxTreeNode = (SyntaxTreeNode) elementAt(0);
                if (syntaxTreeNode instanceof Text) {
                    instructionList.append(new PUSH(constantPool, ((Text) syntaxTreeNode).getText()));
                }
            }
            instructionList.append(methodGenerator.loadHandler());
            instructionList.append(new NEW(constantPool.addClass(Constants.STREAM_XML_OUTPUT)));
            instructionList.append(methodGenerator.storeHandler());
            instructionList.append(new NEW(constantPool.addClass(Constants.STRING_WRITER)));
            StackInstruction stackInstruction = InstructionConstants.DUP;
            instructionList.append(stackInstruction);
            instructionList.append(stackInstruction);
            instructionList.append(new INVOKESPECIAL(constantPool.addMethodref(Constants.STRING_WRITER, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V")));
            instructionList.append(methodGenerator.loadHandler());
            instructionList.append(new INVOKESPECIAL(constantPool.addMethodref(Constants.STREAM_XML_OUTPUT, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V")));
            instructionList.append(methodGenerator.loadHandler());
            StackInstruction stackInstruction2 = InstructionConstants.SWAP;
            instructionList.append(stackInstruction2);
            instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(Constants.OUTPUT_BASE, "setWriter", "(Ljava/io/Writer;)V")));
            instructionList.append(methodGenerator.loadHandler());
            instructionList.append(new PUSH(constantPool, "UTF-8"));
            instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(Constants.OUTPUT_BASE, "setEncoding", "(Ljava/lang/String;)V")));
            instructionList.append(methodGenerator.loadHandler());
            instructionList.append(InstructionConstants.ICONST_1);
            instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(Constants.OUTPUT_BASE, "setOmitXMLDeclaration", "(Z)V")));
            instructionList.append(methodGenerator.loadHandler());
            instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(Constants.OUTPUT_BASE, "startDocument", "()V")));
            translateContents(classGenerator, methodGenerator);
            instructionList.append(methodGenerator.loadHandler());
            instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(Constants.OUTPUT_BASE, "endDocument", "()V")));
            instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(Constants.STRING_WRITER, "toString", "()Ljava/lang/String;")));
            instructionList.append(stackInstruction2);
            instructionList.append(methodGenerator.storeHandler());
        } else {
            instructionList.append(new PUSH(constantPool, ""));
        }
        instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(Constants.TRANSLET_CLASS, "displayMessage", "(Ljava/lang/String;)V")));
        if (this._terminate) {
            int addMethodref = constantPool.addMethodref("java.lang.RuntimeException", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V");
            instructionList.append(new NEW(constantPool.addClass("java.lang.RuntimeException")));
            instructionList.append(InstructionConstants.DUP);
            instructionList.append(new PUSH(constantPool, "Termination forced by an xsl:message instruction"));
            instructionList.append(new INVOKESPECIAL(addMethodref));
            instructionList.append(InstructionConstants.ATHROW);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        typeCheckContents(symbolTable);
        return Type.Void;
    }
}
