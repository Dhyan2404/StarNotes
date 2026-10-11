package net.p110sf.saxon.functions.hof;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.MappingIterator;
import net.p110sf.saxon.expr.SequenceMapper;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.functions.hof.ForEachFn;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SpecificFunctionType;

/* loaded from: classes11.dex */
public class ForEachFn extends SystemFunction {
    /* renamed from: c */
    public static /* synthetic */ SequenceIterator m63233c(Function function, XPathContext xPathContext, Item item) throws XPathException {
        return SystemFunction.dynamicCall(function, xPathContext, new Sequence[]{item}).iterate();
    }

    /* renamed from: b */
    public final SequenceIterator m63234b(final Function function, SequenceIterator sequenceIterator, final XPathContext xPathContext) {
        return MappingIterator.map(sequenceIterator, new SequenceMapper.Lambda() { // from class: com.sunia.HTREnginev2.nsg
            @Override // net.sf.saxon.expr.SequenceMapper.Lambda
            public final SequenceIterator map(Item item) {
                SequenceIterator m63233c;
                m63233c = ForEachFn.m63233c(Function.this, xPathContext, item);
                return m63233c;
            }
        });
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return SequenceTool.toLazySequence(m63234b((Function) sequenceArr[1].head(), sequenceArr[0].iterate(), xPathContext));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public ItemType getResultItemType(Expression[] expressionArr) {
        ItemType itemType = expressionArr[1].getItemType();
        return itemType instanceof SpecificFunctionType ? ((SpecificFunctionType) itemType).getResultType().getPrimaryType() : AnyItemType.getInstance();
    }
}
