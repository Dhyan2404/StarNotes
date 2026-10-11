package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;

/* loaded from: classes11.dex */
public class IndexOf extends CollatingFunctionFixed {

    /* renamed from: net.sf.saxon.functions.IndexOf$a */
    /* loaded from: classes11.dex */
    public static class C18358a implements SequenceIterator {

        /* renamed from: e */
        public int f100237e = 0;

        /* renamed from: f */
        public final SequenceIterator f100238f;

        /* renamed from: g */
        public final BuiltInAtomicType f100239g;

        /* renamed from: h */
        public final AtomicComparer f100240h;

        /* renamed from: i */
        public final AtomicValue f100241i;

        public C18358a(SequenceIterator sequenceIterator, BuiltInAtomicType builtInAtomicType, AtomicValue atomicValue, AtomicComparer atomicComparer) {
            this.f100238f = sequenceIterator;
            this.f100239g = builtInAtomicType;
            this.f100241i = atomicValue;
            this.f100240h = atomicComparer;
        }

        @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f100238f.close();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public void discharge() {
            this.f100238f.discharge();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public Int64Value next() {
            while (true) {
                try {
                    AtomicValue atomicValue = (AtomicValue) this.f100238f.next();
                    if (atomicValue == null) {
                        return null;
                    }
                    this.f100237e++;
                    if (Type.isGuaranteedComparable(this.f100239g, atomicValue.getPrimitiveType(), false) && this.f100240h.comparesEqual(atomicValue, this.f100241i)) {
                        return new Int64Value(this.f100237e);
                    }
                } catch (NoDynamicContextException e) {
                    throw new UncheckedXPathException((XPathException) e);
                }
            }
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        AtomicComparer atomicComparer = getAtomicComparer(xPathContext);
        SequenceIterator iterate = sequenceArr[0].iterate();
        AtomicValue atomicValue = (AtomicValue) sequenceArr[1].head();
        return SequenceTool.toLazySequence(new C18358a(iterate, atomicValue.getPrimitiveType(), atomicValue, atomicComparer));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public IntegerValue[] getIntegerBounds() {
        return new IntegerValue[]{Int64Value.PLUS_ONE, Expression.MAX_SEQUENCE_LENGTH};
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "IndexOf";
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public void supplyTypeInformation(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression[] expressionArr) {
        ItemType itemType = expressionArr[0].getItemType();
        ItemType itemType2 = expressionArr[1].getItemType();
        if ((itemType instanceof AtomicType) && (itemType2 instanceof AtomicType)) {
            preAllocateComparer((AtomicType) itemType, (AtomicType) itemType2, expressionVisitor.getStaticContext());
        }
    }
}
