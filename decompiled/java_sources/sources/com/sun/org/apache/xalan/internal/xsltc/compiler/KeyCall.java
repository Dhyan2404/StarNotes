package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ALOAD;
import com.sun.org.apache.bcel.internal.generic.ASTORE;
import com.sun.org.apache.bcel.internal.generic.BranchHandle;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.GOTO;
import com.sun.org.apache.bcel.internal.generic.IFGT;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.INVOKESPECIAL;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.bcel.internal.generic.StackInstruction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.StringType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class KeyCall extends FunctionCall {
    private Expression _name;
    private QName _resolvedQName;
    private Expression _value;
    private Type _valueType;

    public KeyCall(QName qName, Vector vector) {
        super(qName, vector);
        this._resolvedQName = null;
        int argumentCount = argumentCount();
        if (argumentCount == 1) {
            this._name = null;
            this._value = argument(0);
        } else if (argumentCount != 2) {
            this._value = null;
            this._name = null;
        } else {
            this._name = argument(0);
            this._value = argument(1);
        }
    }

    private LocalVariableGen translateCall(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, Constants.GET_NODE_VALUE, "(I)Ljava/lang/String;");
        int addMethodref = constantPool.addMethodref(Constants.TRANSLET_CLASS, "getKeyIndex", "(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;");
        int addMethodref2 = constantPool.addMethodref(Constants.KEY_INDEX_CLASS, "lookupId", "(Ljava/lang/Object;)V");
        int addMethodref3 = constantPool.addMethodref(Constants.KEY_INDEX_CLASS, "lookupKey", "(Ljava/lang/Object;)V");
        int addMethodref4 = constantPool.addMethodref(Constants.KEY_INDEX_CLASS, "merge", "(Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;)V");
        int addMethodref5 = constantPool.addMethodref(Constants.TRANSLET_CLASS, "createKeyIndex", "()Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;");
        int addMethodref6 = constantPool.addMethodref("com.sun.org.apache.xalan.internal.xsltc.dom.KeyIndex", "setDom", "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V");
        LocalVariableGen addLocalVariable = methodGenerator.addLocalVariable("returnIndex", Util.getJCRefType(Constants.KEY_INDEX_SIG), instructionList.getEnd(), null);
        LocalVariableGen addLocalVariable2 = methodGenerator.addLocalVariable("searchIndex", Util.getJCRefType(Constants.KEY_INDEX_SIG), instructionList.getEnd(), null);
        if (this._valueType == Type.NodeSet) {
            instructionList.append(methodGenerator.loadCurrentNode());
            instructionList.append(methodGenerator.loadIterator());
            this._value.translate(classGenerator, methodGenerator);
            this._value.startIterator(classGenerator, methodGenerator);
            instructionList.append(methodGenerator.storeIterator());
            instructionList.append(classGenerator.loadTranslet());
            instructionList.append(new INVOKEVIRTUAL(addMethodref5));
            StackInstruction stackInstruction = InstructionConstants.DUP;
            instructionList.append(stackInstruction);
            instructionList.append(methodGenerator.loadDOM());
            instructionList.append(new INVOKEVIRTUAL(addMethodref6));
            instructionList.append(new ASTORE(addLocalVariable.getIndex()));
            instructionList.append(classGenerator.loadTranslet());
            Expression expression = this._name;
            if (expression == null) {
                instructionList.append(new PUSH(constantPool, "##id"));
            } else {
                QName qName = this._resolvedQName;
                if (qName != null) {
                    instructionList.append(new PUSH(constantPool, qName.toString()));
                } else {
                    expression.translate(classGenerator, methodGenerator);
                }
            }
            instructionList.append(new INVOKEVIRTUAL(addMethodref));
            instructionList.append(new ASTORE(addLocalVariable2.getIndex()));
            BranchHandle append = instructionList.append((BranchInstruction) new GOTO(null));
            InstructionHandle append2 = instructionList.append(InstructionConstants.NOP);
            instructionList.append(new ALOAD(addLocalVariable.getIndex()));
            instructionList.append(new ALOAD(addLocalVariable2.getIndex()));
            instructionList.append(stackInstruction);
            instructionList.append(methodGenerator.loadDOM());
            instructionList.append(methodGenerator.loadCurrentNode());
            instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 2));
            if (this._name == null) {
                instructionList.append(new INVOKEVIRTUAL(addMethodref2));
            } else {
                instructionList.append(new INVOKEVIRTUAL(addMethodref3));
            }
            instructionList.append(new INVOKEVIRTUAL(addMethodref4));
            append.setTarget(instructionList.append(methodGenerator.loadIterator()));
            instructionList.append(methodGenerator.nextNode());
            instructionList.append(stackInstruction);
            instructionList.append(methodGenerator.storeCurrentNode());
            instructionList.append((BranchInstruction) new IFGT(append2));
            instructionList.append(methodGenerator.storeIterator());
            instructionList.append(methodGenerator.storeCurrentNode());
        } else {
            instructionList.append(classGenerator.loadTranslet());
            Expression expression2 = this._name;
            if (expression2 == null) {
                instructionList.append(new PUSH(constantPool, "##id"));
            } else {
                QName qName2 = this._resolvedQName;
                if (qName2 != null) {
                    instructionList.append(new PUSH(constantPool, qName2.toString()));
                } else {
                    expression2.translate(classGenerator, methodGenerator);
                }
            }
            instructionList.append(new INVOKEVIRTUAL(addMethodref));
            instructionList.append(InstructionConstants.DUP);
            this._value.translate(classGenerator, methodGenerator);
            if (this._name == null) {
                instructionList.append(new INVOKEVIRTUAL(addMethodref2));
            } else {
                instructionList.append(new INVOKEVIRTUAL(addMethodref3));
            }
            instructionList.append(new ASTORE(addLocalVariable.getIndex()));
        }
        return addLocalVariable;
    }

    public void addParentDependency() {
        if (this._resolvedQName == null) {
            return;
        }
        SyntaxTreeNode syntaxTreeNode = this;
        while (syntaxTreeNode != null && !(syntaxTreeNode instanceof TopLevelElement)) {
            syntaxTreeNode = syntaxTreeNode.getParent();
        }
        TopLevelElement topLevelElement = (TopLevelElement) syntaxTreeNode;
        if (topLevelElement != null) {
            topLevelElement.addDependency(getSymbolTable().getKey(this._resolvedQName));
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.FunctionCall, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getNodeHandle", Constants.GET_PARENT_SIG);
        int addMethodref = constantPool.addMethodref(Constants.DUP_FILTERED_ITERATOR, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V");
        LocalVariableGen translateCall = translateCall(classGenerator, methodGenerator);
        instructionList.append(new NEW(constantPool.addClass(Constants.DUP_FILTERED_ITERATOR)));
        instructionList.append(InstructionConstants.DUP);
        instructionList.append(new ALOAD(translateCall.getIndex()));
        instructionList.append(new INVOKESPECIAL(addMethodref));
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.FunctionCall, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        Type type;
        Type typeCheck = super.typeCheck(symbolTable);
        Expression expression = this._name;
        if (expression != null) {
            Type typeCheck2 = expression.typeCheck(symbolTable);
            Expression expression2 = this._name;
            if (expression2 instanceof LiteralExpr) {
                this._resolvedQName = getParser().getQNameIgnoreDefaultNs(((LiteralExpr) expression2).getValue());
            } else if (!(typeCheck2 instanceof StringType)) {
                this._name = new CastExpr(this._name, Type.String);
            }
        }
        Type typeCheck3 = this._value.typeCheck(symbolTable);
        this._valueType = typeCheck3;
        if (typeCheck3 != Type.NodeSet && typeCheck3 != (type = Type.String)) {
            this._value = new CastExpr(this._value, type);
        }
        addParentDependency();
        return typeCheck;
    }
}
