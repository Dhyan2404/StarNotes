package net.p110sf.saxon.value;

import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes11.dex */
public final class NotationValue extends QualifiedNameValue {
    public NotationValue(String str, String str2, String str3, boolean z) throws XPathException {
        if (z && !NameChecker.isValidNCName(str3)) {
            XPathException xPathException = new XPathException("Malformed local name in NOTATION: '" + str3 + Chars.QUOTE);
            xPathException.setErrorCode("FORG0001");
            throw xPathException;
        }
        str = str == null ? "" : str;
        str2 = str2 == null ? "" : str2;
        if (z && str2.isEmpty() && str.length() != 0) {
            XPathException xPathException2 = new XPathException("NOTATION has null namespace but non-empty prefix");
            xPathException2.setErrorCode("FOCA0002");
            throw xPathException2;
        }
        this.qName = new StructuredQName(str, str2, str3);
        this.typeLabel = BuiltInAtomicType.NOTATION;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue copyAsSubType(AtomicType atomicType) {
        NotationValue notationValue = new NotationValue(getPrefix(), getNamespaceURI(), getLocalName());
        notationValue.typeLabel = atomicType;
        return notationValue;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public boolean equals(Object obj) {
        return (obj instanceof NotationValue) && this.qName.equals(((NotationValue) obj).qName);
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.NOTATION;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public XPathComparable getXPathComparable(StringCollator stringCollator, int i) throws NoDynamicContextException {
        return null;
    }

    @Override // net.p110sf.saxon.value.QualifiedNameValue, net.p110sf.saxon.value.AtomicValue
    public int hashCode() {
        return this.qName.hashCode();
    }

    @Override // net.p110sf.saxon.value.QualifiedNameValue, net.p110sf.saxon.value.AtomicValue
    public String show() {
        return "NOTATION(" + getClarkName() + ')';
    }

    public NotationValue(String str, String str2, String str3) {
        this.qName = new StructuredQName(str, str2, str3);
        this.typeLabel = BuiltInAtomicType.NOTATION;
    }

    public NotationValue(String str, String str2, String str3, AtomicType atomicType) {
        this.qName = new StructuredQName(str, str2, str3);
        this.typeLabel = atomicType;
    }

    public NotationValue(StructuredQName structuredQName, AtomicType atomicType) {
        if (structuredQName == null) {
            throw new NullPointerException("qName");
        }
        if (atomicType != null) {
            this.qName = structuredQName;
            this.typeLabel = atomicType;
            return;
        }
        throw new NullPointerException("typeLabel");
    }
}
