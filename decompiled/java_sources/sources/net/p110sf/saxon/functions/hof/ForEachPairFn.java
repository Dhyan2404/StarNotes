package net.p110sf.saxon.functions.hof;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.MappingIterator;
import net.p110sf.saxon.expr.SequenceMapper;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.functions.hof.ForEachPairFn;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.ObjectValue;

/* loaded from: classes11.dex */
public class ForEachPairFn extends SystemFunction {

    /* renamed from: net.sf.saxon.functions.hof.ForEachPairFn$a */
    /* loaded from: classes11.dex */
    public static class C18386a implements SequenceIterator {

        /* renamed from: e */
        public final SequenceIterator f100377e;

        /* renamed from: f */
        public final SequenceIterator f100378f;

        /* renamed from: g */
        public final Sequence[] f100379g = new Sequence[2];

        public C18386a(SequenceIterator sequenceIterator, SequenceIterator sequenceIterator2) {
            this.f100377e = sequenceIterator;
            this.f100378f = sequenceIterator2;
        }

        @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f100377e.close();
            this.f100378f.close();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public void discharge() {
            this.f100377e.discharge();
            this.f100378f.discharge();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public ObjectValue<Sequence[]> next() {
            Item next = this.f100377e.next();
            if (next == null) {
                close();
                return null;
            }
            Item next2 = this.f100378f.next();
            if (next2 == null) {
                close();
                return null;
            }
            Sequence[] sequenceArr = this.f100379g;
            sequenceArr[0] = next;
            sequenceArr[1] = next2;
            return new ObjectValue<>(sequenceArr);
        }
    }

    /* renamed from: c */
    public static /* synthetic */ SequenceIterator m63236c(Function function, XPathContext xPathContext, Item item) throws XPathException {
        return SystemFunction.dynamicCall(function, xPathContext, (Sequence[]) ((ObjectValue) item).getObject()).iterate();
    }

    /* renamed from: b */
    public final SequenceIterator m63237b(final Function function, SequenceIterator sequenceIterator, SequenceIterator sequenceIterator2, final XPathContext xPathContext) {
        return MappingIterator.map(new C18386a(sequenceIterator, sequenceIterator2), new SequenceMapper.Lambda() { // from class: com.sunia.HTREnginev2.psg
            @Override // net.sf.saxon.expr.SequenceMapper.Lambda
            public final SequenceIterator map(Item item) {
                SequenceIterator m63236c;
                m63236c = ForEachPairFn.m63236c(Function.this, xPathContext, item);
                return m63236c;
            }
        });
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return SequenceTool.toLazySequence(m63237b((Function) sequenceArr[2].head(), sequenceArr[0].iterate(), sequenceArr[1].iterate(), xPathContext));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public ItemType getResultItemType(Expression[] expressionArr) {
        ItemType itemType = expressionArr[2].getItemType();
        return itemType instanceof SpecificFunctionType ? ((SpecificFunctionType) itemType).getResultType().getPrimaryType() : AnyItemType.getInstance();
    }
}
