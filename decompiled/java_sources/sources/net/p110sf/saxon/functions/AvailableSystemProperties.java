package net.p110sf.saxon.functions;

import java.util.ArrayList;
import java.util.Iterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.om.AtomicArray;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.QNameValue;

/* loaded from: classes11.dex */
public class AvailableSystemProperties extends SystemFunction {

    /* renamed from: net.sf.saxon.functions.AvailableSystemProperties$a */
    /* loaded from: classes11.dex */
    public class C18341a extends SystemFunctionCall {
        public C18341a(SystemFunction systemFunction, Expression[] expressionArr) {
            super(systemFunction, expressionArr);
        }

        @Override // net.p110sf.saxon.expr.SystemFunctionCall, net.p110sf.saxon.expr.FunctionCall
        public Expression preEvaluate(ExpressionVisitor expressionVisitor) {
            return this;
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new QNameValue("xsl", "http://www.w3.org/1999/XSL/Transform", "version"));
        arrayList.add(new QNameValue("xsl", "http://www.w3.org/1999/XSL/Transform", "vendor"));
        arrayList.add(new QNameValue("xsl", "http://www.w3.org/1999/XSL/Transform", "vendor-url"));
        arrayList.add(new QNameValue("xsl", "http://www.w3.org/1999/XSL/Transform", "product-name"));
        arrayList.add(new QNameValue("xsl", "http://www.w3.org/1999/XSL/Transform", "product-version"));
        arrayList.add(new QNameValue("xsl", "http://www.w3.org/1999/XSL/Transform", "is-schema-aware"));
        arrayList.add(new QNameValue("xsl", "http://www.w3.org/1999/XSL/Transform", "supports-serialization"));
        arrayList.add(new QNameValue("xsl", "http://www.w3.org/1999/XSL/Transform", "supports-backwards-compatibility"));
        arrayList.add(new QNameValue("xsl", "http://www.w3.org/1999/XSL/Transform", "supports-namespace-axis"));
        arrayList.add(new QNameValue("xsl", "http://www.w3.org/1999/XSL/Transform", "supports-streaming"));
        arrayList.add(new QNameValue("xsl", "http://www.w3.org/1999/XSL/Transform", "supports-dynamic-evaluation"));
        arrayList.add(new QNameValue("xsl", "http://www.w3.org/1999/XSL/Transform", "supports-higher-order-functions"));
        arrayList.add(new QNameValue("xsl", "http://www.w3.org/1999/XSL/Transform", "xpath-version"));
        arrayList.add(new QNameValue("xsl", "http://www.w3.org/1999/XSL/Transform", "xsd-version"));
        if (xPathContext.getConfiguration().getBooleanProperty(Feature.ALLOW_EXTERNAL_FUNCTIONS)) {
            Iterator<String> it2 = System.getProperties().stringPropertyNames().iterator();
            while (it2.hasNext()) {
                arrayList.add(new QNameValue("", "", it2.next()));
            }
        }
        return new AtomicArray(arrayList);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression[] expressionArr) {
        return new C18341a(this, expressionArr);
    }
}
