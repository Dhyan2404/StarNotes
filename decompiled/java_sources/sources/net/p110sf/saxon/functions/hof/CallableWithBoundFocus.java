package net.p110sf.saxon.functions.hof;

import java.util.function.Supplier;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.functions.hof.CallableWithBoundFocus;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ManualIterator;

/* loaded from: classes11.dex */
public class CallableWithBoundFocus implements Callable {

    /* renamed from: e */
    public final Callable f100365e;

    /* renamed from: f */
    public final XPathContext f100366f;

    public CallableWithBoundFocus(Callable callable, final XPathContext xPathContext) {
        this.f100365e = callable;
        XPathContextMajor newContext = xPathContext.newContext();
        this.f100366f = newContext;
        if (xPathContext.getCurrentIterator() == null) {
            newContext.setCurrentIterator(null);
            return;
        }
        ManualIterator manualIterator = new ManualIterator(xPathContext.getContextItem(), xPathContext.getCurrentIterator().position());
        manualIterator.setLengthFinder(new Supplier() { // from class: com.sunia.HTREnginev2.umd
            @Override // java.util.function.Supplier
            public final Object get() {
                Integer m63226b;
                m63226b = CallableWithBoundFocus.m63226b(XPathContext.this);
                return m63226b;
            }
        });
        newContext.setCurrentIterator(manualIterator);
    }

    /* renamed from: b */
    public static /* synthetic */ Integer m63226b(XPathContext xPathContext) {
        return Integer.valueOf(xPathContext.getLast());
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return this.f100365e.call(this.f100366f, sequenceArr);
    }
}
