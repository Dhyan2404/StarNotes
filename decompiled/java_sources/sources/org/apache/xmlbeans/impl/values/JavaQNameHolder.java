package org.apache.xmlbeans.impl.values;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.common.PrefixResolver;
import org.apache.xmlbeans.impl.common.QNameHelper;
import org.apache.xmlbeans.impl.common.ValidationContext;
import org.apache.xmlbeans.impl.common.XMLChar;
import org.apache.xmlbeans.impl.schema.BuiltinSchemaTypeSystem;

/* loaded from: classes13.dex */
public class JavaQNameHolder extends XmlObjectBase {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final NamespaceManager PRETTY_PREFIXER = new PrettyNamespaceManager();
    private QName _value;

    /* loaded from: classes13.dex */
    public static class PrettyNamespaceManager implements NamespaceManager {
        private PrettyNamespaceManager() {
        }

        @Override // org.apache.xmlbeans.impl.values.NamespaceManager
        public String find_prefix_for_nsuri(String str, String str2) {
            return QNameHelper.suggestPrefix(str);
        }

        @Override // org.apache.xmlbeans.impl.common.PrefixResolver
        public String getNamespaceForPrefix(String str) {
            throw new RuntimeException("Should not be called");
        }
    }

    private static QName parse(String str, PrefixResolver prefixResolver) {
        String substring;
        String str2;
        int length = str.length();
        while (length > 0 && XMLChar.isSpace(str.charAt(length - 1))) {
            length--;
        }
        int i = 0;
        while (i < length && XMLChar.isSpace(str.charAt(i))) {
            i++;
        }
        int indexOf = str.indexOf(58, i);
        String str3 = "";
        if (indexOf >= 0) {
            str2 = str.substring(i, indexOf);
            substring = str.substring(indexOf + 1, length);
        } else {
            substring = str.substring(i, length);
            str2 = "";
        }
        if (str2.length() > 0 && !XMLChar.isValidNCName(str2)) {
            throw new XmlValueOutOfRangeException("QName", new Object[]{"Prefix not a valid NCName in '" + str + CloudStorageConstants.SINGLE_QUOTES});
        }
        if (!XMLChar.isValidNCName(substring)) {
            throw new XmlValueOutOfRangeException("QName", new Object[]{"Localname not a valid NCName in '" + str + CloudStorageConstants.SINGLE_QUOTES});
        }
        String namespaceForPrefix = prefixResolver == null ? null : prefixResolver.getNamespaceForPrefix(str2);
        if (namespaceForPrefix != null) {
            str3 = namespaceForPrefix;
        } else if (str2.length() > 0) {
            throw new XmlValueOutOfRangeException("QName", new Object[]{"Can't resolve prefix '" + str2 + CloudStorageConstants.SINGLE_QUOTES});
        }
        return str2.length() > 0 ? new QName(str3, substring, str2) : new QName(str3, substring);
    }

    public static QName validateLexical(String str, ValidationContext validationContext, PrefixResolver prefixResolver) {
        try {
            return parse(str, prefixResolver);
        } catch (XmlValueOutOfRangeException e) {
            validationContext.invalid(e.getMessage());
            return null;
        }
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public String compute_text(NamespaceManager namespaceManager) {
        if (namespaceManager == null) {
            namespaceManager = PRETTY_PREFIXER;
        }
        String namespaceURI = this._value.getNamespaceURI();
        String localPart = this._value.getLocalPart();
        if (namespaceURI == null || namespaceURI.length() == 0) {
            return localPart;
        }
        String find_prefix_for_nsuri = namespaceManager.find_prefix_for_nsuri(namespaceURI, null);
        if ("".equals(find_prefix_for_nsuri)) {
            return localPart;
        }
        return find_prefix_for_nsuri + ":" + localPart;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public boolean equal_to(XmlObject xmlObject) {
        return this._value.equals(((XmlObjectBase) xmlObject).getQNameValue());
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public QName getQNameValue() {
        check_dated();
        return this._value;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public int get_wscanon_rule() {
        return 1;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.XmlObject
    public SchemaType schemaType() {
        return BuiltinSchemaTypeSystem.ST_QNAME;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_QName(QName qName) {
        if (has_store()) {
            get_store().find_prefix_for_nsuri(qName.getNamespaceURI(), null);
        }
        this._value = qName;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_nil() {
        this._value = null;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_text(String str) {
        PrefixResolver current = NamespaceContext.getCurrent();
        if (current == null && has_store()) {
            current = get_store();
        }
        this._value = parse(str, current);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_xmlanysimple(XmlAnySimpleType xmlAnySimpleType) {
        this._value = parse(xmlAnySimpleType.getStringValue(), NamespaceContext.getCurrent());
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public int value_hash_code() {
        return this._value.hashCode();
    }
}
