package com.sun.org.apache.xerces.internal.impl.p053dv.p054xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.p056xs.datatypes.XSQName;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xerces.internal.xni.QName;

/* loaded from: classes10.dex */
public class QNameDV extends TypeValidator {
    private static final String EMPTY_STRING = "".intern();

    /* loaded from: classes10.dex */
    public static final class XQName extends QName implements XSQName {
        public XQName(String str, String str2, String str3, String str4) {
            setValues(str, str2, str3, str4);
        }

        @Override // com.sun.org.apache.xerces.internal.xni.QName
        public boolean equals(Object obj) {
            if (!(obj instanceof QName)) {
                return false;
            }
            QName qName = (QName) obj;
            return this.uri == qName.uri && this.localpart == qName.localpart;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSQName
        public javax.xml.namespace.QName getJAXPQName() {
            return new javax.xml.namespace.QName(this.uri, this.localpart, this.prefix);
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSQName
        public QName getXNIQName() {
            return this;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.QName
        public synchronized String toString() {
            return this.rawname;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        String str2;
        String str3;
        int indexOf = str.indexOf(":");
        if (indexOf > 0) {
            str2 = validationContext.getSymbol(str.substring(0, indexOf));
            str3 = str.substring(indexOf + 1);
        } else {
            str2 = EMPTY_STRING;
            str3 = str;
        }
        if (str2.length() > 0 && !XMLChar.isValidNCName(str2)) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "QName"});
        }
        if (!XMLChar.isValidNCName(str3)) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "QName"});
        }
        String uri = validationContext.getURI(str2);
        if (str2.length() <= 0 || uri != null) {
            return new XQName(str2, validationContext.getSymbol(str3), validationContext.getSymbol(str), uri);
        }
        throw new InvalidDatatypeValueException("UndeclaredPrefix", new Object[]{str, str2});
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public short getAllowedFacets() {
        return (short) 2079;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public int getDataLength(Object obj) {
        return ((XQName) obj).rawname.length();
    }
}
