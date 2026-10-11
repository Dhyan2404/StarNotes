package net.p110sf.saxon.functions;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XsltController;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.EmptySequence;

/* loaded from: classes11.dex */
public class Doc extends SystemFunction implements Callable {

    /* renamed from: h */
    public ParseOptions f100183h;

    /* renamed from: net.sf.saxon.functions.Doc$a */
    /* loaded from: classes11.dex */
    public static class C18350a extends SystemFunctionCall {

        /* renamed from: p */
        public final /* synthetic */ SystemFunction f100184p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18350a(SystemFunction systemFunction, Expression[] expressionArr, SystemFunction systemFunction2) {
            super(systemFunction, expressionArr);
            this.f100184p = systemFunction2;
        }

        @Override // net.p110sf.saxon.expr.SystemFunctionCall, net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression
        public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
            optimizeChildren(expressionVisitor, contextItemStaticInfo);
            return getArg(0) instanceof StringLiteral ? preEvaluate(expressionVisitor) : this;
        }

        @Override // net.p110sf.saxon.expr.SystemFunctionCall, net.p110sf.saxon.expr.FunctionCall
        public Expression preEvaluate(ExpressionVisitor expressionVisitor) {
            GroundedValue groundedValue;
            NodeInfo preLoadDoc;
            Configuration configuration = expressionVisitor.getConfiguration();
            try {
                groundedValue = ((Literal) getArg(0)).getGroundedValue();
            } catch (Exception unused) {
            }
            if (groundedValue.getLength() == 0) {
                return null;
            }
            if (groundedValue.getLength() > 1) {
                return this;
            }
            String stringValue = groundedValue.head().getStringValue();
            if (stringValue.indexOf(35) < 0 && (preLoadDoc = DocumentFn.preLoadDoc(stringValue, this.f100184p.getStaticBaseUriString(), this.f100184p.getRetainedStaticContext().getPackageData(), configuration, getLocation())) != null) {
                Literal makeLiteral = Literal.makeLiteral(preLoadDoc);
                ExpressionTool.copyLocationInfo(getArg(0), makeLiteral);
                return makeLiteral;
            }
            return this;
        }
    }

    public static Expression maybePreEvaluate(SystemFunction systemFunction, Expression[] expressionArr) {
        if (expressionArr.length <= 1 && systemFunction.getRetainedStaticContext().getConfiguration().getBooleanProperty(Feature.PRE_EVALUATE_DOC_FUNCTION)) {
            return new C18350a(systemFunction, expressionArr, systemFunction);
        }
        systemFunction.getDetails().properties |= 512;
        return null;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        AtomicValue atomicValue = (AtomicValue) sequenceArr[0].head();
        if (atomicValue == null) {
            return EmptySequence.getInstance();
        }
        String stringValue = atomicValue.getStringValue();
        NodeInfo makeDoc = DocumentFn.makeDoc(stringValue, getRetainedStaticContext().getStaticBaseUriString(), getRetainedStaticContext().getPackageData(), getParseOptions(), xPathContext, null, false);
        if (makeDoc == null) {
            throw new XPathException("Failed to load document " + stringValue, "FODC0002", xPathContext);
        }
        Controller controller = xPathContext.getController();
        if (this.f100183h != null && (controller instanceof XsltController)) {
            ((XsltController) controller).getAccumulatorManager().setApplicableAccumulators(makeDoc.getTreeInfo(), this.f100183h.getApplicableAccumulators());
        }
        return makeDoc;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getCardinality(Expression[] expressionArr) {
        return expressionArr[0].getCardinality() & (-32769);
    }

    public ParseOptions getParseOptions() {
        return this.f100183h;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getSpecialProperties(Expression[] expressionArr) {
        return 25821184;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression... expressionArr) {
        Expression maybePreEvaluate = maybePreEvaluate(this, expressionArr);
        return maybePreEvaluate == null ? super.makeFunctionCall(expressionArr) : maybePreEvaluate;
    }

    public void setParseOptions(ParseOptions parseOptions) {
        this.f100183h = parseOptions;
    }
}
