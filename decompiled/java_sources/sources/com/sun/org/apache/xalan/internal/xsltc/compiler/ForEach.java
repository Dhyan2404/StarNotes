package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.BranchHandle;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.GOTO;
import com.sun.org.apache.bcel.internal.generic.IFGT;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.NodeSetType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.NodeType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ReferenceType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ResultTreeType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;
import java.util.Enumeration;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class ForEach extends Instruction {
    private Expression _select;
    private Type _type;

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void display(int i) {
        indent(i);
        Util.println("ForEach");
        int i2 = i + 4;
        indent(i2);
        Util.println("select " + this._select.toString());
        displayContents(i2);
    }

    public void initializeVariables(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        int elementCount = elementCount();
        for (int i = 0; i < elementCount; i++) {
            Object elementAt = getContents().elementAt(i);
            if (elementAt instanceof Variable) {
                ((Variable) elementAt).initialize(classGenerator, methodGenerator);
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void parseContents(Parser parser) {
        this._select = parser.parseExpression(this, "select", null);
        parseChildren(parser);
        if (this._select.isDummy()) {
            reportError(this, parser, ErrorMsg.REQUIRED_ATTR_ERR, "select");
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        instructionList.append(methodGenerator.loadCurrentNode());
        instructionList.append(methodGenerator.loadIterator());
        Vector vector = new Vector();
        Enumeration elements = elements();
        while (elements.hasMoreElements()) {
            Object nextElement = elements.nextElement();
            if (nextElement instanceof Sort) {
                vector.addElement(nextElement);
            }
        }
        Type type = this._type;
        if (type == null || !(type instanceof ResultTreeType)) {
            if (vector.size() > 0) {
                Sort.translateSortIterator(classGenerator, methodGenerator, this._select, vector);
            } else {
                this._select.translate(classGenerator, methodGenerator);
            }
            if (!(this._type instanceof ReferenceType)) {
                instructionList.append(methodGenerator.loadContextNode());
                instructionList.append(methodGenerator.setStartNode());
            }
        } else {
            instructionList.append(methodGenerator.loadDOM());
            if (vector.size() > 0) {
                getParser().reportError(4, new ErrorMsg(ErrorMsg.RESULT_TREE_SORT_ERR, (SyntaxTreeNode) this));
            }
            this._select.translate(classGenerator, methodGenerator);
            this._type.translateTo(classGenerator, methodGenerator, Type.NodeSet);
            instructionList.append(InstructionConstants.SWAP);
            instructionList.append(methodGenerator.storeDOM());
        }
        instructionList.append(methodGenerator.storeIterator());
        initializeVariables(classGenerator, methodGenerator);
        BranchHandle append = instructionList.append((BranchInstruction) new GOTO(null));
        InstructionHandle append2 = instructionList.append(InstructionConstants.NOP);
        translateContents(classGenerator, methodGenerator);
        append.setTarget(instructionList.append(methodGenerator.loadIterator()));
        instructionList.append(methodGenerator.nextNode());
        instructionList.append(InstructionConstants.DUP);
        instructionList.append(methodGenerator.storeCurrentNode());
        instructionList.append((BranchInstruction) new IFGT(append2));
        Type type2 = this._type;
        if (type2 != null && (type2 instanceof ResultTreeType)) {
            instructionList.append(methodGenerator.storeDOM());
        }
        instructionList.append(methodGenerator.storeIterator());
        instructionList.append(methodGenerator.storeCurrentNode());
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        Type typeCheck = this._select.typeCheck(symbolTable);
        this._type = typeCheck;
        if ((typeCheck instanceof ReferenceType) || (typeCheck instanceof NodeType)) {
            this._select = new CastExpr(this._select, Type.NodeSet);
            typeCheckContents(symbolTable);
            return Type.Void;
        }
        if (!(typeCheck instanceof NodeSetType) && !(typeCheck instanceof ResultTreeType)) {
            throw new TypeCheckError(this);
        }
        typeCheckContents(symbolTable);
        return Type.Void;
    }
}
