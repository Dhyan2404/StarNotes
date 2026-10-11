package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.classfile.Field;
import com.sun.org.apache.bcel.internal.classfile.Method;
import com.sun.org.apache.bcel.internal.generic.ALOAD;
import com.sun.org.apache.bcel.internal.generic.ANEWARRAY;
import com.sun.org.apache.bcel.internal.generic.ASTORE;
import com.sun.org.apache.bcel.internal.generic.BasicType;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.CHECKCAST;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.GETFIELD;
import com.sun.org.apache.bcel.internal.generic.ILOAD;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.INVOKESPECIAL;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
import com.sun.org.apache.bcel.internal.generic.LocalVariableInstruction;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.bcel.internal.generic.NOP;
import com.sun.org.apache.bcel.internal.generic.ObjectType;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.bcel.internal.generic.PUTFIELD;
import com.sun.org.apache.bcel.internal.generic.TABLESWITCH;
import com.sun.org.apache.bcel.internal.generic.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.CompareGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.IntType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.NodeSortRecordFactGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.NodeSortRecordGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.StringType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.ArrayList;
import java.util.Vector;

/* loaded from: classes10.dex */
final class Sort extends Instruction implements Closure {
    private AttributeValue _caseOrder;
    private AttributeValue _dataType;
    private String _lang;
    private AttributeValue _order;
    private Expression _select;
    private String _data = null;
    private String _className = null;
    private ArrayList _closureVars = null;
    private boolean _needsSortRecordFactory = false;

    private static Method compileExtract(Vector vector, NodeSortRecordGenerator nodeSortRecordGenerator, ConstantPoolGen constantPoolGen, String str) {
        InstructionHandle instructionHandle;
        InstructionList instructionList = new InstructionList();
        ObjectType objectType = Type.STRING;
        BasicType basicType = Type.INT;
        CompareGenerator compareGenerator = new CompareGenerator(17, objectType, new Type[]{Util.getJCRefType(Constants.DOM_INTF_SIG), basicType, basicType, Util.getJCRefType("Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;"), basicType}, new String[]{Constants.DOM_PNAME, Keywords.FUNC_CURRENT_STRING, "level", "translet", Keywords.FUNC_LAST_STRING}, "extractValueFromDOM", str, instructionList, constantPoolGen);
        int size = vector.size();
        int[] iArr = new int[size];
        InstructionHandle[] instructionHandleArr = new InstructionHandle[size];
        if (size > 1) {
            instructionList.append(new ILOAD(compareGenerator.getLocalIndex("level")));
            instructionHandle = instructionList.append(new NOP());
        } else {
            instructionHandle = null;
        }
        for (int i = 0; i < size; i++) {
            iArr[i] = i;
            Sort sort = (Sort) vector.elementAt(i);
            instructionHandleArr[i] = instructionList.append(InstructionConstants.NOP);
            sort.translateSelect(nodeSortRecordGenerator, compareGenerator);
            instructionList.append(InstructionConstants.ARETURN);
        }
        if (size > 1) {
            instructionList.insert(instructionHandle, (BranchInstruction) new TABLESWITCH(iArr, instructionHandleArr, instructionList.append(new PUSH(constantPoolGen, ""))));
            instructionList.append(InstructionConstants.ARETURN);
        }
        compareGenerator.stripAttributes(true);
        compareGenerator.setMaxLocals();
        compareGenerator.setMaxStack();
        compareGenerator.removeNOPs();
        return compareGenerator.getMethod();
    }

    private static Method compileInit(Vector vector, NodeSortRecordGenerator nodeSortRecordGenerator, ConstantPoolGen constantPoolGen, String str) {
        InstructionList instructionList = new InstructionList();
        MethodGenerator methodGenerator = new MethodGenerator(1, Type.VOID, null, null, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, str, instructionList, constantPoolGen);
        instructionList.append(InstructionConstants.ALOAD_0);
        instructionList.append(new INVOKESPECIAL(constantPoolGen.addMethodref(Constants.NODE_SORT_RECORD, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V")));
        instructionList.append(InstructionConstants.RETURN);
        methodGenerator.stripAttributes(true);
        methodGenerator.setMaxLocals();
        methodGenerator.setMaxStack();
        return methodGenerator.getMethod();
    }

    private static String compileSortRecord(Vector vector, ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        XSLTC xsltc = ((Sort) vector.firstElement()).getXSLTC();
        String helperClassName = xsltc.getHelperClassName();
        int i = 0;
        NodeSortRecordGenerator nodeSortRecordGenerator = new NodeSortRecordGenerator(helperClassName, Constants.NODE_SORT_RECORD, "sort$0.java", 49, new String[0], classGenerator.getStylesheet());
        ConstantPoolGen constantPool = nodeSortRecordGenerator.getConstantPool();
        int size = vector.size();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < size) {
            Sort sort = (Sort) vector.get(i2);
            sort.setInnerClassName(helperClassName);
            ArrayList arrayList2 = sort._closureVars;
            int size2 = arrayList2 == null ? i : arrayList2.size();
            for (int i3 = i; i3 < size2; i3++) {
                VariableRefBase variableRefBase = (VariableRefBase) sort._closureVars.get(i3);
                if (!arrayList.contains(variableRefBase)) {
                    VariableBase variable = variableRefBase.getVariable();
                    nodeSortRecordGenerator.addField(new Field(1, constantPool.addUtf8(variable.getEscapedName()), constantPool.addUtf8(variable.getType().toSignature()), null, constantPool.getConstantPool()));
                    arrayList.add(variableRefBase);
                }
            }
            i2++;
            i = 0;
        }
        Method compileInit = compileInit(vector, nodeSortRecordGenerator, constantPool, helperClassName);
        Method compileExtract = compileExtract(vector, nodeSortRecordGenerator, constantPool, helperClassName);
        nodeSortRecordGenerator.addMethod(compileInit);
        nodeSortRecordGenerator.addMethod(compileExtract);
        xsltc.dumpClass(nodeSortRecordGenerator.getJavaClass());
        return helperClassName;
    }

    public static void compileSortRecordFactory(Vector vector, ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        String compileSortRecord = compileSortRecord(vector, classGenerator, methodGenerator);
        int size = vector.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            z |= ((Sort) vector.elementAt(i))._needsSortRecordFactory;
        }
        String compileSortRecordFactory = z ? compileSortRecordFactory(vector, classGenerator, methodGenerator, compileSortRecord) : Constants.NODE_SORT_FACTORY;
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        LocalVariableGen addLocalVariable = methodGenerator.addLocalVariable("sort_order_tmp", Util.getJCRefType("[Ljava/lang/String;"), instructionList.getEnd(), null);
        instructionList.append(new PUSH(constantPool, size));
        instructionList.append(new ANEWARRAY(constantPool.addClass("java.lang.String")));
        for (int i2 = 0; i2 < size; i2++) {
            Sort sort = (Sort) vector.elementAt(i2);
            instructionList.append(InstructionConstants.DUP);
            instructionList.append(new PUSH(constantPool, i2));
            sort.translateSortOrder(classGenerator, methodGenerator);
            instructionList.append(InstructionConstants.AASTORE);
        }
        instructionList.append(new ASTORE(addLocalVariable.getIndex()));
        LocalVariableGen addLocalVariable2 = methodGenerator.addLocalVariable("sort_type_tmp", Util.getJCRefType("[Ljava/lang/String;"), instructionList.getEnd(), null);
        instructionList.append(new PUSH(constantPool, size));
        instructionList.append(new ANEWARRAY(constantPool.addClass("java.lang.String")));
        for (int i3 = 0; i3 < size; i3++) {
            Sort sort2 = (Sort) vector.elementAt(i3);
            instructionList.append(InstructionConstants.DUP);
            instructionList.append(new PUSH(constantPool, i3));
            sort2.translateSortType(classGenerator, methodGenerator);
            instructionList.append(InstructionConstants.AASTORE);
        }
        instructionList.append(new ASTORE(addLocalVariable2.getIndex()));
        LocalVariableGen addLocalVariable3 = methodGenerator.addLocalVariable("sort_lang_tmp", Util.getJCRefType("[Ljava/lang/String;"), instructionList.getEnd(), null);
        instructionList.append(new PUSH(constantPool, size));
        instructionList.append(new ANEWARRAY(constantPool.addClass("java.lang.String")));
        for (int i4 = 0; i4 < size; i4++) {
            Sort sort3 = (Sort) vector.elementAt(i4);
            instructionList.append(InstructionConstants.DUP);
            instructionList.append(new PUSH(constantPool, i4));
            sort3.translateLang(classGenerator, methodGenerator);
            instructionList.append(InstructionConstants.AASTORE);
        }
        instructionList.append(new ASTORE(addLocalVariable3.getIndex()));
        LocalVariableGen addLocalVariable4 = methodGenerator.addLocalVariable("sort_case_order_tmp", Util.getJCRefType("[Ljava/lang/String;"), instructionList.getEnd(), null);
        instructionList.append(new PUSH(constantPool, size));
        instructionList.append(new ANEWARRAY(constantPool.addClass("java.lang.String")));
        for (int i5 = 0; i5 < size; i5++) {
            Sort sort4 = (Sort) vector.elementAt(i5);
            instructionList.append(InstructionConstants.DUP);
            instructionList.append(new PUSH(constantPool, i5));
            sort4.translateCaseOrder(classGenerator, methodGenerator);
            instructionList.append(InstructionConstants.AASTORE);
        }
        instructionList.append(new ASTORE(addLocalVariable4.getIndex()));
        instructionList.append(new NEW(constantPool.addClass(compileSortRecordFactory)));
        instructionList.append(InstructionConstants.DUP);
        instructionList.append(methodGenerator.loadDOM());
        instructionList.append(new PUSH(constantPool, compileSortRecord));
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(new ALOAD(addLocalVariable.getIndex()));
        instructionList.append(new ALOAD(addLocalVariable2.getIndex()));
        instructionList.append(new ALOAD(addLocalVariable3.getIndex()));
        instructionList.append(new ALOAD(addLocalVariable4.getIndex()));
        instructionList.append(new INVOKESPECIAL(constantPool.addMethodref(compileSortRecordFactory, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/Translet;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V")));
        ArrayList arrayList = new ArrayList();
        for (int i6 = 0; i6 < size; i6++) {
            Sort sort5 = (Sort) vector.get(i6);
            ArrayList arrayList2 = sort5._closureVars;
            int size2 = arrayList2 == null ? 0 : arrayList2.size();
            for (int i7 = 0; i7 < size2; i7++) {
                VariableRefBase variableRefBase = (VariableRefBase) sort5._closureVars.get(i7);
                if (!arrayList.contains(variableRefBase)) {
                    VariableBase variable = variableRefBase.getVariable();
                    instructionList.append(InstructionConstants.DUP);
                    instructionList.append(variable.loadInstruction());
                    instructionList.append(new PUTFIELD(constantPool.addFieldref(compileSortRecordFactory, variable.getEscapedName(), variable.getType().toSignature())));
                    arrayList.add(variableRefBase);
                }
            }
        }
    }

    private void setInnerClassName(String str) {
        this._className = str;
    }

    public static void translateSortIterator(ClassGenerator classGenerator, MethodGenerator methodGenerator, Expression expression, Vector vector) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        int addMethodref = constantPool.addMethodref(Constants.SORT_ITERATOR, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;)V");
        LocalVariableGen addLocalVariable = methodGenerator.addLocalVariable("sort_tmp1", Util.getJCRefType("Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), instructionList.getEnd(), null);
        LocalVariableGen addLocalVariable2 = methodGenerator.addLocalVariable("sort_tmp2", Util.getJCRefType(Constants.NODE_SORT_FACTORY_SIG), instructionList.getEnd(), null);
        if (expression == null) {
            int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getAxisIterator", "(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;");
            instructionList.append(methodGenerator.loadDOM());
            instructionList.append(new PUSH(constantPool, 3));
            instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 2));
        } else {
            expression.translate(classGenerator, methodGenerator);
        }
        instructionList.append(new ASTORE(addLocalVariable.getIndex()));
        compileSortRecordFactory(vector, classGenerator, methodGenerator);
        instructionList.append(new ASTORE(addLocalVariable2.getIndex()));
        instructionList.append(new NEW(constantPool.addClass(Constants.SORT_ITERATOR)));
        instructionList.append(InstructionConstants.DUP);
        instructionList.append(new ALOAD(addLocalVariable.getIndex()));
        instructionList.append(new ALOAD(addLocalVariable2.getIndex()));
        instructionList.append(new INVOKESPECIAL(addMethodref));
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Closure
    public void addVariable(VariableRefBase variableRefBase) {
        if (this._closureVars == null) {
            this._closureVars = new ArrayList();
        }
        if (this._closureVars.contains(variableRefBase)) {
            return;
        }
        this._closureVars.add(variableRefBase);
        this._needsSortRecordFactory = true;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Closure
    public String getInnerClassName() {
        return this._className;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Closure
    public Closure getParentClosure() {
        return null;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Closure
    public boolean inInnerClass() {
        return this._className != null;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void parseContents(Parser parser) {
        String str = "text";
        SyntaxTreeNode parent = getParent();
        if (!(parent instanceof ApplyTemplates) && !(parent instanceof ForEach)) {
            reportError(this, parser, ErrorMsg.STRAY_SORT_ERR, null);
            return;
        }
        this._select = parser.parseExpression(this, "select", "string(.)");
        String attribute = getAttribute(com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_ORDER);
        if (attribute.length() == 0) {
            attribute = com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_ORDER_ASCENDING;
        }
        this._order = AttributeValue.create(this, attribute, parser);
        String attribute2 = getAttribute(com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_DATATYPE);
        if (attribute2.length() == 0) {
            try {
                if (this._select.typeCheck(parser.getSymbolTable()) instanceof IntType) {
                    str = "number";
                }
            } catch (TypeCheckError unused) {
            }
        } else {
            str = attribute2;
        }
        this._dataType = AttributeValue.create(this, str, parser);
        this._lang = getAttribute("lang");
        this._caseOrder = AttributeValue.create(this, getAttribute(com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_CASEORDER), parser);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
    }

    public void translateCaseOrder(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        this._caseOrder.translate(classGenerator, methodGenerator);
    }

    public void translateLang(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        methodGenerator.getInstructionList().append(new PUSH(classGenerator.getConstantPool(), this._lang));
    }

    public void translateSelect(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        this._select.translate(classGenerator, methodGenerator);
    }

    public void translateSortOrder(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        this._order.translate(classGenerator, methodGenerator);
    }

    public void translateSortType(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        this._dataType.translate(classGenerator, methodGenerator);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        if (!(this._select.typeCheck(symbolTable) instanceof StringType)) {
            this._select = new CastExpr(this._select, com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.String);
        }
        this._order.typeCheck(symbolTable);
        this._caseOrder.typeCheck(symbolTable);
        this._dataType.typeCheck(symbolTable);
        return com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Void;
    }

    public static String compileSortRecordFactory(Vector vector, ClassGenerator classGenerator, MethodGenerator methodGenerator, String str) {
        XSLTC xsltc = ((Sort) vector.firstElement()).getXSLTC();
        String helperClassName = xsltc.getHelperClassName();
        int i = 0;
        NodeSortRecordFactGenerator nodeSortRecordFactGenerator = new NodeSortRecordFactGenerator(helperClassName, Constants.NODE_SORT_FACTORY, helperClassName + ".java", 49, new String[0], classGenerator.getStylesheet());
        ConstantPoolGen constantPool = nodeSortRecordFactGenerator.getConstantPool();
        int size = vector.size();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < size) {
            Sort sort = (Sort) vector.get(i2);
            ArrayList arrayList2 = sort._closureVars;
            int size2 = arrayList2 == null ? i : arrayList2.size();
            for (int i3 = i; i3 < size2; i3++) {
                VariableRefBase variableRefBase = (VariableRefBase) sort._closureVars.get(i3);
                if (!arrayList.contains(variableRefBase)) {
                    VariableBase variable = variableRefBase.getVariable();
                    nodeSortRecordFactGenerator.addField(new Field(1, constantPool.addUtf8(variable.getEscapedName()), constantPool.addUtf8(variable.getType().toSignature()), null, constantPool.getConstantPool()));
                    arrayList.add(variableRefBase);
                }
            }
            i2++;
            i = 0;
        }
        Type[] typeArr = {Util.getJCRefType(Constants.DOM_INTF_SIG), Util.getJCRefType(Constants.STRING_SIG), Util.getJCRefType(Constants.TRANSLET_INTF_SIG), Util.getJCRefType("[Ljava/lang/String;"), Util.getJCRefType("[Ljava/lang/String;"), Util.getJCRefType("[Ljava/lang/String;"), Util.getJCRefType("[Ljava/lang/String;")};
        String[] strArr = {"document", "className", "translet", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_ORDER, "type", "lang", "case_order"};
        InstructionList instructionList = new InstructionList();
        MethodGenerator methodGenerator2 = new MethodGenerator(1, Type.VOID, typeArr, strArr, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, helperClassName, instructionList, constantPool);
        LocalVariableInstruction localVariableInstruction = InstructionConstants.ALOAD_0;
        instructionList.append(localVariableInstruction);
        instructionList.append(InstructionConstants.ALOAD_1);
        instructionList.append(InstructionConstants.ALOAD_2);
        instructionList.append(new ALOAD(3));
        instructionList.append(new ALOAD(4));
        instructionList.append(new ALOAD(5));
        instructionList.append(new ALOAD(6));
        instructionList.append(new ALOAD(7));
        instructionList.append(new INVOKESPECIAL(constantPool.addMethodref(Constants.NODE_SORT_FACTORY, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/Translet;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V")));
        instructionList.append(InstructionConstants.RETURN);
        InstructionList instructionList2 = new InstructionList();
        Type jCRefType = Util.getJCRefType(Constants.NODE_SORT_RECORD_SIG);
        BasicType basicType = Type.INT;
        MethodGenerator methodGenerator3 = new MethodGenerator(1, jCRefType, new Type[]{basicType, basicType}, new String[]{"node", Keywords.FUNC_LAST_STRING}, "makeNodeSortRecord", helperClassName, instructionList2, constantPool);
        instructionList2.append(localVariableInstruction);
        instructionList2.append(InstructionConstants.ILOAD_1);
        instructionList2.append(InstructionConstants.ILOAD_2);
        instructionList2.append(new INVOKESPECIAL(constantPool.addMethodref(Constants.NODE_SORT_FACTORY, "makeNodeSortRecord", "(II)Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;")));
        instructionList2.append(InstructionConstants.DUP);
        instructionList2.append(new CHECKCAST(constantPool.addClass(str)));
        int size3 = arrayList.size();
        for (int i4 = 0; i4 < size3; i4++) {
            VariableBase variable2 = ((VariableRefBase) arrayList.get(i4)).getVariable();
            com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type type = variable2.getType();
            instructionList2.append(InstructionConstants.DUP);
            instructionList2.append(InstructionConstants.ALOAD_0);
            instructionList2.append(new GETFIELD(constantPool.addFieldref(helperClassName, variable2.getEscapedName(), type.toSignature())));
            instructionList2.append(new PUTFIELD(constantPool.addFieldref(str, variable2.getEscapedName(), type.toSignature())));
        }
        instructionList2.append(InstructionConstants.POP);
        instructionList2.append(InstructionConstants.ARETURN);
        methodGenerator2.setMaxLocals();
        methodGenerator2.setMaxStack();
        nodeSortRecordFactGenerator.addMethod(methodGenerator2.getMethod());
        methodGenerator3.setMaxLocals();
        methodGenerator3.setMaxStack();
        nodeSortRecordFactGenerator.addMethod(methodGenerator3.getMethod());
        xsltc.dumpClass(nodeSortRecordFactGenerator.getJavaClass());
        return helperClassName;
    }
}
