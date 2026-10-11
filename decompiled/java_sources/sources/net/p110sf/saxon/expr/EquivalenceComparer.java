package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.sort.GenericAtomicComparer;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.CalendarValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class EquivalenceComparer extends GenericAtomicComparer {
    public EquivalenceComparer(StringCollator stringCollator, XPathContext xPathContext) {
        super(stringCollator, xPathContext);
    }

    @Override // net.p110sf.saxon.expr.sort.GenericAtomicComparer, net.p110sf.saxon.expr.sort.AtomicComparer
    public boolean comparesEqual(AtomicValue atomicValue, AtomicValue atomicValue2) throws NoDynamicContextException {
        if ((atomicValue instanceof StringValue) && (atomicValue2 instanceof StringValue)) {
            return getStringCollator().comparesEqual(atomicValue.getUnicodeStringValue(), atomicValue2.getUnicodeStringValue());
        }
        if ((atomicValue instanceof CalendarValue) && (atomicValue2 instanceof CalendarValue)) {
            return ((CalendarValue) atomicValue).compareTo((CalendarValue) atomicValue2, getContext().getImplicitTimezone()) == 0;
        }
        if (atomicValue.isNaN() && atomicValue2.isNaN()) {
            return true;
        }
        int implicitTimezone = getContext().getImplicitTimezone();
        return atomicValue.getXPathMatchKey(getStringCollator(), implicitTimezone).equals(atomicValue2.getXPathMatchKey(getStringCollator(), implicitTimezone));
    }

    @Override // net.p110sf.saxon.expr.sort.GenericAtomicComparer, net.p110sf.saxon.expr.sort.AtomicComparer
    public String save() {
        return "EQUIV|" + super.save();
    }

    @Override // net.p110sf.saxon.expr.sort.GenericAtomicComparer, net.p110sf.saxon.expr.sort.AtomicComparer
    public EquivalenceComparer provideContext(XPathContext xPathContext) {
        return new EquivalenceComparer(getStringCollator(), xPathContext);
    }
}
