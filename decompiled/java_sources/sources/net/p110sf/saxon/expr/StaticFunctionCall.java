package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import java.util.Iterator;
import net.p110sf.saxon.expr.instruct.OriginalFunction;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AlphaCode;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.LocalUnionType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.type.UnionType;

/* loaded from: classes11.dex */
public class StaticFunctionCall extends FunctionCall implements Callable {

    /* renamed from: o */
    public final Function f99374o;

    public StaticFunctionCall(Function function, Expression[] expressionArr) {
        if (function.getArity() == expressionArr.length) {
            this.f99374o = function;
            setOperanda(expressionArr, function.getOperandRoles());
            return;
        }
        throw new IllegalArgumentException("Function call to " + function.getFunctionName() + " with wrong number of arguments (" + expressionArr.length + MotionUtils.f31762d);
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return this.f99374o.call(xPathContext, sequenceArr);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return this.f99374o.getFunctionItemType().getResultType().getCardinality();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        int arity = getArity();
        Expression[] expressionArr = new Expression[arity];
        for (int i = 0; i < arity; i++) {
            expressionArr[i] = getArg(i).copy(rebindingMap);
        }
        return new StaticFunctionCall(this.f99374o, expressionArr);
    }

    @Override // net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        Function function = this.f99374o;
        if (function instanceof OriginalFunction) {
            ExpressionPresenter.ExportOptions exportOptions = (ExpressionPresenter.ExportOptions) expressionPresenter.getOptions();
            OriginalFunction originalFunction = (OriginalFunction) this.f99374o;
            expressionPresenter.startElement("origFC", this);
            expressionPresenter.emitAttribute("name", originalFunction.getFunctionName());
            expressionPresenter.emitAttribute("pack", exportOptions.packageMap.get(originalFunction.getComponent().getContainingPackage()) + "");
            Iterator<Operand> it2 = operands().iterator();
            while (it2.hasNext()) {
                it2.next().getChildExpression().export(expressionPresenter);
            }
            expressionPresenter.endElement();
            return;
        }
        if (function instanceof UnionCastableFunction) {
            UnionType targetType = ((UnionConstructorFunction) function).getTargetType();
            expressionPresenter.startElement("castable", this);
            if (targetType instanceof LocalUnionType) {
                expressionPresenter.emitAttribute("to", AlphaCode.fromItemType(targetType));
            } else {
                expressionPresenter.emitAttribute("as", targetType.toExportString());
            }
            StringBuilder sb = new StringBuilder();
            sb.append("u");
            sb.append(((UnionConstructorFunction) this.f99374o).isAllowEmpty() ? "e" : "");
            expressionPresenter.emitAttribute("flags", sb.toString());
            Iterator<Operand> it3 = operands().iterator();
            while (it3.hasNext()) {
                it3.next().getChildExpression().export(expressionPresenter);
            }
            expressionPresenter.endElement();
            return;
        }
        if (function instanceof ListCastableFunction) {
            expressionPresenter.startElement("castable", this);
            expressionPresenter.emitAttribute("as", ((ListConstructorFunction) this.f99374o).getTargetType().getStructuredQName());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("l");
            sb2.append(((ListConstructorFunction) this.f99374o).isAllowEmpty() ? "e" : "");
            expressionPresenter.emitAttribute("flags", sb2.toString());
            Iterator<Operand> it4 = operands().iterator();
            while (it4.hasNext()) {
                it4.next().getChildExpression().export(expressionPresenter);
            }
            expressionPresenter.endElement();
            return;
        }
        if (function instanceof UnionConstructorFunction) {
            UnionType targetType2 = ((UnionConstructorFunction) function).getTargetType();
            expressionPresenter.startElement("cast", this);
            if (targetType2 instanceof LocalUnionType) {
                expressionPresenter.emitAttribute("to", AlphaCode.fromItemType(targetType2));
            } else {
                expressionPresenter.emitAttribute("as", targetType2.toExportString());
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("u");
            sb3.append(((UnionConstructorFunction) this.f99374o).isAllowEmpty() ? "e" : "");
            expressionPresenter.emitAttribute("flags", sb3.toString());
            Iterator<Operand> it5 = operands().iterator();
            while (it5.hasNext()) {
                it5.next().getChildExpression().export(expressionPresenter);
            }
            expressionPresenter.endElement();
            return;
        }
        if (!(function instanceof ListConstructorFunction)) {
            super.export(expressionPresenter);
            return;
        }
        expressionPresenter.startElement("cast", this);
        expressionPresenter.emitAttribute("as", ((ListConstructorFunction) this.f99374o).getTargetType().getStructuredQName());
        StringBuilder sb4 = new StringBuilder();
        sb4.append("l");
        sb4.append(((ListConstructorFunction) this.f99374o).isAllowEmpty() ? "e" : "");
        expressionPresenter.emitAttribute("flags", sb4.toString());
        Iterator<Operand> it6 = operands().iterator();
        while (it6.hasNext()) {
            it6.next().getChildExpression().export(expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "staticFunctionCall";
    }

    @Override // net.p110sf.saxon.expr.FunctionCall
    public StructuredQName getFunctionName() {
        return this.f99374o.getFunctionName();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return this.f99374o.getFunctionItemType().getResultType().getPrimaryType();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        UType uType2 = getItemType().getUType();
        for (Operand operand : operands()) {
            if (operand.getUsage() == OperandUsage.TRANSMISSION) {
                uType2 = uType2.intersection(operand.getChildExpression().getStaticUType(uType));
            }
        }
        return uType2;
    }

    public Function getTargetFunction() {
        return this.f99374o;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isCallOn(Class<? extends SystemFunction> cls) {
        return cls.isAssignableFrom(this.f99374o.getClass());
    }

    @Override // net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        checkFunctionCall(this.f99374o, expressionVisitor);
        return super.typeCheck(expressionVisitor, contextItemStaticInfo);
    }

    @Override // net.p110sf.saxon.expr.FunctionCall
    public Function getTargetFunction(XPathContext xPathContext) {
        return getTargetFunction();
    }
}
