package net.p110sf.saxon.functions.hof;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.AbstractFunction;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.query.XQueryFunction;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.SpecificFunctionType;

/* loaded from: classes11.dex */
public class UnresolvedXQueryFunctionItem extends AbstractFunction {

    /* renamed from: e */
    public final XQueryFunction f100400e;

    /* renamed from: f */
    public final SymbolicName.C18533F f100401f;

    /* renamed from: g */
    public final UserFunctionReference f100402g;

    public UnresolvedXQueryFunctionItem(XQueryFunction xQueryFunction, SymbolicName.C18533F c18533f, UserFunctionReference userFunctionReference) {
        this.f100400e = xQueryFunction;
        this.f100401f = c18533f;
        this.f100402g = userFunctionReference;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return this.f100402g.evaluateItem(xPathContext).call(xPathContext, sequenceArr);
    }

    @Override // net.p110sf.saxon.om.Function
    public int getArity() {
        return this.f100400e.getNumberOfArguments();
    }

    @Override // net.p110sf.saxon.om.Function
    public String getDescription() {
        return this.f100401f.toString();
    }

    @Override // net.p110sf.saxon.om.Function
    public FunctionItemType getFunctionItemType() {
        return new SpecificFunctionType(this.f100400e.getArgumentTypes(), this.f100400e.getResultType());
    }

    @Override // net.p110sf.saxon.om.Function
    public StructuredQName getFunctionName() {
        return this.f100401f.getComponentName();
    }

    public UserFunctionReference getFunctionReference() {
        return this.f100402g;
    }
}
