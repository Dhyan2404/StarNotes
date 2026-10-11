package org.apache.xerces.impl.p117xs;

import org.apache.xerces.util.XMLResourceIdentifierImpl;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.grammars.XMLSchemaDescription;

/* loaded from: classes13.dex */
public class XSDDescription extends XMLResourceIdentifierImpl implements XMLSchemaDescription {
    public static final short CONTEXT_ATTRIBUTE = 6;
    public static final short CONTEXT_ELEMENT = 5;
    public static final short CONTEXT_IMPORT = 2;
    public static final short CONTEXT_INCLUDE = 0;
    public static final short CONTEXT_INITIALIZE = -1;
    public static final short CONTEXT_INSTANCE = 4;
    public static final short CONTEXT_PREPARSE = 3;
    public static final short CONTEXT_REDEFINE = 1;
    public static final short CONTEXT_XSITYPE = 7;
    protected XMLAttributes fAttributes;
    protected short fContextType;
    protected QName fEnclosedElementName;
    protected String[] fLocationHints;
    protected QName fTriggeringComponent;

    public boolean equals(Object obj) {
        if (!(obj instanceof XMLSchemaDescription)) {
            return false;
        }
        XMLSchemaDescription xMLSchemaDescription = (XMLSchemaDescription) obj;
        String str = this.fNamespace;
        return str != null ? str.equals(xMLSchemaDescription.getTargetNamespace()) : xMLSchemaDescription.getTargetNamespace() == null;
    }

    public boolean fromInstance() {
        short s = this.fContextType;
        return s == 6 || s == 5 || s == 4 || s == 7;
    }

    @Override // org.apache.xerces.xni.grammars.XMLSchemaDescription
    public XMLAttributes getAttributes() {
        return this.fAttributes;
    }

    @Override // org.apache.xerces.xni.grammars.XMLSchemaDescription
    public short getContextType() {
        return this.fContextType;
    }

    @Override // org.apache.xerces.xni.grammars.XMLSchemaDescription
    public QName getEnclosingElementName() {
        return this.fEnclosedElementName;
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarDescription
    public String getGrammarType() {
        return "http://www.w3.org/2001/XMLSchema";
    }

    @Override // org.apache.xerces.xni.grammars.XMLSchemaDescription
    public String[] getLocationHints() {
        return this.fLocationHints;
    }

    @Override // org.apache.xerces.xni.grammars.XMLSchemaDescription
    public String getTargetNamespace() {
        return this.fNamespace;
    }

    @Override // org.apache.xerces.xni.grammars.XMLSchemaDescription
    public QName getTriggeringComponent() {
        return this.fTriggeringComponent;
    }

    @Override // org.apache.xerces.util.XMLResourceIdentifierImpl
    public int hashCode() {
        String str = this.fNamespace;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public XSDDescription makeClone() {
        XSDDescription xSDDescription = new XSDDescription();
        xSDDescription.fAttributes = this.fAttributes;
        xSDDescription.fBaseSystemId = this.fBaseSystemId;
        xSDDescription.fContextType = this.fContextType;
        xSDDescription.fEnclosedElementName = this.fEnclosedElementName;
        xSDDescription.fExpandedSystemId = this.fExpandedSystemId;
        xSDDescription.fLiteralSystemId = this.fLiteralSystemId;
        xSDDescription.fLocationHints = this.fLocationHints;
        xSDDescription.fPublicId = this.fPublicId;
        xSDDescription.fNamespace = this.fNamespace;
        xSDDescription.fTriggeringComponent = this.fTriggeringComponent;
        return xSDDescription;
    }

    public void reset() {
        super.clear();
        this.fContextType = (short) -1;
        this.fLocationHints = null;
        this.fTriggeringComponent = null;
        this.fEnclosedElementName = null;
        this.fAttributes = null;
    }

    public void setAttributes(XMLAttributes xMLAttributes) {
        this.fAttributes = xMLAttributes;
    }

    public void setContextType(short s) {
        this.fContextType = s;
    }

    public void setEnclosingElementName(QName qName) {
        this.fEnclosedElementName = qName;
    }

    public void setLocationHints(String[] strArr) {
        int length = strArr.length;
        String[] strArr2 = new String[length];
        this.fLocationHints = strArr2;
        System.arraycopy(strArr, 0, strArr2, 0, length);
    }

    public void setTargetNamespace(String str) {
        this.fNamespace = str;
    }

    public void setTriggeringComponent(QName qName) {
        this.fTriggeringComponent = qName;
    }
}
