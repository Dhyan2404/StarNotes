package net.p110sf.saxon.value;

import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.functions.AccessorFn;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes11.dex */
public class QNameValue extends QualifiedNameValue {

    /* renamed from: net.sf.saxon.value.QNameValue$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18570a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f102905a;

        static {
            int[] iArr = new int[AccessorFn.Component.values().length];
            f102905a = iArr;
            try {
                iArr[AccessorFn.Component.LOCALNAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f102905a[AccessorFn.Component.NAMESPACE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f102905a[AccessorFn.Component.PREFIX.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public QNameValue(String str, String str2, String str3) {
        this(str, str2, str3, BuiltInAtomicType.QNAME);
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue copyAsSubType(AtomicType atomicType) {
        return new QNameValue(this.qName, atomicType);
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public boolean equals(Object obj) {
        return (obj instanceof QNameValue) && this.qName.equals(((QNameValue) obj).qName);
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue getComponent(AccessorFn.Component component) {
        int i = C18570a.f102905a[component.ordinal()];
        if (i == 1) {
            return new StringValue(getLocalName(), BuiltInAtomicType.NCNAME);
        }
        if (i == 2) {
            return new AnyURIValue(getNamespaceURI());
        }
        if (i != 3) {
            throw new UnsupportedOperationException("Component of QName must be URI, Local Name, or Prefix");
        }
        String prefix = getPrefix();
        if (prefix.isEmpty()) {
            return null;
        }
        return new StringValue(prefix, BuiltInAtomicType.NCNAME);
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.QNAME;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public XPathComparable getXPathComparable(StringCollator stringCollator, int i) throws NoDynamicContextException {
        return null;
    }

    @Override // net.p110sf.saxon.value.QualifiedNameValue, net.p110sf.saxon.value.AtomicValue
    public int hashCode() {
        return this.qName.hashCode();
    }

    public QNameValue(String str, String str2, String str3, AtomicType atomicType) {
        this.qName = new StructuredQName(str, str2, str3);
        this.typeLabel = atomicType == null ? BuiltInAtomicType.QNAME : atomicType;
    }

    public QNameValue(String str, String str2, String str3, AtomicType atomicType, boolean z) throws XPathException {
        if (NameChecker.isValidNCName(str3)) {
            str = str == null ? "" : str;
            str2 = "".equals(str2) ? null : str2;
            if (z && str2 == null && str.length() != 0) {
                XPathException xPathException = new XPathException("QName has null namespace but non-empty prefix");
                xPathException.setErrorCode("FOCA0002");
                throw xPathException;
            }
            this.qName = new StructuredQName(str, str2, str3);
            this.typeLabel = atomicType;
            return;
        }
        XPathException xPathException2 = new XPathException("Malformed local name in QName: '" + str3 + Chars.QUOTE);
        xPathException2.setErrorCode("FORG0001");
        throw xPathException2;
    }

    public QNameValue(StructuredQName structuredQName, AtomicType atomicType) {
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
