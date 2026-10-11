package net.p110sf.saxon.expr;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.sort.DocumentSorter;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.HomogeneityCheckerIterator;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;

/* loaded from: classes11.dex */
public class HomogeneityChecker extends UnaryExpression {
    public HomogeneityChecker(Expression expression) {
        super(expression);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        HomogeneityChecker homogeneityChecker = new HomogeneityChecker(getBaseExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, homogeneityChecker);
        return homogeneityChecker;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "homCheck";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return OperandRole.INSPECT;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return new HomogeneityCheckerIterator(getBaseExpression().iterate(xPathContext), getLocation());
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return getBaseExpression() instanceof HomogeneityChecker ? getBaseExpression().optimize(expressionVisitor, contextItemStaticInfo) : super.optimize(expressionVisitor, contextItemStaticInfo);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Pattern toPattern(Configuration configuration) throws XPathException {
        return getBaseExpression().toPattern(configuration);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        if (getBaseExpression() instanceof HomogeneityChecker) {
            return getBaseExpression().typeCheck(expressionVisitor, contextItemStaticInfo);
        }
        getOperand().typeCheck(expressionVisitor, contextItemStaticInfo);
        TypeHierarchy typeHierarchy = expressionVisitor.getConfiguration().getTypeHierarchy();
        ItemType itemType = getBaseExpression().getItemType();
        if (itemType.equals(ErrorType.getInstance())) {
            return Literal.makeEmptySequence();
        }
        Affinity relationship = typeHierarchy.relationship(itemType, AnyNodeTest.getInstance());
        if (relationship == Affinity.DISJOINT) {
            return getBaseExpression();
        }
        if (relationship != Affinity.SAME_TYPE && relationship != Affinity.SUBSUMED_BY) {
            return this;
        }
        Expression baseExpression = getBaseExpression();
        Expression parentExpression = getParentExpression();
        getOperand().detachChild();
        DocumentSorter documentSorter = new DocumentSorter(baseExpression);
        ExpressionTool.copyLocationInfo(this, documentSorter);
        documentSorter.setParentExpression(parentExpression);
        return documentSorter;
    }
}
