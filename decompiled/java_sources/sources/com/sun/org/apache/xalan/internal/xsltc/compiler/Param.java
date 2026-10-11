package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.bcel.internal.classfile.Field;
import com.sun.org.apache.bcel.internal.generic.BranchHandle;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.CHECKCAST;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.IFNONNULL;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.bcel.internal.generic.PUTFIELD;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ObjectType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ReferenceType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.runtime.BasisLibrary;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class Param extends VariableBase {
    private boolean _isInSimpleNamedTemplate = false;

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.VariableBase, com.sun.org.apache.xalan.internal.xsltc.compiler.TopLevelElement, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void display(int i) {
        indent(i);
        System.out.println("param " + this._name);
        if (this._select != null) {
            indent(i + 4);
            System.out.println("select " + this._select.toString());
        }
        displayContents(i + 4);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.VariableBase, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void parseContents(Parser parser) {
        super.parseContents(parser);
        SyntaxTreeNode parent = getParent();
        if (!(parent instanceof Stylesheet)) {
            if (parent instanceof Template) {
                Template template = (Template) parent;
                this._isLocal = true;
                template.addParameter(this);
                if (template.isSimpleNamedTemplate()) {
                    this._isInSimpleNamedTemplate = true;
                    return;
                }
                return;
            }
            return;
        }
        this._isLocal = false;
        Param lookupParam = parser.getSymbolTable().lookupParam(this._name);
        if (lookupParam != null) {
            int importPrecedence = getImportPrecedence();
            int importPrecedence2 = lookupParam.getImportPrecedence();
            if (importPrecedence == importPrecedence2) {
                reportError(this, parser, ErrorMsg.VARIABLE_REDEF_ERR, this._name.toString());
            } else {
                if (importPrecedence2 > importPrecedence) {
                    this._ignore = true;
                    return;
                }
                lookupParam.disable();
            }
        }
        ((Stylesheet) parent).addParam(this);
        parser.getSymbolTable().addParam(this);
    }

    public com.sun.org.apache.bcel.internal.generic.Instruction setLoadInstruction(com.sun.org.apache.bcel.internal.generic.Instruction instruction) {
        com.sun.org.apache.bcel.internal.generic.Instruction instruction2 = this._loadInstruction;
        this._loadInstruction = instruction;
        return instruction2;
    }

    public com.sun.org.apache.bcel.internal.generic.Instruction setStoreInstruction(com.sun.org.apache.bcel.internal.generic.Instruction instruction) {
        com.sun.org.apache.bcel.internal.generic.Instruction instruction2 = this._storeInstruction;
        this._storeInstruction = instruction;
        return instruction2;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.VariableBase
    public String toString() {
        return "param(" + this._name + MotionUtils.f31762d;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.TopLevelElement, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        if (this._ignore) {
            return;
        }
        this._ignore = true;
        String mapQNameToJavaName = BasisLibrary.mapQNameToJavaName(this._name.toString());
        String signature = this._type.toSignature();
        String className = this._type.getClassName();
        if (!isLocal()) {
            if (classGenerator.containsField(mapQNameToJavaName) == null) {
                classGenerator.addField(new Field(1, constantPool.addUtf8(mapQNameToJavaName), constantPool.addUtf8(signature), null, constantPool.getConstantPool()));
                instructionList.append(classGenerator.loadTranslet());
                instructionList.append(InstructionConstants.DUP);
                instructionList.append(new PUSH(constantPool, mapQNameToJavaName));
                translateValue(classGenerator, methodGenerator);
                instructionList.append(new PUSH(constantPool, true));
                instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(Constants.TRANSLET_CLASS, Constants.ADD_PARAMETER, Constants.ADD_PARAMETER_SIG)));
                this._type.translateUnBox(classGenerator, methodGenerator);
                if (className != "") {
                    instructionList.append(new CHECKCAST(constantPool.addClass(className)));
                }
                instructionList.append(new PUTFIELD(constantPool.addFieldref(classGenerator.getClassName(), mapQNameToJavaName, signature)));
                return;
            }
            return;
        }
        if (this._isInSimpleNamedTemplate) {
            instructionList.append(loadInstruction());
            BranchHandle append = instructionList.append((BranchInstruction) new IFNONNULL(null));
            translateValue(classGenerator, methodGenerator);
            instructionList.append(storeInstruction());
            append.setTarget(instructionList.append(InstructionConstants.NOP));
            return;
        }
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(new PUSH(constantPool, mapQNameToJavaName));
        translateValue(classGenerator, methodGenerator);
        instructionList.append(new PUSH(constantPool, true));
        instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(Constants.TRANSLET_CLASS, Constants.ADD_PARAMETER, Constants.ADD_PARAMETER_SIG)));
        if (className != "") {
            instructionList.append(new CHECKCAST(constantPool.addClass(className)));
        }
        this._type.translateUnBox(classGenerator, methodGenerator);
        if (this._refs.isEmpty()) {
            instructionList.append(this._type.POP());
            this._local = null;
        } else {
            LocalVariableGen addLocalVariable2 = methodGenerator.addLocalVariable2(mapQNameToJavaName, this._type.toJCType(), instructionList.getEnd());
            this._local = addLocalVariable2;
            instructionList.append(this._type.STORE(addLocalVariable2.getIndex()));
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.TopLevelElement, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        Expression expression = this._select;
        if (expression != null) {
            Type typeCheck = expression.typeCheck(symbolTable);
            this._type = typeCheck;
            if (!(typeCheck instanceof ReferenceType) && !(typeCheck instanceof ObjectType)) {
                this._select = new CastExpr(this._select, Type.Reference);
            }
        } else if (hasContents()) {
            typeCheckContents(symbolTable);
        }
        this._type = Type.Reference;
        return Type.Void;
    }
}
