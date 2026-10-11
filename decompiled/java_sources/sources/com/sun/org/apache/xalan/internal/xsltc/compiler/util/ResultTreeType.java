package com.sun.org.apache.xalan.internal.xsltc.compiler.util;

import com.sun.org.apache.bcel.internal.generic.ALOAD;
import com.sun.org.apache.bcel.internal.generic.ASTORE;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.CHECKCAST;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.GETFIELD;
import com.sun.org.apache.bcel.internal.generic.IFEQ;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.INVOKESPECIAL;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.Instruction;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.bcel.internal.generic.StackInstruction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sun.org.apache.xalan.internal.xsltc.compiler.FlowList;
import com.sun.org.apache.xpath.internal.compiler.Keywords;

/* loaded from: classes10.dex */
public final class ResultTreeType extends Type {
    private final String _methodName;

    public ResultTreeType() {
        this._methodName = null;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public Instruction LOAD(int i) {
        return new ALOAD(i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public Instruction STORE(int i) {
        return new ASTORE(i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public String getClassName() {
        return Constants.DOM_INTF;
    }

    public String getMethodName() {
        return this._methodName;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public boolean identicalTo(Type type) {
        return type instanceof ResultTreeType;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public boolean implementedAsMethod() {
        return this._methodName != null;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public com.sun.org.apache.bcel.internal.generic.Type toJCType() {
        return Util.getJCRefType(toSignature());
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public String toSignature() {
        return Constants.DOM_INTF_SIG;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public String toString() {
        return "result-tree";
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public void translateBox(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        translateTo(classGenerator, methodGenerator, Type.Reference);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public void translateTo(ClassGenerator classGenerator, MethodGenerator methodGenerator, Type type) {
        if (type == Type.String) {
            translateTo(classGenerator, methodGenerator, (StringType) type);
            return;
        }
        if (type == Type.Boolean) {
            translateTo(classGenerator, methodGenerator, (BooleanType) type);
            return;
        }
        if (type == Type.Real) {
            translateTo(classGenerator, methodGenerator, (RealType) type);
            return;
        }
        if (type == Type.NodeSet) {
            translateTo(classGenerator, methodGenerator, (NodeSetType) type);
            return;
        }
        if (type == Type.Reference) {
            translateTo(classGenerator, methodGenerator, (ReferenceType) type);
        } else if (type == Type.Object) {
            translateTo(classGenerator, methodGenerator, (ObjectType) type);
        } else {
            classGenerator.getParser().reportError(2, new ErrorMsg("DATA_CONVERSION_ERR", toString(), type.toString()));
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public FlowList translateToDesynthesized(ClassGenerator classGenerator, MethodGenerator methodGenerator, BooleanType booleanType) {
        InstructionList instructionList = methodGenerator.getInstructionList();
        translateTo(classGenerator, methodGenerator, Type.Boolean);
        return new FlowList(instructionList.append((BranchInstruction) new IFEQ(null)));
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public void translateUnBox(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        methodGenerator.getInstructionList().append(InstructionConstants.NOP);
    }

    public ResultTreeType(String str) {
        this._methodName = str;
    }

    public void translateTo(ClassGenerator classGenerator, MethodGenerator methodGenerator, BooleanType booleanType) {
        classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        instructionList.append(InstructionConstants.POP);
        instructionList.append(InstructionConstants.ICONST_1);
    }

    public void translateTo(ClassGenerator classGenerator, MethodGenerator methodGenerator, StringType stringType) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        if (this._methodName == null) {
            instructionList.append(new INVOKEINTERFACE(constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getStringValue", "()Ljava/lang/String;"), 1));
            return;
        }
        String className = classGenerator.getClassName();
        methodGenerator.getLocalIndex(Keywords.FUNC_CURRENT_STRING);
        instructionList.append(classGenerator.loadTranslet());
        if (classGenerator.isExternal()) {
            instructionList.append(new CHECKCAST(constantPool.addClass(className)));
        }
        StackInstruction stackInstruction = InstructionConstants.DUP;
        instructionList.append(stackInstruction);
        instructionList.append(new GETFIELD(constantPool.addFieldref(className, Constants.DOM_FIELD, Constants.DOM_INTF_SIG)));
        int addMethodref = constantPool.addMethodref(Constants.STRING_VALUE_HANDLER, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V");
        instructionList.append(new NEW(constantPool.addClass(Constants.STRING_VALUE_HANDLER)));
        instructionList.append(stackInstruction);
        instructionList.append(stackInstruction);
        instructionList.append(new INVOKESPECIAL(addMethodref));
        LocalVariableGen addLocalVariable = methodGenerator.addLocalVariable("rt_to_string_handler", Util.getJCRefType(Constants.STRING_VALUE_HANDLER_SIG), null, null);
        instructionList.append(new ASTORE(addLocalVariable.getIndex()));
        instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(className, this._methodName, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V")));
        instructionList.append(new ALOAD(addLocalVariable.getIndex()));
        instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(Constants.STRING_VALUE_HANDLER, "getValue", "()Ljava/lang/String;")));
    }

    public void translateTo(ClassGenerator classGenerator, MethodGenerator methodGenerator, RealType realType) {
        Type type = Type.String;
        translateTo(classGenerator, methodGenerator, type);
        type.translateTo(classGenerator, methodGenerator, Type.Real);
    }

    public void translateTo(ClassGenerator classGenerator, MethodGenerator methodGenerator, ReferenceType referenceType) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        if (this._methodName == null) {
            instructionList.append(InstructionConstants.NOP);
            return;
        }
        String className = classGenerator.getClassName();
        methodGenerator.getLocalIndex(Keywords.FUNC_CURRENT_STRING);
        instructionList.append(classGenerator.loadTranslet());
        if (classGenerator.isExternal()) {
            instructionList.append(new CHECKCAST(constantPool.addClass(className)));
        }
        instructionList.append(methodGenerator.loadDOM());
        instructionList.append(methodGenerator.loadDOM());
        int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getResultTreeFrag", "(IZ)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;");
        instructionList.append(new PUSH(constantPool, 32));
        instructionList.append(new PUSH(constantPool, false));
        instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 3));
        StackInstruction stackInstruction = InstructionConstants.DUP;
        instructionList.append(stackInstruction);
        LocalVariableGen addLocalVariable = methodGenerator.addLocalVariable("rt_to_reference_dom", Util.getJCRefType(Constants.DOM_INTF_SIG), null, null);
        instructionList.append(new CHECKCAST(constantPool.addClass(Constants.DOM_INTF_SIG)));
        instructionList.append(new ASTORE(addLocalVariable.getIndex()));
        instructionList.append(new INVOKEINTERFACE(constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getOutputDomBuilder", "()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;"), 1));
        instructionList.append(stackInstruction);
        instructionList.append(stackInstruction);
        LocalVariableGen addLocalVariable2 = methodGenerator.addLocalVariable("rt_to_reference_handler", Util.getJCRefType("Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;"), null, null);
        instructionList.append(new ASTORE(addLocalVariable2.getIndex()));
        instructionList.append(new INVOKEINTERFACE(constantPool.addInterfaceMethodref(Constants.TRANSLET_OUTPUT_INTERFACE, "startDocument", "()V"), 1));
        instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(className, this._methodName, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V")));
        instructionList.append(new ALOAD(addLocalVariable2.getIndex()));
        instructionList.append(new INVOKEINTERFACE(constantPool.addInterfaceMethodref(Constants.TRANSLET_OUTPUT_INTERFACE, "endDocument", "()V"), 1));
        instructionList.append(new ALOAD(addLocalVariable.getIndex()));
    }

    public void translateTo(ClassGenerator classGenerator, MethodGenerator methodGenerator, NodeSetType nodeSetType) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        StackInstruction stackInstruction = InstructionConstants.DUP;
        instructionList.append(stackInstruction);
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(new GETFIELD(constantPool.addFieldref(Constants.TRANSLET_CLASS, Constants.NAMES_INDEX, "[Ljava/lang/String;")));
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(new GETFIELD(constantPool.addFieldref(Constants.TRANSLET_CLASS, Constants.URIS_INDEX, "[Ljava/lang/String;")));
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(new GETFIELD(constantPool.addFieldref(Constants.TRANSLET_CLASS, Constants.TYPES_INDEX, Constants.TYPES_INDEX_SIG)));
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(new GETFIELD(constantPool.addFieldref(Constants.TRANSLET_CLASS, Constants.NAMESPACE_INDEX, "[Ljava/lang/String;")));
        instructionList.append(new INVOKEINTERFACE(constantPool.addInterfaceMethodref(Constants.DOM_INTF, "setupMapping", "([Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V"), 5));
        instructionList.append(stackInstruction);
        instructionList.append(new INVOKEINTERFACE(constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getIterator", "()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), 1));
    }

    public void translateTo(ClassGenerator classGenerator, MethodGenerator methodGenerator, ObjectType objectType) {
        methodGenerator.getInstructionList().append(InstructionConstants.NOP);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
    public void translateTo(ClassGenerator classGenerator, MethodGenerator methodGenerator, Class cls) {
        String name = cls.getName();
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        if (name.equals("org.w3c.dom.Node")) {
            translateTo(classGenerator, methodGenerator, Type.NodeSet);
            instructionList.append(new INVOKEINTERFACE(constantPool.addInterfaceMethodref(Constants.DOM_INTF, Constants.MAKE_NODE, Constants.MAKE_NODE_SIG2), 2));
            return;
        }
        if (name.equals("org.w3c.dom.NodeList")) {
            translateTo(classGenerator, methodGenerator, Type.NodeSet);
            instructionList.append(new INVOKEINTERFACE(constantPool.addInterfaceMethodref(Constants.DOM_INTF, Constants.MAKE_NODE_LIST, Constants.MAKE_NODE_LIST_SIG2), 2));
        } else if (name.equals(Constants.OBJECT_CLASS)) {
            instructionList.append(InstructionConstants.NOP);
        } else if (name.equals("java.lang.String")) {
            translateTo(classGenerator, methodGenerator, Type.String);
        } else {
            classGenerator.getParser().reportError(2, new ErrorMsg("DATA_CONVERSION_ERR", toString(), name));
        }
    }
}
