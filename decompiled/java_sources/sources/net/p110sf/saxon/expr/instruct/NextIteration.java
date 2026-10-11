package net.p110sf.saxon.expr.instruct;

import java.util.ArrayList;
import java.util.Arrays;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.TailCallLoop;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class NextIteration extends Instruction implements TailCallLoop.TailCallInfo {

    /* renamed from: n */
    public WithParam[] f99782n = null;

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        NextIteration nextIteration = new NextIteration();
        ExpressionTool.copyLocationInfo(this, nextIteration);
        nextIteration.f99782n = WithParam.copy(nextIteration, this.f99782n, rebindingMap);
        return nextIteration;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("nextIteration", this);
        WithParam[] withParamArr = this.f99782n;
        if (withParamArr != null && withParamArr.length > 0) {
            WithParam.exportParameters(withParamArr, expressionPresenter, false);
        }
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 183;
    }

    public WithParam[] getParameters() {
        return this.f99782n;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "NextIteration";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isLiftable(boolean z) {
        return false;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        ArrayList arrayList = new ArrayList();
        WithParam.gatherOperands(this, this.f99782n, arrayList);
        return arrayList;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        XPathContext xPathContext2 = xPathContext;
        while (!(xPathContext2 instanceof XPathContextMajor)) {
            xPathContext2 = xPathContext2.getCaller();
        }
        XPathContextMajor xPathContextMajor = (XPathContextMajor) xPathContext2;
        WithParam[] withParamArr = this.f99782n;
        if (withParamArr.length == 1) {
            xPathContextMajor.setLocalVariable(withParamArr[0].getSlotNumber(), this.f99782n[0].getSelectValue(xPathContext));
        } else {
            Sequence[] allVariableValues = xPathContextMajor.getAllVariableValues();
            Sequence[] sequenceArr = (Sequence[]) Arrays.copyOf(allVariableValues, allVariableValues.length);
            for (WithParam withParam : this.f99782n) {
                sequenceArr[withParam.getSlotNumber()] = withParam.getSelectValue(xPathContext);
            }
            xPathContextMajor.resetAllVariableValues(sequenceArr);
        }
        xPathContextMajor.requestTailCall(this, null);
        return null;
    }

    public void setParameters(WithParam[] withParamArr) {
        this.f99782n = withParamArr;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        WithParam.simplify(this.f99782n);
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        WithParam.typeCheck(this.f99782n, expressionVisitor, contextItemStaticInfo);
        return this;
    }
}
