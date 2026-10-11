package net.p110sf.saxon.functions.hof;

import java.util.Iterator;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.EarlyEvaluationContext;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.ItemMappingFunction;
import net.p110sf.saxon.expr.ItemMappingIterator;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.UnaryExpression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.lib.FunctionAnnotationHandler;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.query.Annotation;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public final class FunctionSequenceCoercer extends UnaryExpression {

    /* renamed from: o */
    public final SpecificFunctionType f100385o;

    /* renamed from: p */
    public final RoleDiagnostic f100386p;

    /* loaded from: classes11.dex */
    public static class Coercer implements ItemMappingFunction {

        /* renamed from: e */
        public final SpecificFunctionType f100387e;

        /* renamed from: f */
        public final Configuration f100388f;

        /* renamed from: g */
        public final Location f100389g;

        public Coercer(SpecificFunctionType specificFunctionType, Configuration configuration, Location location) {
            this.f100387e = specificFunctionType;
            this.f100388f = configuration;
            this.f100389g = location;
        }

        @Override // net.p110sf.saxon.expr.ItemMappingFunction
        public Function mapItem(Item item) throws XPathException {
            if (item instanceof Function) {
                try {
                    FunctionSequenceCoercer.m63240e((Function) item, this.f100387e, this.f100388f);
                    return new CoercedFunction((Function) item, this.f100387e);
                } catch (XPathException e) {
                    e.maybeSetLocation(this.f100389g);
                    throw e;
                }
            }
            throw new XPathException("Function coercion attempted on an item (" + item.toShortString() + ") which is not a function", "XPTY0004", this.f100389g);
        }
    }

    public FunctionSequenceCoercer(Expression expression, SpecificFunctionType specificFunctionType, RoleDiagnostic roleDiagnostic) {
        super(expression);
        this.f100385o = specificFunctionType;
        this.f100386p = roleDiagnostic;
        ExpressionTool.copyLocationInfo(expression, this);
    }

    /* renamed from: e */
    public static void m63240e(Function function, FunctionItemType functionItemType, Configuration configuration) throws XPathException {
        Iterator<Annotation> it2 = functionItemType.getAnnotationAssertions().iterator();
        while (it2.hasNext()) {
            Annotation next = it2.next();
            FunctionAnnotationHandler functionAnnotationHandler = configuration.getFunctionAnnotationHandler(next.getAnnotationQName().getURI());
            if (functionAnnotationHandler != null && !functionAnnotationHandler.satisfiesAssertion(next, function.getAnnotations())) {
                throw new XPathException("Supplied function does not satisfy the annotation assertions of the required function type", "XPTY0004");
            }
        }
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return getBaseExpression().getCardinality();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return this.f100385o.hashCode() ^ super.computeHashCode();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return super.computeSpecialProperties() | 8388608;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        FunctionSequenceCoercer functionSequenceCoercer = new FunctionSequenceCoercer(getBaseExpression().copy(rebindingMap), this.f100385o, this.f100386p);
        ExpressionTool.copyLocationInfo(this, functionSequenceCoercer);
        return functionSequenceCoercer;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        return super.equals(obj) && this.f100385o.equals(((FunctionSequenceCoercer) obj).f100385o);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("fnCoercer", this);
        expressionPresenter.emitAttribute("to", SequenceType.makeSequenceType(this.f100385o, 16384).toAlphaCode());
        expressionPresenter.emitAttribute("diag", this.f100386p.save());
        getBaseExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "fnCoercer";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return OperandRole.INSPECT;
    }

    public RoleDiagnostic getRole() {
        return this.f100386p;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return new ItemMappingIterator(getBaseExpression().iterate(xPathContext), new Coercer(this.f100385o, xPathContext.getConfiguration(), getLocation()), true);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        setBaseExpression(getBaseExpression().simplify());
        return getBaseExpression() instanceof Literal ? Literal.makeLiteral(SequenceTool.toGroundedValue(iterate(new EarlyEvaluationContext(getConfiguration()))), this) : this;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getOperand().typeCheck(expressionVisitor, contextItemStaticInfo);
        return expressionVisitor.getConfiguration().getTypeHierarchy().isSubType(getBaseExpression().getItemType(), this.f100385o) ? getBaseExpression() : this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Function evaluateItem(XPathContext xPathContext) throws XPathException {
        Item evaluateItem = getBaseExpression().evaluateItem(xPathContext);
        if (evaluateItem == null) {
            return null;
        }
        if (evaluateItem instanceof Function) {
            try {
                m63240e((Function) evaluateItem, this.f100385o, xPathContext.getConfiguration());
                return new CoercedFunction((Function) evaluateItem, this.f100385o);
            } catch (XPathException e) {
                e.maybeSetLocation(getLocation());
                e.maybeSetContext(xPathContext);
                throw e;
            }
        }
        throw new XPathException(this.f100386p.composeErrorMessage(this.f100385o, UType.getUType(evaluateItem)), "XPTY0004");
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public SpecificFunctionType getItemType() {
        return this.f100385o;
    }
}
