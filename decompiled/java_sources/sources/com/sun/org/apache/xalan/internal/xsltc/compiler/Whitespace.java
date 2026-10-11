package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ALOAD;
import com.sun.org.apache.bcel.internal.generic.BasicType;
import com.sun.org.apache.bcel.internal.generic.BranchHandle;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.IF_ICMPEQ;
import com.sun.org.apache.bcel.internal.generic.ILOAD;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.bcel.internal.generic.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;
import java.util.StringTokenizer;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class Whitespace extends TopLevelElement {
    public static final int PRESERVE_SPACE = 2;
    public static final int RULE_ALL = 3;
    public static final int RULE_ELEMENT = 1;
    public static final int RULE_NAMESPACE = 2;
    public static final int RULE_NONE = 0;
    public static final int STRIP_SPACE = 1;
    public static final int USE_PREDICATE = 0;
    private int _action;
    private String _elementList;
    private int _importPrecedence;

    /* loaded from: classes10.dex */
    public static final class WhitespaceRule {
        private final int _action;
        private String _element;
        private String _namespace;
        private int _priority;
        private int _type;

        public WhitespaceRule(int i, String str, int i2) {
            this._action = i;
            int lastIndexOf = str.lastIndexOf(58);
            if (lastIndexOf >= 0) {
                this._namespace = str.substring(0, lastIndexOf);
                this._element = str.substring(lastIndexOf + 1, str.length());
            } else {
                this._namespace = "";
                this._element = str;
            }
            this._priority = i2 << 2;
            if (!this._element.equals("*")) {
                this._type = 1;
            } else if (this._namespace == "") {
                this._type = 3;
                this._priority += 2;
            } else {
                this._type = 2;
                this._priority++;
            }
        }

        public int compareTo(WhitespaceRule whitespaceRule) {
            int i = this._priority;
            int i2 = whitespaceRule._priority;
            if (i < i2) {
                return -1;
            }
            return i > i2 ? 1 : 0;
        }

        public int getAction() {
            return this._action;
        }

        public String getElement() {
            return this._element;
        }

        public String getNamespace() {
            return this._namespace;
        }

        public int getPriority() {
            return this._priority;
        }

        public int getStrength() {
            return this._type;
        }
    }

    private static void compileDefault(int i, ClassGenerator classGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = new InstructionList();
        classGenerator.getParser().getXSLTC();
        BasicType basicType = Type.BOOLEAN;
        BasicType basicType2 = Type.INT;
        MethodGenerator methodGenerator = new MethodGenerator(17, basicType, new Type[]{Util.getJCRefType(Constants.DOM_INTF_SIG), basicType2, basicType2}, new String[]{Constants.DOM_PNAME, "node", "type"}, Constants.STRIP_SPACE, classGenerator.getClassName(), instructionList, constantPool);
        classGenerator.addInterface(Constants.STRIP_SPACE_INTF);
        if (i == 1) {
            instructionList.append(InstructionConstants.ICONST_1);
        } else {
            instructionList.append(InstructionConstants.ICONST_0);
        }
        instructionList.append(InstructionConstants.IRETURN);
        methodGenerator.stripAttributes(true);
        methodGenerator.setMaxLocals();
        methodGenerator.setMaxStack();
        methodGenerator.removeNOPs();
        classGenerator.addMethod(methodGenerator.getMethod());
    }

    private static void compilePredicate(Vector vector, int i, ClassGenerator classGenerator) {
        XSLTC xsltc;
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = new InstructionList();
        XSLTC xsltc2 = classGenerator.getParser().getXSLTC();
        BasicType basicType = Type.BOOLEAN;
        BasicType basicType2 = Type.INT;
        XSLTC xsltc3 = xsltc2;
        MethodGenerator methodGenerator = new MethodGenerator(17, basicType, new Type[]{Util.getJCRefType(Constants.DOM_INTF_SIG), basicType2, basicType2}, new String[]{Constants.DOM_PNAME, "node", "type"}, Constants.STRIP_SPACE, classGenerator.getClassName(), instructionList, constantPool);
        classGenerator.addInterface(Constants.STRIP_SPACE_INTF);
        int localIndex = methodGenerator.getLocalIndex(Constants.DOM_PNAME);
        int localIndex2 = methodGenerator.getLocalIndex("node");
        int localIndex3 = methodGenerator.getLocalIndex("type");
        BranchHandle[] branchHandleArr = new BranchHandle[vector.size()];
        BranchHandle[] branchHandleArr2 = new BranchHandle[vector.size()];
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i4 < vector.size()) {
            WhitespaceRule whitespaceRule = (WhitespaceRule) vector.elementAt(i4);
            int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getNamespaceName", "(I)Ljava/lang/String;");
            int addMethodref = constantPool.addMethodref("java/lang/String", "compareTo", Constants.STRING_TO_INT_SIG);
            if (whitespaceRule.getStrength() == 2) {
                instructionList.append(new ALOAD(localIndex));
                instructionList.append(new ILOAD(localIndex2));
                instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 2));
                instructionList.append(new PUSH(constantPool, whitespaceRule.getNamespace()));
                instructionList.append(new INVOKEVIRTUAL(addMethodref));
                instructionList.append(InstructionConstants.ICONST_0);
                if (whitespaceRule.getAction() == 1) {
                    branchHandleArr[i3] = instructionList.append((BranchInstruction) new IF_ICMPEQ(null));
                    i3++;
                } else {
                    branchHandleArr2[i2] = instructionList.append((BranchInstruction) new IF_ICMPEQ(null));
                    i2++;
                }
            } else if (whitespaceRule.getStrength() == 1) {
                Parser parser = classGenerator.getParser();
                xsltc = xsltc3;
                int registerElement = xsltc.registerElement(whitespaceRule.getNamespace() != "" ? parser.getQName(whitespaceRule.getNamespace(), (String) null, whitespaceRule.getElement()) : parser.getQName(whitespaceRule.getElement()));
                instructionList.append(new ILOAD(localIndex3));
                instructionList.append(new PUSH(constantPool, registerElement));
                if (whitespaceRule.getAction() == 1) {
                    branchHandleArr[i3] = instructionList.append((BranchInstruction) new IF_ICMPEQ(null));
                    i3++;
                } else {
                    branchHandleArr2[i2] = instructionList.append((BranchInstruction) new IF_ICMPEQ(null));
                    i2++;
                }
                i4++;
                xsltc3 = xsltc;
            }
            xsltc = xsltc3;
            i4++;
            xsltc3 = xsltc;
        }
        if (i == 1) {
            compileStripSpace(branchHandleArr, i3, instructionList);
            compilePreserveSpace(branchHandleArr2, i2, instructionList);
        } else {
            compilePreserveSpace(branchHandleArr2, i2, instructionList);
            compileStripSpace(branchHandleArr, i3, instructionList);
        }
        methodGenerator.stripAttributes(true);
        methodGenerator.setMaxLocals();
        methodGenerator.setMaxStack();
        methodGenerator.removeNOPs();
        classGenerator.addMethod(methodGenerator.getMethod());
    }

    public static void compilePreserveSpace(BranchHandle[] branchHandleArr, int i, InstructionList instructionList) {
        InstructionHandle append = instructionList.append(InstructionConstants.ICONST_0);
        instructionList.append(InstructionConstants.IRETURN);
        for (int i2 = 0; i2 < i; i2++) {
            branchHandleArr[i2].setTarget(append);
        }
    }

    public static void compileStripSpace(BranchHandle[] branchHandleArr, int i, InstructionList instructionList) {
        InstructionHandle append = instructionList.append(InstructionConstants.ICONST_1);
        instructionList.append(InstructionConstants.IRETURN);
        for (int i2 = 0; i2 < i; i2++) {
            branchHandleArr[i2].setTarget(append);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.sun.org.apache.xalan.internal.xsltc.compiler.Whitespace.WhitespaceRule findContradictingRule(java.util.Vector r4, com.sun.org.apache.xalan.internal.xsltc.compiler.Whitespace.WhitespaceRule r5) {
        /*
            r0 = 0
        L1:
            int r1 = r4.size()
            r2 = 0
            if (r0 >= r1) goto L41
            java.lang.Object r1 = r4.elementAt(r0)
            com.sun.org.apache.xalan.internal.xsltc.compiler.Whitespace$WhitespaceRule r1 = (com.sun.org.apache.xalan.internal.xsltc.compiler.Whitespace.WhitespaceRule) r1
            if (r1 != r5) goto L11
            return r2
        L11:
            int r2 = r1.getStrength()
            r3 = 1
            if (r2 == r3) goto L20
            r3 = 2
            if (r2 == r3) goto L2f
            r3 = 3
            if (r2 == r3) goto L1f
            goto L3e
        L1f:
            return r1
        L20:
            java.lang.String r2 = r5.getElement()
            java.lang.String r3 = r1.getElement()
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L2f
            goto L3e
        L2f:
            java.lang.String r2 = r5.getNamespace()
            java.lang.String r3 = r1.getNamespace()
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L3e
            return r1
        L3e:
            int r0 = r0 + 1
            goto L1
        L41:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.xsltc.compiler.Whitespace.findContradictingRule(java.util.Vector, com.sun.org.apache.xalan.internal.xsltc.compiler.Whitespace$WhitespaceRule):com.sun.org.apache.xalan.internal.xsltc.compiler.Whitespace$WhitespaceRule");
    }

    private static int partition(Vector vector, int i, int i2) {
        WhitespaceRule whitespaceRule = (WhitespaceRule) vector.elementAt((i + i2) >>> 1);
        int i3 = i - 1;
        int i4 = i2 + 1;
        while (true) {
            i4--;
            if (whitespaceRule.compareTo((WhitespaceRule) vector.elementAt(i4)) >= 0) {
                do {
                    i3++;
                } while (whitespaceRule.compareTo((WhitespaceRule) vector.elementAt(i3)) > 0);
                if (i3 >= i4) {
                    return i4;
                }
                WhitespaceRule whitespaceRule2 = (WhitespaceRule) vector.elementAt(i3);
                vector.setElementAt(vector.elementAt(i4), i3);
                vector.setElementAt(whitespaceRule2, i4);
            }
        }
    }

    private static int prioritizeRules(Vector vector) {
        int i = 0;
        quicksort(vector, 0, vector.size() - 1);
        boolean z = false;
        for (int i2 = 0; i2 < vector.size(); i2++) {
            if (((WhitespaceRule) vector.elementAt(i2)).getAction() == 1) {
                z = true;
            }
        }
        int i3 = 2;
        if (!z) {
            vector.removeAllElements();
            return 2;
        }
        while (i < vector.size()) {
            WhitespaceRule whitespaceRule = (WhitespaceRule) vector.elementAt(i);
            if (findContradictingRule(vector, whitespaceRule) != null) {
                vector.remove(i);
            } else {
                if (whitespaceRule.getStrength() == 3) {
                    i3 = whitespaceRule.getAction();
                    for (int i4 = i; i4 < vector.size(); i4++) {
                        vector.removeElementAt(i4);
                    }
                }
                i++;
            }
        }
        if (vector.size() == 0) {
            return i3;
        }
        while (((WhitespaceRule) vector.lastElement()).getAction() == i3) {
            vector.removeElementAt(vector.size() - 1);
            if (vector.size() <= 0) {
                break;
            }
        }
        return i3;
    }

    private static void quicksort(Vector vector, int i, int i2) {
        while (i < i2) {
            int partition = partition(vector, i, i2);
            quicksort(vector, i, partition);
            i = partition + 1;
        }
    }

    public static int translateRules(Vector vector, ClassGenerator classGenerator) {
        int prioritizeRules = prioritizeRules(vector);
        if (vector.size() == 0) {
            compileDefault(prioritizeRules, classGenerator);
            return prioritizeRules;
        }
        compilePredicate(vector, prioritizeRules, classGenerator);
        return 0;
    }

    public Vector getRules() {
        Vector vector = new Vector();
        StringTokenizer stringTokenizer = new StringTokenizer(this._elementList);
        while (stringTokenizer.hasMoreElements()) {
            vector.add(new WhitespaceRule(this._action, stringTokenizer.nextToken(), this._importPrecedence));
        }
        return vector;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void parseContents(Parser parser) {
        this._action = this._qname.getLocalPart().endsWith(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_STRIPSPACE_STRING) ? 1 : 2;
        this._importPrecedence = parser.getCurrentImportPrecedence();
        String attribute = getAttribute(com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_ELEMENTS);
        this._elementList = attribute;
        if (attribute == null || attribute.length() == 0) {
            reportError(this, parser, ErrorMsg.REQUIRED_ATTR_ERR, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_ELEMENTS);
            return;
        }
        parser.getSymbolTable();
        StringTokenizer stringTokenizer = new StringTokenizer(this._elementList);
        StringBuffer stringBuffer = new StringBuffer("");
        while (stringTokenizer.hasMoreElements()) {
            String nextToken = stringTokenizer.nextToken();
            int indexOf = nextToken.indexOf(58);
            if (indexOf != -1) {
                String lookupNamespace = lookupNamespace(nextToken.substring(0, indexOf));
                if (lookupNamespace != null) {
                    stringBuffer.append(lookupNamespace + ":" + nextToken.substring(indexOf + 1, nextToken.length()));
                } else {
                    stringBuffer.append(nextToken);
                }
            } else {
                stringBuffer.append(nextToken);
            }
            if (stringTokenizer.hasMoreElements()) {
                stringBuffer.append(" ");
            }
        }
        this._elementList = stringBuffer.toString();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.TopLevelElement, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.TopLevelElement, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        return com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Void;
    }
}
