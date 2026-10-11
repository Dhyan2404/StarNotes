package net.p110sf.saxon.functions.hof;

import net.p110sf.saxon.expr.ItemFilter;
import net.p110sf.saxon.expr.ItemMappingIterator;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.functions.hof.FilterFn;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.BooleanValue;

/* loaded from: classes11.dex */
public class FilterFn extends SystemFunction {
    /* renamed from: c */
    public static /* synthetic */ boolean m63229c(Function function, XPathContext xPathContext, Item item) throws XPathException {
        return ((BooleanValue) SystemFunction.dynamicCall(function, xPathContext, new Sequence[]{item}).head()).getBooleanValue();
    }

    /* renamed from: b */
    public final SequenceIterator m63230b(final Function function, SequenceIterator sequenceIterator, final XPathContext xPathContext) {
        return ItemMappingIterator.filter(sequenceIterator, new ItemFilter.Lambda() { // from class: com.sunia.HTREnginev2.bmg
            @Override // net.sf.saxon.expr.ItemFilter.Lambda
            public final boolean test(Item item) {
                boolean m63229c;
                m63229c = FilterFn.m63229c(Function.this, xPathContext, item);
                return m63229c;
            }
        });
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return SequenceTool.toLazySequence(m63230b((Function) sequenceArr[1].head(), sequenceArr[0].iterate(), xPathContext));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "FilterFn";
    }
}
