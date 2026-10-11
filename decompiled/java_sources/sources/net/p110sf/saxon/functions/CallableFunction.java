package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.query.AnnotationList;
import net.p110sf.saxon.query.XQueryFunctionLibrary;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyFunctionType;
import net.p110sf.saxon.type.FunctionItemType;

/* loaded from: classes11.dex */
public class CallableFunction extends AbstractFunction {

    /* renamed from: e */
    public Callable f100158e;

    /* renamed from: f */
    public final SymbolicName.C18533F f100159f;

    /* renamed from: g */
    public FunctionItemType f100160g;

    /* renamed from: h */
    public AnnotationList f100161h;

    public CallableFunction(SymbolicName.C18533F c18533f, Callable callable, FunctionItemType functionItemType) {
        this.f100159f = c18533f;
        this.f100158e = callable;
        this.f100160g = functionItemType;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return this.f100158e.call(xPathContext, sequenceArr);
    }

    @Override // net.p110sf.saxon.functions.AbstractFunction, net.p110sf.saxon.om.Function
    public void export(ExpressionPresenter expressionPresenter) {
        throw new UnsupportedOperationException("A CallableFunction is a transient value that cannot be exported");
    }

    @Override // net.p110sf.saxon.functions.AbstractFunction, net.p110sf.saxon.om.Function
    public AnnotationList getAnnotations() {
        return this.f100161h;
    }

    @Override // net.p110sf.saxon.om.Function
    public int getArity() {
        return this.f100159f.getArity();
    }

    public Callable getCallable() {
        return this.f100158e;
    }

    @Override // net.p110sf.saxon.om.Function
    public String getDescription() {
        return this.f100158e.toString();
    }

    @Override // net.p110sf.saxon.om.Function
    public FunctionItemType getFunctionItemType() {
        UserFunction function;
        if (this.f100160g == AnyFunctionType.getInstance()) {
            Callable callable = this.f100158e;
            if ((callable instanceof XQueryFunctionLibrary.UnresolvedCallable) && (function = ((XQueryFunctionLibrary.UnresolvedCallable) callable).getFunction()) != null) {
                this.f100160g = function.getFunctionItemType();
            }
        }
        return this.f100160g;
    }

    @Override // net.p110sf.saxon.om.Function
    public StructuredQName getFunctionName() {
        return this.f100159f.getComponentName();
    }

    public void setAnnotations(AnnotationList annotationList) {
        this.f100161h = annotationList;
    }

    public void setCallable(Callable callable) {
        this.f100158e = callable;
    }

    public void setType(FunctionItemType functionItemType) {
        this.f100160g = functionItemType;
    }

    public CallableFunction(int i, Callable callable, FunctionItemType functionItemType) {
        this.f100159f = new SymbolicName.C18533F(new StructuredQName("", "anon", "anon"), i);
        this.f100158e = callable;
        this.f100160g = functionItemType;
    }
}
