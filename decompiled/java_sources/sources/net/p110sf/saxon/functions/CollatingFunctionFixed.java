package net.p110sf.saxon.functions;

import java.util.Properties;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.expr.sort.EqualityComparer;
import net.p110sf.saxon.expr.sort.GenericAtomicComparer;
import net.p110sf.saxon.expr.sort.SimpleCollation;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.lib.SubstringMatcher;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ErrorType;

/* loaded from: classes11.dex */
public abstract class CollatingFunctionFixed extends SystemFunction implements StatefulSystemFunction {

    /* renamed from: h */
    public String f100162h;

    /* renamed from: i */
    public StringCollator f100163i = null;

    /* renamed from: j */
    public AtomicComparer f100164j = null;

    /* renamed from: a */
    public final void m62953a() throws XPathException {
        StringCollator collation = getRetainedStaticContext().getConfiguration().getCollation(this.f100162h);
        this.f100163i = collation;
        if (collation == null) {
            throw new XPathException("Unknown collation " + this.f100162h, "FOCH0002");
        }
        if (isSubstringMatchingFunction()) {
            StringCollator stringCollator = this.f100163i;
            if (stringCollator instanceof SimpleCollation) {
                this.f100163i = ((SimpleCollation) stringCollator).getSubstringMatcher();
            }
            if (this.f100163i instanceof SubstringMatcher) {
                return;
            }
            throw new XPathException("The collation requested for " + getFunctionName().getDisplayName() + " does not support substring matching", "FOCH0004");
        }
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public void exportAttributes(ExpressionPresenter expressionPresenter) {
        if (this.f100162h.equals(NamespaceConstant.CODEPOINT_COLLATION_URI)) {
            return;
        }
        expressionPresenter.emitAttribute("collation", this.f100162h);
    }

    public AtomicComparer getAtomicComparer(XPathContext xPathContext) {
        AtomicComparer atomicComparer = this.f100164j;
        return atomicComparer != null ? atomicComparer.provideContext(xPathContext) : new GenericAtomicComparer(getStringCollator(), xPathContext);
    }

    public AtomicComparer getPreAllocatedAtomicComparer() {
        return this.f100164j;
    }

    public StringCollator getStringCollator() {
        return this.f100163i;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public void importAttributes(Properties properties) throws XPathException {
        String property = properties.getProperty("collation");
        if (property != null) {
            setCollationName(property);
        }
    }

    public boolean isSubstringMatchingFunction() {
        return false;
    }

    public void preAllocateComparer(AtomicType atomicType, AtomicType atomicType2, StaticContext staticContext) {
        getStringCollator();
        if (atomicType == ErrorType.getInstance() || atomicType2 == ErrorType.getInstance()) {
            this.f100164j = EqualityComparer.getInstance();
        } else {
            this.f100164j = GenericAtomicComparer.makeAtomicComparer((BuiltInAtomicType) atomicType.getBuiltInBaseType(), (BuiltInAtomicType) atomicType2.getBuiltInBaseType(), this.f100163i, staticContext.makeEarlyEvaluationContext());
        }
    }

    public void setCollationName(String str) throws XPathException {
        this.f100162h = str;
        m62953a();
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public void setRetainedStaticContext(RetainedStaticContext retainedStaticContext) {
        super.setRetainedStaticContext(retainedStaticContext);
        if (this.f100162h == null) {
            this.f100162h = retainedStaticContext.getDefaultCollationName();
            try {
                m62953a();
            } catch (XPathException unused) {
            }
        }
    }

    @Override // net.p110sf.saxon.functions.StatefulSystemFunction
    public CollatingFunctionFixed copy() {
        Item makeFunction = SystemFunction.makeFunction(getFunctionName().getLocalPart(), getRetainedStaticContext(), getArity());
        if (makeFunction instanceof CollatingFunctionFree) {
            try {
                makeFunction = ((CollatingFunctionFree) makeFunction).bindCollation(this.f100162h);
            } catch (XPathException e) {
                throw new AssertionError(e);
            }
        }
        if (makeFunction instanceof CollatingFunctionFixed) {
            CollatingFunctionFixed collatingFunctionFixed = (CollatingFunctionFixed) makeFunction;
            collatingFunctionFixed.f100162h = this.f100162h;
            collatingFunctionFixed.f100164j = this.f100164j;
            collatingFunctionFixed.f100163i = this.f100163i;
            return collatingFunctionFixed;
        }
        throw new IllegalStateException();
    }
}
