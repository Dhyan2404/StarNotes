package net.p110sf.saxon.functions;

import java.util.HashSet;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.LazySequence;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.QNameValue;

/* loaded from: classes11.dex */
public class DistinctValues extends CollatingFunctionFixed {
    public static final AtomicMatchKey NaN_MATCH_KEY = new QNameValue("", NamespaceConstant.SAXON, "+NaN+");

    /* loaded from: classes11.dex */
    public static class DistinctIterator implements SequenceIterator {

        /* renamed from: e */
        public final SequenceIterator f100179e;

        /* renamed from: f */
        public final StringCollator f100180f;

        /* renamed from: g */
        public final XPathContext f100181g;

        /* renamed from: h */
        public final HashSet<AtomicMatchKey> f100182h = new HashSet<>(40);

        public DistinctIterator(SequenceIterator sequenceIterator, StringCollator stringCollator, XPathContext xPathContext) {
            this.f100179e = sequenceIterator;
            this.f100180f = stringCollator;
            this.f100181g = xPathContext;
        }

        @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f100179e.close();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public void discharge() {
            this.f100179e.discharge();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public AtomicValue next() {
            AtomicValue atomicValue;
            AtomicMatchKey xPathMatchKey;
            int implicitTimezone = this.f100181g.getImplicitTimezone();
            do {
                atomicValue = (AtomicValue) this.f100179e.next();
                if (atomicValue == null) {
                    return null;
                }
                if (atomicValue.isNaN()) {
                    xPathMatchKey = DistinctValues.NaN_MATCH_KEY;
                } else {
                    try {
                        xPathMatchKey = atomicValue.getXPathMatchKey(this.f100180f, implicitTimezone);
                    } catch (NoDynamicContextException e) {
                        throw new UncheckedXPathException((XPathException) e);
                    }
                }
            } while (!this.f100182h.add(xPathMatchKey));
            return atomicValue;
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return new LazySequence(new DistinctIterator(sequenceArr[0].iterate(), getStringCollator(), xPathContext));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "DistinctValues";
    }
}
