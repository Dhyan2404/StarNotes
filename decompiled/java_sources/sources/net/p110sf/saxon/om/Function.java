package net.p110sf.saxon.om;

import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.ContextOriginator;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.query.AnnotationList;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.FunctionItemType;

/* loaded from: classes11.dex */
public interface Function extends Item, Callable, GroundedValue {
    boolean deepEquals(Function function, XPathContext xPathContext, AtomicComparer atomicComparer, int i) throws XPathException;

    void export(ExpressionPresenter expressionPresenter) throws XPathException;

    AnnotationList getAnnotations();

    int getArity();

    String getDescription();

    FunctionItemType getFunctionItemType();

    StructuredQName getFunctionName();

    @Override // net.p110sf.saxon.om.Item
    default Genre getGenre() {
        return Genre.FUNCTION;
    }

    OperandRole[] getOperandRoles();

    boolean isArray();

    boolean isMap();

    default boolean isSequenceVariadic() {
        return false;
    }

    boolean isTrustedResultType();

    XPathContext makeNewContext(XPathContext xPathContext, ContextOriginator contextOriginator);

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    default String toShortString() {
        return getDescription();
    }
}
