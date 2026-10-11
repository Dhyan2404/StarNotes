package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.ItemMapper;
import net.p110sf.saxon.expr.ItemMappingIterator;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.CharactersFn;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.LazySequence;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.str.UnicodeChar;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class CharactersFn extends SystemFunction {
    /* renamed from: b */
    public static /* synthetic */ Item m62952b(Item item) throws XPathException {
        return new StringValue(new UnicodeChar((int) ((IntegerValue) item).longValue()));
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return new LazySequence(new ItemMappingIterator(((StringValue) sequenceArr[0].head()).iterateCharacters(), ItemMapper.m62594of(new ItemMapper.Lambda() { // from class: com.sunia.HTREnginev2.ird
            @Override // net.sf.saxon.expr.ItemMapper.Lambda
            public final Item map(Item item) {
                Item m62952b;
                m62952b = CharactersFn.m62952b(item);
                return m62952b;
            }
        })));
    }
}
