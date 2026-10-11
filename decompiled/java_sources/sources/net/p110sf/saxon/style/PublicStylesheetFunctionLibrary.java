package net.p110sf.saxon.style;

import java.util.List;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.UserFunctionCall;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.functions.FunctionLibrary;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class PublicStylesheetFunctionLibrary implements FunctionLibrary {

    /* renamed from: a */
    public final FunctionLibrary f101792a;

    public PublicStylesheetFunctionLibrary(FunctionLibrary functionLibrary) {
        this.f101792a = functionLibrary;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Expression bind(SymbolicName.C18533F c18533f, Expression[] expressionArr, StaticContext staticContext, List<String> list) {
        Expression bind = this.f101792a.bind(c18533f, expressionArr, staticContext, list);
        if (!(bind instanceof UserFunctionCall)) {
            return null;
        }
        Visibility visibility = ((UserFunctionCall) bind).getTarget().getVisibility();
        if (visibility == Visibility.PUBLIC || visibility == Visibility.FINAL) {
            return bind;
        }
        list.add("The function exists, but does not have public visibility");
        return null;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public FunctionLibrary copy() {
        return this;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Function getFunctionItem(SymbolicName.C18533F c18533f, StaticContext staticContext) throws XPathException {
        Function functionItem = this.f101792a.getFunctionItem(c18533f, staticContext);
        if (!(functionItem instanceof UserFunction)) {
            return null;
        }
        Visibility declaredVisibility = ((UserFunction) functionItem).getDeclaredVisibility();
        if (declaredVisibility == Visibility.PUBLIC || declaredVisibility == Visibility.FINAL) {
            return functionItem;
        }
        return null;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public boolean isAvailable(SymbolicName.C18533F c18533f, int i) {
        FunctionLibrary functionLibrary = this.f101792a;
        if (!(functionLibrary instanceof StylesheetFunctionLibrary)) {
            return functionLibrary.isAvailable(c18533f, i);
        }
        UserFunction function = ((StylesheetFunctionLibrary) functionLibrary).getStylesheetPackage().getFunction(c18533f);
        if (function == null) {
            return false;
        }
        Visibility declaredVisibility = function.getDeclaredVisibility();
        return declaredVisibility == Visibility.PUBLIC || declaredVisibility == Visibility.FINAL;
    }
}
