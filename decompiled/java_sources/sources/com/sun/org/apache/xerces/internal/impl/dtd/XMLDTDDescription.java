package com.sun.org.apache.xerces.internal.impl.dtd;

import com.sun.org.apache.xerces.internal.util.XMLResourceIdentifierImpl;
import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import java.util.Vector;

/* loaded from: classes10.dex */
public class XMLDTDDescription extends XMLResourceIdentifierImpl implements com.sun.org.apache.xerces.internal.xni.grammars.XMLDTDDescription {
    protected Vector fPossibleRoots;
    protected String fRootName;

    public XMLDTDDescription(XMLResourceIdentifier xMLResourceIdentifier, String str) {
        this.fRootName = null;
        this.fPossibleRoots = null;
        setValues(xMLResourceIdentifier.getPublicId(), xMLResourceIdentifier.getLiteralSystemId(), xMLResourceIdentifier.getBaseSystemId(), xMLResourceIdentifier.getExpandedSystemId());
        this.fRootName = str;
        this.fPossibleRoots = null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof XMLGrammarDescription) || !getGrammarType().equals(((XMLGrammarDescription) obj).getGrammarType())) {
            return false;
        }
        XMLDTDDescription xMLDTDDescription = (XMLDTDDescription) obj;
        String str = this.fRootName;
        if (str != null) {
            String str2 = xMLDTDDescription.fRootName;
            if (str2 != null && !str2.equals(str)) {
                return false;
            }
            Vector vector = xMLDTDDescription.fPossibleRoots;
            if (vector != null && !vector.contains(this.fRootName)) {
                return false;
            }
        } else {
            Vector vector2 = this.fPossibleRoots;
            if (vector2 != null) {
                String str3 = xMLDTDDescription.fRootName;
                if (str3 == null) {
                    if (xMLDTDDescription.fPossibleRoots == null) {
                        return false;
                    }
                    boolean z = false;
                    for (int i = 0; i < this.fPossibleRoots.size(); i++) {
                        z = xMLDTDDescription.fPossibleRoots.contains((String) this.fPossibleRoots.elementAt(i));
                        if (z) {
                            break;
                        }
                    }
                    if (!z) {
                        return false;
                    }
                } else if (!vector2.contains(str3)) {
                    return false;
                }
            }
        }
        String str4 = this.fExpandedSystemId;
        if (str4 != null) {
            if (!str4.equals(xMLDTDDescription.fExpandedSystemId)) {
                return false;
            }
        } else if (xMLDTDDescription.fExpandedSystemId != null) {
            return false;
        }
        String str5 = this.fPublicId;
        return str5 != null ? str5.equals(xMLDTDDescription.fPublicId) : xMLDTDDescription.fPublicId == null;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription
    public String getGrammarType() {
        return "http://www.w3.org/TR/REC-xml";
    }

    @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLDTDDescription
    public String getRootName() {
        return this.fRootName;
    }

    @Override // com.sun.org.apache.xerces.internal.util.XMLResourceIdentifierImpl
    public int hashCode() {
        String str = this.fExpandedSystemId;
        if (str != null) {
            return str.hashCode();
        }
        String str2 = this.fPublicId;
        if (str2 != null) {
            return str2.hashCode();
        }
        return 0;
    }

    public void setPossibleRoots(Vector vector) {
        this.fPossibleRoots = vector;
    }

    public void setRootName(String str) {
        this.fRootName = str;
        this.fPossibleRoots = null;
    }

    public XMLDTDDescription(String str, String str2, String str3, String str4, String str5) {
        this.fRootName = null;
        this.fPossibleRoots = null;
        setValues(str, str2, str3, str4);
        this.fRootName = str5;
        this.fPossibleRoots = null;
    }

    public XMLDTDDescription(XMLInputSource xMLInputSource) {
        this.fRootName = null;
        this.fPossibleRoots = null;
        setValues(xMLInputSource.getPublicId(), null, xMLInputSource.getBaseSystemId(), xMLInputSource.getSystemId());
        this.fRootName = null;
        this.fPossibleRoots = null;
    }
}
