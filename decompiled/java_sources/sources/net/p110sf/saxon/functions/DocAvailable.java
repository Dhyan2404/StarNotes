package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.DocumentKey;
import net.p110sf.saxon.om.DocumentPool;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;

/* loaded from: classes11.dex */
public class DocAvailable extends SystemFunction {
    /* renamed from: a */
    public final boolean m62976a(AtomicValue atomicValue, XPathContext xPathContext) throws XPathException {
        if (atomicValue == null) {
            return false;
        }
        return docAvailable(atomicValue.getStringValue(), xPathContext);
    }

    public boolean docAvailable(String str, XPathContext xPathContext) {
        PackageData packageData;
        DocumentKey computeDocumentKey;
        DocumentPool documentPool;
        try {
            packageData = getRetainedStaticContext().getPackageData();
            computeDocumentKey = DocumentFn.computeDocumentKey(str, getStaticBaseUriString(), packageData, xPathContext);
            documentPool = xPathContext.getController().getDocumentPool();
        } catch (XPathException unused) {
        }
        if (documentPool.isMarkedUnavailable(computeDocumentKey)) {
            return false;
        }
        if (documentPool.find(computeDocumentKey) != null || DocumentFn.makeDoc(str, getStaticBaseUriString(), packageData, null, xPathContext, null, true) != null) {
            return true;
        }
        documentPool.markUnavailable(computeDocumentKey);
        return false;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return BooleanValue.get(m62976a((AtomicValue) sequenceArr[0].head(), xPathContext));
    }
}
