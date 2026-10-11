package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.BooleanValue;

/* loaded from: classes11.dex */
public class Lang extends SystemFunction {
    public static boolean isLang(String str, NodeInfo nodeInfo) {
        String str2 = null;
        while (nodeInfo != null && (str2 = nodeInfo.getAttributeValue("http://www.w3.org/XML/1998/namespace", "lang")) == null) {
            nodeInfo = nodeInfo.getParent();
            if (nodeInfo == null) {
                return false;
            }
        }
        if (str2 == null) {
            return false;
        }
        while (!str.equalsIgnoreCase(str2)) {
            int lastIndexOf = str2.lastIndexOf("-");
            if (lastIndexOf < 0) {
                return false;
            }
            str2 = str2.substring(0, lastIndexOf);
        }
        return true;
    }

    /* renamed from: a */
    public final NodeInfo m63031a(XPathContext xPathContext) throws XPathException {
        Item contextItem = xPathContext.getContextItem();
        if (contextItem == null) {
            XPathException xPathException = new XPathException("The context item for lang() is absent");
            xPathException.setErrorCode("XPDY0002");
            xPathException.setXPathContext(xPathContext);
            throw xPathException;
        }
        if (contextItem instanceof NodeInfo) {
            return (NodeInfo) contextItem;
        }
        XPathException xPathException2 = new XPathException("The context item for lang() is not a node");
        xPathException2.setErrorCode("XPTY0004");
        xPathException2.setXPathContext(xPathContext);
        throw xPathException2;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        NodeInfo m63031a;
        if (sequenceArr.length > 1) {
            m63031a = (NodeInfo) sequenceArr[1].head();
        } else {
            m63031a = m63031a(xPathContext);
        }
        Item head = sequenceArr[0].head();
        return BooleanValue.get(isLang(head == null ? "" : head.getStringValue(), m63031a));
    }
}
