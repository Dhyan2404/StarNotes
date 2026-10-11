package net.p110sf.saxon.expr;

import net.p110sf.saxon.om.FocusIterator;
import net.p110sf.saxon.om.SequenceIterator;

/* loaded from: classes11.dex */
public final class ContextMappingIterator implements SequenceIterator {

    /* renamed from: e */
    public final FocusIterator f99221e;

    /* renamed from: f */
    public final ContextMappingFunction f99222f;

    /* renamed from: g */
    public final XPathContext f99223g;

    /* renamed from: h */
    public SequenceIterator f99224h = null;

    /* renamed from: i */
    public boolean f99225i;

    public ContextMappingIterator(ContextMappingFunction contextMappingFunction, XPathContext xPathContext) {
        this.f99221e = xPathContext.getCurrentIterator();
        this.f99222f = contextMappingFunction;
        this.f99223g = xPathContext;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f99221e.close();
        SequenceIterator sequenceIterator = this.f99224h;
        if (sequenceIterator != null) {
            sequenceIterator.close();
        }
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f99221e.discharge();
        SequenceIterator sequenceIterator = this.f99224h;
        if (sequenceIterator != null) {
            sequenceIterator.discharge();
        }
        this.f99225i = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0032, code lost:
    
        return r0;
     */
    @Override // net.p110sf.saxon.om.SequenceIterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.om.Item next() {
        /*
            r3 = this;
        L0:
            net.sf.saxon.om.SequenceIterator r0 = r3.f99224h
            r1 = 0
            if (r0 == 0) goto Le
            net.sf.saxon.om.Item r0 = r0.next()
            if (r0 == 0) goto Lc
            goto L32
        Lc:
            r3.f99224h = r1
        Le:
            net.sf.saxon.om.FocusIterator r0 = r3.f99221e
            net.sf.saxon.om.Item r0 = r0.next()
            if (r0 == 0) goto L3a
            net.sf.saxon.expr.ContextMappingFunction r0 = r3.f99222f     // Catch: net.p110sf.saxon.trans.XPathException -> L33
            net.sf.saxon.expr.XPathContext r2 = r3.f99223g     // Catch: net.p110sf.saxon.trans.XPathException -> L33
            net.sf.saxon.om.SequenceIterator r0 = r0.map(r2)     // Catch: net.p110sf.saxon.trans.XPathException -> L33
            r3.f99224h = r0     // Catch: net.p110sf.saxon.trans.XPathException -> L33
            boolean r2 = r3.f99225i     // Catch: net.p110sf.saxon.trans.XPathException -> L33
            if (r2 == 0) goto L27
            r0.discharge()     // Catch: net.p110sf.saxon.trans.XPathException -> L33
        L27:
            net.sf.saxon.om.SequenceIterator r0 = r3.f99224h
            net.sf.saxon.om.Item r0 = r0.next()
            if (r0 != 0) goto L32
            r3.f99224h = r1
            goto L0
        L32:
            return r0
        L33:
            r3 = move-exception
            net.sf.saxon.trans.UncheckedXPathException r0 = new net.sf.saxon.trans.UncheckedXPathException
            r0.<init>(r3)
            throw r0
        L3a:
            r3.f99224h = r1
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.ContextMappingIterator.next():net.sf.saxon.om.Item");
    }
}
