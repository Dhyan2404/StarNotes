package net.p110sf.saxon.query;

import java.util.ArrayList;
import java.util.List;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.UserFunctionCall;
import net.p110sf.saxon.expr.UserFunctionResolvable;
import net.p110sf.saxon.expr.parser.XPathParser;
import net.p110sf.saxon.functions.CallableFunction;
import net.p110sf.saxon.functions.FunctionLibrary;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.query.XQueryFunctionLibrary;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyFunctionType;

/* loaded from: classes11.dex */
public class UnboundFunctionLibrary implements FunctionLibrary {

    /* renamed from: a */
    public List<UserFunctionResolvable> f101071a = new ArrayList(20);

    /* renamed from: b */
    public List<StaticContext> f101072b = new ArrayList(20);

    /* renamed from: c */
    public final List<List<String>> f101073c = new ArrayList();

    /* renamed from: d */
    public boolean f101074d = false;

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Expression bind(SymbolicName.C18533F c18533f, Expression[] expressionArr, StaticContext staticContext, List<String> list) {
        if (this.f101074d) {
            return null;
        }
        if (!list.isEmpty() && list.get(0).startsWith("Cannot call the private XQuery function")) {
            return null;
        }
        UserFunctionCall userFunctionCall = new UserFunctionCall();
        userFunctionCall.setFunctionName(c18533f.getComponentName());
        userFunctionCall.setArguments(expressionArr);
        this.f101071a.add(userFunctionCall);
        this.f101072b.add(staticContext);
        this.f101073c.add(list);
        return userFunctionCall;
    }

    public void bindUnboundFunctionReferences(XQueryFunctionBinder xQueryFunctionBinder, Configuration configuration) throws XPathException {
        String missingFunctionExplanation;
        this.f101074d = true;
        for (int i = 0; i < this.f101071a.size(); i++) {
            UserFunctionResolvable userFunctionResolvable = this.f101071a.get(i);
            if (userFunctionResolvable instanceof UserFunctionCall) {
                UserFunctionCall userFunctionCall = (UserFunctionCall) userFunctionResolvable;
                if (((QueryModule) this.f101072b.get(i)) == null) {
                    continue;
                } else {
                    this.f101072b.set(i, null);
                    StructuredQName functionName = userFunctionCall.getFunctionName();
                    int arity = userFunctionCall.getArity();
                    XQueryFunction declaration = xQueryFunctionBinder.getDeclaration(functionName, arity);
                    if (declaration == null) {
                        StringBuilder sb = new StringBuilder("Cannot find a " + arity + "-argument function named " + functionName.getEQName() + "()");
                        List<String> list = this.f101073c.get(i);
                        for (String str : list) {
                            sb.append(". ");
                            sb.append(str);
                        }
                        if (list.isEmpty() && (missingFunctionExplanation = XPathParser.getMissingFunctionExplanation(functionName, configuration)) != null) {
                            sb.append(". ");
                            sb.append(missingFunctionExplanation);
                        }
                        XPathException xPathException = new XPathException(sb.toString(), "XPST0017", userFunctionCall.getLocation());
                        xPathException.setIsStaticError(true);
                        throw xPathException;
                    }
                    declaration.registerReference(userFunctionCall);
                    userFunctionCall.setStaticType(declaration.getResultType());
                }
            } else if (userFunctionResolvable instanceof XQueryFunctionLibrary.UnresolvedCallable) {
                XQueryFunctionLibrary.UnresolvedCallable unresolvedCallable = (XQueryFunctionLibrary.UnresolvedCallable) userFunctionResolvable;
                StructuredQName functionName2 = unresolvedCallable.getFunctionName();
                int arity2 = unresolvedCallable.getArity();
                XQueryFunction declaration2 = xQueryFunctionBinder.getDeclaration(functionName2, arity2);
                if (declaration2 == null) {
                    String str2 = "Cannot find a " + arity2 + "-argument function named " + functionName2.getEQName() + "()";
                    if (!configuration.getBooleanProperty(Feature.ALLOW_EXTERNAL_FUNCTIONS)) {
                        str2 = str2 + ". Note: external function calls have been disabled";
                    }
                    XPathException xPathException2 = new XPathException(str2);
                    xPathException2.setErrorCode("XPST0017");
                    xPathException2.setIsStaticError(true);
                    throw xPathException2;
                }
                declaration2.registerReference(unresolvedCallable);
            } else {
                continue;
            }
        }
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public FunctionLibrary copy() {
        UnboundFunctionLibrary unboundFunctionLibrary = new UnboundFunctionLibrary();
        unboundFunctionLibrary.f101071a = new ArrayList(this.f101071a);
        unboundFunctionLibrary.f101072b = new ArrayList(this.f101072b);
        unboundFunctionLibrary.f101074d = this.f101074d;
        return unboundFunctionLibrary;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Function getFunctionItem(SymbolicName.C18533F c18533f, StaticContext staticContext) {
        if (this.f101074d) {
            return null;
        }
        XQueryFunctionLibrary.UnresolvedCallable unresolvedCallable = new XQueryFunctionLibrary.UnresolvedCallable(c18533f);
        this.f101071a.add(unresolvedCallable);
        this.f101072b.add(null);
        this.f101073c.add(new ArrayList());
        return new CallableFunction(c18533f, unresolvedCallable, AnyFunctionType.getInstance());
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public boolean isAvailable(SymbolicName.C18533F c18533f, int i) {
        return false;
    }
}
