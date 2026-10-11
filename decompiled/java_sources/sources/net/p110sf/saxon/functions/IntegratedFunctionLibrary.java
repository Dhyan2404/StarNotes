package net.p110sf.saxon.functions;

import java.util.HashMap;
import java.util.List;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.lib.ExtensionFunctionCall;
import net.p110sf.saxon.lib.ExtensionFunctionDefinition;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class IntegratedFunctionLibrary implements FunctionLibrary {

    /* renamed from: a */
    public HashMap<StructuredQName, ExtensionFunctionDefinition> f100258a = new HashMap<>();

    public static Expression makeFunctionCall(ExtensionFunctionDefinition extensionFunctionDefinition, Expression[] expressionArr) {
        ExtensionFunctionCall makeCallExpression = extensionFunctionDefinition.makeCallExpression();
        makeCallExpression.setDefinition(extensionFunctionDefinition);
        IntegratedFunctionCall integratedFunctionCall = new IntegratedFunctionCall(extensionFunctionDefinition.getFunctionQName(), makeCallExpression);
        integratedFunctionCall.setArguments(expressionArr);
        return integratedFunctionCall;
    }

    /* renamed from: a */
    public final HashMap<StructuredQName, ExtensionFunctionDefinition> m63019a(HashMap<StructuredQName, ExtensionFunctionDefinition> hashMap) {
        return new HashMap<>(hashMap);
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Expression bind(SymbolicName.C18533F c18533f, Expression[] expressionArr, StaticContext staticContext, List<String> list) {
        ExtensionFunctionDefinition extensionFunctionDefinition = this.f100258a.get(c18533f.getComponentName());
        if (extensionFunctionDefinition == null) {
            return null;
        }
        return makeFunctionCall(extensionFunctionDefinition, expressionArr);
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public FunctionLibrary copy() {
        IntegratedFunctionLibrary integratedFunctionLibrary = new IntegratedFunctionLibrary();
        integratedFunctionLibrary.f100258a = m63019a(this.f100258a);
        return integratedFunctionLibrary;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Function getFunctionItem(SymbolicName.C18533F c18533f, StaticContext staticContext) throws XPathException {
        ExtensionFunctionDefinition extensionFunctionDefinition = this.f100258a.get(c18533f.getComponentName());
        if (extensionFunctionDefinition == null) {
            return null;
        }
        try {
            return extensionFunctionDefinition.asFunction(c18533f.getArity());
        } catch (Exception e) {
            throw new XPathException("Failed to create call to extension function " + c18533f.getComponentName().getDisplayName(), e);
        }
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public boolean isAvailable(SymbolicName.C18533F c18533f, int i) {
        ExtensionFunctionDefinition extensionFunctionDefinition = this.f100258a.get(c18533f.getComponentName());
        int arity = c18533f.getArity();
        return extensionFunctionDefinition != null && extensionFunctionDefinition.getMaximumNumberOfArguments() >= arity && extensionFunctionDefinition.getMinimumNumberOfArguments() <= arity;
    }

    public void registerFunction(ExtensionFunctionDefinition extensionFunctionDefinition) {
        this.f100258a.put(extensionFunctionDefinition.getFunctionQName(), extensionFunctionDefinition);
    }
}
