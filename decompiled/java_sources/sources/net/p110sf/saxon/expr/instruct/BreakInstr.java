package net.p110sf.saxon.expr.instruct;

import java.util.Collections;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.TailCallLoop;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class BreakInstr extends Instruction implements TailCallLoop.TailCallInfo {
    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        BreakInstr breakInstr = new BreakInstr();
        ExpressionTool.copyLocationInfo(this, breakInstr);
        return breakInstr;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("break", this);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "xsl:break";
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 139;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isLiftable(boolean z) {
        return false;
    }

    public void markContext(XPathContext xPathContext) {
        while (!(xPathContext instanceof XPathContextMajor)) {
            xPathContext = xPathContext.getCaller();
        }
        ((XPathContextMajor) xPathContext).requestTailCall(this, null);
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public boolean mayCreateNewNodes() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return Collections.emptyList();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        markContext(xPathContext);
        return null;
    }
}
