package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.ILOAD;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.ISTORE;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class ParentPattern extends RelativePathPattern {
    private final Pattern _left;
    private final RelativePathPattern _right;

    public ParentPattern(Pattern pattern, RelativePathPattern relativePathPattern) {
        this._left = pattern;
        pattern.setParent(this);
        this._right = relativePathPattern;
        relativePathPattern.setParent(this);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern
    public StepPattern getKernelPattern() {
        return this._right.getKernelPattern();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern
    public boolean isWildcard() {
        return false;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern
    public void reduceKernelPattern() {
        this._right.reduceKernelPattern();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void setParser(Parser parser) {
        super.setParser(parser);
        this._left.setParser(parser);
        this._right.setParser(parser);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public String toString() {
        return "Parent(" + this._left + ", " + this._right + ')';
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Pattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        LocalVariableGen addLocalVariable2 = methodGenerator.addLocalVariable2("ppt", Util.getJCRefType("I"), instructionList.getEnd());
        ILOAD iload = new ILOAD(addLocalVariable2.getIndex());
        ISTORE istore = new ISTORE(addLocalVariable2.getIndex());
        if (this._right.isWildcard()) {
            instructionList.append(methodGenerator.loadDOM());
            instructionList.append(InstructionConstants.SWAP);
        } else {
            RelativePathPattern relativePathPattern = this._right;
            if (relativePathPattern instanceof StepPattern) {
                instructionList.append(InstructionConstants.DUP);
                instructionList.append(istore);
                this._right.translate(classGenerator, methodGenerator);
                instructionList.append(methodGenerator.loadDOM());
                addLocalVariable2.setEnd(instructionList.append(iload));
            } else {
                relativePathPattern.translate(classGenerator, methodGenerator);
                if (this._right instanceof AncestorPattern) {
                    instructionList.append(methodGenerator.loadDOM());
                    instructionList.append(InstructionConstants.SWAP);
                }
            }
        }
        instructionList.append(new INVOKEINTERFACE(constantPool.addInterfaceMethodref(Constants.DOM_INTF, Constants.GET_PARENT, Constants.GET_PARENT_SIG), 2));
        SyntaxTreeNode parent = getParent();
        if (parent == null || (parent instanceof Instruction) || (parent instanceof TopLevelElement)) {
            this._left.translate(classGenerator, methodGenerator);
        } else {
            instructionList.append(InstructionConstants.DUP);
            instructionList.append(istore);
            this._left.translate(classGenerator, methodGenerator);
            instructionList.append(methodGenerator.loadDOM());
            addLocalVariable2.setEnd(instructionList.append(iload));
        }
        methodGenerator.removeLocalVariable(addLocalVariable2);
        RelativePathPattern relativePathPattern2 = this._right;
        if (relativePathPattern2 instanceof AncestorPattern) {
            this._left.backPatchFalseList(((AncestorPattern) relativePathPattern2).getLoopHandle());
        }
        this._trueList.append(this._right._trueList.append(this._left._trueList));
        this._falseList.append(this._right._falseList.append(this._left._falseList));
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Pattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        this._left.typeCheck(symbolTable);
        return this._right.typeCheck(symbolTable);
    }
}
