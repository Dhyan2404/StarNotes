package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.LocalVariableReference;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;

/* loaded from: classes11.dex */
public class TextValueTemplateContext extends ExpressionContext {

    /* renamed from: i */
    public TextValueTemplateNode f101842i;

    public TextValueTemplateContext(StyleElement styleElement, TextValueTemplateNode textValueTemplateNode) {
        super(styleElement, null);
        this.f101842i = textValueTemplateNode;
    }

    @Override // net.p110sf.saxon.style.ExpressionContext, net.p110sf.saxon.expr.StaticContext
    public Expression bindVariable(StructuredQName structuredQName) throws XPathException {
        SourceBinding m64005c = m64005c(structuredQName);
        if (m64005c == null) {
            return super.bindVariable(structuredQName);
        }
        LocalVariableReference localVariableReference = new LocalVariableReference(structuredQName);
        m64005c.registerReference(localVariableReference);
        return localVariableReference;
    }

    /* renamed from: c */
    public final SourceBinding m64005c(StructuredQName structuredQName) {
        SourceBinding bindingInformation;
        AxisIterator iterateAxis = this.f101842i.iterateAxis(11);
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return null;
            }
            if ((next instanceof XSLGeneralVariable) && (bindingInformation = ((XSLGeneralVariable) next).getBindingInformation(structuredQName)) != null) {
                return bindingInformation;
            }
        }
    }
}
