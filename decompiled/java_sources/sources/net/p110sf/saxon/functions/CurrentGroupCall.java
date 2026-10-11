package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.ForEachGroup;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.sort.GroupIterator;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public class CurrentGroupCall extends Expression implements Callable {

    /* renamed from: n */
    public boolean f100169n = false;

    /* renamed from: o */
    public ItemType f100170o = AnyItemType.getInstance();

    /* renamed from: p */
    public ForEachGroup f100171p = null;

    public static ForEachGroup findControllingInstruction(Expression expression) {
        ForEachGroup forEachGroup;
        Expression parentExpression = expression.getParentExpression();
        while (true) {
            Expression expression2 = parentExpression;
            Expression expression3 = expression;
            expression = expression2;
            if (expression == null) {
                return null;
            }
            if (expression instanceof ForEachGroup) {
                forEachGroup = (ForEachGroup) expression;
                if (expression3 == forEachGroup.getActionExpression() || expression3 == forEachGroup.getSortKeyDefinitionList()) {
                    break;
                }
            }
            parentExpression = expression.getParentExpression();
        }
        return forEachGroup;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return SequenceTool.toLazySequence(iterate(xPathContext));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 57344;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        if (getControllingInstruction() == null) {
            return 0;
        }
        return this.f100171p.getSelectExpression().getSpecialProperties();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        CurrentGroupCall currentGroupCall = new CurrentGroupCall();
        currentGroupCall.f100169n = this.f100169n;
        currentGroupCall.f100170o = this.f100170o;
        currentGroupCall.f100171p = this.f100171p;
        return currentGroupCall;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("currentGroup");
        expressionPresenter.endElement();
    }

    public ForEachGroup getControllingInstruction() {
        if (this.f100171p == null) {
            this.f100171p = findControllingInstruction(this);
        }
        return this.f100171p;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        return 32;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        ForEachGroup forEachGroup;
        if (this.f100170o == AnyItemType.getInstance() && (forEachGroup = this.f100171p) != null) {
            this.f100170o = forEachGroup.getSelectExpression().getItemType();
        }
        return this.f100170o;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression getScopingExpression() {
        return getControllingInstruction();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "CurrentGroup";
    }

    public boolean isInHigherOrderOperand() {
        return this.f100169n;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        GroupIterator currentGroupIterator = xPathContext.getCurrentGroupIterator();
        if (currentGroupIterator != null) {
            return currentGroupIterator.iterateCurrentGroup();
        }
        XPathException xPathException = new XPathException("There is no current group", "XTDE1061");
        xPathException.setLocation(getLocation());
        throw xPathException;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void resetLocalStaticProperties() {
        super.resetLocalStaticProperties();
        this.f100171p = null;
        this.f100170o = AnyItemType.getInstance();
    }

    public void setControllingInstruction(ForEachGroup forEachGroup, ItemType itemType, boolean z) {
        resetLocalStaticProperties();
        this.f100171p = forEachGroup;
        this.f100169n = z;
        this.f100170o = itemType;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return toString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        return "current-group()";
    }
}
