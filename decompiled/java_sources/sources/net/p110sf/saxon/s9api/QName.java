package net.p110sf.saxon.s9api;

import java.util.Objects;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class QName {

    /* renamed from: a */
    public final StructuredQName f101358a;
    public static final QName XS_STRING = new QName("xs", "http://www.w3.org/2001/XMLSchema", "string");
    public static final QName XS_BOOLEAN = new QName("xs", "http://www.w3.org/2001/XMLSchema", "boolean");
    public static final QName XS_DECIMAL = new QName("xs", "http://www.w3.org/2001/XMLSchema", "decimal");
    public static final QName XS_FLOAT = new QName("xs", "http://www.w3.org/2001/XMLSchema", "float");
    public static final QName XS_DOUBLE = new QName("xs", "http://www.w3.org/2001/XMLSchema", "double");
    public static final QName XS_DURATION = new QName("xs", "http://www.w3.org/2001/XMLSchema", "duration");
    public static final QName XS_DATE_TIME = new QName("xs", "http://www.w3.org/2001/XMLSchema", "dateTime");
    public static final QName XS_TIME = new QName("xs", "http://www.w3.org/2001/XMLSchema", "time");
    public static final QName XS_DATE = new QName("xs", "http://www.w3.org/2001/XMLSchema", "date");
    public static final QName XS_G_YEAR_MONTH = new QName("xs", "http://www.w3.org/2001/XMLSchema", "gYearMonth");
    public static final QName XS_G_YEAR = new QName("xs", "http://www.w3.org/2001/XMLSchema", "gYear");
    public static final QName XS_G_MONTH_DAY = new QName("xs", "http://www.w3.org/2001/XMLSchema", "gMonthDay");
    public static final QName XS_G_DAY = new QName("xs", "http://www.w3.org/2001/XMLSchema", "gDay");
    public static final QName XS_G_MONTH = new QName("xs", "http://www.w3.org/2001/XMLSchema", "gMonth");
    public static final QName XS_HEX_BINARY = new QName("xs", "http://www.w3.org/2001/XMLSchema", "hexBinary");
    public static final QName XS_BASE64_BINARY = new QName("xs", "http://www.w3.org/2001/XMLSchema", "base64Binary");
    public static final QName XS_ANY_URI = new QName("xs", "http://www.w3.org/2001/XMLSchema", "anyURI");
    public static final QName XS_QNAME = new QName("xs", "http://www.w3.org/2001/XMLSchema", "QName");
    public static final QName XS_NOTATION = new QName("xs", "http://www.w3.org/2001/XMLSchema", "NOTATION");
    public static final QName XS_INTEGER = new QName("xs", "http://www.w3.org/2001/XMLSchema", "integer");
    public static final QName XS_NON_POSITIVE_INTEGER = new QName("xs", "http://www.w3.org/2001/XMLSchema", "nonPositiveInteger");
    public static final QName XS_NEGATIVE_INTEGER = new QName("xs", "http://www.w3.org/2001/XMLSchema", "negativeInteger");
    public static final QName XS_LONG = new QName("xs", "http://www.w3.org/2001/XMLSchema", "long");
    public static final QName XS_INT = new QName("xs", "http://www.w3.org/2001/XMLSchema", "int");
    public static final QName XS_SHORT = new QName("xs", "http://www.w3.org/2001/XMLSchema", "short");
    public static final QName XS_BYTE = new QName("xs", "http://www.w3.org/2001/XMLSchema", "byte");
    public static final QName XS_NON_NEGATIVE_INTEGER = new QName("xs", "http://www.w3.org/2001/XMLSchema", "nonNegativeInteger");
    public static final QName XS_POSITIVE_INTEGER = new QName("xs", "http://www.w3.org/2001/XMLSchema", "positiveInteger");
    public static final QName XS_UNSIGNED_LONG = new QName("xs", "http://www.w3.org/2001/XMLSchema", "unsignedLong");
    public static final QName XS_UNSIGNED_INT = new QName("xs", "http://www.w3.org/2001/XMLSchema", "unsignedInt");
    public static final QName XS_UNSIGNED_SHORT = new QName("xs", "http://www.w3.org/2001/XMLSchema", "unsignedShort");
    public static final QName XS_UNSIGNED_BYTE = new QName("xs", "http://www.w3.org/2001/XMLSchema", "unsignedByte");
    public static final QName XS_NORMALIZED_STRING = new QName("xs", "http://www.w3.org/2001/XMLSchema", "normalizedString");
    public static final QName XS_TOKEN = new QName("xs", "http://www.w3.org/2001/XMLSchema", "token");
    public static final QName XS_LANGUAGE = new QName("xs", "http://www.w3.org/2001/XMLSchema", "language");
    public static final QName XS_NMTOKEN = new QName("xs", "http://www.w3.org/2001/XMLSchema", "NMTOKEN");
    public static final QName XS_NMTOKENS = new QName("xs", "http://www.w3.org/2001/XMLSchema", "NMTOKENS");
    public static final QName XS_NAME = new QName("xs", "http://www.w3.org/2001/XMLSchema", "Name");
    public static final QName XS_NCNAME = new QName("xs", "http://www.w3.org/2001/XMLSchema", "NCName");
    public static final QName XS_ID = new QName("xs", "http://www.w3.org/2001/XMLSchema", "ID");
    public static final QName XS_IDREF = new QName("xs", "http://www.w3.org/2001/XMLSchema", "IDREF");
    public static final QName XS_IDREFS = new QName("xs", "http://www.w3.org/2001/XMLSchema", "IDREFS");
    public static final QName XS_ENTITY = new QName("xs", "http://www.w3.org/2001/XMLSchema", "ENTITY");
    public static final QName XS_ENTITIES = new QName("xs", "http://www.w3.org/2001/XMLSchema", "ENTITIES");
    public static final QName XS_UNTYPED = new QName("xs", "http://www.w3.org/2001/XMLSchema", "untyped");
    public static final QName XS_UNTYPED_ATOMIC = new QName("xs", "http://www.w3.org/2001/XMLSchema", "untypedAtomic");
    public static final QName XS_ANY_ATOMIC_TYPE = new QName("xs", "http://www.w3.org/2001/XMLSchema", "anyAtomicType");
    public static final QName XS_YEAR_MONTH_DURATION = new QName("xs", "http://www.w3.org/2001/XMLSchema", "yearMonthDuration");
    public static final QName XS_DAY_TIME_DURATION = new QName("xs", "http://www.w3.org/2001/XMLSchema", "dayTimeDuration");
    public static final QName XS_DATE_TIME_STAMP = new QName("xs", "http://www.w3.org/2001/XMLSchema", "dateTimeStamp");

    public QName(String str, String str2, String str3) {
        this.f101358a = new StructuredQName(str, str2, str3);
    }

    public static QName fromClarkName(String str) throws IllegalArgumentException {
        String str2;
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Supplied Clark name is null or empty");
        }
        if (str.charAt(0) == '{') {
            int indexOf = str.indexOf(125);
            if (indexOf < 0) {
                throw new IllegalArgumentException("No closing '}' in Clark name");
            }
            str2 = str.substring(1, indexOf);
            if (indexOf == str.length()) {
                throw new IllegalArgumentException("Missing local part in Clark name");
            }
            str = str.substring(indexOf + 1);
        } else {
            str2 = "";
        }
        return new QName("", str2, str);
    }

    public static QName fromEQName(String str) {
        String str2;
        if (str.charAt(0) == 'Q' && str.charAt(1) == '{') {
            int indexOf = str.indexOf(125);
            if (indexOf < 0) {
                throw new IllegalArgumentException("No closing '}' in EQName");
            }
            str2 = str.substring(2, indexOf);
            if (indexOf == str.length()) {
                throw new IllegalArgumentException("Missing local part in EQName");
            }
            str = str.substring(indexOf + 1);
        } else {
            str2 = "";
        }
        return new QName("", str2, str);
    }

    public boolean equals(Object obj) {
        return (obj instanceof QName) && this.f101358a.equals(((QName) obj).f101358a);
    }

    public String getClarkName() {
        String namespaceURI = getNamespaceURI();
        if (namespaceURI.isEmpty()) {
            return getLocalName();
        }
        return "{" + namespaceURI + "}" + getLocalName();
    }

    public String getEQName() {
        String namespaceURI = getNamespaceURI();
        if (namespaceURI.length() == 0) {
            return getLocalName();
        }
        return "Q{" + namespaceURI + "}" + getLocalName();
    }

    public String getLocalName() {
        return this.f101358a.getLocalPart();
    }

    public String getNamespaceURI() {
        return this.f101358a.getURI();
    }

    public String getPrefix() {
        return this.f101358a.getPrefix();
    }

    public StructuredQName getStructuredQName() {
        return this.f101358a;
    }

    public int hashCode() {
        return this.f101358a.hashCode();
    }

    public boolean isValid(Processor processor) {
        String prefix = getPrefix();
        if (prefix.isEmpty() || NameChecker.isValidNCName(prefix)) {
            return NameChecker.isValidNCName(getLocalName());
        }
        return false;
    }

    public String toString() {
        return this.f101358a.getDisplayName();
    }

    public QName(String str, String str2) {
        str = str == null ? "" : str;
        int indexOf = str2.indexOf(58);
        if (indexOf < 0) {
            this.f101358a = new StructuredQName("", str, str2);
        } else {
            this.f101358a = new StructuredQName(str2.substring(0, indexOf), str, str2.substring(indexOf + 1));
        }
    }

    public QName(String str) {
        if (str.indexOf(58) < 0) {
            this.f101358a = new StructuredQName("", "", str);
            return;
        }
        throw new IllegalArgumentException("Local name contains a colon");
    }

    public QName(String str, XdmNode xdmNode) {
        if (str.startsWith("{")) {
            str = "Q" + str;
        }
        try {
            this.f101358a = StructuredQName.fromLexicalQName(str, true, true, xdmNode.getUnderlyingValue().getAllNamespaces());
        } catch (XPathException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public QName(javax.xml.namespace.QName qName) {
        this.f101358a = new StructuredQName(qName.getPrefix(), qName.getNamespaceURI(), qName.getLocalPart());
    }

    public QName(StructuredQName structuredQName) {
        Objects.requireNonNull(structuredQName);
        this.f101358a = structuredQName;
    }
}
