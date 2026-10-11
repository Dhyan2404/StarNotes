package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.SequenceMapper;
import net.p110sf.saxon.om.SequenceIterator;

/* loaded from: classes11.dex */
public class MappingIterator implements SequenceIterator {

    /* renamed from: e */
    public final SequenceIterator f99313e;

    /* renamed from: f */
    public final MappingFunction f99314f;

    /* renamed from: g */
    public SequenceIterator f99315g = null;

    /* renamed from: h */
    public boolean f99316h;

    public MappingIterator(SequenceIterator sequenceIterator, MappingFunction mappingFunction) {
        this.f99313e = sequenceIterator;
        this.f99314f = mappingFunction;
    }

    public static MappingIterator map(SequenceIterator sequenceIterator, SequenceMapper.Lambda lambda) {
        return new MappingIterator(sequenceIterator, SequenceMapper.m62631of(lambda));
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        SequenceIterator sequenceIterator = this.f99315g;
        if (sequenceIterator != null) {
            sequenceIterator.close();
        }
        this.f99313e.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        SequenceIterator sequenceIterator = this.f99315g;
        if (sequenceIterator != null) {
            sequenceIterator.discharge();
        }
        this.f99313e.discharge();
        this.f99316h = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0030, code lost:
    
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
            net.sf.saxon.om.SequenceIterator r0 = r3.f99315g     // Catch: net.p110sf.saxon.trans.XPathException -> L34
            r1 = 0
            if (r0 == 0) goto Le
            net.sf.saxon.om.Item r0 = r0.next()     // Catch: net.p110sf.saxon.trans.XPathException -> L34
            if (r0 == 0) goto Lc
            goto L30
        Lc:
            r3.f99315g = r1     // Catch: net.p110sf.saxon.trans.XPathException -> L34
        Le:
            net.sf.saxon.om.SequenceIterator r0 = r3.f99313e     // Catch: net.p110sf.saxon.trans.XPathException -> L34
            net.sf.saxon.om.Item r0 = r0.next()     // Catch: net.p110sf.saxon.trans.XPathException -> L34
            if (r0 == 0) goto L31
            net.sf.saxon.expr.MappingFunction r2 = r3.f99314f     // Catch: net.p110sf.saxon.trans.XPathException -> L34
            net.sf.saxon.om.SequenceIterator r0 = r2.map(r0)     // Catch: net.p110sf.saxon.trans.XPathException -> L34
            boolean r2 = r3.f99316h     // Catch: net.p110sf.saxon.trans.XPathException -> L34
            if (r2 == 0) goto L23
            r0.discharge()     // Catch: net.p110sf.saxon.trans.XPathException -> L34
        L23:
            if (r0 == 0) goto L0
            r3.f99315g = r0     // Catch: net.p110sf.saxon.trans.XPathException -> L34
            net.sf.saxon.om.Item r0 = r0.next()     // Catch: net.p110sf.saxon.trans.XPathException -> L34
            if (r0 != 0) goto L30
            r3.f99315g = r1     // Catch: net.p110sf.saxon.trans.XPathException -> L34
            goto L0
        L30:
            return r0
        L31:
            r3.f99315g = r1     // Catch: net.p110sf.saxon.trans.XPathException -> L34
            return r1
        L34:
            r3 = move-exception
            net.sf.saxon.trans.UncheckedXPathException r0 = new net.sf.saxon.trans.UncheckedXPathException
            r0.<init>(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.MappingIterator.next():net.sf.saxon.om.Item");
    }
}
