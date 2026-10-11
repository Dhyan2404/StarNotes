package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.trans.XPathException;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface OperandProcessor {
    void processOperand(Operand operand) throws XPathException;
}
