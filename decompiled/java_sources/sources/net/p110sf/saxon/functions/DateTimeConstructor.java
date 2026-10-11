package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.DateTimeValue;
import net.p110sf.saxon.value.DateValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.TimeValue;

/* loaded from: classes11.dex */
public class DateTimeConstructor extends SystemFunction {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        DateValue dateValue = (DateValue) sequenceArr[0].head();
        TimeValue timeValue = (TimeValue) sequenceArr[1].head();
        return (dateValue == null || timeValue == null) ? EmptySequence.getInstance() : DateTimeValue.makeDateTimeValue(dateValue, timeValue);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "DateTimeConstructorCompiler";
    }
}
