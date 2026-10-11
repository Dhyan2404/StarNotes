package com.sun.xml.internal.stream.dtd;

import com.google.firebase.installations.local.IidStore;
import com.sun.org.apache.xerces.internal.util.NamespaceSupport;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xerces.internal.util.XMLSymbols;
import com.sun.org.apache.xerces.internal.xni.Augmentations;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.XMLAttributes;
import com.sun.org.apache.xerces.internal.xni.XMLString;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.xml.internal.stream.dtd.nonvalidating.DTDGrammar;
import com.sun.xml.internal.stream.dtd.nonvalidating.XMLAttributeDecl;
import com.sun.xml.internal.stream.dtd.nonvalidating.XMLSimpleType;

/* loaded from: classes10.dex */
public class DTDGrammarUtil {
    private static final boolean DEBUG_ATTRIBUTES = false;
    private static final boolean DEBUG_ELEMENT_CHILDREN = false;
    protected static final String NAMESPACES = "http://xml.org/sax/features/namespaces";
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    private StringBuffer fBuffer;
    private int fCurrentContentSpecType;
    private int fCurrentElementIndex;
    protected DTDGrammar fDTDGrammar;
    private boolean[] fElementContentState;
    private int fElementDepth;
    private boolean fInCDATASection;
    private boolean fInElementContent;
    private NamespaceContext fNamespaceContext;
    protected boolean fNamespaces;
    protected SymbolTable fSymbolTable;
    private XMLAttributeDecl fTempAttDecl;
    private QName fTempQName;

    public DTDGrammarUtil(SymbolTable symbolTable) {
        this.fDTDGrammar = null;
        this.fSymbolTable = null;
        this.fCurrentElementIndex = -1;
        this.fCurrentContentSpecType = -1;
        this.fInCDATASection = false;
        this.fElementContentState = new boolean[8];
        this.fElementDepth = -1;
        this.fInElementContent = false;
        this.fTempAttDecl = new XMLAttributeDecl();
        this.fTempQName = new QName();
        this.fBuffer = new StringBuffer();
        this.fNamespaceContext = null;
        this.fSymbolTable = symbolTable;
    }

    private void ensureStackCapacity(int i) {
        boolean[] zArr = this.fElementContentState;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[i * 2];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.fElementContentState = zArr2;
        }
    }

    private String getAttributeTypeName(XMLAttributeDecl xMLAttributeDecl) {
        XMLSimpleType xMLSimpleType = xMLAttributeDecl.simpleType;
        switch (xMLSimpleType.type) {
            case 1:
                return xMLSimpleType.list ? XMLSymbols.fENTITIESSymbol : XMLSymbols.fENTITYSymbol;
            case 2:
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append('(');
                for (int i = 0; i < xMLAttributeDecl.simpleType.enumeration.length; i++) {
                    if (i > 0) {
                        stringBuffer.append(IidStore.f35940g);
                    }
                    stringBuffer.append(xMLAttributeDecl.simpleType.enumeration[i]);
                }
                stringBuffer.append(')');
                return this.fSymbolTable.addSymbol(stringBuffer.toString());
            case 3:
                return XMLSymbols.fIDSymbol;
            case 4:
                return xMLSimpleType.list ? XMLSymbols.fIDREFSSymbol : XMLSymbols.fIDREFSymbol;
            case 5:
                return xMLSimpleType.list ? XMLSymbols.fNMTOKENSSymbol : XMLSymbols.fNMTOKENSymbol;
            case 6:
                return XMLSymbols.fNOTATIONSymbol;
            default:
                return XMLSymbols.fCDATASymbol;
        }
    }

    private boolean normalizeAttrValue(XMLAttributes xMLAttributes, int i) {
        String value = xMLAttributes.getValue(i);
        int length = value.length();
        char[] cArr = new char[length];
        this.fBuffer.setLength(0);
        value.getChars(0, value.length(), cArr, 0);
        boolean z = true;
        int i2 = 0;
        boolean z2 = false;
        boolean z3 = false;
        for (int i3 = 0; i3 < length; i3++) {
            char c = cArr[i3];
            if (c == ' ') {
                if (z2) {
                    z3 = true;
                    z2 = false;
                }
                if (z3 && !z) {
                    this.fBuffer.append(c);
                    i2++;
                    z3 = false;
                }
            } else {
                this.fBuffer.append(c);
                i2++;
                z2 = true;
                z3 = false;
                z = false;
            }
        }
        if (i2 > 0) {
            int i4 = i2 - 1;
            if (this.fBuffer.charAt(i4) == ' ') {
                this.fBuffer.setLength(i4);
            }
        }
        xMLAttributes.setValue(i, this.fBuffer.toString());
        return !value.equals(r12);
    }

    public void addDTDDefaultAttrs(QName qName, XMLAttributes xMLAttributes) throws XNIException {
        DTDGrammar dTDGrammar;
        boolean z;
        int indexOf;
        int elementDeclIndex = this.fDTDGrammar.getElementDeclIndex(qName);
        if (elementDeclIndex == -1 || (dTDGrammar = this.fDTDGrammar) == null) {
            return;
        }
        int firstAttributeDeclIndex = dTDGrammar.getFirstAttributeDeclIndex(elementDeclIndex);
        while (true) {
            boolean z2 = true;
            if (firstAttributeDeclIndex == -1) {
                break;
            }
            this.fDTDGrammar.getAttributeDecl(firstAttributeDeclIndex, this.fTempAttDecl);
            XMLAttributeDecl xMLAttributeDecl = this.fTempAttDecl;
            QName qName2 = xMLAttributeDecl.name;
            String str = qName2.prefix;
            String str2 = qName2.localpart;
            String str3 = qName2.rawname;
            String attributeTypeName = getAttributeTypeName(xMLAttributeDecl);
            XMLSimpleType xMLSimpleType = this.fTempAttDecl.simpleType;
            short s = xMLSimpleType.defaultType;
            String str4 = xMLSimpleType.defaultValue;
            if (str4 == null) {
                str4 = null;
            }
            boolean z3 = s == 2;
            if (!(attributeTypeName == XMLSymbols.fCDATASymbol) || z3 || str4 != null) {
                if (this.fNamespaceContext == null || !str3.startsWith("xmlns")) {
                    int length = xMLAttributes.getLength();
                    for (int i = 0; i < length; i++) {
                        if (xMLAttributes.getQName(i) == str3) {
                            break;
                        }
                    }
                } else {
                    int indexOf2 = str3.indexOf(58);
                    String addSymbol = this.fSymbolTable.addSymbol(indexOf2 != -1 ? str3.substring(0, indexOf2) : str3);
                    if (!((NamespaceSupport) this.fNamespaceContext).containsPrefixInCurrentContext(addSymbol)) {
                        this.fNamespaceContext.declarePrefix(addSymbol, str4);
                    }
                }
                if (!z2 && str4 != null) {
                    if (this.fNamespaces && (indexOf = str3.indexOf(58)) != -1) {
                        str = this.fSymbolTable.addSymbol(str3.substring(0, indexOf));
                        str2 = this.fSymbolTable.addSymbol(str3.substring(indexOf + 1));
                    }
                    this.fTempQName.setValues(str, str2, str3, this.fTempAttDecl.name.uri);
                    xMLAttributes.addAttribute(this.fTempQName, attributeTypeName, str4);
                }
                firstAttributeDeclIndex = this.fDTDGrammar.getNextAttributeDeclIndex(firstAttributeDeclIndex);
            }
            z2 = false;
            if (!z2) {
                if (this.fNamespaces) {
                    str = this.fSymbolTable.addSymbol(str3.substring(0, indexOf));
                    str2 = this.fSymbolTable.addSymbol(str3.substring(indexOf + 1));
                }
                this.fTempQName.setValues(str, str2, str3, this.fTempAttDecl.name.uri);
                xMLAttributes.addAttribute(this.fTempQName, attributeTypeName, str4);
            }
            firstAttributeDeclIndex = this.fDTDGrammar.getNextAttributeDeclIndex(firstAttributeDeclIndex);
        }
        int length2 = xMLAttributes.getLength();
        for (int i2 = 0; i2 < length2; i2++) {
            String qName3 = xMLAttributes.getQName(i2);
            int firstAttributeDeclIndex2 = this.fDTDGrammar.getFirstAttributeDeclIndex(elementDeclIndex);
            while (true) {
                if (firstAttributeDeclIndex2 == -1) {
                    z = false;
                    break;
                }
                this.fDTDGrammar.getAttributeDecl(firstAttributeDeclIndex2, this.fTempAttDecl);
                if (this.fTempAttDecl.name.rawname == qName3) {
                    z = true;
                    break;
                }
                firstAttributeDeclIndex2 = this.fDTDGrammar.getNextAttributeDeclIndex(firstAttributeDeclIndex2);
            }
            if (z) {
                String attributeTypeName2 = getAttributeTypeName(this.fTempAttDecl);
                xMLAttributes.setType(i2, attributeTypeName2);
                xMLAttributes.getValue(i2);
                if (xMLAttributes.isSpecified(i2) && attributeTypeName2 != XMLSymbols.fCDATASymbol) {
                    normalizeAttrValue(xMLAttributes, i2);
                    xMLAttributes.getValue(i2);
                }
            }
        }
    }

    public void endCDATA(Augmentations augmentations) throws XNIException {
        this.fInCDATASection = false;
    }

    public void endElement(QName qName) throws XNIException {
        handleEndElement(qName);
    }

    public void handleEndElement(QName qName) throws XNIException {
        if (this.fDTDGrammar == null) {
            return;
        }
        int i = this.fElementDepth - 1;
        this.fElementDepth = i;
        if (i < -1) {
            throw new RuntimeException("FWK008 Element stack underflow");
        }
        if (i >= 0) {
            this.fInElementContent = this.fElementContentState[i];
            return;
        }
        this.fCurrentElementIndex = -1;
        this.fCurrentContentSpecType = -1;
        this.fInElementContent = false;
    }

    public void handleStartElement(QName qName, XMLAttributes xMLAttributes) throws XNIException {
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar == null) {
            this.fCurrentElementIndex = -1;
            this.fCurrentContentSpecType = -1;
            this.fInElementContent = false;
            return;
        }
        int elementDeclIndex = dTDGrammar.getElementDeclIndex(qName);
        this.fCurrentElementIndex = elementDeclIndex;
        this.fCurrentContentSpecType = this.fDTDGrammar.getContentSpecType(elementDeclIndex);
        addDTDDefaultAttrs(qName, xMLAttributes);
        this.fInElementContent = this.fCurrentContentSpecType == 3;
        int i = this.fElementDepth + 1;
        this.fElementDepth = i;
        ensureStackCapacity(i);
        this.fElementContentState[this.fElementDepth] = this.fInElementContent;
    }

    public boolean isIgnorableWhiteSpace(XMLString xMLString) {
        if (!isInElementContent()) {
            return false;
        }
        for (int i = xMLString.offset; i < xMLString.offset + xMLString.length; i++) {
            if (!XMLChar.isSpace(xMLString.f64120ch[i])) {
                return false;
            }
        }
        return true;
    }

    public boolean isInElementContent() {
        return this.fInElementContent;
    }

    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        this.fDTDGrammar = null;
        this.fInCDATASection = false;
        this.fInElementContent = false;
        this.fCurrentElementIndex = -1;
        this.fCurrentContentSpecType = -1;
        try {
            this.fNamespaces = xMLComponentManager.getFeature("http://xml.org/sax/features/namespaces");
        } catch (XMLConfigurationException unused) {
            this.fNamespaces = true;
        }
        this.fSymbolTable = (SymbolTable) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        this.fElementDepth = -1;
    }

    public void startCDATA(Augmentations augmentations) throws XNIException {
        this.fInCDATASection = true;
    }

    public void startElement(QName qName, XMLAttributes xMLAttributes) throws XNIException {
        handleStartElement(qName, xMLAttributes);
    }

    public DTDGrammarUtil(DTDGrammar dTDGrammar, SymbolTable symbolTable) {
        this.fDTDGrammar = null;
        this.fSymbolTable = null;
        this.fCurrentElementIndex = -1;
        this.fCurrentContentSpecType = -1;
        this.fInCDATASection = false;
        this.fElementContentState = new boolean[8];
        this.fElementDepth = -1;
        this.fInElementContent = false;
        this.fTempAttDecl = new XMLAttributeDecl();
        this.fTempQName = new QName();
        this.fBuffer = new StringBuffer();
        this.fNamespaceContext = null;
        this.fDTDGrammar = dTDGrammar;
        this.fSymbolTable = symbolTable;
    }

    public DTDGrammarUtil(DTDGrammar dTDGrammar, SymbolTable symbolTable, NamespaceContext namespaceContext) {
        this.fDTDGrammar = null;
        this.fSymbolTable = null;
        this.fCurrentElementIndex = -1;
        this.fCurrentContentSpecType = -1;
        this.fInCDATASection = false;
        this.fElementContentState = new boolean[8];
        this.fElementDepth = -1;
        this.fInElementContent = false;
        this.fTempAttDecl = new XMLAttributeDecl();
        this.fTempQName = new QName();
        this.fBuffer = new StringBuffer();
        this.fDTDGrammar = dTDGrammar;
        this.fSymbolTable = symbolTable;
        this.fNamespaceContext = namespaceContext;
    }
}
