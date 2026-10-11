package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.TailExpression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.NumericValue;

/* loaded from: classes11.dex */
public class Remove extends SystemFunction {

    /* loaded from: classes11.dex */
    public static class RemoveIterator implements SequenceIterator, LastPositionFinder {

        /* renamed from: e */
        public SequenceIterator f100294e;

        /* renamed from: f */
        public int f100295f;

        /* renamed from: g */
        public int f100296g = 0;

        /* renamed from: h */
        public Item f100297h = null;

        public RemoveIterator(SequenceIterator sequenceIterator, int i) {
            this.f100294e = sequenceIterator;
            this.f100295f = i;
        }

        @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f100294e.close();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public void discharge() {
            this.f100294e.discharge();
        }

        @Override // net.p110sf.saxon.expr.LastPositionFinder
        public int getLength() {
            int length = SequenceTool.getLength(this.f100294e);
            int i = this.f100295f;
            return (i < 1 || i > length) ? length : length - 1;
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public Item next() {
            Item next = this.f100294e.next();
            this.f100297h = next;
            int i = this.f100296g + 1;
            this.f100296g = i;
            if (next != null && i == this.f100295f) {
                this.f100297h = this.f100294e.next();
                this.f100296g++;
            }
            return this.f100297h;
        }

        @Override // net.p110sf.saxon.expr.LastPositionFinder
        public boolean supportsGetLength() {
            return SequenceTool.supportsGetLength(this.f100294e);
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        int longValue = (int) ((NumericValue) sequenceArr[1].head()).longValue();
        return longValue < 1 ? sequenceArr[0] : SequenceTool.toLazySequence(new RemoveIterator(sequenceArr[0].iterate(), longValue));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "Remove";
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression[] expressionArr) {
        if (Literal.isAtomic(expressionArr[1])) {
            GroundedValue groundedValue = ((Literal) expressionArr[1]).getGroundedValue();
            if (groundedValue instanceof IntegerValue) {
                try {
                    long longValue = ((IntegerValue) groundedValue).longValue();
                    if (longValue <= 0) {
                        return expressionArr[0];
                    }
                    if (longValue == 1) {
                        return new TailExpression(expressionArr[0], 2);
                    }
                } catch (XPathException unused) {
                }
            }
        }
        return super.makeFunctionCall(expressionArr);
    }
}
