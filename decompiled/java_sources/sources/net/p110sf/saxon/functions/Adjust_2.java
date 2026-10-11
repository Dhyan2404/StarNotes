package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.CalendarValue;
import net.p110sf.saxon.value.DayTimeDurationValue;
import net.p110sf.saxon.value.EmptySequence;

/* loaded from: classes11.dex */
public class Adjust_2 extends SystemFunction {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        CalendarValue calendarValue = (CalendarValue) sequenceArr[0].head();
        if (calendarValue == null) {
            return EmptySequence.getInstance();
        }
        DayTimeDurationValue dayTimeDurationValue = (DayTimeDurationValue) sequenceArr[1].head();
        return dayTimeDurationValue == null ? calendarValue.removeTimezone() : calendarValue.adjustTimezone(dayTimeDurationValue);
    }
}
