package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;
import com.sun.org.apache.xml.internal.serializer.ElemDesc;
import com.sun.org.apache.xml.internal.serializer.ToHTMLStream;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class LiteralElement extends Instruction {
    private static final String XMLNS_STRING = "xmlns";
    private String _name;
    private LiteralElement _literalElemParent = null;
    private Vector _attributeElements = null;
    private Hashtable _accessedPrefixes = null;
    private boolean _allAttributesUnique = false;

    private String accessedNamespace(String str) {
        String accessedNamespace;
        LiteralElement literalElement = this._literalElemParent;
        if (literalElement != null && (accessedNamespace = literalElement.accessedNamespace(str)) != null) {
            return accessedNamespace;
        }
        Hashtable hashtable = this._accessedPrefixes;
        if (hashtable != null) {
            return (String) hashtable.get(str);
        }
        return null;
    }

    private boolean canProduceAttributeNodes(SyntaxTreeNode syntaxTreeNode, boolean z) {
        Vector contents = syntaxTreeNode.getContents();
        int size = contents.size();
        for (int i = 0; i < size; i++) {
            SyntaxTreeNode syntaxTreeNode2 = (SyntaxTreeNode) contents.elementAt(i);
            if (!(syntaxTreeNode2 instanceof Text)) {
                if ((syntaxTreeNode2 instanceof LiteralElement) || (syntaxTreeNode2 instanceof ValueOf) || (syntaxTreeNode2 instanceof XslElement) || (syntaxTreeNode2 instanceof Comment) || (syntaxTreeNode2 instanceof Number) || (syntaxTreeNode2 instanceof ProcessingInstruction)) {
                    break;
                }
                if (syntaxTreeNode2 instanceof XslAttribute) {
                    if (!z) {
                        return true;
                    }
                } else {
                    if ((syntaxTreeNode2 instanceof CallTemplate) || (syntaxTreeNode2 instanceof ApplyTemplates) || (syntaxTreeNode2 instanceof Copy) || (syntaxTreeNode2 instanceof CopyOf)) {
                        return true;
                    }
                    if (((syntaxTreeNode2 instanceof C13291If) || (syntaxTreeNode2 instanceof ForEach)) && canProduceAttributeNodes(syntaxTreeNode2, false)) {
                        return true;
                    }
                    if (syntaxTreeNode2 instanceof Choose) {
                        Vector contents2 = syntaxTreeNode2.getContents();
                        int size2 = contents2.size();
                        for (int i2 = 0; i2 < size2; i2++) {
                            SyntaxTreeNode syntaxTreeNode3 = (SyntaxTreeNode) contents2.elementAt(i2);
                            if (((syntaxTreeNode3 instanceof When) || (syntaxTreeNode3 instanceof Otherwise)) && canProduceAttributeNodes(syntaxTreeNode3, false)) {
                                return true;
                            }
                        }
                    } else {
                        continue;
                    }
                }
            } else if (!((Text) syntaxTreeNode2).isIgnore()) {
                return false;
            }
        }
        return false;
    }

    private boolean checkAttributesUnique() {
        if (canProduceAttributeNodes(this, true)) {
            return false;
        }
        Vector vector = this._attributeElements;
        if (vector != null) {
            int size = vector.size();
            Hashtable hashtable = null;
            for (int i = 0; i < size; i++) {
                SyntaxTreeNode syntaxTreeNode = (SyntaxTreeNode) this._attributeElements.elementAt(i);
                if (syntaxTreeNode instanceof UseAttributeSets) {
                    return false;
                }
                if (syntaxTreeNode instanceof XslAttribute) {
                    if (hashtable == null) {
                        hashtable = new Hashtable();
                        for (int i2 = 0; i2 < i; i2++) {
                            SyntaxTreeNode syntaxTreeNode2 = (SyntaxTreeNode) this._attributeElements.elementAt(i2);
                            if (syntaxTreeNode2 instanceof LiteralAttribute) {
                                LiteralAttribute literalAttribute = (LiteralAttribute) syntaxTreeNode2;
                                hashtable.put(literalAttribute.getName(), literalAttribute);
                            }
                        }
                    }
                    XslAttribute xslAttribute = (XslAttribute) syntaxTreeNode;
                    AttributeValue name = xslAttribute.getName();
                    if (name instanceof AttributeValueTemplate) {
                        return false;
                    }
                    if (name instanceof SimpleAttributeValue) {
                        String simpleAttributeValue = ((SimpleAttributeValue) name).toString();
                        if (simpleAttributeValue != null && hashtable.get(simpleAttributeValue) != null) {
                            return false;
                        }
                        if (simpleAttributeValue != null) {
                            hashtable.put(simpleAttributeValue, xslAttribute);
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return true;
    }

    private boolean isHTMLOutput() {
        return getStylesheet().getOutputMethod() == 2;
    }

    private String translateQName(QName qName, SymbolTable symbolTable) {
        String localPart = qName.getLocalPart();
        String prefix = qName.getPrefix();
        if (prefix == null) {
            prefix = "";
        } else if (prefix.equals("xmlns")) {
            return "xmlns";
        }
        String lookupPrefixAlias = symbolTable.lookupPrefixAlias(prefix);
        if (lookupPrefixAlias != null) {
            symbolTable.excludeNamespaces(prefix);
            prefix = lookupPrefixAlias;
        }
        String lookupNamespace = lookupNamespace(prefix);
        if (lookupNamespace == null) {
            return localPart;
        }
        registerNamespace(prefix, lookupNamespace, symbolTable, false);
        if (prefix == "") {
            return localPart;
        }
        return prefix + ":" + localPart;
    }

    public void addAttribute(SyntaxTreeNode syntaxTreeNode) {
        if (this._attributeElements == null) {
            this._attributeElements = new Vector(2);
        }
        this._attributeElements.add(syntaxTreeNode);
    }

    public boolean allAttributesUnique() {
        return this._allAttributesUnique;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public boolean contextDependent() {
        return dependentContents();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void display(int i) {
        indent(i);
        Util.println("LiteralElement name = " + this._name);
        displayContents(i + 4);
    }

    public ElemDesc getElemDesc() {
        if (isHTMLOutput()) {
            return ToHTMLStream.getElemDesc(this._name);
        }
        return null;
    }

    public QName getName() {
        return this._qname;
    }

    public Enumeration getNamespaceScope(SyntaxTreeNode syntaxTreeNode) {
        Hashtable hashtable = new Hashtable();
        while (syntaxTreeNode != null) {
            Hashtable prefixMapping = syntaxTreeNode.getPrefixMapping();
            if (prefixMapping != null) {
                Enumeration keys = prefixMapping.keys();
                while (keys.hasMoreElements()) {
                    String str = (String) keys.nextElement();
                    if (!hashtable.containsKey(str)) {
                        hashtable.put(str, prefixMapping.get(str));
                    }
                }
            }
            syntaxTreeNode = syntaxTreeNode.getParent();
        }
        return hashtable.keys();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void parseContents(Parser parser) {
        String lookupNamespace;
        SymbolTable symbolTable = parser.getSymbolTable();
        symbolTable.setCurrentNode(this);
        SyntaxTreeNode parent = getParent();
        if (parent != null && (parent instanceof LiteralElement)) {
            this._literalElemParent = (LiteralElement) parent;
        }
        this._name = translateQName(this._qname, symbolTable);
        int length = this._attributes.getLength();
        for (int i = 0; i < length; i++) {
            QName qName = parser.getQName(this._attributes.getQName(i));
            String namespace = qName.getNamespace();
            String value = this._attributes.getValue(i);
            if (qName == parser.getUseAttributeSets()) {
                if (!Util.isValidQNames(value)) {
                    parser.reportError(3, new ErrorMsg("INVALID_QNAME_ERR", (Object) value, (SyntaxTreeNode) this));
                }
                setFirstAttribute(new UseAttributeSets(value, parser));
            } else if (qName == parser.getExtensionElementPrefixes()) {
                symbolTable.excludeNamespaces(value);
            } else if (qName == parser.getExcludeResultPrefixes()) {
                symbolTable.excludeNamespaces(value);
            } else {
                String prefix = qName.getPrefix();
                if ((prefix == null || !prefix.equals("xmlns")) && ((prefix != null || !qName.getLocalPart().equals("xmlns")) && (namespace == null || !namespace.equals("http://www.w3.org/1999/XSL/Transform")))) {
                    LiteralAttribute literalAttribute = new LiteralAttribute(translateQName(qName, symbolTable), value, parser, this);
                    addAttribute(literalAttribute);
                    literalAttribute.setParent(this);
                    literalAttribute.parseContents(parser);
                }
            }
        }
        Enumeration namespaceScope = getNamespaceScope(this);
        while (namespaceScope.hasMoreElements()) {
            String str = (String) namespaceScope.nextElement();
            if (!str.equals("xml") && (lookupNamespace = lookupNamespace(str)) != null && !symbolTable.isExcludedNamespace(lookupNamespace)) {
                registerNamespace(str, lookupNamespace, symbolTable, true);
            }
        }
        parseChildren(parser);
        for (int i2 = 0; i2 < length; i2++) {
            QName qName2 = parser.getQName(this._attributes.getQName(i2));
            String value2 = this._attributes.getValue(i2);
            if (qName2 == parser.getExtensionElementPrefixes()) {
                symbolTable.unExcludeNamespaces(value2);
            } else if (qName2 == parser.getExcludeResultPrefixes()) {
                symbolTable.unExcludeNamespaces(value2);
            }
        }
    }

    public void registerNamespace(String str, String str2, SymbolTable symbolTable, boolean z) {
        String str3;
        String accessedNamespace;
        LiteralElement literalElement = this._literalElemParent;
        if (literalElement == null || (accessedNamespace = literalElement.accessedNamespace(str)) == null || !accessedNamespace.equals(str2)) {
            Hashtable hashtable = this._accessedPrefixes;
            if (hashtable == null) {
                this._accessedPrefixes = new Hashtable();
            } else if (!z && (str3 = (String) hashtable.get(str)) != null) {
                if (str3.equals(str2)) {
                    return;
                } else {
                    str = symbolTable.generateNamespacePrefix();
                }
            }
            if (str.equals("xml")) {
                return;
            }
            this._accessedPrefixes.put(str, str2);
        }
    }

    public void setFirstAttribute(SyntaxTreeNode syntaxTreeNode) {
        if (this._attributeElements == null) {
            this._attributeElements = new Vector(2);
        }
        this._attributeElements.insertElementAt(syntaxTreeNode, 0);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        this._allAttributesUnique = checkAttributesUnique();
        instructionList.append(methodGenerator.loadHandler());
        instructionList.append(new PUSH(constantPool, this._name));
        instructionList.append(InstructionConstants.DUP2);
        instructionList.append(methodGenerator.startElement());
        int i = 0;
        while (i < elementCount()) {
            SyntaxTreeNode syntaxTreeNode = (SyntaxTreeNode) elementAt(i);
            if (syntaxTreeNode instanceof Variable) {
                syntaxTreeNode.translate(classGenerator, methodGenerator);
                removeElement(syntaxTreeNode);
            } else {
                i++;
            }
        }
        Hashtable hashtable = this._accessedPrefixes;
        if (hashtable != null) {
            Enumeration keys = hashtable.keys();
            boolean z = false;
            while (keys.hasMoreElements()) {
                String str = (String) keys.nextElement();
                String str2 = (String) this._accessedPrefixes.get(str);
                if (str2 != "" || str != "") {
                    if (str == "") {
                        z = true;
                    }
                    instructionList.append(methodGenerator.loadHandler());
                    instructionList.append(new PUSH(constantPool, str));
                    instructionList.append(new PUSH(constantPool, str2));
                    instructionList.append(methodGenerator.namespace());
                }
            }
            if (!z) {
                SyntaxTreeNode syntaxTreeNode2 = this._parent;
                if ((syntaxTreeNode2 instanceof XslElement) && ((XslElement) syntaxTreeNode2).declaresDefaultNS()) {
                    instructionList.append(methodGenerator.loadHandler());
                    instructionList.append(new PUSH(constantPool, ""));
                    instructionList.append(new PUSH(constantPool, ""));
                    instructionList.append(methodGenerator.namespace());
                }
            }
        }
        Vector vector = this._attributeElements;
        if (vector != null) {
            int size = vector.size();
            for (int i2 = 0; i2 < size; i2++) {
                SyntaxTreeNode syntaxTreeNode3 = (SyntaxTreeNode) this._attributeElements.elementAt(i2);
                if (!(syntaxTreeNode3 instanceof XslAttribute)) {
                    syntaxTreeNode3.translate(classGenerator, methodGenerator);
                }
            }
        }
        translateContents(classGenerator, methodGenerator);
        instructionList.append(methodGenerator.endElement());
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        Vector vector = this._attributeElements;
        if (vector != null) {
            int size = vector.size();
            for (int i = 0; i < size; i++) {
                ((SyntaxTreeNode) this._attributeElements.elementAt(i)).typeCheck(symbolTable);
            }
        }
        typeCheckContents(symbolTable);
        return Type.Void;
    }
}
