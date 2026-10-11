package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AnyURIValue;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class DocumentUri_1 extends ScalarSystemFunction {

    /* renamed from: h */
    public static final /* synthetic */ boolean f100191h = false;

    public static AnyURIValue getDocumentURI(NodeInfo nodeInfo, XPathContext xPathContext) {
        String documentURI;
        if (nodeInfo.getNodeKind() != 9 || (documentURI = xPathContext.getController().getDocumentPool().getDocumentURI(nodeInfo)) == null || "".equals(documentURI)) {
            return null;
        }
        return new AnyURIValue(documentURI);
    }

    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public AtomicValue evaluate(Item item, XPathContext xPathContext) throws XPathException {
        return getDocumentURI((NodeInfo) item, xPathContext);
    }
}
