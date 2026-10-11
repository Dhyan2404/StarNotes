package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.bcel.internal.generic.BranchHandle;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.GOTO_W;
import com.sun.org.apache.bcel.internal.generic.IF_ICMPEQ;
import com.sun.org.apache.bcel.internal.generic.ILOAD;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.ISTORE;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.bcel.internal.generic.StackInstruction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;

/* loaded from: classes10.dex */
final class AbsolutePathPattern extends LocationPathPattern {
    private final RelativePathPattern _left;

    public AbsolutePathPattern(RelativePathPattern relativePathPattern) {
        this._left = relativePathPattern;
        if (relativePathPattern != null) {
            relativePathPattern.setParent(this);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern
    public StepPattern getKernelPattern() {
        RelativePathPattern relativePathPattern = this._left;
        if (relativePathPattern != null) {
            return relativePathPattern.getKernelPattern();
        }
        return null;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern
    public boolean isWildcard() {
        return false;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern
    public void reduceKernelPattern() {
        this._left.reduceKernelPattern();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void setParser(Parser parser) {
        super.setParser(parser);
        RelativePathPattern relativePathPattern = this._left;
        if (relativePathPattern != null) {
            relativePathPattern.setParser(parser);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("absolutePathPattern(");
        RelativePathPattern relativePathPattern = this._left;
        sb.append(relativePathPattern != null ? relativePathPattern.toString() : MotionUtils.f31762d);
        return sb.toString();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Pattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        RelativePathPattern relativePathPattern = this._left;
        if (relativePathPattern != null) {
            if (relativePathPattern instanceof StepPattern) {
                LocalVariableGen addLocalVariable2 = methodGenerator.addLocalVariable2("apptmp", Util.getJCRefType("I"), instructionList.getEnd());
                instructionList.append(InstructionConstants.DUP);
                instructionList.append(new ISTORE(addLocalVariable2.getIndex()));
                this._left.translate(classGenerator, methodGenerator);
                instructionList.append(methodGenerator.loadDOM());
                addLocalVariable2.setEnd(instructionList.append(new ILOAD(addLocalVariable2.getIndex())));
                methodGenerator.removeLocalVariable(addLocalVariable2);
            } else {
                relativePathPattern.translate(classGenerator, methodGenerator);
            }
        }
        int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, Constants.GET_PARENT, Constants.GET_PARENT_SIG);
        int addInterfaceMethodref2 = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getExpandedTypeID", Constants.GET_PARENT_SIG);
        InstructionHandle append = instructionList.append(methodGenerator.loadDOM());
        StackInstruction stackInstruction = InstructionConstants.SWAP;
        instructionList.append(stackInstruction);
        instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 2));
        if (this._left instanceof AncestorPattern) {
            instructionList.append(methodGenerator.loadDOM());
            instructionList.append(stackInstruction);
        }
        instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref2, 2));
        instructionList.append(new PUSH(constantPool, 9));
        BranchHandle append2 = instructionList.append((BranchInstruction) new IF_ICMPEQ(null));
        this._falseList.add(instructionList.append((BranchInstruction) new GOTO_W(null)));
        append2.setTarget(instructionList.append(InstructionConstants.NOP));
        RelativePathPattern relativePathPattern2 = this._left;
        if (relativePathPattern2 != null) {
            relativePathPattern2.backPatchTrueList(append);
            RelativePathPattern relativePathPattern3 = this._left;
            if (relativePathPattern3 instanceof AncestorPattern) {
                this._falseList.backPatch(((AncestorPattern) relativePathPattern3).getLoopHandle());
            }
            this._falseList.append(this._left._falseList);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Pattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        RelativePathPattern relativePathPattern = this._left;
        return relativePathPattern == null ? Type.Root : relativePathPattern.typeCheck(symbolTable);
    }
}
