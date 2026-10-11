package net.p110sf.saxon.functions;

import com.sun.org.apache.xpath.internal.compiler.Keywords;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class Current extends SystemFunction {
    public static final StructuredQName FN_CURRENT = new StructuredQName("", "http://www.w3.org/2005/xpath-functions", Keywords.FUNC_CURRENT_STRING);

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        throw new XPathException("Dynamic evaluation of the current() function is not supported", "XTDE1360");
    }
}
