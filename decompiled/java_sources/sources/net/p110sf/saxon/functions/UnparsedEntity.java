package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AnyURIValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public abstract class UnparsedEntity extends SystemFunction implements Callable {
    public static int PUBLIC_ID = 1;
    public static int URI;

    /* loaded from: classes11.dex */
    public static class UnparsedEntityPublicId extends UnparsedEntity {
        @Override // net.p110sf.saxon.functions.UnparsedEntity, net.p110sf.saxon.expr.Callable
        public /* bridge */ /* synthetic */ Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return super.call(xPathContext, sequenceArr);
        }

        @Override // net.p110sf.saxon.functions.UnparsedEntity
        public int getOp() {
            return UnparsedEntity.PUBLIC_ID;
        }
    }

    /* loaded from: classes11.dex */
    public static class UnparsedEntityUri extends UnparsedEntity {
        @Override // net.p110sf.saxon.functions.UnparsedEntity, net.p110sf.saxon.expr.Callable
        public /* bridge */ /* synthetic */ Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return super.call(xPathContext, sequenceArr);
        }

        @Override // net.p110sf.saxon.functions.UnparsedEntity
        public int getOp() {
            return UnparsedEntity.URI;
        }
    }

    public abstract int getOp();

    @Override // net.p110sf.saxon.expr.Callable
    public StringValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        NodeInfo nodeInfo;
        int op = getOp();
        String stringValue = sequenceArr[0].head().getStringValue();
        if (getArity() == 1) {
            Item contextItem = xPathContext.getContextItem();
            nodeInfo = contextItem instanceof NodeInfo ? ((NodeInfo) contextItem).getRoot() : null;
            if (nodeInfo == null || nodeInfo.getNodeKind() != 9) {
                throw new XPathException("In function " + getFunctionName().getDisplayName() + ", the context item must be a node in a tree whose root is a document node", op != URI ? "XTDE1380" : "XTDE1370", xPathContext);
            }
        } else {
            nodeInfo = (NodeInfo) sequenceArr[1].head();
            if (nodeInfo != null) {
                nodeInfo = nodeInfo.getRoot();
            }
            if (nodeInfo == null || nodeInfo.getNodeKind() != 9) {
                throw new XPathException("In function " + getFunctionName().getDisplayName() + ", the second argument must be a document node", op != URI ? "XTDE1380" : "XTDE1370", xPathContext);
            }
        }
        String[] unparsedEntity = nodeInfo.getTreeInfo().getUnparsedEntity(stringValue);
        String str = unparsedEntity == null ? "" : unparsedEntity[op];
        String str2 = str != null ? str : "";
        return op == URI ? new AnyURIValue(str2) : new StringValue(str2);
    }
}
