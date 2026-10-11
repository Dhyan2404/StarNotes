package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.IF_ICMPNE;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.SIPUSH;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.BooleanType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MultiHashtable;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.NodeType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ResultTreeType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class CastExpr extends Expression {
    private static MultiHashtable InternalTypeMap;
    private final Expression _left;
    private boolean _typeTest;

    static {
        MultiHashtable multiHashtable = new MultiHashtable();
        InternalTypeMap = multiHashtable;
        Type type = Type.Boolean;
        multiHashtable.put(type, type);
        MultiHashtable multiHashtable2 = InternalTypeMap;
        Type type2 = Type.Real;
        multiHashtable2.put(type, type2);
        MultiHashtable multiHashtable3 = InternalTypeMap;
        Type type3 = Type.String;
        multiHashtable3.put(type, type3);
        MultiHashtable multiHashtable4 = InternalTypeMap;
        Type type4 = Type.Reference;
        multiHashtable4.put(type, type4);
        MultiHashtable multiHashtable5 = InternalTypeMap;
        Type type5 = Type.Object;
        multiHashtable5.put(type, type5);
        InternalTypeMap.put(type2, type2);
        MultiHashtable multiHashtable6 = InternalTypeMap;
        Type type6 = Type.Int;
        multiHashtable6.put(type2, type6);
        InternalTypeMap.put(type2, type);
        InternalTypeMap.put(type2, type3);
        InternalTypeMap.put(type2, type4);
        InternalTypeMap.put(type2, type5);
        InternalTypeMap.put(type6, type6);
        InternalTypeMap.put(type6, type2);
        InternalTypeMap.put(type6, type);
        InternalTypeMap.put(type6, type3);
        InternalTypeMap.put(type6, type4);
        InternalTypeMap.put(type6, type5);
        InternalTypeMap.put(type3, type3);
        InternalTypeMap.put(type3, type);
        InternalTypeMap.put(type3, type2);
        InternalTypeMap.put(type3, type4);
        InternalTypeMap.put(type3, type5);
        MultiHashtable multiHashtable7 = InternalTypeMap;
        Type type7 = Type.NodeSet;
        multiHashtable7.put(type7, type7);
        InternalTypeMap.put(type7, type);
        InternalTypeMap.put(type7, type2);
        InternalTypeMap.put(type7, type3);
        MultiHashtable multiHashtable8 = InternalTypeMap;
        Type type8 = Type.Node;
        multiHashtable8.put(type7, type8);
        InternalTypeMap.put(type7, type4);
        InternalTypeMap.put(type7, type5);
        InternalTypeMap.put(type8, type8);
        InternalTypeMap.put(type8, type);
        InternalTypeMap.put(type8, type2);
        InternalTypeMap.put(type8, type3);
        InternalTypeMap.put(type8, type7);
        InternalTypeMap.put(type8, type4);
        InternalTypeMap.put(type8, type5);
        MultiHashtable multiHashtable9 = InternalTypeMap;
        Type type9 = Type.ResultTree;
        multiHashtable9.put(type9, type9);
        InternalTypeMap.put(type9, type);
        InternalTypeMap.put(type9, type2);
        InternalTypeMap.put(type9, type3);
        InternalTypeMap.put(type9, type7);
        InternalTypeMap.put(type9, type4);
        InternalTypeMap.put(type9, type5);
        InternalTypeMap.put(type4, type4);
        InternalTypeMap.put(type4, type);
        InternalTypeMap.put(type4, type6);
        InternalTypeMap.put(type4, type2);
        InternalTypeMap.put(type4, type3);
        InternalTypeMap.put(type4, type8);
        InternalTypeMap.put(type4, type7);
        InternalTypeMap.put(type4, type9);
        InternalTypeMap.put(type4, type5);
        InternalTypeMap.put(type5, type3);
        InternalTypeMap.put(Type.Void, type3);
    }

    public CastExpr(Expression expression, Type type) throws TypeCheckError {
        this._typeTest = false;
        this._left = expression;
        this._type = type;
        if ((expression instanceof Step) && type == Type.Boolean) {
            Step step = (Step) expression;
            if (step.getAxis() == 13 && step.getNodeType() != -1) {
                this._typeTest = true;
            }
        }
        setParser(expression.getParser());
        setParent(expression.getParent());
        expression.setParent(this);
        typeCheck(expression.getParser().getSymbolTable());
    }

    public Expression getExpr() {
        return this._left;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public boolean hasLastCall() {
        return this._left.hasLastCall();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public boolean hasPositionCall() {
        return this._left.hasPositionCall();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public String toString() {
        return "cast(" + this._left + ", " + this._type + MotionUtils.f31762d;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        Type type = this._left.getType();
        this._left.translate(classGenerator, methodGenerator);
        if (this._type.identicalTo(type)) {
            return;
        }
        this._left.startIterator(classGenerator, methodGenerator);
        type.translateTo(classGenerator, methodGenerator, this._type);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public void translateDesynthesized(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        Type type = this._left.getType();
        if (this._typeTest) {
            ConstantPoolGen constantPool = classGenerator.getConstantPool();
            InstructionList instructionList = methodGenerator.getInstructionList();
            int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getExpandedTypeID", Constants.GET_PARENT_SIG);
            instructionList.append(new SIPUSH((short) ((Step) this._left).getNodeType()));
            instructionList.append(methodGenerator.loadDOM());
            instructionList.append(methodGenerator.loadContextNode());
            instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 2));
            this._falseList.add(instructionList.append((BranchInstruction) new IF_ICMPNE(null)));
            return;
        }
        this._left.translate(classGenerator, methodGenerator);
        if (this._type != type) {
            this._left.startIterator(classGenerator, methodGenerator);
            Type type2 = this._type;
            if (!(type2 instanceof BooleanType)) {
                type.translateTo(classGenerator, methodGenerator, type2);
                return;
            }
            FlowList translateToDesynthesized = type.translateToDesynthesized(classGenerator, methodGenerator, type2);
            if (translateToDesynthesized != null) {
                this._falseList.append(translateToDesynthesized);
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        Type type = this._left.getType();
        if (type == null) {
            type = this._left.typeCheck(symbolTable);
        }
        if (type instanceof NodeType) {
            type = Type.Node;
        } else if (type instanceof ResultTreeType) {
            type = Type.ResultTree;
        }
        if (InternalTypeMap.maps(type, this._type) != null) {
            return this._type;
        }
        throw new TypeCheckError(new ErrorMsg("DATA_CONVERSION_ERR", type.toString(), this._type.toString()));
    }
}
