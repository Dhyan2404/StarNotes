package net.p110sf.saxon.expr.sort;

import com.google.firebase.installations.local.IidStore;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.QNameValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class AtomicSortComparer implements AtomicComparer {
    public static AtomicMatchKey COLLATION_KEY_NaN = new C18325b();

    /* renamed from: a */
    public StringCollator f100006a;

    /* renamed from: b */
    public final transient XPathContext f100007b;

    /* renamed from: c */
    public final int f100008c;

    /* renamed from: net.sf.saxon.expr.sort.AtomicSortComparer$b */
    /* loaded from: classes11.dex */
    public static class C18325b implements AtomicMatchKey {
        public C18325b() {
        }

        /* renamed from: a */
        public int m62888a(AtomicMatchKey atomicMatchKey) {
            return Integer.MIN_VALUE;
        }

        @Override // net.p110sf.saxon.expr.sort.AtomicMatchKey
        public AtomicValue asAtomic() {
            return new QNameValue("saxon", "http://saxon.sf.net/collation-key", "NaN");
        }
    }

    public AtomicSortComparer(StringCollator stringCollator, int i, XPathContext xPathContext) {
        this.f100006a = stringCollator;
        if (stringCollator == null) {
            this.f100006a = CodepointCollator.getInstance();
        }
        this.f100007b = xPathContext;
        this.f100008c = i;
    }

    public static AtomicComparer makeSortComparer(StringCollator stringCollator, int i, XPathContext xPathContext) {
        if (i != 513 && i != 529) {
            if (i != 533) {
                if (i != 631) {
                    if (i != 635) {
                        switch (i) {
                            case 515:
                                break;
                            case 516:
                            case 517:
                                break;
                            default:
                                switch (i) {
                                    case 519:
                                    case 520:
                                    case 521:
                                        return new CalendarValueComparer(xPathContext);
                                    default:
                                        return new AtomicSortComparer(stringCollator, i, xPathContext);
                                }
                        }
                    }
                    return DoubleSortComparer.getInstance();
                }
            }
            return DecimalSortComparer.getDecimalSortComparerInstance();
        }
        return stringCollator instanceof CodepointCollator ? CodepointCollatingComparer.getInstance() : new CollatingAtomicComparer(stringCollator);
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public int compareAtomicValues(AtomicValue atomicValue, AtomicValue atomicValue2) throws NoDynamicContextException {
        if (atomicValue == null) {
            return atomicValue2 == null ? 0 : -1;
        }
        if (atomicValue2 == null) {
            return 1;
        }
        if (atomicValue.isNaN()) {
            return atomicValue2.isNaN() ? 0 : -1;
        }
        if (atomicValue2.isNaN()) {
            return 1;
        }
        if ((atomicValue instanceof StringValue) && (atomicValue2 instanceof StringValue)) {
            return this.f100006a.compareStrings(atomicValue.getUnicodeStringValue(), atomicValue2.getUnicodeStringValue());
        }
        int implicitTimezone = this.f100007b.getImplicitTimezone();
        XPathComparable xPathComparable = atomicValue.getXPathComparable(this.f100006a, implicitTimezone);
        XPathComparable xPathComparable2 = atomicValue2.getXPathComparable(this.f100006a, implicitTimezone);
        if (xPathComparable == null || xPathComparable2 == null) {
            return compareNonComparables(atomicValue, atomicValue2);
        }
        try {
            return xPathComparable.compareTo(xPathComparable2);
        } catch (ClassCastException unused) {
            String str = "Cannot compare " + atomicValue.getPrimitiveType().getDisplayName() + " with " + atomicValue2.getPrimitiveType().getDisplayName();
            if (atomicValue.isUntypedAtomic() || atomicValue2.isUntypedAtomic()) {
                str = str + ". Further information: see http://saxonica.plan.io/issues/3450";
            }
            throw new ClassCastException(str);
        }
    }

    public int compareNonComparables(AtomicValue atomicValue, AtomicValue atomicValue2) {
        throw new ComparisonException(new XPathException("Values are not comparable (" + Type.displayTypeName(atomicValue) + ", " + Type.displayTypeName(atomicValue2) + ')', "XPTY0004"));
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public boolean comparesEqual(AtomicValue atomicValue, AtomicValue atomicValue2) throws NoDynamicContextException {
        return compareAtomicValues(atomicValue, atomicValue2) == 0;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public StringCollator getCollator() {
        return this.f100006a;
    }

    public int getItemType() {
        return this.f100008c;
    }

    public StringCollator getStringCollator() {
        return this.f100006a;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public AtomicComparer provideContext(XPathContext xPathContext) {
        return new AtomicSortComparer(this.f100006a, this.f100008c, xPathContext);
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public String save() {
        return "AtSC|" + this.f100008c + IidStore.f35940g + getCollator().getCollationURI();
    }
}
