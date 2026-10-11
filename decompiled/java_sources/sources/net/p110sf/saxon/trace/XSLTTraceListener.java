package net.p110sf.saxon.trace;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.LetExpression;
import net.p110sf.saxon.expr.instruct.FixedAttribute;
import net.p110sf.saxon.expr.instruct.FixedElement;
import net.p110sf.saxon.expr.instruct.GlobalParam;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.instruct.NamedTemplate;
import net.p110sf.saxon.expr.instruct.TemplateRule;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.functions.Trace;

/* loaded from: classes11.dex */
public class XSLTTraceListener extends AbstractTraceListener {
    public static String tagName(Traceable traceable) {
        if (!(traceable instanceof Expression)) {
            return traceable instanceof UserFunction ? "xsl:function" : ((traceable instanceof TemplateRule) || (traceable instanceof NamedTemplate)) ? "xsl:template" : traceable instanceof GlobalParam ? "xsl:param" : traceable instanceof GlobalVariable ? "xsl:variable" : traceable instanceof Trace ? "fn:trace" : "misc";
        }
        Expression expression = (Expression) traceable;
        return expression instanceof FixedElement ? "LRE" : expression instanceof FixedAttribute ? "ATTR" : expression instanceof LetExpression ? "xsl:variable" : expression.isCallOn(Trace.class) ? "fn:trace" : expression.getExpressionName();
    }

    @Override // net.p110sf.saxon.trace.AbstractTraceListener
    public String getOpeningAttributes() {
        return "xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"";
    }

    @Override // net.p110sf.saxon.trace.AbstractTraceListener
    public String tag(Traceable traceable) {
        return tagName(traceable);
    }
}
