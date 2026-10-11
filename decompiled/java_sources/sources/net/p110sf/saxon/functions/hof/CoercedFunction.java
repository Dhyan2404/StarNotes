package net.p110sf.saxon.functions.hof;

import net.p110sf.saxon.expr.FunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.functions.AbstractFunction;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.query.AnnotationList;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class CoercedFunction extends AbstractFunction {

    /* renamed from: e */
    public Function f100367e;

    /* renamed from: f */
    public final SpecificFunctionType f100368f;

    public CoercedFunction(Function function, SpecificFunctionType specificFunctionType) throws XPathException {
        if (function.getArity() == specificFunctionType.getArity()) {
            this.f100367e = function;
            this.f100368f = specificFunctionType;
            return;
        }
        throw new XPathException(m63227a(function, specificFunctionType.getArity()), "XPTY0004");
    }

    /* renamed from: a */
    public static String m63227a(Function function, int i) {
        return "The supplied function (" + function.getDescription() + ") has " + FunctionCall.pluralArguments(function.getArity()) + " - expected " + i;
    }

    public static CoercedFunction coerce(Function function, SpecificFunctionType specificFunctionType, RoleDiagnostic roleDiagnostic) throws XPathException {
        int arity = specificFunctionType.getArity();
        if (function.getArity() == arity) {
            return new CoercedFunction(function, specificFunctionType);
        }
        throw new XPathException(roleDiagnostic.composeErrorMessage(specificFunctionType, function, (TypeHierarchy) null) + ". " + m63227a(function, arity), "XPTY0004");
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        SpecificFunctionType specificFunctionType = this.f100368f;
        SequenceType[] argumentTypes = this.f100367e.getFunctionItemType().getArgumentTypes();
        TypeHierarchy typeHierarchy = xPathContext.getConfiguration().getTypeHierarchy();
        Sequence[] sequenceArr2 = new Sequence[sequenceArr.length];
        for (int i = 0; i < sequenceArr.length; i++) {
            GroundedValue materialize = sequenceArr[i].materialize();
            if (argumentTypes[i].matches(materialize, typeHierarchy)) {
                sequenceArr2[i] = materialize;
            } else {
                sequenceArr2[i] = typeHierarchy.applyFunctionConversionRules(materialize, argumentTypes[i], new RoleDiagnostic(0, this.f100367e.getDescription(), i), Loc.NONE);
            }
        }
        GroundedValue materialize2 = this.f100367e.call(xPathContext, sequenceArr2).materialize();
        if (specificFunctionType.getResultType().matches(materialize2, typeHierarchy)) {
            return materialize2;
        }
        return typeHierarchy.applyFunctionConversionRules(materialize2, specificFunctionType.getResultType(), new RoleDiagnostic(5, this.f100367e.getDescription(), 0), Loc.NONE);
    }

    @Override // net.p110sf.saxon.functions.AbstractFunction, net.p110sf.saxon.om.Function
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("coercedFn");
        expressionPresenter.emitAttribute("type", this.f100368f.toExportString());
        new FunctionLiteral(this.f100367e).export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.functions.AbstractFunction, net.p110sf.saxon.om.Function
    public AnnotationList getAnnotations() {
        return this.f100367e.getAnnotations();
    }

    @Override // net.p110sf.saxon.om.Function
    public int getArity() {
        return this.f100367e.getArity();
    }

    @Override // net.p110sf.saxon.om.Function
    public String getDescription() {
        return "coerced " + this.f100367e.getDescription();
    }

    @Override // net.p110sf.saxon.om.Function
    public FunctionItemType getFunctionItemType() {
        return this.f100368f;
    }

    @Override // net.p110sf.saxon.om.Function
    public StructuredQName getFunctionName() {
        return this.f100367e.getFunctionName();
    }

    public void setTargetFunction(Function function) throws XPathException {
        if (function.getArity() != this.f100368f.getArity()) {
            throw new XPathException(m63227a(function, this.f100368f.getArity()), "XPTY0004");
        }
        this.f100367e = function;
    }

    @Override // net.p110sf.saxon.functions.AbstractFunction
    public void typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Function function = this.f100367e;
        if (function instanceof AbstractFunction) {
            ((AbstractFunction) function).typeCheck(expressionVisitor, contextItemStaticInfo);
        }
    }

    public CoercedFunction(SpecificFunctionType specificFunctionType) {
        this.f100368f = specificFunctionType;
    }
}
