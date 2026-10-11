package net.p110sf.saxon.functions;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Negatable;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.BooleanValue;

/* loaded from: classes11.dex */
public class NotFn extends SystemFunction {

    /* renamed from: net.sf.saxon.functions.NotFn$a */
    /* loaded from: classes11.dex */
    public class C18364a extends SystemFunctionCall {
        public C18364a(SystemFunction systemFunction, Expression[] expressionArr) {
            super(systemFunction, expressionArr);
        }

        @Override // net.p110sf.saxon.expr.Expression
        public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
            try {
                return !getArg(0).effectiveBooleanValue(xPathContext);
            } catch (XPathException e) {
                e.maybeSetLocation(this.getLocation());
                e.maybeSetContext(xPathContext);
                throw e;
            }
        }
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "NotFnCompiler";
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "NotFn";
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression[] expressionArr) {
        return new C18364a(this, expressionArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeOptimizedFunctionCall(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression... expressionArr) throws XPathException {
        TypeHierarchy typeHierarchy = expressionVisitor.getStaticContext().getConfiguration().getTypeHierarchy();
        Object[] objArr = expressionArr[0];
        if ((objArr instanceof Negatable) && ((Negatable) objArr).isNegatable(typeHierarchy)) {
            return ((Negatable) expressionArr[0]).negate();
        }
        if (expressionArr[0].getItemType() instanceof NodeTest) {
            return SystemFunction.makeFunction(Constants.ELEMNAME_EMPTY_STRING, getRetainedStaticContext(), 1).makeFunctionCall(expressionArr[0]).optimize(expressionVisitor, contextItemStaticInfo);
        }
        return null;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public void supplyTypeInformation(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression[] expressionArr) throws XPathException {
        XPathException ebvError = TypeChecker.ebvError(expressionArr[0], expressionVisitor.getConfiguration().getTypeHierarchy());
        if (ebvError != null) {
            throw ebvError;
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return BooleanValue.get(!ExpressionTool.effectiveBooleanValue(sequenceArr[0].iterate()));
    }
}
