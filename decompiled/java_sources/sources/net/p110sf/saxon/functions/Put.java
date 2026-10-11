package net.p110sf.saxon.functions;

import java.net.URISyntaxException;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.PendingUpdateList;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class Put extends SystemFunction {

    /* renamed from: net.sf.saxon.functions.Put$a */
    /* loaded from: classes11.dex */
    public class C18369a extends SystemFunctionCall {
        public C18369a(SystemFunction systemFunction, Expression[] expressionArr) {
            super(systemFunction, expressionArr);
        }

        /* renamed from: d */
        public final String m63151d() {
            return getTargetFunction().getStaticBaseUriString();
        }

        @Override // net.p110sf.saxon.expr.Expression
        public void evaluatePendingUpdates(XPathContext xPathContext, PendingUpdateList pendingUpdateList) throws XPathException {
            NodeInfo nodeInfo = (NodeInfo) getArg(0).evaluateItem(xPathContext);
            int nodeKind = nodeInfo.getNodeKind();
            if (nodeKind != 1 && nodeKind != 9) {
                throw new XPathException("Node in put() must be a document or element node", "FOUP0001", xPathContext);
            }
            try {
                String uri = ResolveURI.makeAbsolute(getArg(1).evaluateItem(xPathContext).getStringValue(), m63151d()).toString();
                xPathContext.getConfiguration().getLogger().info("fn:put writing to " + uri);
                pendingUpdateList.addPutAction(nodeInfo, uri, this);
            } catch (URISyntaxException e) {
                throw new XPathException("Base URI " + Err.wrap(m63151d()) + " is invalid: " + e.getMessage(), "FOUP0002", xPathContext);
            }
        }

        @Override // net.p110sf.saxon.expr.Expression
        public boolean isUpdatingExpression() {
            return true;
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        throw new XPathException("Dynamic evaluation of fn:put() is not supported");
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression[] expressionArr) {
        return new C18369a(this, expressionArr);
    }
}
