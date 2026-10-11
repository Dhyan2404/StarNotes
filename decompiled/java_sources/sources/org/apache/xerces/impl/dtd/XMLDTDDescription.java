package org.apache.xerces.impl.dtd;

import java.util.ArrayList;
import java.util.Vector;
import org.apache.xerces.util.XMLResourceIdentifierImpl;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.grammars.XMLGrammarDescription;
import org.apache.xerces.xni.parser.XMLInputSource;

/* loaded from: classes13.dex */
public class XMLDTDDescription extends XMLResourceIdentifierImpl implements org.apache.xerces.xni.grammars.XMLDTDDescription {
    protected ArrayList fPossibleRoots;
    protected String fRootName;

    public XMLDTDDescription(String str, String str2, String str3, String str4, String str5) {
        this.fRootName = null;
        this.fPossibleRoots = null;
        setValues(str, str2, str3, str4);
        this.fRootName = str5;
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
            ArrayList arrayList = xMLDTDDescription.fPossibleRoots;
            if (arrayList != null && !arrayList.contains(this.fRootName)) {
                return false;
            }
        } else {
            ArrayList arrayList2 = this.fPossibleRoots;
            if (arrayList2 != null) {
                String str3 = xMLDTDDescription.fRootName;
                if (str3 == null) {
                    if (xMLDTDDescription.fPossibleRoots == null) {
                        return false;
                    }
                    int size = arrayList2.size();
                    boolean z = false;
                    for (int i = 0; i < size; i++) {
                        z = xMLDTDDescription.fPossibleRoots.contains((String) this.fPossibleRoots.get(i));
                        if (z) {
                            break;
                        }
                    }
                    if (!z) {
                        return false;
                    }
                } else if (!arrayList2.contains(str3)) {
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

    @Override // org.apache.xerces.xni.grammars.XMLGrammarDescription
    public String getGrammarType() {
        return "http://www.w3.org/TR/REC-xml";
    }

    @Override // org.apache.xerces.xni.grammars.XMLDTDDescription
    public String getRootName() {
        return this.fRootName;
    }

    @Override // org.apache.xerces.util.XMLResourceIdentifierImpl
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

    public void setPossibleRoots(ArrayList arrayList) {
        this.fPossibleRoots = arrayList;
    }

    public void setRootName(String str) {
        this.fRootName = str;
        this.fPossibleRoots = null;
    }

    public XMLDTDDescription(XMLResourceIdentifier xMLResourceIdentifier, String str) {
        this.fRootName = null;
        this.fPossibleRoots = null;
        setValues(xMLResourceIdentifier.getPublicId(), xMLResourceIdentifier.getLiteralSystemId(), xMLResourceIdentifier.getBaseSystemId(), xMLResourceIdentifier.getExpandedSystemId());
        this.fRootName = str;
        this.fPossibleRoots = null;
    }

    public void setPossibleRoots(Vector vector) {
        this.fPossibleRoots = vector != null ? new ArrayList(vector) : null;
    }

    public XMLDTDDescription(XMLInputSource xMLInputSource) {
        this.fRootName = null;
        this.fPossibleRoots = null;
        setValues(xMLInputSource.getPublicId(), null, xMLInputSource.getBaseSystemId(), xMLInputSource.getSystemId());
        this.fRootName = null;
        this.fPossibleRoots = null;
    }
}
