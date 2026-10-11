package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.GOTO;
import com.sun.org.apache.bcel.internal.generic.IFNE;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.bcel.internal.generic.StackInstruction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public abstract class IdKeyPattern extends LocationPathPattern {
    private String _index;
    protected RelativePathPattern _left = null;
    private String _value;

    public IdKeyPattern(String str, String str2) {
        this._index = str;
        this._value = str2;
    }

    public String getIndexName() {
        return this._index;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern
    public StepPattern getKernelPattern() {
        return null;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern
    public boolean isWildcard() {
        return false;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern
    public void reduceKernelPattern() {
    }

    public void setLeft(RelativePathPattern relativePathPattern) {
        this._left = relativePathPattern;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public String toString() {
        return "id/keyPattern(" + this._index + ", " + this._value + ')';
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Pattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        int addMethodref = constantPool.addMethodref(Constants.TRANSLET_CLASS, "getKeyIndex", "(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;");
        int addMethodref2 = constantPool.addMethodref(Constants.KEY_INDEX_CLASS, "containsID", "(ILjava/lang/Object;)I");
        int addMethodref3 = constantPool.addMethodref(Constants.KEY_INDEX_CLASS, "containsKey", "(ILjava/lang/Object;)I");
        int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getNodeIdent", Constants.GET_PARENT_SIG);
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(new PUSH(constantPool, this._index));
        instructionList.append(new INVOKEVIRTUAL(addMethodref));
        StackInstruction stackInstruction = InstructionConstants.SWAP;
        instructionList.append(stackInstruction);
        instructionList.append(new PUSH(constantPool, this._value));
        if (this instanceof IdPattern) {
            instructionList.append(stackInstruction);
            instructionList.append(methodGenerator.loadDOM());
            instructionList.append(stackInstruction);
            instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 2));
            instructionList.append(stackInstruction);
            instructionList.append(new INVOKEVIRTUAL(addMethodref2));
        } else {
            instructionList.append(stackInstruction);
            instructionList.append(methodGenerator.loadDOM());
            instructionList.append(stackInstruction);
            instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 2));
            instructionList.append(stackInstruction);
            instructionList.append(new INVOKEVIRTUAL(addMethodref3));
        }
        this._trueList.add(instructionList.append((BranchInstruction) new IFNE(null)));
        this._falseList.add(instructionList.append((BranchInstruction) new GOTO(null)));
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Pattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        return Type.NodeSet;
    }
}
