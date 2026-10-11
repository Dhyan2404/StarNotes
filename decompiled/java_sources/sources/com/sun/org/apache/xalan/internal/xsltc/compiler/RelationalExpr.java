package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.INVOKESTATIC;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.NodeSetType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.NodeType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.RealType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ReferenceType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.runtime.Operators;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class RelationalExpr extends Expression {
    private Expression _left;
    private int _op;
    private Expression _right;

    public RelationalExpr(int i, Expression expression, Expression expression2) {
        this._op = i;
        this._left = expression;
        expression.setParent(this);
        this._right = expression2;
        expression2.setParent(this);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public boolean hasLastCall() {
        return this._left.hasLastCall() || this._right.hasLastCall();
    }

    public boolean hasNodeArgs() {
        return (this._left.getType() instanceof NodeType) || (this._right.getType() instanceof NodeType);
    }

    public boolean hasNodeSetArgs() {
        return (this._left.getType() instanceof NodeSetType) || (this._right.getType() instanceof NodeSetType);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public boolean hasPositionCall() {
        return this._left.hasPositionCall() || this._right.hasPositionCall();
    }

    public boolean hasReferenceArgs() {
        return (this._left.getType() instanceof ReferenceType) || (this._right.getType() instanceof ReferenceType);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void setParser(Parser parser) {
        super.setParser(parser);
        this._left.setParser(parser);
        this._right.setParser(parser);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public String toString() {
        return Operators.getOpNames(this._op) + '(' + this._left + ", " + this._right + ')';
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        if (!hasNodeSetArgs() && !hasReferenceArgs()) {
            translateDesynthesized(classGenerator, methodGenerator);
            synthesize(classGenerator, methodGenerator);
            return;
        }
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        this._left.translate(classGenerator, methodGenerator);
        this._left.startIterator(classGenerator, methodGenerator);
        this._right.translate(classGenerator, methodGenerator);
        this._right.startIterator(classGenerator, methodGenerator);
        instructionList.append(new PUSH(constantPool, this._op));
        instructionList.append(methodGenerator.loadDOM());
        instructionList.append(new INVOKESTATIC(constantPool.addMethodref(Constants.BASIS_LIBRARY_CLASS, "compare", MotionUtils.f31761c + this._left.getType().toSignature() + this._right.getType().toSignature() + "I" + Constants.DOM_INTF_SIG + ")Z")));
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public void translateDesynthesized(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        BranchInstruction mo52895LE;
        if (hasNodeSetArgs() || hasReferenceArgs()) {
            translate(classGenerator, methodGenerator);
            desynthesize(classGenerator, methodGenerator);
            return;
        }
        InstructionList instructionList = methodGenerator.getInstructionList();
        this._left.translate(classGenerator, methodGenerator);
        this._right.translate(classGenerator, methodGenerator);
        Type type = this._left.getType();
        if (type instanceof RealType) {
            int i = this._op;
            instructionList.append(type.CMP(i == 3 || i == 5));
            type = Type.Int;
            r3 = true;
        }
        int i2 = this._op;
        if (i2 == 2) {
            mo52895LE = type.mo52895LE(r3);
        } else if (i2 == 3) {
            mo52895LE = type.mo52893GE(r3);
        } else if (i2 == 4) {
            mo52895LE = type.mo52896LT(r3);
        } else if (i2 != 5) {
            getParser().reportError(2, new ErrorMsg(ErrorMsg.ILLEGAL_RELAT_OP_ERR, (SyntaxTreeNode) this));
            mo52895LE = null;
        } else {
            mo52895LE = type.mo52894GT(r3);
        }
        this._falseList.add(instructionList.append(mo52895LE));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0062  */
    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type typeCheck(com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable r6) throws com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.xsltc.compiler.RelationalExpr.typeCheck(com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable):com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type");
    }
}
