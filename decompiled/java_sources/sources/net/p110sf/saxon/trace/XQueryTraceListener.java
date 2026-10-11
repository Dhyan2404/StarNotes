package net.p110sf.saxon.trace;

import com.google.android.gms.actions.SearchIntents;
import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.flwor.ClauseInfo;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.functions.Trace;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.query.XQueryExpression;
import net.p110sf.saxon.trans.Mode;

/* loaded from: classes11.dex */
public class XQueryTraceListener extends AbstractTraceListener {
    @Override // net.p110sf.saxon.trace.AbstractTraceListener, net.p110sf.saxon.lib.TraceListener
    public void endRuleSearch(Object obj, Mode mode, Item item) {
    }

    @Override // net.p110sf.saxon.trace.AbstractTraceListener
    public String getOpeningAttributes() {
        return "";
    }

    @Override // net.p110sf.saxon.trace.AbstractTraceListener, net.p110sf.saxon.lib.TraceListener
    public void startRuleSearch() {
    }

    @Override // net.p110sf.saxon.trace.AbstractTraceListener
    public String tag(Traceable traceable) {
        if (traceable instanceof TraceableComponent) {
            return traceable instanceof GlobalVariable ? Constants.ELEMNAME_VARIABLE_STRING : traceable instanceof UserFunction ? Constants.EXSLT_ELEMNAME_FUNCTION_STRING : traceable instanceof XQueryExpression ? SearchIntents.EXTRA_QUERY : "misc";
        }
        if (traceable instanceof Trace) {
            return "fn:trace";
        }
        if (traceable instanceof ClauseInfo) {
            return ((ClauseInfo) traceable).getClause().getClauseKey().toString();
        }
        if (!(traceable instanceof Expression)) {
            return null;
        }
        String expressionName = ((Expression) traceable).getExpressionName();
        if (expressionName.startsWith("xsl:")) {
            expressionName = expressionName.substring(4);
        }
        expressionName.hashCode();
        char c = 65535;
        switch (expressionName.hashCode()) {
            case -1410210893:
                if (expressionName.equals(Constants.ELEMNAME_VALUEOF_STRING)) {
                    c = 0;
                    break;
                }
                break;
            case 75647:
                if (expressionName.equals("LRE")) {
                    c = 1;
                    break;
                }
                break;
            case 2019825:
                if (expressionName.equals("ATTR")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return "text";
            case 1:
                return "element";
            case 2:
                return "attribute";
            default:
                return expressionName;
        }
    }
}
