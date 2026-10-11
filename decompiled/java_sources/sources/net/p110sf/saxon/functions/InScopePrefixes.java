package net.p110sf.saxon.functions;

import java.util.ArrayList;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.SequenceExtent;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class InScopePrefixes extends SystemFunction {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        String[] prefixArray = ((NodeInfo) sequenceArr[0].head()).getAllNamespaces().getPrefixArray();
        ArrayList arrayList = new ArrayList();
        for (String str : prefixArray) {
            arrayList.add(new StringValue(str));
        }
        arrayList.add(StringValue.bmp("xml"));
        return SequenceExtent.makeSequenceExtent(arrayList);
    }
}
