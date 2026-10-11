package net.p110sf.saxon.functions;

import java.util.HashMap;
import java.util.List;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.UserFunctionCall;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class ExecutableFunctionLibrary implements FunctionLibrary {

    /* renamed from: a */
    public final transient Configuration f100198a;

    /* renamed from: b */
    public HashMap<SymbolicName, UserFunction> f100199b = new HashMap<>(20);

    public ExecutableFunctionLibrary(Configuration configuration) {
        this.f100198a = configuration;
    }

    public void addFunction(UserFunction userFunction) {
        this.f100199b.put(userFunction.getSymbolicName(), userFunction);
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Expression bind(SymbolicName.C18533F c18533f, Expression[] expressionArr, StaticContext staticContext, List<String> list) {
        UserFunction userFunction = this.f100199b.get(c18533f);
        if (userFunction == null) {
            return null;
        }
        UserFunctionCall userFunctionCall = new UserFunctionCall();
        userFunctionCall.setFunctionName(c18533f.getComponentName());
        userFunctionCall.setArguments(expressionArr);
        userFunctionCall.setFunction(userFunction);
        userFunctionCall.setStaticType(userFunction.getResultType());
        return userFunctionCall;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public FunctionLibrary copy() {
        ExecutableFunctionLibrary executableFunctionLibrary = new ExecutableFunctionLibrary(this.f100198a);
        executableFunctionLibrary.f100199b = new HashMap<>(this.f100199b);
        return executableFunctionLibrary;
    }

    public Iterable<UserFunction> getAllFunctions() {
        return this.f100199b.values();
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Function getFunctionItem(SymbolicName.C18533F c18533f, StaticContext staticContext) throws XPathException {
        UserFunction userFunction = this.f100199b.get(c18533f);
        if (userFunction == null || !userFunction.isUpdating()) {
            return userFunction;
        }
        throw new XPathException("Cannot bind a function item to an updating function");
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public boolean isAvailable(SymbolicName.C18533F c18533f, int i) {
        return this.f100199b.get(c18533f) != null;
    }
}
