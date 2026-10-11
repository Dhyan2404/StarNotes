package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.StringValue;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class Path_1 extends ScalarSystemFunction {
    public static StringValue makePath(NodeInfo nodeInfo, XPathContext xPathContext) {
        if (nodeInfo.getNodeKind() == 9) {
            return StringValue.makeStringValue("/");
        }
        StringBuilder sb = new StringBuilder(256);
        AxisIterator iterateAxis = nodeInfo.iterateAxis(1);
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                sb.insert(0, "Q{http://www.w3.org/2005/xpath-functions}root()");
                return new StringValue(sb.toString());
            }
            if (next.getParent() == null) {
                if (next.getNodeKind() == 9) {
                    return new StringValue(sb.toString());
                }
                sb.insert(0, "Q{http://www.w3.org/2005/xpath-functions}root()");
                return new StringValue(sb.toString());
            }
            StringBuilder sb2 = new StringBuilder(256);
            int nodeKind = next.getNodeKind();
            if (nodeKind == 1) {
                sb2.append("/Q{");
                sb2.append(next.getURI());
                sb2.append("}");
                sb2.append(next.getLocalPart());
                sb2.append(IteratorUtils.f104923a);
                sb2.append(Navigator.getNumberSimple(next, xPathContext));
                sb2.append(IteratorUtils.f104924b);
                sb2.append((CharSequence) sb);
            } else if (nodeKind == 2) {
                sb2.append("/@");
                String uri = next.getURI();
                if (!"".equals(uri)) {
                    sb2.append("Q{");
                    sb2.append(uri);
                    sb2.append("}");
                }
                sb2.append(next.getLocalPart());
                sb2.append((CharSequence) sb);
            } else if (nodeKind == 3) {
                sb2.append("/text()[");
                sb2.append(Navigator.getNumberSimple(next, xPathContext) + IteratorUtils.f104924b);
                sb2.append((CharSequence) sb);
            } else if (nodeKind == 7) {
                sb2.append("/processing-instruction(");
                sb2.append(next.getLocalPart());
                sb2.append(")[");
                sb2.append(Navigator.getNumberSimple(next, xPathContext));
                sb2.append(IteratorUtils.f104924b);
                sb2.append((CharSequence) sb);
            } else if (nodeKind == 8) {
                sb2.append("/comment()[");
                sb2.append(Navigator.getNumberSimple(next, xPathContext));
                sb2.append(IteratorUtils.f104924b);
                sb2.append((CharSequence) sb);
            } else {
                if (nodeKind == 9) {
                    return new StringValue(sb.toString());
                }
                if (nodeKind != 13) {
                    throw new AssertionError();
                }
                sb2.append("/namespace::");
                if (next.getLocalPart().isEmpty()) {
                    sb2.append("*[Q{http://www.w3.org/2005/xpath-functions}local-name()=\"\"]");
                } else {
                    sb.append(next.getLocalPart());
                }
                sb2.append((CharSequence) sb);
            }
            sb = sb2;
        }
    }

    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public AtomicValue evaluate(Item item, XPathContext xPathContext) throws XPathException {
        return makePath((NodeInfo) item, xPathContext);
    }
}
