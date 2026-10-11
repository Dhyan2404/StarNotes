package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.value.BooleanValue;

/* loaded from: classes11.dex */
public class XSLChoose extends XSLChooseOrSwitch {
    @Override // net.p110sf.saxon.style.XSLChooseOrSwitch
    public void compileConditions(Compilation compilation, ComponentDeclaration componentDeclaration, Expression[] expressionArr) {
        int i = 0;
        for (NodeInfo nodeInfo : children()) {
            if (nodeInfo instanceof XSLWhen) {
                expressionArr[i] = ((XSLWhen) nodeInfo).getCondition();
            } else if (nodeInfo instanceof XSLOtherwise) {
                Literal makeLiteral = Literal.makeLiteral(BooleanValue.TRUE);
                makeLiteral.setRetainedStaticContext(makeRetainedStaticContext());
                expressionArr[i] = makeLiteral;
            }
            i++;
        }
    }
}
