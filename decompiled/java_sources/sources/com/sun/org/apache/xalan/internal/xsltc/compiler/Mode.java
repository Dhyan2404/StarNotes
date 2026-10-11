package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ALOAD;
import com.sun.org.apache.bcel.internal.generic.BasicType;
import com.sun.org.apache.bcel.internal.generic.BranchHandle;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.DUP;
import com.sun.org.apache.bcel.internal.generic.GOTO_W;
import com.sun.org.apache.bcel.internal.generic.IFLT;
import com.sun.org.apache.bcel.internal.generic.ILOAD;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.ISTORE;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.SWITCH;
import com.sun.org.apache.bcel.internal.generic.TargetLostException;
import com.sun.org.apache.bcel.internal.generic.Type;
import com.sun.org.apache.bcel.internal.util.InstructionFinder;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.NamedMethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Vector;
import org.apache.xmlbeans.impl.common.NameUtil;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class Mode implements Constants {
    private int _currentIndex;
    private final String _methodName;
    private final QName _name;
    private final Stylesheet _stylesheet;
    private TestSeq[] _testSeq;
    private Vector _childNodeGroup = null;
    private TestSeq _childNodeTestSeq = null;
    private Vector _attribNodeGroup = null;
    private TestSeq _attribNodeTestSeq = null;
    private Vector _idxGroup = null;
    private TestSeq _idxTestSeq = null;
    private Hashtable _neededTemplates = new Hashtable();
    private Hashtable _namedTemplates = new Hashtable();
    private Hashtable _templateIHs = new Hashtable();
    private Hashtable _templateILs = new Hashtable();
    private LocationPathPattern _rootPattern = null;
    private Hashtable _importLevels = null;
    private Hashtable _keys = null;
    private Vector _templates = new Vector();
    private Vector[] _patternGroups = new Vector[32];

    public Mode(QName qName, Stylesheet stylesheet, String str) {
        this._name = qName;
        this._stylesheet = stylesheet;
        this._methodName = Constants.APPLY_TEMPLATES + str;
    }

    private void addPattern(int i, LocationPathPattern locationPathPattern) {
        Vector vector;
        Vector[] vectorArr = this._patternGroups;
        int length = vectorArr.length;
        boolean z = false;
        if (i >= length) {
            Vector[] vectorArr2 = new Vector[i * 2];
            System.arraycopy(vectorArr, 0, vectorArr2, 0, length);
            this._patternGroups = vectorArr2;
        }
        if (i != -1) {
            Vector[] vectorArr3 = this._patternGroups;
            Vector vector2 = vectorArr3[i];
            if (vector2 == null) {
                vector2 = new Vector(2);
                vectorArr3[i] = vector2;
            }
            vector = vector2;
        } else if (locationPathPattern.getAxis() == 2) {
            vector = this._attribNodeGroup;
            if (vector == null) {
                vector = new Vector(2);
                this._attribNodeGroup = vector;
            }
        } else {
            vector = this._childNodeGroup;
            if (vector == null) {
                vector = new Vector(2);
                this._childNodeGroup = vector;
            }
        }
        if (vector.size() == 0) {
            vector.addElement(locationPathPattern);
            return;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= vector.size()) {
                break;
            }
            if (locationPathPattern.noSmallerThan((LocationPathPattern) vector.elementAt(i2))) {
                vector.insertElementAt(locationPathPattern, i2);
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            return;
        }
        vector.addElement(locationPathPattern);
    }

    private void addPatternToGroup(LocationPathPattern locationPathPattern) {
        if (locationPathPattern instanceof IdKeyPattern) {
            addPattern(-1, locationPathPattern);
            return;
        }
        StepPattern kernelPattern = locationPathPattern.getKernelPattern();
        if (kernelPattern != null) {
            addPattern(kernelPattern.getNodeType(), locationPathPattern);
            return;
        }
        LocationPathPattern locationPathPattern2 = this._rootPattern;
        if (locationPathPattern2 == null || locationPathPattern.noSmallerThan(locationPathPattern2)) {
            this._rootPattern = locationPathPattern;
        }
    }

    private void appendTemplateCode(InstructionList instructionList) {
        Enumeration keys = this._neededTemplates.keys();
        while (keys.hasMoreElements()) {
            Object obj = this._templateILs.get(keys.nextElement());
            if (obj != null) {
                instructionList.append((InstructionList) obj);
            }
        }
    }

    private void appendTestSequences(InstructionList instructionList) {
        InstructionList instructionList2;
        int length = this._testSeq.length;
        for (int i = 0; i < length; i++) {
            TestSeq testSeq = this._testSeq[i];
            if (testSeq != null && (instructionList2 = testSeq.getInstructionList()) != null) {
                instructionList.append(instructionList2);
            }
        }
    }

    private InstructionList compileDefaultRecursion(ClassGenerator classGenerator, MethodGenerator methodGenerator, InstructionHandle instructionHandle) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = new InstructionList();
        String applyTemplatesSig = classGenerator.getApplyTemplatesSig();
        int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, Constants.GET_CHILDREN, "(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;");
        int addMethodref = constantPool.addMethodref(getClassName(), functionName(), applyTemplatesSig);
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(methodGenerator.loadDOM());
        instructionList.append(methodGenerator.loadDOM());
        instructionList.append(new ILOAD(this._currentIndex));
        instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 2));
        instructionList.append(methodGenerator.loadHandler());
        instructionList.append(new INVOKEVIRTUAL(addMethodref));
        instructionList.append((BranchInstruction) new GOTO_W(instructionHandle));
        return instructionList;
    }

    private InstructionList compileDefaultText(ClassGenerator classGenerator, MethodGenerator methodGenerator, InstructionHandle instructionHandle) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = new InstructionList();
        int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "characters", Constants.CHARACTERS_SIG);
        instructionList.append(methodGenerator.loadDOM());
        instructionList.append(new ILOAD(this._currentIndex));
        instructionList.append(methodGenerator.loadHandler());
        instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 3));
        instructionList.append((BranchInstruction) new GOTO_W(instructionHandle));
        return instructionList;
    }

    public static void compileGetChildren(ClassGenerator classGenerator, MethodGenerator methodGenerator, int i) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, Constants.GET_CHILDREN, "(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;");
        instructionList.append(methodGenerator.loadDOM());
        instructionList.append(new ILOAD(i));
        instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 2));
    }

    private void compileNamedTemplate(Template template, ClassGenerator classGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = new InstructionList();
        String escape = Util.escape(template.getName().toString());
        int size = (template.isSimpleNamedTemplate() ? template.getParameters().size() : 0) + 4;
        Type[] typeArr = new Type[size];
        String[] strArr = new String[size];
        typeArr[0] = Util.getJCRefType(Constants.DOM_INTF_SIG);
        typeArr[1] = Util.getJCRefType("Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;");
        typeArr[2] = Util.getJCRefType("Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;");
        typeArr[3] = Type.INT;
        strArr[0] = "document";
        strArr[1] = Constants.ITERATOR_PNAME;
        strArr[2] = Constants.TRANSLET_OUTPUT_PNAME;
        strArr[3] = "node";
        for (int i = 4; i < size; i++) {
            typeArr[i] = Util.getJCRefType(Constants.OBJECT_SIG);
            strArr[i] = com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_PARAMVARIABLE_STRING + String.valueOf(i - 4);
        }
        NamedMethodGenerator namedMethodGenerator = new NamedMethodGenerator(1, Type.VOID, typeArr, strArr, escape, getClassName(), instructionList, constantPool);
        instructionList.append(template.compile(classGenerator, namedMethodGenerator));
        instructionList.append(InstructionConstants.RETURN);
        namedMethodGenerator.stripAttributes(true);
        namedMethodGenerator.setMaxLocals();
        namedMethodGenerator.setMaxStack();
        namedMethodGenerator.removeNOPs();
        classGenerator.addMethod(namedMethodGenerator.getMethod());
    }

    private InstructionList compileNamespaces(ClassGenerator classGenerator, MethodGenerator methodGenerator, boolean[] zArr, boolean[] zArr2, boolean z, InstructionHandle instructionHandle) {
        TestSeq testSeq;
        XSLTC xsltc = classGenerator.getParser().getXSLTC();
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        Vector namespaceIndex = xsltc.getNamespaceIndex();
        Vector namesIndex = xsltc.getNamesIndex();
        int size = namespaceIndex.size() + 1;
        int size2 = namesIndex.size();
        InstructionList instructionList = new InstructionList();
        int[] iArr = new int[size];
        InstructionHandle[] instructionHandleArr = new InstructionHandle[size];
        if (size <= 0) {
            return null;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            instructionHandleArr[i2] = instructionHandle;
            iArr[i2] = i2;
        }
        int i3 = 14;
        boolean z2 = false;
        while (i3 < size2 + 14) {
            if (zArr[i3]) {
                if (zArr2[i3] == z) {
                    String str = (String) namesIndex.elementAt(i3 - 14);
                    int registerNamespace = xsltc.registerNamespace(str.substring(i, str.lastIndexOf(58)));
                    TestSeq[] testSeqArr = this._testSeq;
                    if (i3 < testSeqArr.length && (testSeq = testSeqArr[i3]) != null) {
                        instructionHandleArr[registerNamespace] = testSeq.compile(classGenerator, methodGenerator, instructionHandle);
                        z2 = true;
                    }
                }
            }
            i3++;
            i = 0;
        }
        if (!z2) {
            return null;
        }
        int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getNamespaceType", Constants.GET_PARENT_SIG);
        instructionList.append(methodGenerator.loadDOM());
        instructionList.append(new ILOAD(this._currentIndex));
        instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 2));
        instructionList.append(new SWITCH(iArr, instructionHandleArr, instructionHandle));
        return instructionList;
    }

    private void compileTemplateCalls(ClassGenerator classGenerator, MethodGenerator methodGenerator, InstructionHandle instructionHandle, int i, int i2) {
        Enumeration keys = this._neededTemplates.keys();
        while (keys.hasMoreElements()) {
            Template template = (Template) keys.nextElement();
            int importPrecedence = template.getImportPrecedence();
            if (importPrecedence >= i && importPrecedence < i2) {
                if (template.hasContents()) {
                    InstructionList compile = template.compile(classGenerator, methodGenerator);
                    compile.append((BranchInstruction) new GOTO_W(instructionHandle));
                    this._templateILs.put(template, compile);
                    this._templateIHs.put(template, compile.getStart());
                } else {
                    this._templateIHs.put(template, instructionHandle);
                }
            }
        }
    }

    private void compileTemplates(ClassGenerator classGenerator, MethodGenerator methodGenerator, InstructionHandle instructionHandle) {
        Enumeration keys = this._namedTemplates.keys();
        while (keys.hasMoreElements()) {
            compileNamedTemplate((Template) keys.nextElement(), classGenerator);
        }
        Enumeration keys2 = this._neededTemplates.keys();
        while (keys2.hasMoreElements()) {
            Template template = (Template) keys2.nextElement();
            if (template.hasContents()) {
                InstructionList compile = template.compile(classGenerator, methodGenerator);
                compile.append((BranchInstruction) new GOTO_W(instructionHandle));
                this._templateILs.put(template, compile);
                this._templateIHs.put(template, compile.getStart());
            } else {
                this._templateIHs.put(template, instructionHandle);
            }
        }
    }

    private void completeTestSequences(int i, Vector vector) {
        if (vector != null) {
            Vector[] vectorArr = this._patternGroups;
            if (vectorArr[i] == null) {
                vectorArr[i] = vector;
                return;
            }
            int size = vector.size();
            for (int i2 = 0; i2 < size; i2++) {
                addPattern(i, (LocationPathPattern) vector.elementAt(i2));
            }
        }
    }

    private void flattenAlternative(Pattern pattern, Template template, Hashtable hashtable) {
        if (pattern instanceof IdKeyPattern) {
            ((IdKeyPattern) pattern).setTemplate(template);
            if (this._idxGroup == null) {
                this._idxGroup = new Vector();
            }
            this._idxGroup.add(pattern);
            return;
        }
        if (pattern instanceof AlternativePattern) {
            AlternativePattern alternativePattern = (AlternativePattern) pattern;
            flattenAlternative(alternativePattern.getLeft(), template, hashtable);
            flattenAlternative(alternativePattern.getRight(), template, hashtable);
        } else if (pattern instanceof LocationPathPattern) {
            LocationPathPattern locationPathPattern = (LocationPathPattern) pattern;
            locationPathPattern.setTemplate(template);
            addPatternToGroup(locationPathPattern);
        }
    }

    private String getClassName() {
        return this._stylesheet.getClassName();
    }

    private static boolean isAttributeName(String str) {
        return str.charAt(str.lastIndexOf(58) + 1) == '@';
    }

    private static boolean isNamespaceName(String str) {
        return str.lastIndexOf(58) > -1 && str.charAt(str.length() - 1) == '*';
    }

    private int partition(Vector vector, int i, int i2) {
        Template template = (Template) vector.elementAt(i);
        int i3 = i - 1;
        int i4 = i2 + 1;
        while (true) {
            i4--;
            if (template.compareTo((Template) vector.elementAt(i4)) <= 0) {
                do {
                    i3++;
                } while (template.compareTo((Template) vector.elementAt(i3)) < 0);
                if (i3 >= i4) {
                    return i4;
                }
                vector.set(i4, vector.set(i3, vector.elementAt(i4)));
            }
        }
    }

    private void peepHoleOptimization(MethodGenerator methodGenerator) {
        InstructionList instructionList = methodGenerator.getInstructionList();
        InstructionFinder instructionFinder = new InstructionFinder(instructionList);
        Iterator search = instructionFinder.search("loadinstruction pop");
        while (search.hasNext()) {
            InstructionHandle[] instructionHandleArr = (InstructionHandle[]) search.next();
            try {
                if (!instructionHandleArr[0].hasTargeters() && !instructionHandleArr[1].hasTargeters()) {
                    instructionList.delete(instructionHandleArr[0], instructionHandleArr[1]);
                }
            } catch (TargetLostException unused) {
            }
        }
        Iterator search2 = instructionFinder.search("iload iload swap istore");
        while (search2.hasNext()) {
            InstructionHandle[] instructionHandleArr2 = (InstructionHandle[]) search2.next();
            try {
                ILOAD iload = (ILOAD) instructionHandleArr2[0].getInstruction();
                ILOAD iload2 = (ILOAD) instructionHandleArr2[1].getInstruction();
                ISTORE istore = (ISTORE) instructionHandleArr2[3].getInstruction();
                if (!instructionHandleArr2[1].hasTargeters() && !instructionHandleArr2[2].hasTargeters() && !instructionHandleArr2[3].hasTargeters() && iload.getIndex() == iload2.getIndex() && iload2.getIndex() == istore.getIndex()) {
                    instructionList.delete(instructionHandleArr2[1], instructionHandleArr2[3]);
                }
            } catch (TargetLostException unused2) {
            }
        }
        Iterator search3 = instructionFinder.search("loadinstruction loadinstruction swap");
        while (search3.hasNext()) {
            InstructionHandle[] instructionHandleArr3 = (InstructionHandle[]) search3.next();
            try {
                if (!instructionHandleArr3[0].hasTargeters() && !instructionHandleArr3[1].hasTargeters() && !instructionHandleArr3[2].hasTargeters()) {
                    instructionList.insert(instructionHandleArr3[0], instructionHandleArr3[1].getInstruction());
                    instructionList.delete(instructionHandleArr3[1], instructionHandleArr3[2]);
                }
            } catch (TargetLostException unused3) {
            }
        }
        Iterator search4 = instructionFinder.search("aload aload");
        while (search4.hasNext()) {
            InstructionHandle[] instructionHandleArr4 = (InstructionHandle[]) search4.next();
            try {
                if (!instructionHandleArr4[1].hasTargeters()) {
                    if (((ALOAD) instructionHandleArr4[0].getInstruction()).getIndex() == ((ALOAD) instructionHandleArr4[1].getInstruction()).getIndex()) {
                        instructionList.insert(instructionHandleArr4[1], new DUP());
                        instructionList.delete(instructionHandleArr4[1]);
                    }
                }
            } catch (TargetLostException unused4) {
            }
        }
    }

    private void prepareTestSequences() {
        Vector[] vectorArr = this._patternGroups;
        Vector vector = vectorArr[1];
        Vector vector2 = vectorArr[2];
        completeTestSequences(3, this._childNodeGroup);
        completeTestSequences(1, this._childNodeGroup);
        completeTestSequences(7, this._childNodeGroup);
        completeTestSequences(8, this._childNodeGroup);
        completeTestSequences(2, this._attribNodeGroup);
        Vector namesIndex = this._stylesheet.getXSLTC().getNamesIndex();
        if (vector != null || vector2 != null || this._childNodeGroup != null || this._attribNodeGroup != null) {
            int length = this._patternGroups.length;
            for (int i = 14; i < length; i++) {
                if (this._patternGroups[i] != null) {
                    if (isAttributeName((String) namesIndex.elementAt(i - 14))) {
                        completeTestSequences(i, vector2);
                        completeTestSequences(i, this._attribNodeGroup);
                    } else {
                        completeTestSequences(i, vector);
                        completeTestSequences(i, this._childNodeGroup);
                    }
                }
            }
        }
        this._testSeq = new TestSeq[namesIndex.size() + 14];
        int length2 = this._patternGroups.length;
        for (int i2 = 0; i2 < length2; i2++) {
            Vector vector3 = this._patternGroups[i2];
            if (vector3 != null) {
                TestSeq testSeq = new TestSeq(vector3, i2, this);
                testSeq.reduce();
                this._testSeq[i2] = testSeq;
                testSeq.findTemplates(this._neededTemplates);
            }
        }
        Vector vector4 = this._childNodeGroup;
        if (vector4 != null && vector4.size() > 0) {
            TestSeq testSeq2 = new TestSeq(this._childNodeGroup, -1, this);
            this._childNodeTestSeq = testSeq2;
            testSeq2.reduce();
            this._childNodeTestSeq.findTemplates(this._neededTemplates);
        }
        Vector vector5 = this._idxGroup;
        if (vector5 != null && vector5.size() > 0) {
            TestSeq testSeq3 = new TestSeq(this._idxGroup, this);
            this._idxTestSeq = testSeq3;
            testSeq3.reduce();
            this._idxTestSeq.findTemplates(this._neededTemplates);
        }
        LocationPathPattern locationPathPattern = this._rootPattern;
        if (locationPathPattern != null) {
            this._neededTemplates.put(locationPathPattern.getTemplate(), this);
        }
    }

    private Vector quicksort(Vector vector, int i, int i2) {
        if (i < i2) {
            int partition = partition(vector, i, i2);
            quicksort(vector, i, partition);
            quicksort(vector, partition + 1, i2);
        }
        return vector;
    }

    public void addTemplate(Template template) {
        this._templates.addElement(template);
    }

    public void compileApplyImports(ClassGenerator classGenerator, int i, int i2) {
        int i3;
        double d;
        XSLTC xsltc = classGenerator.getParser().getXSLTC();
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        Vector namesIndex = xsltc.getNamesIndex();
        this._namedTemplates = new Hashtable();
        this._neededTemplates = new Hashtable();
        this._templateIHs = new Hashtable();
        this._templateILs = new Hashtable();
        this._patternGroups = new Vector[32];
        this._rootPattern = null;
        Vector vector = this._templates;
        this._templates = new Vector();
        Enumeration elements = vector.elements();
        while (elements.hasMoreElements()) {
            Template template = (Template) elements.nextElement();
            int importPrecedence = template.getImportPrecedence();
            if (importPrecedence >= i && importPrecedence < i2) {
                addTemplate(template);
            }
        }
        processPatterns(this._keys);
        BasicType basicType = Type.INT;
        Type[] typeArr = {Util.getJCRefType(Constants.DOM_INTF_SIG), Util.getJCRefType("Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), Util.getJCRefType("Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;"), basicType};
        String[] strArr = {"document", Constants.ITERATOR_PNAME, Constants.TRANSLET_OUTPUT_PNAME, "node"};
        InstructionList instructionList = new InstructionList();
        MethodGenerator methodGenerator = new MethodGenerator(17, Type.VOID, typeArr, strArr, functionName() + NameUtil.USCORE + i2, getClassName(), instructionList, classGenerator.getConstantPool());
        methodGenerator.addException("com.sun.org.apache.xalan.internal.xsltc.TransletException");
        this._currentIndex = methodGenerator.addLocalVariable2(Keywords.FUNC_CURRENT_STRING, basicType, instructionList.getEnd()).getIndex();
        instructionList.append(new ILOAD(methodGenerator.getLocalIndex("node")));
        instructionList.append(new ISTORE(this._currentIndex));
        InstructionList instructionList2 = new InstructionList();
        instructionList2.append(InstructionConstants.NOP);
        InstructionList instructionList3 = new InstructionList();
        instructionList3.append(InstructionConstants.RETURN);
        InstructionHandle start = instructionList3.getStart();
        InstructionList compileDefaultRecursion = compileDefaultRecursion(classGenerator, methodGenerator, start);
        InstructionHandle start2 = compileDefaultRecursion.getStart();
        InstructionList compileDefaultText = compileDefaultText(classGenerator, methodGenerator, start);
        InstructionHandle start3 = compileDefaultText.getStart();
        int size = namesIndex.size() + 14;
        int[] iArr = new int[size];
        for (int i4 = 0; i4 < size; i4++) {
            iArr[i4] = i4;
        }
        boolean[] zArr = new boolean[size];
        boolean[] zArr2 = new boolean[size];
        for (int i5 = 0; i5 < namesIndex.size(); i5++) {
            String str = (String) namesIndex.elementAt(i5);
            int i6 = i5 + 14;
            zArr[i6] = isAttributeName(str);
            zArr2[i6] = isNamespaceName(str);
        }
        compileTemplateCalls(classGenerator, methodGenerator, start, i, i2);
        TestSeq testSeq = this._testSeq[1];
        InstructionHandle compile = testSeq != null ? testSeq.compile(classGenerator, methodGenerator, start) : start2;
        TestSeq testSeq2 = this._testSeq[2];
        InstructionHandle compile2 = testSeq2 != null ? testSeq2.compile(classGenerator, methodGenerator, start) : start;
        TestSeq testSeq3 = this._idxTestSeq;
        InstructionList instructionList4 = testSeq3 != null ? testSeq3.getInstructionList() : null;
        TestSeq testSeq4 = this._childNodeTestSeq;
        if (testSeq4 != null) {
            double priority = testSeq4.getPriority();
            int position = this._childNodeTestSeq.getPosition();
            int i7 = Integer.MIN_VALUE;
            double d2 = -1.7976931348623157E308d;
            if (testSeq != null) {
                d = testSeq.getPriority();
                i3 = testSeq.getPosition();
            } else {
                i3 = Integer.MIN_VALUE;
                d = -1.7976931348623157E308d;
            }
            if (d == Double.NaN || d < priority || (d == priority && i3 < position)) {
                compile = this._childNodeTestSeq.compile(classGenerator, methodGenerator, start);
            }
            TestSeq testSeq5 = this._testSeq[3];
            if (testSeq5 != null) {
                d2 = testSeq5.getPriority();
                i7 = testSeq5.getPosition();
            }
            int i8 = i7;
            if (d2 == Double.NaN || d2 < priority || (d2 == priority && i8 < position)) {
                start3 = this._childNodeTestSeq.compile(classGenerator, methodGenerator, start);
                this._testSeq[3] = this._childNodeTestSeq;
            }
        }
        InstructionHandle instructionHandle = start3;
        InstructionHandle instructionHandle2 = compile;
        InstructionList instructionList5 = instructionList4;
        InstructionList compileNamespaces = compileNamespaces(classGenerator, methodGenerator, zArr2, zArr, false, instructionHandle2);
        InstructionHandle start4 = compileNamespaces != null ? compileNamespaces.getStart() : instructionHandle2;
        InstructionList compileNamespaces2 = compileNamespaces(classGenerator, methodGenerator, zArr2, zArr, true, compile2);
        if (compileNamespaces2 != null) {
            compile2 = compileNamespaces2.getStart();
        }
        InstructionHandle instructionHandle3 = compile2;
        InstructionHandle[] instructionHandleArr = new InstructionHandle[size];
        for (int i9 = 14; i9 < size; i9++) {
            TestSeq testSeq6 = this._testSeq[i9];
            if (zArr2[i9]) {
                if (zArr[i9]) {
                    instructionHandleArr[i9] = instructionHandle3;
                } else {
                    instructionHandleArr[i9] = start4;
                }
            } else if (testSeq6 == null) {
                instructionHandleArr[i9] = start;
            } else if (zArr[i9]) {
                instructionHandleArr[i9] = testSeq6.compile(classGenerator, methodGenerator, instructionHandle3);
            } else {
                instructionHandleArr[i9] = testSeq6.compile(classGenerator, methodGenerator, start4);
            }
        }
        LocationPathPattern locationPathPattern = this._rootPattern;
        instructionHandleArr[0] = locationPathPattern != null ? getTemplateInstructionHandle(locationPathPattern.getTemplate()) : start2;
        LocationPathPattern locationPathPattern2 = this._rootPattern;
        if (locationPathPattern2 != null) {
            start2 = getTemplateInstructionHandle(locationPathPattern2.getTemplate());
        }
        instructionHandleArr[9] = start2;
        TestSeq testSeq7 = this._testSeq[3];
        instructionHandleArr[3] = testSeq7 != null ? testSeq7.compile(classGenerator, methodGenerator, instructionHandle) : instructionHandle;
        instructionHandleArr[13] = start;
        instructionHandleArr[1] = start4;
        instructionHandleArr[2] = instructionHandle3;
        InstructionHandle instructionHandle4 = this._childNodeTestSeq != null ? instructionHandle2 : start;
        TestSeq testSeq8 = this._testSeq[7];
        if (testSeq8 != null) {
            instructionHandleArr[7] = testSeq8.compile(classGenerator, methodGenerator, instructionHandle4);
        } else {
            instructionHandleArr[7] = instructionHandle4;
        }
        InstructionHandle instructionHandle5 = this._childNodeTestSeq != null ? instructionHandle2 : start;
        TestSeq testSeq9 = this._testSeq[8];
        if (testSeq9 != null) {
            instructionHandle5 = testSeq9.compile(classGenerator, methodGenerator, instructionHandle5);
        }
        instructionHandleArr[8] = instructionHandle5;
        instructionHandleArr[4] = start;
        instructionHandleArr[11] = start;
        instructionHandleArr[10] = start;
        instructionHandleArr[6] = start;
        instructionHandleArr[5] = start;
        instructionHandleArr[12] = start;
        for (int i10 = 14; i10 < size; i10++) {
            TestSeq testSeq10 = this._testSeq[i10];
            if (testSeq10 == null || zArr2[i10]) {
                if (zArr[i10]) {
                    instructionHandleArr[i10] = instructionHandle3;
                } else {
                    instructionHandleArr[i10] = start4;
                }
            } else if (zArr[i10]) {
                instructionHandleArr[i10] = testSeq10.compile(classGenerator, methodGenerator, instructionHandle3);
            } else {
                instructionHandleArr[i10] = testSeq10.compile(classGenerator, methodGenerator, start4);
            }
        }
        if (instructionList5 != null) {
            instructionList2.insert(instructionList5);
        }
        int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getExpandedTypeID", Constants.GET_PARENT_SIG);
        instructionList2.append(methodGenerator.loadDOM());
        instructionList2.append(new ILOAD(this._currentIndex));
        instructionList2.append(new INVOKEINTERFACE(addInterfaceMethodref, 2));
        instructionList2.append(new SWITCH(iArr, instructionHandleArr, start));
        appendTestSequences(instructionList2);
        appendTemplateCode(instructionList2);
        if (compileNamespaces != null) {
            instructionList2.append(compileNamespaces);
        }
        if (compileNamespaces2 != null) {
            instructionList2.append(compileNamespaces2);
        }
        instructionList2.append(compileDefaultRecursion);
        instructionList2.append(compileDefaultText);
        instructionList.append(instructionList2);
        instructionList.append(instructionList3);
        peepHoleOptimization(methodGenerator);
        methodGenerator.stripAttributes(true);
        methodGenerator.setMaxLocals();
        methodGenerator.setMaxStack();
        methodGenerator.removeNOPs();
        classGenerator.addMethod(methodGenerator.getMethod());
        this._templates = vector;
    }

    public void compileApplyTemplates(ClassGenerator classGenerator) {
        InstructionHandle instructionHandle;
        InstructionList instructionList;
        MethodGenerator methodGenerator;
        int i;
        double d;
        XSLTC xsltc = classGenerator.getParser().getXSLTC();
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        Vector namesIndex = xsltc.getNamesIndex();
        Type[] typeArr = {Util.getJCRefType(Constants.DOM_INTF_SIG), Util.getJCRefType("Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), Util.getJCRefType("Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;")};
        String[] strArr = {"document", Constants.ITERATOR_PNAME, Constants.TRANSLET_OUTPUT_PNAME};
        InstructionList instructionList2 = new InstructionList();
        MethodGenerator methodGenerator2 = new MethodGenerator(17, Type.VOID, typeArr, strArr, functionName(), getClassName(), instructionList2, classGenerator.getConstantPool());
        methodGenerator2.addException("com.sun.org.apache.xalan.internal.xsltc.TransletException");
        this._currentIndex = methodGenerator2.addLocalVariable2(Keywords.FUNC_CURRENT_STRING, Type.INT, instructionList2.getEnd()).getIndex();
        InstructionList instructionList3 = new InstructionList();
        instructionList3.append(InstructionConstants.NOP);
        InstructionList instructionList4 = new InstructionList();
        instructionList4.append(methodGenerator2.loadIterator());
        instructionList4.append(methodGenerator2.nextNode());
        instructionList4.append(InstructionConstants.DUP);
        instructionList4.append(new ISTORE(this._currentIndex));
        BranchHandle append = instructionList4.append((BranchInstruction) new IFLT(null));
        BranchHandle append2 = instructionList4.append((BranchInstruction) new GOTO_W(null));
        append.setTarget(instructionList4.append(InstructionConstants.RETURN));
        InstructionHandle start = instructionList4.getStart();
        InstructionList compileDefaultRecursion = compileDefaultRecursion(classGenerator, methodGenerator2, start);
        InstructionHandle start2 = compileDefaultRecursion.getStart();
        InstructionList compileDefaultText = compileDefaultText(classGenerator, methodGenerator2, start);
        InstructionHandle start3 = compileDefaultText.getStart();
        int size = namesIndex.size() + 14;
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = i2;
        }
        boolean[] zArr = new boolean[size];
        boolean[] zArr2 = new boolean[size];
        for (int i3 = 0; i3 < namesIndex.size(); i3++) {
            String str = (String) namesIndex.elementAt(i3);
            int i4 = i3 + 14;
            zArr[i4] = isAttributeName(str);
            zArr2[i4] = isNamespaceName(str);
        }
        compileTemplates(classGenerator, methodGenerator2, start);
        TestSeq testSeq = this._testSeq[1];
        InstructionHandle compile = testSeq != null ? testSeq.compile(classGenerator, methodGenerator2, start2) : start2;
        TestSeq testSeq2 = this._testSeq[2];
        InstructionHandle compile2 = testSeq2 != null ? testSeq2.compile(classGenerator, methodGenerator2, start3) : start3;
        TestSeq testSeq3 = this._idxTestSeq;
        if (testSeq3 != null) {
            instructionHandle = start2;
            append2.setTarget(testSeq3.compile(classGenerator, methodGenerator2, instructionList3.getStart()));
            instructionList = this._idxTestSeq.getInstructionList();
        } else {
            instructionHandle = start2;
            append2.setTarget(instructionList3.getStart());
            instructionList = null;
        }
        TestSeq testSeq4 = this._childNodeTestSeq;
        if (testSeq4 != null) {
            double priority = testSeq4.getPriority();
            int position = this._childNodeTestSeq.getPosition();
            int i5 = Integer.MIN_VALUE;
            double d2 = -1.7976931348623157E308d;
            if (testSeq != null) {
                d = testSeq.getPriority();
                i = testSeq.getPosition();
            } else {
                i = Integer.MIN_VALUE;
                d = -1.7976931348623157E308d;
            }
            if (d == Double.NaN || d < priority || (d == priority && i < position)) {
                compile = this._childNodeTestSeq.compile(classGenerator, methodGenerator2, start);
            }
            TestSeq testSeq5 = this._testSeq[3];
            if (testSeq5 != null) {
                d2 = testSeq5.getPriority();
                i5 = testSeq5.getPosition();
            }
            if (d2 == Double.NaN || d2 < priority || (d2 == priority && i5 < position)) {
                start3 = this._childNodeTestSeq.compile(classGenerator, methodGenerator2, start);
                this._testSeq[3] = this._childNodeTestSeq;
            }
        }
        InstructionHandle instructionHandle2 = start3;
        InstructionHandle instructionHandle3 = compile;
        MethodGenerator methodGenerator3 = methodGenerator2;
        InstructionList compileNamespaces = compileNamespaces(classGenerator, methodGenerator2, zArr2, zArr, false, instructionHandle3);
        InstructionHandle start4 = compileNamespaces != null ? compileNamespaces.getStart() : instructionHandle3;
        InstructionList compileNamespaces2 = compileNamespaces(classGenerator, methodGenerator3, zArr2, zArr, true, compile2);
        if (compileNamespaces2 != null) {
            compile2 = compileNamespaces2.getStart();
        }
        InstructionHandle instructionHandle4 = compile2;
        InstructionHandle[] instructionHandleArr = new InstructionHandle[size];
        int i6 = 14;
        while (i6 < size) {
            TestSeq testSeq6 = this._testSeq[i6];
            if (zArr2[i6]) {
                if (zArr[i6]) {
                    instructionHandleArr[i6] = instructionHandle4;
                } else {
                    instructionHandleArr[i6] = start4;
                }
                methodGenerator = methodGenerator3;
            } else if (testSeq6 == null) {
                methodGenerator = methodGenerator3;
                instructionHandleArr[i6] = start;
            } else if (zArr[i6]) {
                methodGenerator = methodGenerator3;
                instructionHandleArr[i6] = testSeq6.compile(classGenerator, methodGenerator, instructionHandle4);
            } else {
                methodGenerator = methodGenerator3;
                instructionHandleArr[i6] = testSeq6.compile(classGenerator, methodGenerator, start4);
            }
            i6++;
            methodGenerator3 = methodGenerator;
        }
        MethodGenerator methodGenerator4 = methodGenerator3;
        LocationPathPattern locationPathPattern = this._rootPattern;
        instructionHandleArr[0] = locationPathPattern != null ? getTemplateInstructionHandle(locationPathPattern.getTemplate()) : instructionHandle;
        LocationPathPattern locationPathPattern2 = this._rootPattern;
        instructionHandleArr[9] = locationPathPattern2 != null ? getTemplateInstructionHandle(locationPathPattern2.getTemplate()) : instructionHandle;
        TestSeq testSeq7 = this._testSeq[3];
        instructionHandleArr[3] = testSeq7 != null ? testSeq7.compile(classGenerator, methodGenerator4, instructionHandle2) : instructionHandle2;
        instructionHandleArr[13] = start;
        instructionHandleArr[1] = start4;
        instructionHandleArr[2] = instructionHandle4;
        InstructionHandle instructionHandle5 = this._childNodeTestSeq != null ? instructionHandle3 : start;
        TestSeq testSeq8 = this._testSeq[7];
        if (testSeq8 != null) {
            instructionHandleArr[7] = testSeq8.compile(classGenerator, methodGenerator4, instructionHandle5);
        } else {
            instructionHandleArr[7] = instructionHandle5;
        }
        InstructionHandle instructionHandle6 = this._childNodeTestSeq != null ? instructionHandle3 : start;
        TestSeq testSeq9 = this._testSeq[8];
        if (testSeq9 != null) {
            instructionHandle6 = testSeq9.compile(classGenerator, methodGenerator4, instructionHandle6);
        }
        instructionHandleArr[8] = instructionHandle6;
        instructionHandleArr[4] = start;
        instructionHandleArr[11] = start;
        instructionHandleArr[10] = start;
        instructionHandleArr[6] = start;
        instructionHandleArr[5] = start;
        instructionHandleArr[12] = start;
        for (int i7 = 14; i7 < size; i7++) {
            TestSeq testSeq10 = this._testSeq[i7];
            if (testSeq10 == null || zArr2[i7]) {
                if (zArr[i7]) {
                    instructionHandleArr[i7] = instructionHandle4;
                } else {
                    instructionHandleArr[i7] = start4;
                }
            } else if (zArr[i7]) {
                instructionHandleArr[i7] = testSeq10.compile(classGenerator, methodGenerator4, instructionHandle4);
            } else {
                instructionHandleArr[i7] = testSeq10.compile(classGenerator, methodGenerator4, start4);
            }
        }
        if (instructionList != null) {
            instructionList3.insert(instructionList);
        }
        int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getExpandedTypeID", Constants.GET_PARENT_SIG);
        instructionList3.append(methodGenerator4.loadDOM());
        instructionList3.append(new ILOAD(this._currentIndex));
        instructionList3.append(new INVOKEINTERFACE(addInterfaceMethodref, 2));
        instructionList3.append(new SWITCH(iArr, instructionHandleArr, start));
        appendTestSequences(instructionList3);
        appendTemplateCode(instructionList3);
        if (compileNamespaces != null) {
            instructionList3.append(compileNamespaces);
        }
        if (compileNamespaces2 != null) {
            instructionList3.append(compileNamespaces2);
        }
        instructionList3.append(compileDefaultRecursion);
        instructionList3.append(compileDefaultText);
        instructionList2.append((BranchInstruction) new GOTO_W(start));
        instructionList2.append(instructionList3);
        instructionList2.append(instructionList4);
        peepHoleOptimization(methodGenerator4);
        methodGenerator4.stripAttributes(true);
        methodGenerator4.setMaxLocals();
        methodGenerator4.setMaxStack();
        methodGenerator4.removeNOPs();
        classGenerator.addMethod(methodGenerator4.getMethod());
        Hashtable hashtable = this._importLevels;
        if (hashtable != null) {
            Enumeration keys = hashtable.keys();
            while (keys.hasMoreElements()) {
                Integer num = (Integer) keys.nextElement();
                compileApplyImports(classGenerator, ((Integer) this._importLevels.get(num)).intValue(), num.intValue());
            }
        }
    }

    public String functionName() {
        return this._methodName;
    }

    public Stylesheet getStylesheet() {
        return this._stylesheet;
    }

    public InstructionHandle getTemplateInstructionHandle(Template template) {
        return (InstructionHandle) this._templateIHs.get(template);
    }

    public void processPatterns(Hashtable hashtable) {
        this._keys = hashtable;
        Vector quicksort = quicksort(this._templates, 0, r0.size() - 1);
        this._templates = quicksort;
        Enumeration elements = quicksort.elements();
        while (elements.hasMoreElements()) {
            Template template = (Template) elements.nextElement();
            if (template.isNamed() && !template.disabled()) {
                this._namedTemplates.put(template, this);
            }
            Pattern pattern = template.getPattern();
            if (pattern != null) {
                flattenAlternative(pattern, template, hashtable);
            }
        }
        prepareTestSequences();
    }

    public String functionName(int i, int i2) {
        if (this._importLevels == null) {
            this._importLevels = new Hashtable();
        }
        this._importLevels.put(new Integer(i2), new Integer(i));
        return this._methodName + NameUtil.USCORE + i2;
    }
}
