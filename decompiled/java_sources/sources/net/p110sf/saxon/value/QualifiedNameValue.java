package net.p110sf.saxon.value;

import javax.xml.namespace.QName;
import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ValidationFailure;

/* loaded from: classes11.dex */
public abstract class QualifiedNameValue extends AtomicValue implements AtomicMatchKey {
    protected StructuredQName qName;

    public static AtomicValue makeQName(String str, String str2, String str3, AtomicType atomicType, UnicodeString unicodeString, ConversionRules conversionRules) throws XPathException {
        if (atomicType.getFingerprint() == 530) {
            return new QNameValue(str, str2, str3, BuiltInAtomicType.QNAME, true);
        }
        AtomicValue qNameValue = atomicType.getPrimitiveType() == 530 ? new QNameValue(str, str2, str3, atomicType, true) : new NotationValue(str, str2, str3, (AtomicType) null);
        ValidationFailure validate = atomicType.validate(qNameValue, unicodeString, conversionRules);
        if (validate != null) {
            throw validate.makeException();
        }
        qNameValue.setTypeLabel(atomicType);
        return qNameValue;
    }

    public final String getClarkName() {
        return this.qName.getClarkName();
    }

    public final String getEQName() {
        return this.qName.getEQName();
    }

    public final String getLocalName() {
        return this.qName.getLocalPart();
    }

    public final String getNamespaceURI() {
        return this.qName.getURI();
    }

    public final String getPrefix() {
        return this.qName.getPrefix();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public final UnicodeString getPrimitiveStringValue() {
        return StringView.m63901of(this.qName.getDisplayName()).tidy();
    }

    public StructuredQName getStructuredQName() {
        return this.qName;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicMatchKey getXPathMatchKey(StringCollator stringCollator, int i) {
        return this;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public int hashCode() {
        return this.qName.hashCode();
    }

    @Override // net.p110sf.saxon.value.AtomicValue, net.p110sf.saxon.om.IdentityComparable
    public int identityHashCode() {
        return this.qName.identityHashCode();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public boolean isIdentical(AtomicValue atomicValue) {
        return super.isIdentical(atomicValue) && this.qName.getPrefix().equals(((QualifiedNameValue) atomicValue).getPrefix());
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public String show() {
        return "QName(\"" + getNamespaceURI() + "\", \"" + getLocalName() + "\")";
    }

    public QName toJaxpQName() {
        return this.qName.toJaxpQName();
    }
}
