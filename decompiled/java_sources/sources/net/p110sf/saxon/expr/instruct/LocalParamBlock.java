package net.p110sf.saxon.expr.instruct;

import java.util.Arrays;
import java.util.Iterator;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Binding;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public class LocalParamBlock extends Instruction {

    /* renamed from: n */
    public Operand[] f99765n;

    public LocalParamBlock(LocalParam[] localParamArr) {
        this.f99765n = new Operand[localParamArr.length];
        for (int i = 0; i < localParamArr.length; i++) {
            this.f99765n[i] = new Operand(this, localParamArr[i], OperandRole.NAVIGATE);
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return 0;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        LocalParam[] localParamArr = new LocalParam[getNumberOfParams()];
        Iterator<Operand> it2 = operands().iterator();
        int i = 0;
        while (it2.hasNext()) {
            LocalParam localParam = (LocalParam) it2.next().getChildExpression();
            Binding copy = localParam.copy(rebindingMap);
            rebindingMap.put(localParam, copy);
            localParamArr[i] = copy;
            i++;
        }
        return new LocalParamBlock(localParamArr);
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("params", this);
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            it2.next().getChildExpression().export(expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public final int getCardinality() {
        return 8192;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "params";
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 4;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public final ItemType getItemType() {
        return ErrorType.getInstance();
    }

    public int getNumberOfParams() {
        return this.f99765n.length;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return Arrays.asList(this.f99765n);
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            LocalParam localParam = (LocalParam) it2.next().getChildExpression();
            try {
                xPathContext.setLocalVariable(localParam.getSlotNumber(), localParam.getSelectValue(xPathContext));
            } catch (XPathException e) {
                e.maybeSetLocation(localParam.getLocation());
                e.maybeSetContext(xPathContext);
                throw e;
            }
        }
        return null;
    }
}
