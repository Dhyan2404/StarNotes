package net.p110sf.saxon.expr.instruct;

import java.util.List;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.Evaluator;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class WithParam {
    public static WithParam[] EMPTY_ARRAY = new WithParam[0];

    /* renamed from: a */
    public Operand f99867a;

    /* renamed from: d */
    public SequenceType f99870d;

    /* renamed from: e */
    public StructuredQName f99871e;

    /* renamed from: b */
    public boolean f99868b = false;

    /* renamed from: c */
    public int f99869c = -1;

    /* renamed from: f */
    public Evaluator f99872f = null;

    public static WithParam[] copy(Expression expression, WithParam[] withParamArr, RebindingMap rebindingMap) {
        if (withParamArr == null) {
            return null;
        }
        WithParam[] withParamArr2 = new WithParam[withParamArr.length];
        for (int i = 0; i < withParamArr.length; i++) {
            WithParam withParam = new WithParam();
            withParamArr2[i] = withParam;
            WithParam withParam2 = withParamArr[i];
            withParam.f99869c = withParam2.f99869c;
            withParam.f99868b = withParam2.f99868b;
            withParam.f99867a = new Operand(expression, withParam2.f99867a.getChildExpression().copy(rebindingMap), OperandRole.NAVIGATE);
            WithParam withParam3 = withParamArr2[i];
            WithParam withParam4 = withParamArr[i];
            withParam3.f99870d = withParam4.f99870d;
            withParam3.f99871e = withParam4.f99871e;
        }
        return withParamArr2;
    }

    public static void exportParameters(WithParam[] withParamArr, ExpressionPresenter expressionPresenter, boolean z) throws XPathException {
        if (withParamArr != null) {
            for (WithParam withParam : withParamArr) {
                expressionPresenter.startElement("withParam");
                expressionPresenter.emitAttribute("name", withParam.f99871e);
                String str = z ? "t" : "";
                if (withParam.isTypeChecked()) {
                    str = str + "c";
                }
                if (!str.isEmpty()) {
                    expressionPresenter.emitAttribute("flags", str);
                }
                if (withParam.getRequiredType() != SequenceType.ANY_SEQUENCE) {
                    expressionPresenter.emitAttribute("as", withParam.getRequiredType().toAlphaCode());
                }
                if (withParam.getSlotNumber() != -1) {
                    expressionPresenter.emitAttribute("slot", withParam.getSlotNumber() + "");
                }
                withParam.f99867a.getChildExpression().export(expressionPresenter);
                expressionPresenter.endElement();
            }
        }
    }

    public static void gatherOperands(Expression expression, WithParam[] withParamArr, List<Operand> list) {
        if (withParamArr != null) {
            for (WithParam withParam : withParamArr) {
                list.add(withParam.f99867a);
            }
        }
    }

    public static void optimize(ExpressionVisitor expressionVisitor, WithParam[] withParamArr, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        if (withParamArr != null) {
            for (WithParam withParam : withParamArr) {
                withParam.f99867a.optimize(expressionVisitor, contextItemStaticInfo);
                withParam.m62799a();
            }
        }
    }

    public static void simplify(WithParam[] withParamArr) throws XPathException {
        if (withParamArr != null) {
            for (WithParam withParam : withParamArr) {
                Operand operand = withParam.f99867a;
                operand.setChildExpression(operand.getChildExpression().simplify());
            }
        }
    }

    public static void typeCheck(WithParam[] withParamArr, ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        if (withParamArr != null) {
            for (WithParam withParam : withParamArr) {
                withParam.f99867a.typeCheck(expressionVisitor, contextItemStaticInfo);
            }
        }
    }

    /* renamed from: a */
    public final void m62799a() {
        this.f99872f = ExpressionTool.lazyEvaluator(this.f99867a.getChildExpression(), true);
    }

    public Evaluator getEvaluationMode() {
        if (this.f99872f == null) {
            m62799a();
        }
        return this.f99872f;
    }

    public int getInstructionNameCode() {
        return 221;
    }

    public SequenceType getRequiredType() {
        return this.f99870d;
    }

    public Expression getSelectExpression() {
        return this.f99867a.getChildExpression();
    }

    public Operand getSelectOperand() {
        return this.f99867a;
    }

    public Sequence getSelectValue(XPathContext xPathContext) throws XPathException {
        if (this.f99872f == null) {
            m62799a();
        }
        int temporaryOutputState = xPathContext.getTemporaryOutputState();
        xPathContext.setTemporaryOutputState(221);
        Sequence evaluate = this.f99872f.evaluate(this.f99867a.getChildExpression(), xPathContext);
        xPathContext.setTemporaryOutputState(temporaryOutputState);
        return evaluate;
    }

    public int getSlotNumber() {
        return this.f99869c;
    }

    public StructuredQName getVariableQName() {
        return this.f99871e;
    }

    public boolean isTypeChecked() {
        return this.f99868b;
    }

    public void setRequiredType(SequenceType sequenceType) {
        this.f99870d = sequenceType;
    }

    public void setSelectExpression(Expression expression, Expression expression2) {
        this.f99867a = new Operand(expression, expression2, OperandRole.NAVIGATE);
    }

    public void setSlotNumber(int i) {
        this.f99869c = i;
    }

    public void setTypeChecked(boolean z) {
        this.f99868b = z;
    }

    public void setVariableQName(StructuredQName structuredQName) {
        this.f99871e = structuredQName;
    }
}
