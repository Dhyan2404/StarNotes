package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.CalendarValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class GenericAtomicComparer implements AtomicComparer {

    /* renamed from: a */
    public StringCollator f100036a;

    /* renamed from: b */
    public final transient XPathContext f100037b;

    public GenericAtomicComparer(StringCollator stringCollator, XPathContext xPathContext) {
        this.f100036a = stringCollator;
        if (stringCollator == null) {
            this.f100036a = CodepointCollator.getInstance();
        }
        this.f100037b = xPathContext;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x001e. Please report as an issue. */
    public static AtomicComparer makeAtomicComparer(BuiltInAtomicType builtInAtomicType, BuiltInAtomicType builtInAtomicType2, StringCollator stringCollator, XPathContext xPathContext) {
        int fingerprint = builtInAtomicType.getFingerprint();
        int fingerprint2 = builtInAtomicType2.getFingerprint();
        if (fingerprint == fingerprint2) {
            if (fingerprint == 530 || fingerprint == 531) {
                return EqualityComparer.getInstance();
            }
            if (fingerprint != 533 && fingerprint != 633 && fingerprint != 634) {
                switch (fingerprint) {
                    default:
                        switch (fingerprint) {
                            case 519:
                            case 520:
                            case 521:
                            case 522:
                            case StandardNames.XS_G_YEAR /* 523 */:
                            case 524:
                            case StandardNames.XS_G_DAY /* 525 */:
                            case StandardNames.XS_G_MONTH /* 526 */:
                                return new CalendarValueComparer(xPathContext);
                        }
                    case 514:
                    case 515:
                    case 516:
                    case 517:
                        return ContextFreeAtomicComparer.getInstance();
                }
            }
            return ContextFreeAtomicComparer.getInstance();
        }
        return (builtInAtomicType.isPrimitiveNumeric() && builtInAtomicType2.isPrimitiveNumeric()) ? ContextFreeAtomicComparer.getInstance() : ((fingerprint == 513 || fingerprint == 631 || fingerprint == 529) && (fingerprint2 == 513 || fingerprint2 == 631 || fingerprint2 == 529)) ? stringCollator instanceof CodepointCollator ? CodepointCollatingComparer.getInstance() : new CollatingAtomicComparer(stringCollator) : new GenericAtomicComparer(stringCollator, xPathContext);
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public int compareAtomicValues(AtomicValue atomicValue, AtomicValue atomicValue2) throws NoDynamicContextException {
        if (atomicValue == null) {
            return atomicValue2 == null ? 0 : -1;
        }
        if (atomicValue2 == null) {
            return 1;
        }
        if ((atomicValue instanceof StringValue) && (atomicValue2 instanceof StringValue)) {
            return this.f100036a.compareStrings(atomicValue.getUnicodeStringValue(), atomicValue2.getUnicodeStringValue());
        }
        int implicitTimezone = this.f100037b.getImplicitTimezone();
        XPathComparable xPathComparable = atomicValue.getXPathComparable(this.f100036a, implicitTimezone);
        XPathComparable xPathComparable2 = atomicValue2.getXPathComparable(this.f100036a, implicitTimezone);
        if (xPathComparable != null && xPathComparable2 != null) {
            return xPathComparable.compareTo(xPathComparable2);
        }
        throw new ComparisonException(new XPathException("Objects are not comparable (" + Type.displayTypeName(atomicValue) + ", " + Type.displayTypeName(atomicValue2) + ')', "XPTY0004"));
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public boolean comparesEqual(AtomicValue atomicValue, AtomicValue atomicValue2) throws NoDynamicContextException {
        if ((atomicValue instanceof StringValue) && (atomicValue2 instanceof StringValue)) {
            return this.f100036a.comparesEqual(atomicValue.getUnicodeStringValue(), atomicValue2.getUnicodeStringValue());
        }
        if ((atomicValue instanceof CalendarValue) && (atomicValue2 instanceof CalendarValue)) {
            return ((CalendarValue) atomicValue).compareTo((CalendarValue) atomicValue2, this.f100037b.getImplicitTimezone()) == 0;
        }
        int implicitTimezone = this.f100037b.getImplicitTimezone();
        return atomicValue.getXPathMatchKey(this.f100036a, implicitTimezone).equals(atomicValue2.getXPathMatchKey(this.f100036a, implicitTimezone));
    }

    public boolean equals(Object obj) {
        return (obj instanceof GenericAtomicComparer) && this.f100036a.equals(((GenericAtomicComparer) obj).f100036a);
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public StringCollator getCollator() {
        return this.f100036a;
    }

    public XPathContext getContext() {
        return this.f100037b;
    }

    public StringCollator getStringCollator() {
        return this.f100036a;
    }

    public int hashCode() {
        return this.f100036a.hashCode();
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public String save() {
        return "GAC|" + this.f100036a.getCollationURI();
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public GenericAtomicComparer provideContext(XPathContext xPathContext) {
        return new GenericAtomicComparer(this.f100036a, xPathContext);
    }
}
