package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.instruct.Choose;
import net.p110sf.saxon.expr.instruct.ValueOf;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AdjacentTextNodeMergingIterator;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Cardinality;

/* loaded from: classes11.dex */
public class AdjacentTextNodeMerger extends UnaryExpression {
    public AdjacentTextNodeMerger(Expression expression) {
        super(expression);
    }

    public static boolean isTextNode(Item item) {
        return (item instanceof NodeInfo) && ((NodeInfo) item).getNodeKind() == 3;
    }

    public static Expression makeAdjacentTextNodeMerger(Expression expression) {
        return ((expression instanceof Literal) && (((Literal) expression).getGroundedValue() instanceof AtomicSequence)) ? expression : new AdjacentTextNodeMerger(expression);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return getBaseExpression().getCardinality() | 8192;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        AdjacentTextNodeMerger adjacentTextNodeMerger = new AdjacentTextNodeMerger(getBaseExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, adjacentTextNodeMerger);
        return adjacentTextNodeMerger;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "mergeAdj";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 30;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return getBaseExpression().getItemType();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return OperandRole.SAME_FOCUS_ACTION;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return getBaseExpression().getStaticUType(uType);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "AdjacentTextNodeMerger";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return new AdjacentTextNodeMergingIterator(getBaseExpression().iterate(xPathContext));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        Expression baseExpression = getBaseExpression();
        return ((baseExpression instanceof Literal) && (((Literal) baseExpression).getGroundedValue() instanceof AtomicValue)) ? baseExpression : super.simplify();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        boolean z;
        getOperand().typeCheck(expressionVisitor, contextItemStaticInfo);
        TypeHierarchy typeHierarchy = expressionVisitor.getConfiguration().getTypeHierarchy();
        if (typeHierarchy.relationship(getBaseExpression().getItemType(), NodeKindTest.TEXT) == Affinity.DISJOINT) {
            Expression baseExpression = getBaseExpression();
            baseExpression.setParentExpression(getParentExpression());
            return baseExpression;
        }
        if (!Cardinality.allowsMany(getBaseExpression().getCardinality())) {
            Expression baseExpression2 = getBaseExpression();
            baseExpression2.setParentExpression(getParentExpression());
            return baseExpression2;
        }
        int i = 0;
        if (getBaseExpression() instanceof Choose) {
            Choose choose = (Choose) getBaseExpression();
            while (i < choose.size()) {
                choose.setAction(i, new AdjacentTextNodeMerger(choose.getAction(i)).typeCheck(expressionVisitor, contextItemStaticInfo));
                i++;
            }
            return choose;
        }
        if (getBaseExpression() instanceof Block) {
            Block block = (Block) getBaseExpression();
            Operand[] operanda = block.getOperanda();
            int length = operanda.length;
            int i2 = 0;
            boolean z2 = false;
            boolean z3 = false;
            while (i2 < length) {
                Expression childExpression = operanda[i2].getChildExpression();
                if (childExpression instanceof ValueOf) {
                    Expression select = ((ValueOf) childExpression).getSelect();
                    z2 = select instanceof StringLiteral ? z2 | ((StringLiteral) select).getString().isEmpty() : true;
                    z = true;
                } else {
                    z = typeHierarchy.relationship(childExpression.getItemType(), NodeKindTest.TEXT) != Affinity.DISJOINT;
                    z2 |= z;
                }
                if ((z3 && z) || (z && Cardinality.allowsMany(childExpression.getCardinality()))) {
                    i = 1;
                    break;
                }
                i2++;
                z3 = z;
            }
            if (i == 0) {
                return z2 ? new EmptyTextNodeRemover(block) : block;
            }
        }
        return this;
    }
}
