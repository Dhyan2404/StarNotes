package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.bcel.internal.generic.BranchHandle;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.GOTO;
import com.sun.org.apache.bcel.internal.generic.IFEQ;
import com.sun.org.apache.bcel.internal.generic.IF_ICMPEQ;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class ProcessingInstructionPattern extends StepPattern {
    private String _name;
    private boolean _typeChecked;

    public ProcessingInstructionPattern(String str) {
        super(3, 7, null);
        this._typeChecked = false;
        this._name = str;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.StepPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern
    public double getDefaultPriority() {
        return this._name != null ? 0.0d : -0.5d;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.StepPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern
    public boolean isWildcard() {
        return false;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.StepPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern
    public void reduceKernelPattern() {
        this._typeChecked = true;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.StepPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public String toString() {
        if (this._predicates == null) {
            return "processing-instruction(" + this._name + MotionUtils.f31762d;
        }
        return "processing-instruction(" + this._name + MotionUtils.f31762d + this._predicates;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.StepPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Pattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getNodeName", "(I)Ljava/lang/String;");
        int addMethodref = constantPool.addMethodref("java.lang.String", "equals", "(Ljava/lang/Object;)Z");
        instructionList.append(methodGenerator.loadCurrentNode());
        instructionList.append(InstructionConstants.SWAP);
        instructionList.append(methodGenerator.storeCurrentNode());
        if (!this._typeChecked) {
            instructionList.append(methodGenerator.loadCurrentNode());
            int addInterfaceMethodref2 = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getExpandedTypeID", Constants.GET_PARENT_SIG);
            instructionList.append(methodGenerator.loadDOM());
            instructionList.append(methodGenerator.loadCurrentNode());
            instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref2, 2));
            instructionList.append(new PUSH(constantPool, 7));
            this._falseList.add(instructionList.append((BranchInstruction) new IF_ICMPEQ(null)));
        }
        instructionList.append(new PUSH(constantPool, this._name));
        instructionList.append(methodGenerator.loadDOM());
        instructionList.append(methodGenerator.loadCurrentNode());
        instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 2));
        instructionList.append(new INVOKEVIRTUAL(addMethodref));
        this._falseList.add(instructionList.append((BranchInstruction) new IFEQ(null)));
        if (hasPredicates()) {
            int size = this._predicates.size();
            for (int i = 0; i < size; i++) {
                Expression expr = ((Predicate) this._predicates.elementAt(i)).getExpr();
                expr.translateDesynthesized(classGenerator, methodGenerator);
                this._trueList.append(expr._trueList);
                this._falseList.append(expr._falseList);
            }
        }
        backPatchTrueList(instructionList.append(methodGenerator.storeCurrentNode()));
        BranchHandle append = instructionList.append((BranchInstruction) new GOTO(null));
        backPatchFalseList(instructionList.append(methodGenerator.storeCurrentNode()));
        this._falseList.add(instructionList.append((BranchInstruction) new GOTO(null)));
        append.setTarget(instructionList.append(InstructionConstants.NOP));
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.StepPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Pattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        if (hasPredicates()) {
            int size = this._predicates.size();
            for (int i = 0; i < size; i++) {
                ((Predicate) this._predicates.elementAt(i)).typeCheck(symbolTable);
            }
        }
        return Type.NodeSet;
    }
}
