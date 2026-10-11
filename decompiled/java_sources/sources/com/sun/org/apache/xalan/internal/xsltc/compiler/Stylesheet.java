package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.FieldGen;
import com.sun.org.apache.bcel.internal.generic.GETFIELD;
import com.sun.org.apache.bcel.internal.generic.GETSTATIC;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.INVOKESPECIAL;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.ISTORE;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.bcel.internal.generic.PUTFIELD;
import com.sun.org.apache.bcel.internal.generic.TargetLostException;
import com.sun.org.apache.bcel.internal.generic.Type;
import com.sun.org.apache.bcel.internal.util.InstructionFinder;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;
import com.sun.org.apache.xml.internal.utils.SystemIDResolver;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.Vector;

/* loaded from: classes10.dex */
public final class Stylesheet extends SyntaxTreeNode {
    public static final int HTML_OUTPUT = 2;
    public static final int TEXT_OUTPUT = 3;
    public static final int UNKNOWN_OUTPUT = 0;
    public static final int XML_OUTPUT = 1;
    private String _className;
    private Mode _defaultMode;
    private QName _name;
    private Stylesheet _parentStylesheet;
    private String _systemId;
    private String _version;
    private Vector _globals = new Vector();
    private Boolean _hasLocalParams = null;
    private final Vector _templates = new Vector();
    private Vector _allValidTemplates = null;
    private int _nextModeSerial = 1;
    private final Hashtable _modes = new Hashtable();
    private final Hashtable _extensions = new Hashtable();
    public Stylesheet _importedFrom = null;
    public Stylesheet _includedFrom = null;
    private Vector _includedStylesheets = null;
    private int _importPrecedence = 1;
    private int _minimumDescendantPrecedence = -1;
    private Hashtable _keys = new Hashtable();
    private SourceLoader _loader = null;
    private boolean _numberFormattingUsed = false;
    private boolean _simplified = false;
    private boolean _multiDocument = false;
    private boolean _callsNodeset = false;
    private boolean _hasIdCall = false;
    private boolean _templateInlining = true;
    private Output _lastOutputElement = null;
    private Properties _outputProperties = null;
    private int _outputMethod = 0;

    private void addDOMField(ClassGenerator classGenerator) {
        classGenerator.addField(new FieldGen(1, Util.getJCRefType(Constants.DOM_INTF_SIG), Constants.DOM_FIELD, classGenerator.getConstantPool()).getField());
    }

    private void addStaticField(ClassGenerator classGenerator, String str, String str2) {
        classGenerator.addField(new FieldGen(12, Util.getJCRefType(str), str2, classGenerator.getConstantPool()).getField());
    }

    private void checkOutputMethod() {
        String outputMethod;
        Output output = this._lastOutputElement;
        if (output == null || (outputMethod = output.getOutputMethod()) == null) {
            return;
        }
        if (outputMethod.equals("xml")) {
            this._outputMethod = 1;
        } else if (outputMethod.equals("html")) {
            this._outputMethod = 2;
        } else if (outputMethod.equals("text")) {
            this._outputMethod = 3;
        }
    }

    private String compileBuildKeys(ClassGenerator classGenerator) {
        classGenerator.getConstantPool();
        Type[] typeArr = {Util.getJCRefType(Constants.DOM_INTF_SIG), Util.getJCRefType("Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), Util.getJCRefType("Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;"), Type.INT};
        String[] strArr = {"document", Constants.ITERATOR_PNAME, Constants.TRANSLET_OUTPUT_PNAME, Keywords.FUNC_CURRENT_STRING};
        InstructionList instructionList = new InstructionList();
        MethodGenerator methodGenerator = new MethodGenerator(1, Type.VOID, typeArr, strArr, "buildKeys", this._className, instructionList, classGenerator.getConstantPool());
        methodGenerator.addException("com.sun.org.apache.xalan.internal.xsltc.TransletException");
        Enumeration elements = elements();
        while (elements.hasMoreElements()) {
            Object nextElement = elements.nextElement();
            if (nextElement instanceof Key) {
                Key key = (Key) nextElement;
                key.translate(classGenerator, methodGenerator);
                this._keys.put(key.getName(), key);
            }
        }
        instructionList.append(InstructionConstants.RETURN);
        methodGenerator.stripAttributes(true);
        methodGenerator.setMaxLocals();
        methodGenerator.setMaxStack();
        methodGenerator.removeNOPs();
        classGenerator.addMethod(methodGenerator.getMethod());
        return Constants.ATTR_SET_SIG;
    }

    private void compileConstructor(ClassGenerator classGenerator, Output output) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = new InstructionList();
        MethodGenerator methodGenerator = new MethodGenerator(1, Type.VOID, null, null, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, this._className, instructionList, constantPool);
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(new INVOKESPECIAL(constantPool.addMethodref(Constants.TRANSLET_CLASS, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V")));
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(new GETSTATIC(constantPool.addFieldref(this._className, Constants.STATIC_NAMES_ARRAY_FIELD, "[Ljava/lang/String;")));
        instructionList.append(new PUTFIELD(constantPool.addFieldref(Constants.TRANSLET_CLASS, Constants.NAMES_INDEX, "[Ljava/lang/String;")));
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(new GETSTATIC(constantPool.addFieldref(this._className, Constants.STATIC_URIS_ARRAY_FIELD, "[Ljava/lang/String;")));
        instructionList.append(new PUTFIELD(constantPool.addFieldref(Constants.TRANSLET_CLASS, Constants.URIS_INDEX, "[Ljava/lang/String;")));
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(new GETSTATIC(constantPool.addFieldref(this._className, Constants.STATIC_TYPES_ARRAY_FIELD, Constants.TYPES_INDEX_SIG)));
        instructionList.append(new PUTFIELD(constantPool.addFieldref(Constants.TRANSLET_CLASS, Constants.TYPES_INDEX, Constants.TYPES_INDEX_SIG)));
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(new GETSTATIC(constantPool.addFieldref(this._className, Constants.STATIC_NAMESPACE_ARRAY_FIELD, "[Ljava/lang/String;")));
        instructionList.append(new PUTFIELD(constantPool.addFieldref(Constants.TRANSLET_CLASS, Constants.NAMESPACE_INDEX, "[Ljava/lang/String;")));
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(new PUSH(constantPool, 101));
        instructionList.append(new PUTFIELD(constantPool.addFieldref(Constants.TRANSLET_CLASS, Constants.TRANSLET_VERSION_INDEX, "I")));
        if (this._hasIdCall) {
            instructionList.append(classGenerator.loadTranslet());
            instructionList.append(new PUSH(constantPool, Boolean.TRUE));
            instructionList.append(new PUTFIELD(constantPool.addFieldref(Constants.TRANSLET_CLASS, Constants.HASIDCALL_INDEX, Constants.HASIDCALL_INDEX_SIG)));
        }
        if (output != null) {
            output.translate(classGenerator, methodGenerator);
        }
        if (this._numberFormattingUsed) {
            DecimalFormatting.translateDefaultDFS(classGenerator, methodGenerator);
        }
        instructionList.append(InstructionConstants.RETURN);
        methodGenerator.stripAttributes(true);
        methodGenerator.setMaxLocals();
        methodGenerator.setMaxStack();
        classGenerator.addMethod(methodGenerator.getMethod());
    }

    private void compileModes(ClassGenerator classGenerator) {
        this._defaultMode.compileApplyTemplates(classGenerator);
        Enumeration elements = this._modes.elements();
        while (elements.hasMoreElements()) {
            ((Mode) elements.nextElement()).compileApplyTemplates(classGenerator);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void compileStaticInitializer(com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator r24) {
        /*
            Method dump skipped, instructions count: 608
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet.compileStaticInitializer(com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator):void");
    }

    private String compileTopLevel(ClassGenerator classGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        Type[] typeArr = {Util.getJCRefType(Constants.DOM_INTF_SIG), Util.getJCRefType("Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), Util.getJCRefType("Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;")};
        String[] strArr = {"document", Constants.ITERATOR_PNAME, Constants.TRANSLET_OUTPUT_PNAME};
        InstructionList instructionList = new InstructionList();
        MethodGenerator methodGenerator = new MethodGenerator(1, Type.VOID, typeArr, strArr, "topLevel", this._className, instructionList, classGenerator.getConstantPool());
        methodGenerator.addException("com.sun.org.apache.xalan.internal.xsltc.TransletException");
        LocalVariableGen addLocalVariable = methodGenerator.addLocalVariable(Keywords.FUNC_CURRENT_STRING, Type.INT, instructionList.getEnd(), null);
        int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "setFilter", "(Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;)V");
        instructionList.append(new PUSH(constantPool, 0));
        instructionList.append(new ISTORE(addLocalVariable.getIndex()));
        Vector vector = new Vector(this._globals);
        Enumeration elements = elements();
        while (elements.hasMoreElements()) {
            Object nextElement = elements.nextElement();
            if (nextElement instanceof Key) {
                vector.add(nextElement);
            }
        }
        Vector resolveDependencies = resolveDependencies(vector);
        int size = resolveDependencies.size();
        for (int i = 0; i < size; i++) {
            TopLevelElement topLevelElement = (TopLevelElement) resolveDependencies.elementAt(i);
            topLevelElement.translate(classGenerator, methodGenerator);
            if (topLevelElement instanceof Key) {
                Key key = (Key) topLevelElement;
                this._keys.put(key.getName(), key);
            }
        }
        Vector vector2 = new Vector();
        Enumeration elements2 = elements();
        while (elements2.hasMoreElements()) {
            Object nextElement2 = elements2.nextElement();
            if (nextElement2 instanceof DecimalFormatting) {
                ((DecimalFormatting) nextElement2).translate(classGenerator, methodGenerator);
            } else if (nextElement2 instanceof Whitespace) {
                vector2.addAll(((Whitespace) nextElement2).getRules());
            }
        }
        if (vector2.size() > 0) {
            Whitespace.translateRules(vector2, classGenerator);
        }
        if (classGenerator.containsMethod(Constants.STRIP_SPACE, Constants.STRIP_SPACE_PARAMS) != null) {
            instructionList.append(methodGenerator.loadDOM());
            instructionList.append(classGenerator.loadTranslet());
            instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 2));
        }
        instructionList.append(InstructionConstants.RETURN);
        methodGenerator.stripAttributes(true);
        methodGenerator.setMaxLocals();
        methodGenerator.setMaxStack();
        methodGenerator.removeNOPs();
        classGenerator.addMethod(methodGenerator.getMethod());
        return "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V";
    }

    private void compileTransform(ClassGenerator classGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        Type[] typeArr = {Util.getJCRefType(Constants.DOM_INTF_SIG), Util.getJCRefType("Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), Util.getJCRefType("Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;")};
        String[] strArr = {"document", Constants.ITERATOR_PNAME, Constants.TRANSLET_OUTPUT_PNAME};
        InstructionList instructionList = new InstructionList();
        MethodGenerator methodGenerator = new MethodGenerator(1, Type.VOID, typeArr, strArr, com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_TRANSFORM_STRING, this._className, instructionList, classGenerator.getConstantPool());
        methodGenerator.addException("com.sun.org.apache.xalan.internal.xsltc.TransletException");
        LocalVariableGen addLocalVariable = methodGenerator.addLocalVariable(Keywords.FUNC_CURRENT_STRING, Type.INT, instructionList.getEnd(), null);
        int addMethodref = constantPool.addMethodref(getClassName(), Constants.APPLY_TEMPLATES, classGenerator.getApplyTemplatesSig());
        int addFieldref = constantPool.addFieldref(getClassName(), Constants.DOM_FIELD, Constants.DOM_INTF_SIG);
        instructionList.append(classGenerator.loadTranslet());
        if (isMultiDocument()) {
            instructionList.append(new NEW(constantPool.addClass(Constants.MULTI_DOM_CLASS)));
            instructionList.append(InstructionConstants.DUP);
        }
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(methodGenerator.loadDOM());
        instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(Constants.TRANSLET_CLASS, "makeDOMAdapter", "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;")));
        if (isMultiDocument()) {
            instructionList.append(new INVOKESPECIAL(constantPool.addMethodref(Constants.MULTI_DOM_CLASS, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V")));
        }
        instructionList.append(new PUTFIELD(addFieldref));
        instructionList.append(new PUSH(constantPool, 0));
        instructionList.append(new ISTORE(addLocalVariable.getIndex()));
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(methodGenerator.loadHandler());
        instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(Constants.TRANSLET_CLASS, "transferOutputSettings", "(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V")));
        constantPool.addMethodref(getClassName(), "buildKeys", compileBuildKeys(classGenerator));
        Enumeration elements = elements();
        if (this._globals.size() > 0 || elements.hasMoreElements()) {
            int addMethodref2 = constantPool.addMethodref(getClassName(), "topLevel", compileTopLevel(classGenerator));
            instructionList.append(classGenerator.loadTranslet());
            instructionList.append(classGenerator.loadTranslet());
            instructionList.append(new GETFIELD(addFieldref));
            instructionList.append(methodGenerator.loadIterator());
            instructionList.append(methodGenerator.loadHandler());
            instructionList.append(new INVOKEVIRTUAL(addMethodref2));
        }
        instructionList.append(methodGenerator.loadHandler());
        instructionList.append(methodGenerator.startDocument());
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(new GETFIELD(addFieldref));
        instructionList.append(methodGenerator.loadIterator());
        instructionList.append(methodGenerator.loadHandler());
        instructionList.append(new INVOKEVIRTUAL(addMethodref));
        instructionList.append(methodGenerator.loadHandler());
        instructionList.append(methodGenerator.endDocument());
        instructionList.append(InstructionConstants.RETURN);
        methodGenerator.stripAttributes(true);
        methodGenerator.setMaxLocals();
        methodGenerator.setMaxStack();
        methodGenerator.removeNOPs();
        classGenerator.addMethod(methodGenerator.getMethod());
    }

    private void extensionURI(String str, SymbolTable symbolTable) {
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str);
            while (stringTokenizer.hasMoreTokens()) {
                String nextToken = stringTokenizer.nextToken();
                String lookupNamespace = lookupNamespace(nextToken);
                if (lookupNamespace != null) {
                    this._extensions.put(lookupNamespace, nextToken);
                }
            }
        }
    }

    private QName makeStylesheetName(String str) {
        return getParser().getQName(str + getXSLTC().nextStylesheetSerial());
    }

    private void peepHoleOptimization(MethodGenerator methodGenerator) {
        InstructionList instructionList = methodGenerator.getInstructionList();
        Iterator search = new InstructionFinder(instructionList).search("`aload'`pop'`instruction'");
        while (search.hasNext()) {
            InstructionHandle[] instructionHandleArr = (InstructionHandle[]) search.next();
            try {
                instructionList.delete(instructionHandleArr[0], instructionHandleArr[1]);
            } catch (TargetLostException unused) {
            }
        }
    }

    private Vector resolveDependencies(Vector vector) {
        Vector vector2 = new Vector();
        while (true) {
            if (vector.size() <= 0) {
                break;
            }
            int i = 0;
            boolean z = false;
            while (i < vector.size()) {
                TopLevelElement topLevelElement = (TopLevelElement) vector.elementAt(i);
                Vector dependencies = topLevelElement.getDependencies();
                if (dependencies == null || vector2.containsAll(dependencies)) {
                    vector2.addElement(topLevelElement);
                    vector.remove(i);
                    z = true;
                } else {
                    i++;
                }
            }
            if (!z) {
                getParser().reportError(3, new ErrorMsg(ErrorMsg.CIRCULAR_VARIABLE_ERR, (Object) vector.toString(), (SyntaxTreeNode) this));
                break;
            }
        }
        return vector2;
    }

    public void addIncludedStylesheet(Stylesheet stylesheet) {
        if (this._includedStylesheets == null) {
            this._includedStylesheets = new Vector();
        }
        this._includedStylesheets.addElement(stylesheet);
    }

    public int addParam(Param param) {
        this._globals.addElement(param);
        return this._globals.size() - 1;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void addPrefixMapping(String str, String str2) {
        if (str.equals("") && str2.equals("http://www.w3.org/1999/xhtml")) {
            return;
        }
        super.addPrefixMapping(str, str2);
    }

    public void addTemplate(Template template) {
        this._templates.addElement(template);
    }

    public int addVariable(Variable variable) {
        this._globals.addElement(variable);
        return this._globals.size() - 1;
    }

    public boolean callsNodeset() {
        return this._callsNodeset;
    }

    public boolean checkForLoop(String str) {
        String str2 = this._systemId;
        if (str2 != null && str2.equals(str)) {
            return true;
        }
        Stylesheet stylesheet = this._parentStylesheet;
        if (stylesheet != null) {
            return stylesheet.checkForLoop(str);
        }
        return false;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void display(int i) {
        indent(i);
        Util.println("Stylesheet");
        displayContents(i + 4);
    }

    public void excludeExtensionPrefixes(Parser parser) {
        SymbolTable symbolTable = parser.getSymbolTable();
        String attribute = getAttribute(com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_EXCLUDE_RESULT_PREFIXES);
        String attribute2 = getAttribute(com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_EXTENSIONELEMENTPREFIXES);
        symbolTable.excludeURI("http://www.w3.org/1999/XSL/Transform");
        symbolTable.excludeNamespaces(attribute);
        symbolTable.excludeNamespaces(attribute2);
        extensionURI(attribute2, symbolTable);
    }

    public Vector getAllValidTemplates() {
        if (this._includedStylesheets == null) {
            return this._templates;
        }
        if (this._allValidTemplates == null) {
            Vector vector = new Vector();
            vector.addAll(this._templates);
            int size = this._includedStylesheets.size();
            for (int i = 0; i < size; i++) {
                vector.addAll(((Stylesheet) this._includedStylesheets.elementAt(i)).getAllValidTemplates());
            }
            if (this._parentStylesheet != null) {
                return vector;
            }
            this._allValidTemplates = vector;
        }
        return this._allValidTemplates;
    }

    public String getClassName() {
        return this._className;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public int getImportPrecedence() {
        return this._importPrecedence;
    }

    public Output getLastOutputElement() {
        return this._lastOutputElement;
    }

    public int getMinimumDescendantPrecedence() {
        if (this._minimumDescendantPrecedence == -1) {
            int importPrecedence = getImportPrecedence();
            Vector vector = this._includedStylesheets;
            int size = vector != null ? vector.size() : 0;
            for (int i = 0; i < size; i++) {
                int minimumDescendantPrecedence = ((Stylesheet) this._includedStylesheets.elementAt(i)).getMinimumDescendantPrecedence();
                if (minimumDescendantPrecedence < importPrecedence) {
                    importPrecedence = minimumDescendantPrecedence;
                }
            }
            this._minimumDescendantPrecedence = importPrecedence;
        }
        return this._minimumDescendantPrecedence;
    }

    public Mode getMode(QName qName) {
        if (qName == null) {
            if (this._defaultMode == null) {
                this._defaultMode = new Mode(null, this, "");
            }
            return this._defaultMode;
        }
        Mode mode = (Mode) this._modes.get(qName);
        if (mode != null) {
            return mode;
        }
        int i = this._nextModeSerial;
        this._nextModeSerial = i + 1;
        String num = Integer.toString(i);
        Hashtable hashtable = this._modes;
        Mode mode2 = new Mode(qName, this, num);
        hashtable.put(qName, mode2);
        return mode2;
    }

    public String getNamespace(String str) {
        return lookupNamespace(str);
    }

    public int getOutputMethod() {
        return this._outputMethod;
    }

    public Properties getOutputProperties() {
        return this._outputProperties;
    }

    public Stylesheet getParentStylesheet() {
        return this._parentStylesheet;
    }

    public SourceLoader getSourceLoader() {
        return this._loader;
    }

    public String getSystemId() {
        return this._systemId;
    }

    public boolean getTemplateInlining() {
        return this._templateInlining;
    }

    public Vector getTemplates() {
        return this._templates;
    }

    public boolean hasGlobals() {
        return this._globals.size() > 0;
    }

    public boolean hasLocalParams() {
        Boolean bool = this._hasLocalParams;
        if (bool != null) {
            return bool.booleanValue();
        }
        Vector allValidTemplates = getAllValidTemplates();
        int size = allValidTemplates.size();
        for (int i = 0; i < size; i++) {
            if (((Template) allValidTemplates.elementAt(i)).hasParams()) {
                this._hasLocalParams = new Boolean(true);
                return true;
            }
        }
        this._hasLocalParams = new Boolean(false);
        return false;
    }

    public boolean isExtension(String str) {
        return this._extensions.get(str) != null;
    }

    public boolean isMultiDocument() {
        return this._multiDocument;
    }

    public boolean isSimplified() {
        return this._simplified;
    }

    public void numberFormattingUsed() {
        this._numberFormattingUsed = true;
        Stylesheet parentStylesheet = getParentStylesheet();
        if (parentStylesheet != null) {
            parentStylesheet.numberFormattingUsed();
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void parseContents(Parser parser) {
        SymbolTable symbolTable = parser.getSymbolTable();
        addPrefixMapping("xml", "http://www.w3.org/XML/1998/namespace");
        if (symbolTable.addStylesheet(this._name, this) != null) {
            parser.reportError(3, new ErrorMsg(ErrorMsg.MULTIPLE_STYLESHEET_ERR, (SyntaxTreeNode) this));
        }
        if (!this._simplified) {
            parseOwnChildren(parser);
        } else {
            symbolTable.excludeURI("http://www.w3.org/1999/XSL/Transform");
            new Template().parseSimplified(this, parser);
        }
    }

    public final void parseOwnChildren(Parser parser) {
        Vector contents = getContents();
        int size = contents.size();
        for (int i = 0; i < size; i++) {
            SyntaxTreeNode syntaxTreeNode = (SyntaxTreeNode) contents.elementAt(i);
            if ((syntaxTreeNode instanceof VariableBase) || (syntaxTreeNode instanceof NamespaceAlias)) {
                parser.getSymbolTable().setCurrentNode(syntaxTreeNode);
                syntaxTreeNode.parseContents(parser);
            }
        }
        for (int i2 = 0; i2 < size; i2++) {
            SyntaxTreeNode syntaxTreeNode2 = (SyntaxTreeNode) contents.elementAt(i2);
            if (!(syntaxTreeNode2 instanceof VariableBase) && !(syntaxTreeNode2 instanceof NamespaceAlias)) {
                parser.getSymbolTable().setCurrentNode(syntaxTreeNode2);
                syntaxTreeNode2.parseContents(parser);
            }
            if (!this._templateInlining && (syntaxTreeNode2 instanceof Template)) {
                Template template = (Template) syntaxTreeNode2;
                template.setName(parser.getQName("template$dot$" + template.getPosition()));
            }
        }
    }

    public void processModes() {
        if (this._defaultMode == null) {
            this._defaultMode = new Mode(null, this, "");
        }
        this._defaultMode.processPatterns(this._keys);
        Enumeration elements = this._modes.elements();
        while (elements.hasMoreElements()) {
            ((Mode) elements.nextElement()).processPatterns(this._keys);
        }
    }

    public void setCallsNodeset(boolean z) {
        if (z) {
            setMultiDocument(z);
        }
        this._callsNodeset = z;
    }

    public void setHasIdCall(boolean z) {
        this._hasIdCall = z;
    }

    public void setImportPrecedence(int i) {
        Stylesheet includedStylesheet;
        this._importPrecedence = i;
        Enumeration elements = elements();
        while (elements.hasMoreElements()) {
            SyntaxTreeNode syntaxTreeNode = (SyntaxTreeNode) elements.nextElement();
            if ((syntaxTreeNode instanceof Include) && (includedStylesheet = ((Include) syntaxTreeNode).getIncludedStylesheet()) != null && includedStylesheet._includedFrom == this) {
                includedStylesheet.setImportPrecedence(i);
            }
        }
        Stylesheet stylesheet = this._importedFrom;
        if (stylesheet != null) {
            if (stylesheet.getImportPrecedence() < i) {
                this._importedFrom.setImportPrecedence(getParser().getNextImportPrecedence());
            }
        } else {
            Stylesheet stylesheet2 = this._includedFrom;
            if (stylesheet2 == null || stylesheet2.getImportPrecedence() == i) {
                return;
            }
            this._includedFrom.setImportPrecedence(i);
        }
    }

    public void setImportingStylesheet(Stylesheet stylesheet) {
        this._importedFrom = stylesheet;
        stylesheet.addIncludedStylesheet(this);
    }

    public void setIncludingStylesheet(Stylesheet stylesheet) {
        this._includedFrom = stylesheet;
        stylesheet.addIncludedStylesheet(this);
    }

    public void setMultiDocument(boolean z) {
        this._multiDocument = z;
    }

    public void setOutputProperties(Properties properties) {
        this._outputProperties = properties;
    }

    public void setOutputProperty(String str, String str2) {
        if (this._outputProperties == null) {
            this._outputProperties = new Properties();
        }
        this._outputProperties.setProperty(str, str2);
    }

    public void setParentStylesheet(Stylesheet stylesheet) {
        this._parentStylesheet = stylesheet;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void setParser(Parser parser) {
        super.setParser(parser);
        this._name = makeStylesheetName("__stylesheet_");
    }

    public void setSimplified() {
        this._simplified = true;
    }

    public void setSourceLoader(SourceLoader sourceLoader) {
        this._loader = sourceLoader;
    }

    public void setSystemId(String str) {
        if (str != null) {
            this._systemId = SystemIDResolver.getAbsoluteURI(str);
        }
    }

    public void setTemplateInlining(boolean z) {
        this._templateInlining = z;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        translate();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        int size = this._globals.size();
        for (int i = 0; i < size; i++) {
            ((VariableBase) this._globals.elementAt(i)).typeCheck(symbolTable);
        }
        return typeCheckContents(symbolTable);
    }

    public void translate() {
        this._className = getXSLTC().getClassName();
        ClassGenerator classGenerator = new ClassGenerator(this._className, Constants.TRANSLET_CLASS, "", 33, null, this);
        addDOMField(classGenerator);
        compileTransform(classGenerator);
        Enumeration elements = elements();
        while (elements.hasMoreElements()) {
            Object nextElement = elements.nextElement();
            if (nextElement instanceof Template) {
                Template template = (Template) nextElement;
                getMode(template.getModeName()).addTemplate(template);
            } else if (nextElement instanceof AttributeSet) {
                ((AttributeSet) nextElement).translate(classGenerator, null);
            } else if (nextElement instanceof Output) {
                Output output = (Output) nextElement;
                if (output.enabled()) {
                    this._lastOutputElement = output;
                }
            }
        }
        checkOutputMethod();
        processModes();
        compileModes(classGenerator);
        compileStaticInitializer(classGenerator);
        compileConstructor(classGenerator, this._lastOutputElement);
        if (getParser().errorsFound()) {
            return;
        }
        getXSLTC().dumpClass(classGenerator.getJavaClass());
    }
}
