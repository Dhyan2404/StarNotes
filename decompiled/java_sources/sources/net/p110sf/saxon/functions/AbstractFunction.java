package net.p110sf.saxon.functions;

import java.util.Arrays;
import net.p110sf.saxon.expr.ContextOriginator;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.OperandUsage;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.query.AnnotationList;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class AbstractFunction implements Function {
    @Override // net.p110sf.saxon.om.Item
    public AtomicSequence atomize() throws XPathException {
        throw new XPathException("Function items (other than arrays) cannot be atomized", "FOTY0013");
    }

    @Override // net.p110sf.saxon.om.Function
    public boolean deepEquals(Function function, XPathContext xPathContext, AtomicComparer atomicComparer, int i) throws XPathException {
        throw new XPathException("Argument to deep-equal() contains a function item", "FOTY0015");
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() throws XPathException {
        throw new XPathException("A function has no effective boolean value", "XPTY0004");
    }

    @Override // net.p110sf.saxon.om.Function
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        throw new UnsupportedOperationException("export() not implemented for " + getClass());
    }

    @Override // net.p110sf.saxon.om.Function
    public AnnotationList getAnnotations() {
        return AnnotationList.EMPTY;
    }

    @Override // net.p110sf.saxon.om.Function
    public OperandRole[] getOperandRoles() {
        OperandRole[] operandRoleArr = new OperandRole[getArity()];
        Arrays.fill(operandRoleArr, new OperandRole(0, OperandUsage.NAVIGATION));
        return operandRoleArr;
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        throw new UnsupportedOperationException("The string value of a function is not defined");
    }

    @Override // net.p110sf.saxon.om.Function
    public boolean isArray() {
        return false;
    }

    @Override // net.p110sf.saxon.om.Function
    public boolean isMap() {
        return false;
    }

    @Override // net.p110sf.saxon.om.Function
    public boolean isTrustedResultType() {
        return false;
    }

    @Override // net.p110sf.saxon.om.Function
    public XPathContext makeNewContext(XPathContext xPathContext, ContextOriginator contextOriginator) {
        return xPathContext;
    }

    public void simplify() throws XPathException {
    }

    @Override // net.p110sf.saxon.om.Function, net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public String toShortString() {
        return getDescription();
    }

    public void typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
    }
}
