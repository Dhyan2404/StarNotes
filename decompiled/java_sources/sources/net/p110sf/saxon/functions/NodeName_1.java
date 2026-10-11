package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.QNameValue;

/* loaded from: classes11.dex */
public class NodeName_1 extends ScalarSystemFunction {
    public static QNameValue nodeName(NodeInfo nodeInfo) {
        if (nodeInfo.getLocalPart().isEmpty()) {
            return null;
        }
        return new QNameValue(nodeInfo.getPrefix(), nodeInfo.getURI(), nodeInfo.getLocalPart(), BuiltInAtomicType.QNAME);
    }

    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public AtomicValue evaluate(Item item, XPathContext xPathContext) throws XPathException {
        return nodeName((NodeInfo) item);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "NodeNameFnCompiler";
    }
}
