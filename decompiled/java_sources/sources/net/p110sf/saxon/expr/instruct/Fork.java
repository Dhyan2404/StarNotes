package net.p110sf.saxon.expr.instruct;

import java.util.Arrays;
import java.util.Iterator;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.Type;

/* loaded from: classes11.dex */
public class Fork extends Instruction {

    /* renamed from: n */
    public Operand[] f99729n;

    public Fork(Operand[] operandArr) {
        this.f99729n = new Operand[operandArr.length];
        for (int i = 0; i < operandArr.length; i++) {
            this.f99729n[i] = new Operand(this, operandArr[i].getChildExpression(), OperandRole.SAME_FOCUS_ACTION);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        Expression[] expressionArr = new Expression[getSize()];
        Iterator<Operand> it2 = operands().iterator();
        int i = 0;
        while (it2.hasNext()) {
            expressionArr[i] = it2.next().getChildExpression().copy(rebindingMap);
            i++;
        }
        Fork fork = new Fork(expressionArr);
        ExpressionTool.copyLocationInfo(this, fork);
        return fork;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("fork", this);
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            it2.next().getChildExpression().export(expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 159;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        if (getSize() == 0) {
            return ErrorType.getInstance();
        }
        Iterator<Operand> it2 = operands().iterator();
        ItemType itemType = null;
        while (it2.hasNext()) {
            ItemType itemType2 = it2.next().getChildExpression().getItemType();
            itemType = itemType == null ? itemType2 : Type.getCommonSuperType(itemType, itemType2);
            if (itemType instanceof AnyItemType) {
                break;
            }
        }
        return itemType;
    }

    public Expression getProng(int i) {
        return this.f99729n[i].getChildExpression();
    }

    public int getSize() {
        return this.f99729n.length;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "Fork";
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return Arrays.asList(this.f99729n);
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            it2.next().getChildExpression().process(outputter, xPathContext);
        }
        return null;
    }

    public Fork(Expression[] expressionArr) {
        this.f99729n = new Operand[expressionArr.length];
        for (int i = 0; i < expressionArr.length; i++) {
            this.f99729n[i] = new Operand(this, expressionArr[i], OperandRole.SAME_FOCUS_ACTION);
        }
    }
}
