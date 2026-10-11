package net.p110sf.saxon.style;

import java.util.List;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.UserFunctionCall;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.functions.FunctionLibrary;
import net.p110sf.saxon.om.Action;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.style.StylesheetFunctionLibrary;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class StylesheetFunctionLibrary implements FunctionLibrary {

    /* renamed from: a */
    public final StylesheetPackage f101812a;

    /* renamed from: b */
    public final boolean f101813b;

    public StylesheetFunctionLibrary(StylesheetPackage stylesheetPackage, boolean z) {
        this.f101812a = stylesheetPackage;
        this.f101813b = z;
    }

    /* renamed from: b */
    public static /* synthetic */ void m63989b(UserFunctionCall userFunctionCall, PrincipalStylesheetModule principalStylesheetModule) throws XPathException {
        if (userFunctionCall.getFunction() == null) {
            UserFunction userFunction = (UserFunction) principalStylesheetModule.getComponent(userFunctionCall.getSymbolicName()).getActor();
            if (userFunction != null) {
                userFunctionCall.allocateArgumentEvaluators();
                userFunctionCall.setStaticType(userFunction.getResultType());
                return;
            }
            XPathException xPathException = new XPathException("There is no available function named " + userFunctionCall.getDisplayName() + " with " + userFunctionCall.getArity() + " arguments", "XPST0017");
            xPathException.setLocator(userFunctionCall.getLocation());
            throw xPathException;
        }
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Expression bind(SymbolicName.C18533F c18533f, Expression[] expressionArr, StaticContext staticContext, List<String> list) {
        UserFunction function = this.f101812a.getFunction(c18533f);
        if (function == null || function.isOverrideExtensionFunction() != this.f101813b) {
            return null;
        }
        final UserFunctionCall userFunctionCall = new UserFunctionCall();
        userFunctionCall.setFunctionName(c18533f.getComponentName());
        userFunctionCall.setArguments(expressionArr);
        userFunctionCall.setFunction(function);
        if (staticContext instanceof ExpressionContext) {
            final PrincipalStylesheetModule principalStylesheetModule = ((ExpressionContext) staticContext).getStyleElement().getCompilation().getPrincipalStylesheetModule();
            ExpressionVisitor.make(staticContext);
            principalStylesheetModule.addFixupAction(new Action() { // from class: com.sunia.HTREnginev2.h4n
                @Override // net.p110sf.saxon.om.Action
                public final void doAction() {
                    StylesheetFunctionLibrary.m63989b(UserFunctionCall.this, principalStylesheetModule);
                }
            });
        }
        return userFunctionCall;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public FunctionLibrary copy() {
        return this;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Function getFunctionItem(SymbolicName.C18533F c18533f, StaticContext staticContext) throws XPathException {
        return this.f101812a.getFunction(c18533f);
    }

    public StylesheetPackage getStylesheetPackage() {
        return this.f101812a;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public boolean isAvailable(SymbolicName.C18533F c18533f, int i) {
        return this.f101812a.getFunction(c18533f) != null;
    }

    public boolean isOverrideExtensionFunction() {
        return this.f101813b;
    }
}
