package net.p110sf.saxon.functions;

import java.util.List;
import java.util.ListIterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ListIterator;
import net.p110sf.saxon.tree.iter.ReversibleIterator;
import net.p110sf.saxon.value.SequenceExtent;

/* loaded from: classes11.dex */
public class Reverse extends SystemFunction {

    /* loaded from: classes11.dex */
    public static class ReverseListIterator implements SequenceIterator, LastPositionFinder, ReversibleIterator {

        /* renamed from: e */
        public final ListIterator<? extends Item> f100299e;

        /* renamed from: f */
        public final List<? extends Item> f100300f;

        /* JADX WARN: Multi-variable type inference failed */
        public <T extends Item> ReverseListIterator(List<T> list) {
            this.f100300f = list;
            this.f100299e = list.listIterator(list.size());
        }

        @Override // net.p110sf.saxon.expr.LastPositionFinder
        public int getLength() {
            return this.f100300f.size();
        }

        @Override // net.p110sf.saxon.tree.iter.ReversibleIterator
        public SequenceIterator getReverseIterator() {
            return new ListIterator.C18538Of(this.f100300f);
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public Item next() {
            if (this.f100299e.hasPrevious()) {
                return this.f100299e.previous();
            }
            return null;
        }

        @Override // net.p110sf.saxon.expr.LastPositionFinder
        public boolean supportsGetLength() {
            return true;
        }
    }

    public static SequenceIterator getReverseIterator(SequenceIterator sequenceIterator) {
        return sequenceIterator instanceof ReversibleIterator ? ((ReversibleIterator) sequenceIterator).getReverseIterator() : SequenceExtent.from(sequenceIterator).reverseIterate();
    }

    public static <T extends Item> SequenceIterator reverseIterator(List<T> list) {
        return new ReverseListIterator(list);
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        Sequence sequence = sequenceArr[0];
        return SequenceTool.toLazySequence((sequence instanceof SequenceExtent ? (SequenceExtent) sequence : SequenceExtent.from(sequence.iterate())).reverseIterate());
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getSpecialProperties(Expression[] expressionArr) {
        int specialProperties = expressionArr[0].getSpecialProperties();
        return (specialProperties & 262144) != 0 ? (specialProperties & (-262145)) | 131072 : (specialProperties & 131072) != 0 ? (specialProperties & (-131073)) | 262144 : specialProperties;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "Reverse";
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeOptimizedFunctionCall(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression... expressionArr) throws XPathException {
        return expressionArr[0].getCardinality() == 24576 ? expressionArr[0] : super.makeOptimizedFunctionCall(expressionVisitor, contextItemStaticInfo, expressionArr);
    }
}
