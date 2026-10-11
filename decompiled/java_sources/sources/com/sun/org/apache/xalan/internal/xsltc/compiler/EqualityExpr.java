package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.bcel.internal.generic.ArithmeticInstruction;
import com.sun.org.apache.bcel.internal.generic.BranchHandle;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.GOTO;
import com.sun.org.apache.bcel.internal.generic.IFEQ;
import com.sun.org.apache.bcel.internal.generic.IFNE;
import com.sun.org.apache.bcel.internal.generic.IF_ICMPEQ;
import com.sun.org.apache.bcel.internal.generic.IF_ICMPNE;
import com.sun.org.apache.bcel.internal.generic.INVOKESTATIC;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.BooleanType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.IntType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.NodeSetType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.NodeType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.NumberType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.RealType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ReferenceType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ResultTreeType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.StringType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.runtime.Operators;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class EqualityExpr extends Expression {
    private Expression _left;
    private final int _op;
    private Expression _right;

    public EqualityExpr(int i, Expression expression, Expression expression2) {
        this._op = i;
        this._left = expression;
        expression.setParent(this);
        this._right = expression2;
        expression2.setParent(this);
    }

    private void swapArguments() {
        Expression expression = this._left;
        this._left = this._right;
        this._right = expression;
    }

    public Expression getLeft() {
        return this._left;
    }

    public boolean getOp() {
        return this._op != 1;
    }

    public Expression getRight() {
        return this._right;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public boolean hasLastCall() {
        return this._left.hasLastCall() || this._right.hasLastCall();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public boolean hasPositionCall() {
        return this._left.hasPositionCall() || this._right.hasPositionCall();
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
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        Type type = this._left.getType();
        Type type2 = this._right.getType();
        if ((type instanceof BooleanType) || (type instanceof NumberType)) {
            translateDesynthesized(classGenerator, methodGenerator);
            synthesize(classGenerator, methodGenerator);
            return;
        }
        if (type instanceof StringType) {
            int addMethodref = constantPool.addMethodref("java.lang.String", "equals", "(Ljava/lang/Object;)Z");
            this._left.translate(classGenerator, methodGenerator);
            this._right.translate(classGenerator, methodGenerator);
            instructionList.append(new INVOKEVIRTUAL(addMethodref));
            if (this._op == 1) {
                instructionList.append(InstructionConstants.ICONST_1);
                instructionList.append(InstructionConstants.IXOR);
                return;
            }
            return;
        }
        if (type instanceof ResultTreeType) {
            if (type2 instanceof BooleanType) {
                this._right.translate(classGenerator, methodGenerator);
                if (this._op == 1) {
                    instructionList.append(InstructionConstants.ICONST_1);
                    instructionList.append(InstructionConstants.IXOR);
                    return;
                }
                return;
            }
            if (type2 instanceof RealType) {
                this._left.translate(classGenerator, methodGenerator);
                type.translateTo(classGenerator, methodGenerator, Type.Real);
                this._right.translate(classGenerator, methodGenerator);
                instructionList.append(InstructionConstants.DCMPG);
                BranchHandle append = instructionList.append(this._op == 0 ? new IFNE(null) : new IFEQ(null));
                instructionList.append(InstructionConstants.ICONST_1);
                BranchHandle append2 = instructionList.append((BranchInstruction) new GOTO(null));
                append.setTarget(instructionList.append(InstructionConstants.ICONST_0));
                append2.setTarget(instructionList.append(InstructionConstants.NOP));
                return;
            }
            this._left.translate(classGenerator, methodGenerator);
            Type type3 = Type.String;
            type.translateTo(classGenerator, methodGenerator, type3);
            this._right.translate(classGenerator, methodGenerator);
            if (type2 instanceof ResultTreeType) {
                type2.translateTo(classGenerator, methodGenerator, type3);
            }
            instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref("java.lang.String", "equals", "(Ljava/lang/Object;)Z")));
            if (this._op == 1) {
                instructionList.append(InstructionConstants.ICONST_1);
                instructionList.append(InstructionConstants.IXOR);
                return;
            }
            return;
        }
        boolean z = type instanceof NodeSetType;
        if (z && (type2 instanceof BooleanType)) {
            this._left.translate(classGenerator, methodGenerator);
            this._left.startIterator(classGenerator, methodGenerator);
            Type.NodeSet.translateTo(classGenerator, methodGenerator, Type.Boolean);
            this._right.translate(classGenerator, methodGenerator);
            ArithmeticInstruction arithmeticInstruction = InstructionConstants.IXOR;
            instructionList.append(arithmeticInstruction);
            if (this._op == 0) {
                instructionList.append(InstructionConstants.ICONST_1);
                instructionList.append(arithmeticInstruction);
                return;
            }
            return;
        }
        if (z && (type2 instanceof StringType)) {
            this._left.translate(classGenerator, methodGenerator);
            this._left.startIterator(classGenerator, methodGenerator);
            this._right.translate(classGenerator, methodGenerator);
            instructionList.append(new PUSH(constantPool, this._op));
            instructionList.append(methodGenerator.loadDOM());
            instructionList.append(new INVOKESTATIC(constantPool.addMethodref(Constants.BASIS_LIBRARY_CLASS, "compare", MotionUtils.f31761c + type.toSignature() + type2.toSignature() + "I" + Constants.DOM_INTF_SIG + ")Z")));
            return;
        }
        this._left.translate(classGenerator, methodGenerator);
        this._left.startIterator(classGenerator, methodGenerator);
        this._right.translate(classGenerator, methodGenerator);
        this._right.startIterator(classGenerator, methodGenerator);
        if (type2 instanceof ResultTreeType) {
            Type type4 = Type.String;
            type2.translateTo(classGenerator, methodGenerator, type4);
            type2 = type4;
        }
        instructionList.append(new PUSH(constantPool, this._op));
        instructionList.append(methodGenerator.loadDOM());
        instructionList.append(new INVOKESTATIC(constantPool.addMethodref(Constants.BASIS_LIBRARY_CLASS, "compare", MotionUtils.f31761c + type.toSignature() + type2.toSignature() + "I" + Constants.DOM_INTF_SIG + ")Z")));
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public void translateDesynthesized(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        Type type = this._left.getType();
        InstructionList instructionList = methodGenerator.getInstructionList();
        if (type instanceof BooleanType) {
            this._left.translate(classGenerator, methodGenerator);
            this._right.translate(classGenerator, methodGenerator);
            this._falseList.add(instructionList.append(this._op == 0 ? new IF_ICMPNE(null) : new IF_ICMPEQ(null)));
        } else {
            if (!(type instanceof NumberType)) {
                translate(classGenerator, methodGenerator);
                desynthesize(classGenerator, methodGenerator);
                return;
            }
            this._left.translate(classGenerator, methodGenerator);
            this._right.translate(classGenerator, methodGenerator);
            if (!(type instanceof RealType)) {
                this._falseList.add(instructionList.append(this._op == 0 ? new IF_ICMPNE(null) : new IF_ICMPEQ(null)));
            } else {
                instructionList.append(InstructionConstants.DCMPG);
                this._falseList.add(instructionList.append(this._op == 0 ? new IFNE(null) : new IFEQ(null)));
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        Type type;
        Type typeCheck = this._left.typeCheck(symbolTable);
        Type typeCheck2 = this._right.typeCheck(symbolTable);
        if (typeCheck.isSimple() && typeCheck2.isSimple()) {
            if (typeCheck != typeCheck2) {
                if (typeCheck instanceof BooleanType) {
                    this._right = new CastExpr(this._right, Type.Boolean);
                } else if (typeCheck2 instanceof BooleanType) {
                    this._left = new CastExpr(this._left, Type.Boolean);
                } else if ((typeCheck instanceof NumberType) || (typeCheck2 instanceof NumberType)) {
                    Expression expression = this._left;
                    Type type2 = Type.Real;
                    this._left = new CastExpr(expression, type2);
                    this._right = new CastExpr(this._right, type2);
                } else {
                    Expression expression2 = this._left;
                    Type type3 = Type.String;
                    this._left = new CastExpr(expression2, type3);
                    this._right = new CastExpr(this._right, type3);
                }
            }
        } else if (typeCheck instanceof ReferenceType) {
            this._right = new CastExpr(this._right, Type.Reference);
        } else if (typeCheck2 instanceof ReferenceType) {
            this._left = new CastExpr(this._left, Type.Reference);
        } else {
            boolean z = typeCheck instanceof NodeType;
            if (z && typeCheck2 == (type = Type.String)) {
                this._left = new CastExpr(this._left, type);
            } else {
                Type type4 = Type.String;
                if (typeCheck == type4 && (typeCheck2 instanceof NodeType)) {
                    this._right = new CastExpr(this._right, type4);
                } else if (z && (typeCheck2 instanceof NodeType)) {
                    this._left = new CastExpr(this._left, type4);
                    this._right = new CastExpr(this._right, type4);
                } else if (!z || !(typeCheck2 instanceof NodeSetType)) {
                    if ((typeCheck instanceof NodeSetType) && (typeCheck2 instanceof NodeType)) {
                        swapArguments();
                    } else {
                        if (z) {
                            this._left = new CastExpr(this._left, Type.NodeSet);
                        }
                        if (typeCheck2 instanceof NodeType) {
                            this._right = new CastExpr(this._right, Type.NodeSet);
                        }
                        if (typeCheck.isSimple() || ((typeCheck instanceof ResultTreeType) && (typeCheck2 instanceof NodeSetType))) {
                            swapArguments();
                        }
                        if (this._right.getType() instanceof IntType) {
                            this._right = new CastExpr(this._right, Type.Real);
                        }
                    }
                }
            }
        }
        Type type5 = Type.Boolean;
        this._type = type5;
        return type5;
    }
}
