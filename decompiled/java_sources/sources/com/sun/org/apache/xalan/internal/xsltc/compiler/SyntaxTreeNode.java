package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ANEWARRAY;
import com.sun.org.apache.bcel.internal.generic.CHECKCAST;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.DUP_X1;
import com.sun.org.apache.bcel.internal.generic.GETFIELD;
import com.sun.org.apache.bcel.internal.generic.ICONST;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.INVOKESPECIAL;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.LocalVariableInstruction;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.bcel.internal.generic.NEWARRAY;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.bcel.internal.generic.StackInstruction;
import com.sun.org.apache.bcel.internal.generic.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.runtime.AttributeList;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.xml.sax.Attributes;

/* loaded from: classes10.dex */
public abstract class SyntaxTreeNode implements Constants {
    protected static final int IndentIncrement = 4;
    protected AttributeList _attributes;
    private final Vector _contents;
    private int _line;
    protected SyntaxTreeNode _parent;
    private Parser _parser;
    private Hashtable _prefixMapping;
    protected QName _qname;
    private Stylesheet _stylesheet;
    private Template _template;
    protected static final SyntaxTreeNode Dummy = new AbsolutePathPattern(null);
    private static final char[] _spaces = "                                                       ".toCharArray();

    public SyntaxTreeNode() {
        this._contents = new Vector(2);
        this._attributes = null;
        this._prefixMapping = null;
        this._line = 0;
        this._qname = null;
    }

    private boolean isAdaptiveRTF(SyntaxTreeNode syntaxTreeNode) {
        Vector contents = syntaxTreeNode.getContents();
        for (int i = 0; i < contents.size(); i++) {
            if (!isTextElement((SyntaxTreeNode) contents.elementAt(i), true)) {
                return false;
            }
        }
        return true;
    }

    private boolean isSimpleRTF(SyntaxTreeNode syntaxTreeNode) {
        Vector contents = syntaxTreeNode.getContents();
        for (int i = 0; i < contents.size(); i++) {
            if (!isTextElement((SyntaxTreeNode) contents.elementAt(i), false)) {
                return false;
            }
        }
        return true;
    }

    private boolean isTextElement(SyntaxTreeNode syntaxTreeNode, boolean z) {
        if ((syntaxTreeNode instanceof ValueOf) || (syntaxTreeNode instanceof Number) || (syntaxTreeNode instanceof Text)) {
            return true;
        }
        if (syntaxTreeNode instanceof C13291If) {
            return z ? isAdaptiveRTF(syntaxTreeNode) : isSimpleRTF(syntaxTreeNode);
        }
        if (!(syntaxTreeNode instanceof Choose)) {
            return z && ((syntaxTreeNode instanceof CallTemplate) || (syntaxTreeNode instanceof ApplyTemplates));
        }
        Vector contents = syntaxTreeNode.getContents();
        for (int i = 0; i < contents.size(); i++) {
            SyntaxTreeNode syntaxTreeNode2 = (SyntaxTreeNode) contents.elementAt(i);
            if (!(syntaxTreeNode2 instanceof Text) && ((!(syntaxTreeNode2 instanceof When) && !(syntaxTreeNode2 instanceof Otherwise)) || ((!z || !isAdaptiveRTF(syntaxTreeNode2)) && (z || !isSimpleRTF(syntaxTreeNode2))))) {
                return false;
            }
        }
        return true;
    }

    public void addAttribute(String str, String str2) {
        this._attributes.add(str, str2);
    }

    public final void addElement(SyntaxTreeNode syntaxTreeNode) {
        this._contents.addElement(syntaxTreeNode);
        syntaxTreeNode.setParent(this);
    }

    public void addPrefixMapping(String str, String str2) {
        if (this._prefixMapping == null) {
            this._prefixMapping = new Hashtable();
        }
        this._prefixMapping.put(str, str2);
    }

    public void compileResultTree(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        Stylesheet stylesheet = classGenerator.getStylesheet();
        boolean isSimpleRTF = isSimpleRTF(this);
        int i = isSimpleRTF ? 0 : !isSimpleRTF ? isAdaptiveRTF(this) : false ? 1 : 2;
        instructionList.append(methodGenerator.loadHandler());
        String dOMClass = classGenerator.getDOMClass();
        instructionList.append(methodGenerator.loadDOM());
        int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getResultTreeFrag", "(IIZ)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;");
        instructionList.append(new PUSH(constantPool, 32));
        instructionList.append(new PUSH(constantPool, i));
        instructionList.append(new PUSH(constantPool, stylesheet.callsNodeset()));
        instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 4));
        StackInstruction stackInstruction = InstructionConstants.DUP;
        instructionList.append(stackInstruction);
        instructionList.append(new INVOKEINTERFACE(constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getOutputDomBuilder", "()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;"), 1));
        instructionList.append(stackInstruction);
        instructionList.append(methodGenerator.storeHandler());
        instructionList.append(methodGenerator.startDocument());
        translateContents(classGenerator, methodGenerator);
        instructionList.append(methodGenerator.loadHandler());
        instructionList.append(methodGenerator.endDocument());
        if (stylesheet.callsNodeset() && !dOMClass.equals(Constants.DOM_IMPL_CLASS)) {
            int addMethodref = constantPool.addMethodref(Constants.DOM_ADAPTER_CLASS, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V");
            instructionList.append(new NEW(constantPool.addClass(Constants.DOM_ADAPTER_CLASS)));
            instructionList.append(new DUP_X1());
            StackInstruction stackInstruction2 = InstructionConstants.SWAP;
            instructionList.append(stackInstruction2);
            if (stylesheet.callsNodeset()) {
                LocalVariableInstruction localVariableInstruction = InstructionConstants.ALOAD_0;
                instructionList.append(localVariableInstruction);
                instructionList.append(new GETFIELD(constantPool.addFieldref(Constants.TRANSLET_CLASS, Constants.NAMES_INDEX, "[Ljava/lang/String;")));
                instructionList.append(localVariableInstruction);
                instructionList.append(new GETFIELD(constantPool.addFieldref(Constants.TRANSLET_CLASS, Constants.URIS_INDEX, "[Ljava/lang/String;")));
                instructionList.append(localVariableInstruction);
                instructionList.append(new GETFIELD(constantPool.addFieldref(Constants.TRANSLET_CLASS, Constants.TYPES_INDEX, Constants.TYPES_INDEX_SIG)));
                instructionList.append(localVariableInstruction);
                instructionList.append(new GETFIELD(constantPool.addFieldref(Constants.TRANSLET_CLASS, Constants.NAMESPACE_INDEX, "[Ljava/lang/String;")));
                instructionList.append(new INVOKESPECIAL(addMethodref));
                instructionList.append(stackInstruction);
                instructionList.append(methodGenerator.loadDOM());
                instructionList.append(new CHECKCAST(constantPool.addClass(classGenerator.getDOMClass())));
                instructionList.append(stackInstruction2);
                instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(Constants.MULTI_DOM_CLASS, "addDOMAdapter", "(Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;)I")));
                instructionList.append(InstructionConstants.POP);
            } else {
                instructionList.append(new ICONST(0));
                instructionList.append(new ANEWARRAY(constantPool.addClass("java.lang.String")));
                instructionList.append(stackInstruction);
                instructionList.append(stackInstruction);
                instructionList.append(new ICONST(0));
                instructionList.append(new NEWARRAY(Type.INT));
                instructionList.append(stackInstruction2);
                instructionList.append(new INVOKESPECIAL(addMethodref));
            }
        }
        instructionList.append(InstructionConstants.SWAP);
        instructionList.append(methodGenerator.storeHandler());
    }

    public boolean contextDependent() {
        return true;
    }

    public boolean dependentContents() {
        int elementCount = elementCount();
        for (int i = 0; i < elementCount; i++) {
            if (((SyntaxTreeNode) this._contents.elementAt(i)).contextDependent()) {
                return true;
            }
        }
        return false;
    }

    public void display(int i) {
        displayContents(i);
    }

    public void displayContents(int i) {
        int elementCount = elementCount();
        for (int i2 = 0; i2 < elementCount; i2++) {
            ((SyntaxTreeNode) this._contents.elementAt(i2)).display(i);
        }
    }

    public final Object elementAt(int i) {
        return this._contents.elementAt(i);
    }

    public final int elementCount() {
        return this._contents.size();
    }

    public final Enumeration elements() {
        return this._contents.elements();
    }

    public String getAttribute(String str) {
        String value;
        AttributeList attributeList = this._attributes;
        return (attributeList == null || (value = attributeList.getValue(str)) == null || value.equals("")) ? "" : value;
    }

    public Attributes getAttributes() {
        return this._attributes;
    }

    public final Vector getContents() {
        return this._contents;
    }

    public int getImportPrecedence() {
        Stylesheet stylesheet = getStylesheet();
        if (stylesheet == null) {
            return Integer.MIN_VALUE;
        }
        return stylesheet.getImportPrecedence();
    }

    public final int getLineNumber() {
        int i = this._line;
        if (i > 0) {
            return i;
        }
        SyntaxTreeNode parent = getParent();
        if (parent != null) {
            return parent.getLineNumber();
        }
        return 0;
    }

    public final SyntaxTreeNode getParent() {
        return this._parent;
    }

    public final Parser getParser() {
        return this._parser;
    }

    public Hashtable getPrefixMapping() {
        return this._prefixMapping;
    }

    public QName getQName() {
        return this._qname;
    }

    public Stylesheet getStylesheet() {
        if (this._stylesheet == null) {
            SyntaxTreeNode syntaxTreeNode = this;
            while (syntaxTreeNode != null) {
                if (syntaxTreeNode instanceof Stylesheet) {
                    return (Stylesheet) syntaxTreeNode;
                }
                syntaxTreeNode = syntaxTreeNode.getParent();
            }
            this._stylesheet = (Stylesheet) syntaxTreeNode;
        }
        return this._stylesheet;
    }

    public final SymbolTable getSymbolTable() {
        Parser parser = this._parser;
        if (parser == null) {
            return null;
        }
        return parser.getSymbolTable();
    }

    public Template getTemplate() {
        if (this._template == null) {
            SyntaxTreeNode syntaxTreeNode = this;
            while (syntaxTreeNode != null && !(syntaxTreeNode instanceof Template)) {
                syntaxTreeNode = syntaxTreeNode.getParent();
            }
            this._template = (Template) syntaxTreeNode;
        }
        return this._template;
    }

    public final XSLTC getXSLTC() {
        return this._parser.getXSLTC();
    }

    public boolean hasAttribute(String str) {
        AttributeList attributeList = this._attributes;
        return (attributeList == null || attributeList.getValue(str) == null) ? false : true;
    }

    public final boolean hasContents() {
        return elementCount() > 0;
    }

    public final void indent(int i) {
        System.out.print(new String(_spaces, 0, i));
    }

    public final boolean isDummy() {
        return this == Dummy;
    }

    public final SyntaxTreeNode lastChild() {
        if (this._contents.size() == 0) {
            return null;
        }
        return (SyntaxTreeNode) this._contents.lastElement();
    }

    public String lookupNamespace(String str) {
        SyntaxTreeNode syntaxTreeNode;
        Hashtable hashtable = this._prefixMapping;
        String str2 = hashtable != null ? (String) hashtable.get(str) : null;
        if (str2 != null || (syntaxTreeNode = this._parent) == null) {
            return str2;
        }
        String lookupNamespace = syntaxTreeNode.lookupNamespace(str);
        return (str == "" && lookupNamespace == null) ? "" : lookupNamespace;
    }

    public String lookupPrefix(String str) {
        Hashtable hashtable = this._prefixMapping;
        String str2 = null;
        if (hashtable == null || !hashtable.contains(str)) {
            SyntaxTreeNode syntaxTreeNode = this._parent;
            if (syntaxTreeNode == null) {
                return null;
            }
            String lookupPrefix = syntaxTreeNode.lookupPrefix(str);
            return (str == "" && lookupPrefix == null) ? "" : lookupPrefix;
        }
        Enumeration keys = this._prefixMapping.keys();
        while (keys.hasMoreElements()) {
            str2 = (String) keys.nextElement();
            if (((String) this._prefixMapping.get(str2)).equals(str)) {
                return str2;
            }
        }
        return str2;
    }

    public final void parseChildren(Parser parser) {
        int size = this._contents.size();
        Vector vector = null;
        for (int i = 0; i < size; i++) {
            SyntaxTreeNode syntaxTreeNode = (SyntaxTreeNode) this._contents.elementAt(i);
            parser.getSymbolTable().setCurrentNode(syntaxTreeNode);
            syntaxTreeNode.parseContents(parser);
            QName updateScope = updateScope(parser, syntaxTreeNode);
            if (updateScope != null) {
                if (vector == null) {
                    vector = new Vector(2);
                }
                vector.addElement(updateScope);
            }
        }
        parser.getSymbolTable().setCurrentNode(this);
        if (vector != null) {
            int size2 = vector.size();
            for (int i2 = 0; i2 < size2; i2++) {
                parser.removeVariable((QName) vector.elementAt(i2));
            }
        }
    }

    public void parseContents(Parser parser) {
        parseChildren(parser);
    }

    public final void removeElement(SyntaxTreeNode syntaxTreeNode) {
        this._contents.remove(syntaxTreeNode);
        syntaxTreeNode.setParent(null);
    }

    public void reportError(SyntaxTreeNode syntaxTreeNode, Parser parser, String str, String str2) {
        parser.reportError(3, new ErrorMsg(str, (Object) str2, syntaxTreeNode));
    }

    public void reportWarning(SyntaxTreeNode syntaxTreeNode, Parser parser, String str, String str2) {
        parser.reportError(4, new ErrorMsg(str, (Object) str2, syntaxTreeNode));
    }

    public void setAttributes(AttributeList attributeList) {
        this._attributes = attributeList;
    }

    public final void setFirstElement(SyntaxTreeNode syntaxTreeNode) {
        this._contents.insertElementAt(syntaxTreeNode, 0);
        syntaxTreeNode.setParent(this);
    }

    public final void setLineNumber(int i) {
        this._line = i;
    }

    public void setParent(SyntaxTreeNode syntaxTreeNode) {
        if (this._parent == null) {
            this._parent = syntaxTreeNode;
        }
    }

    public void setParser(Parser parser) {
        this._parser = parser;
    }

    public void setPrefixMapping(Hashtable hashtable) {
        this._prefixMapping = hashtable;
    }

    public void setQName(QName qName) {
        this._qname = qName;
    }

    public abstract void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator);

    public void translateContents(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        int elementCount = elementCount();
        for (int i = 0; i < elementCount; i++) {
            ((SyntaxTreeNode) this._contents.elementAt(i)).translate(classGenerator, methodGenerator);
        }
        for (int i2 = 0; i2 < elementCount; i2++) {
            if (this._contents.elementAt(i2) instanceof VariableBase) {
                ((VariableBase) this._contents.elementAt(i2)).unmapRegister(methodGenerator);
            }
        }
    }

    public abstract com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type typeCheck(SymbolTable symbolTable) throws TypeCheckError;

    public com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type typeCheckContents(SymbolTable symbolTable) throws TypeCheckError {
        int elementCount = elementCount();
        for (int i = 0; i < elementCount; i++) {
            ((SyntaxTreeNode) this._contents.elementAt(i)).typeCheck(symbolTable);
        }
        return com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Void;
    }

    public QName updateScope(Parser parser, SyntaxTreeNode syntaxTreeNode) {
        if (syntaxTreeNode instanceof Variable) {
            Variable variable = (Variable) syntaxTreeNode;
            parser.addVariable(variable);
            return variable.getName();
        }
        if (!(syntaxTreeNode instanceof Param)) {
            return null;
        }
        Param param = (Param) syntaxTreeNode;
        parser.addParameter(param);
        return param.getName();
    }

    public void setQName(String str, String str2, String str3) {
        this._qname = new QName(str, str2, str3);
    }

    public String getAttribute(String str, String str2) {
        return getAttribute(str + ':' + str2);
    }

    public SyntaxTreeNode(int i) {
        this._contents = new Vector(2);
        this._attributes = null;
        this._prefixMapping = null;
        this._line = i;
        this._qname = null;
    }

    public SyntaxTreeNode(String str, String str2, String str3) {
        this._contents = new Vector(2);
        this._attributes = null;
        this._prefixMapping = null;
        this._line = 0;
        setQName(str, str2, str3);
    }
}
