package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ALOAD;
import com.sun.org.apache.bcel.internal.generic.ASTORE;
import com.sun.org.apache.bcel.internal.generic.BranchHandle;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.IFEQ;
import com.sun.org.apache.bcel.internal.generic.IFNULL;
import com.sun.org.apache.bcel.internal.generic.ILOAD;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.ISTORE;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class Copy extends Instruction {
    private UseAttributeSets _useSets;

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void display(int i) {
        indent(i);
        Util.println("Copy");
        int i2 = i + 4;
        indent(i2);
        displayContents(i2);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void parseContents(Parser parser) {
        String attribute = getAttribute(com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_USEATTRIBUTESETS);
        if (attribute.length() > 0) {
            if (!Util.isValidQNames(attribute)) {
                parser.reportError(3, new ErrorMsg("INVALID_QNAME_ERR", (Object) attribute, (SyntaxTreeNode) this));
            }
            this._useSets = new UseAttributeSets(attribute, parser);
        }
        parseChildren(parser);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        LocalVariableGen addLocalVariable2 = methodGenerator.addLocalVariable2("name", Util.getJCRefType(Constants.STRING_SIG), instructionList.getEnd());
        LocalVariableGen addLocalVariable22 = methodGenerator.addLocalVariable2("length", Util.getJCRefType("I"), instructionList.getEnd());
        instructionList.append(methodGenerator.loadDOM());
        instructionList.append(methodGenerator.loadCurrentNode());
        instructionList.append(methodGenerator.loadHandler());
        instructionList.append(new INVOKEINTERFACE(constantPool.addInterfaceMethodref(Constants.DOM_INTF, "shallowCopy", "(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)Ljava/lang/String;"), 3));
        instructionList.append(InstructionConstants.DUP);
        instructionList.append(new ASTORE(addLocalVariable2.getIndex()));
        BranchHandle append = instructionList.append((BranchInstruction) new IFNULL(null));
        instructionList.append(new ALOAD(addLocalVariable2.getIndex()));
        instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref("java.lang.String", "length", "()I")));
        instructionList.append(new ISTORE(addLocalVariable22.getIndex()));
        if (this._useSets != null) {
            boolean z = getParent() instanceof LiteralElement;
            if (z || z) {
                this._useSets.translate(classGenerator, methodGenerator);
            } else {
                instructionList.append(new ILOAD(addLocalVariable22.getIndex()));
                BranchHandle append2 = instructionList.append((BranchInstruction) new IFEQ(null));
                this._useSets.translate(classGenerator, methodGenerator);
                append2.setTarget(instructionList.append(InstructionConstants.NOP));
            }
        }
        translateContents(classGenerator, methodGenerator);
        instructionList.append(new ILOAD(addLocalVariable22.getIndex()));
        BranchHandle append3 = instructionList.append((BranchInstruction) new IFEQ(null));
        instructionList.append(methodGenerator.loadHandler());
        instructionList.append(new ALOAD(addLocalVariable2.getIndex()));
        instructionList.append(methodGenerator.endElement());
        InstructionHandle append4 = instructionList.append(InstructionConstants.NOP);
        append.setTarget(append4);
        append3.setTarget(append4);
        methodGenerator.removeLocalVariable(addLocalVariable2);
        methodGenerator.removeLocalVariable(addLocalVariable22);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        UseAttributeSets useAttributeSets = this._useSets;
        if (useAttributeSets != null) {
            useAttributeSets.typeCheck(symbolTable);
        }
        typeCheckContents(symbolTable);
        return Type.Void;
    }
}
