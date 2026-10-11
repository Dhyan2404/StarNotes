package net.p110sf.saxon.functions.hof;

import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.ExportAgent;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMinor;
import net.p110sf.saxon.expr.instruct.Executable;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.functions.CallableFunction;
import net.p110sf.saxon.functions.ContextAccessorFunction;
import net.p110sf.saxon.functions.ContextItemAccessorFunction;
import net.p110sf.saxon.functions.FunctionLibraryList;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.functions.hof.UserFunctionReference;
import net.p110sf.saxon.om.FocusIterator;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.sxpath.IndependentContext;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ManualIterator;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.QNameValue;

/* loaded from: classes11.dex */
public class FunctionLookup extends ContextAccessorFunction {

    /* renamed from: h */
    public XPathContext f100380h = null;

    /* loaded from: classes11.dex */
    public static class FunctionLookupExportAgent implements ExportAgent {

        /* renamed from: e */
        public final QNameValue f100381e;

        /* renamed from: f */
        public final IntegerValue f100382f;

        /* renamed from: g */
        public final FunctionLookup f100383g;

        public FunctionLookupExportAgent(FunctionLookup functionLookup, QNameValue qNameValue, IntegerValue integerValue) {
            this.f100382f = integerValue;
            this.f100381e = qNameValue;
            this.f100383g = functionLookup;
        }

        @Override // net.p110sf.saxon.expr.ExportAgent
        public void export(ExpressionPresenter expressionPresenter) throws XPathException {
            this.f100383g.makeFunctionCall(Literal.makeLiteral(this.f100381e), Literal.makeLiteral(this.f100382f)).export(expressionPresenter);
        }
    }

    @Override // net.p110sf.saxon.functions.ContextAccessorFunction
    public Function bindContext(XPathContext xPathContext) {
        FunctionLookup functionLookup = (FunctionLookup) SystemFunction.makeFunction("function-lookup", getRetainedStaticContext(), 2);
        FocusIterator currentIterator = xPathContext.getCurrentIterator();
        if (currentIterator != null) {
            XPathContextMinor newMinorContext = xPathContext.newMinorContext();
            newMinorContext.setCurrentIterator(new ManualIterator(xPathContext.getContextItem(), currentIterator.position()));
            functionLookup.f100380h = newMinorContext;
        } else {
            functionLookup.f100380h = xPathContext;
        }
        return functionLookup;
    }

    @Override // net.p110sf.saxon.functions.ContextAccessorFunction, net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        XPathContext xPathContext2 = this.f100380h;
        if (xPathContext2 != null) {
            xPathContext = xPathContext2;
        }
        QNameValue qNameValue = (QNameValue) sequenceArr[0].head();
        IntegerValue integerValue = (IntegerValue) sequenceArr[1].head();
        Function lookup = lookup(qNameValue.getStructuredQName(), (int) integerValue.longValue(), xPathContext);
        if (lookup == null) {
            return EmptySequence.getInstance();
        }
        if (lookup instanceof ContextAccessorFunction) {
            lookup = ((ContextAccessorFunction) lookup).bindContext(xPathContext);
        }
        return new UserFunctionReference.BoundUserFunction(new FunctionLookupExportAgent(this, qNameValue, integerValue), lookup, lookup instanceof UserFunction ? ((UserFunction) lookup).getDeclaringComponent() : null, xPathContext.getController());
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public boolean equals(Object obj) {
        return super.equals(obj) && ExpressionTool.equalOrNull(getRetainedStaticContext(), ((FunctionLookup) obj).getRetainedStaticContext());
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int hashCode() {
        return super.hashCode();
    }

    public Function lookup(StructuredQName structuredQName, int i, XPathContext xPathContext) throws XPathException {
        Controller controller = xPathContext.getController();
        Executable executable = controller.getExecutable();
        RetainedStaticContext retainedStaticContext = getRetainedStaticContext();
        PackageData packageData = retainedStaticContext.getPackageData();
        FunctionLibraryList functionLibrary = packageData instanceof StylesheetPackage ? ((StylesheetPackage) packageData).getFunctionLibrary() : executable.getFunctionLibrary();
        SymbolicName.C18533F c18533f = new SymbolicName.C18533F(structuredQName, i);
        IndependentContext independentContext = new IndependentContext(controller.getConfiguration());
        independentContext.setDefaultCollationName(retainedStaticContext.getDefaultCollationName());
        independentContext.setBaseURI(retainedStaticContext.getStaticBaseUriString());
        independentContext.setDecimalFormatManager(retainedStaticContext.getDecimalFormatManager());
        independentContext.setNamespaceResolver(retainedStaticContext);
        independentContext.setPackageData(packageData);
        try {
            Function functionItem = functionLibrary.getFunctionItem(c18533f, independentContext);
            if ((functionItem instanceof UserFunction) && ((UserFunction) functionItem).getDeclaredVisibility() == Visibility.ABSTRACT) {
                return null;
            }
            if (functionItem instanceof CallableFunction) {
                ((CallableFunction) functionItem).setCallable(new CallableWithBoundFocus(((CallableFunction) functionItem).getCallable(), xPathContext));
            } else {
                if (functionItem instanceof ContextItemAccessorFunction) {
                    return ((ContextItemAccessorFunction) functionItem).bindContext(xPathContext);
                }
                if ((functionItem instanceof SystemFunction) && ((SystemFunction) functionItem).dependsOnContextItem()) {
                    return new SystemFunctionWithBoundContextItem((SystemFunction) functionItem, xPathContext);
                }
            }
            return functionItem;
        } catch (XPathException e) {
            if ("XPST0017".equals(e.getErrorCodeLocalPart())) {
                return null;
            }
            throw e;
        }
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression... expressionArr) {
        PackageData packageData = getRetainedStaticContext().getPackageData();
        if (packageData instanceof StylesheetPackage) {
            ((StylesheetPackage) packageData).setRetainUnusedFunctions();
        }
        return super.makeFunctionCall(expressionArr);
    }
}
