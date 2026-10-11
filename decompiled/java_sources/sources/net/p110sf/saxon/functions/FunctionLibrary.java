package net.p110sf.saxon.functions;

import java.util.List;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface FunctionLibrary {
    Expression bind(SymbolicName.C18533F c18533f, Expression[] expressionArr, StaticContext staticContext, List<String> list);

    FunctionLibrary copy();

    Function getFunctionItem(SymbolicName.C18533F c18533f, StaticContext staticContext) throws XPathException;

    boolean isAvailable(SymbolicName.C18533F c18533f, int i);

    default void setConfiguration(Configuration configuration) {
    }
}
