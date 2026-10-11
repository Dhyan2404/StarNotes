package org.apache.xerces.impl.p115dv.p116xs;

import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.p118xs.datatypes.XSQName;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.xni.QName;

/* loaded from: classes13.dex */
public class QNameDV extends TypeValidator {

    /* renamed from: b */
    public static final String f112345b = "".intern();

    /* renamed from: org.apache.xerces.impl.dv.xs.QNameDV$a */
    /* loaded from: classes13.dex */
    public static final class C20018a extends QName implements XSQName {
        public C20018a(String str, String str2, String str3, String str4) {
            setValues(str, str2, str3, str4);
        }

        @Override // org.apache.xerces.xni.QName
        public boolean equals(Object obj) {
            if (!(obj instanceof QName)) {
                return false;
            }
            QName qName = (QName) obj;
            return this.uri == qName.uri && this.localpart == qName.localpart;
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSQName
        public javax.xml.namespace.QName getJAXPQName() {
            return new javax.xml.namespace.QName(this.uri, this.localpart, this.prefix);
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSQName
        public QName getXNIQName() {
            return this;
        }

        @Override // org.apache.xerces.xni.QName
        public String toString() {
            return this.rawname;
        }
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        String str2;
        String str3;
        int indexOf = str.indexOf(":");
        if (indexOf > 0) {
            str2 = validationContext.getSymbol(str.substring(0, indexOf));
            str3 = str.substring(indexOf + 1);
        } else {
            str2 = f112345b;
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
            return new C20018a(str2, validationContext.getSymbol(str3), validationContext.getSymbol(str), uri);
        }
        throw new InvalidDatatypeValueException("UndeclaredPrefix", new Object[]{str, str2});
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public short getAllowedFacets() {
        return (short) 2079;
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public int getDataLength(Object obj) {
        return ((C20018a) obj).rawname.length();
    }
}
