package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.value.NumericValue;

/* loaded from: classes11.dex */
public class InsertBefore extends SystemFunction {

    /* loaded from: classes11.dex */
    public static class InsertIterator implements SequenceIterator {

        /* renamed from: e */
        public final SequenceIterator f100247e;

        /* renamed from: f */
        public final SequenceIterator f100248f;

        /* renamed from: g */
        public final int f100249g;

        /* renamed from: h */
        public int f100250h = 0;

        /* renamed from: i */
        public boolean f100251i;

        public InsertIterator(SequenceIterator sequenceIterator, SequenceIterator sequenceIterator2, int i) {
            this.f100247e = sequenceIterator;
            this.f100248f = sequenceIterator2;
            this.f100249g = Math.max(i, 1);
            this.f100251i = i == 1;
        }

        @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f100247e.close();
            this.f100248f.close();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public void discharge() {
            this.f100247e.discharge();
            this.f100248f.discharge();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public Item next() {
            Item next;
            if (this.f100251i) {
                next = this.f100248f.next();
                if (next == null) {
                    this.f100251i = false;
                    next = this.f100247e.next();
                }
            } else if (this.f100250h == this.f100249g - 1) {
                next = this.f100248f.next();
                if (next == null) {
                    next = this.f100247e.next();
                } else {
                    this.f100251i = true;
                }
            } else {
                next = this.f100247e.next();
                if (next == null && this.f100250h < this.f100249g - 1) {
                    this.f100251i = true;
                    next = this.f100248f.next();
                }
            }
            if (next == null) {
                this.f100250h = -1;
                return null;
            }
            this.f100250h++;
            return next;
        }
    }

    /* renamed from: net.sf.saxon.functions.InsertBefore$a */
    /* loaded from: classes11.dex */
    public class C18360a extends SystemFunctionCall {
        public C18360a(SystemFunction systemFunction, Expression[] expressionArr) {
            super(systemFunction, expressionArr);
        }

        @Override // net.p110sf.saxon.expr.SystemFunctionCall, net.p110sf.saxon.expr.StaticFunctionCall, net.p110sf.saxon.expr.Expression
        public ItemType getItemType() {
            return Type.getCommonSuperType(getArg(0).getItemType(), getArg(2).getItemType());
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return SequenceTool.toLazySequence(new InsertIterator(sequenceArr[0].iterate(), sequenceArr[2].iterate(), (int) ((NumericValue) sequenceArr[1].head()).longValue()));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "InsertBefore";
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression[] expressionArr) {
        return new C18360a(this, expressionArr);
    }
}
