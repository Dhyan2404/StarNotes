package net.p110sf.saxon.pattern;

import net.p110sf.saxon.expr.ContextItemExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.InstanceOfExpression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMinor;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ManualIterator;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class BooleanExpressionPattern extends Pattern implements PatternWithPredicate {

    /* renamed from: q */
    public final Operand f100883q;

    public BooleanExpressionPattern(Expression expression) {
        this.f100883q = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
        setPriority(1.0d);
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public int allocateSlots(SlotManager slotManager, int i) {
        return ExpressionTool.allocateSlots(getPredicate(), i, slotManager);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return getPredicate().hashCode() ^ 2062548649;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        return (obj instanceof BooleanExpressionPattern) && ((BooleanExpressionPattern) obj).getPredicate().isEqual(getPredicate());
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("p.booleanExp");
        getPredicate().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public int getFingerprint() {
        return -1;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.PseudoExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        if (getPredicate() instanceof InstanceOfExpression) {
            InstanceOfExpression instanceOfExpression = (InstanceOfExpression) getPredicate();
            if (instanceOfExpression.getBaseExpression() instanceof ContextItemExpression) {
                return instanceOfExpression.getRequiredItemType();
            }
        }
        return AnyItemType.getInstance();
    }

    @Override // net.p110sf.saxon.pattern.PatternWithPredicate
    public Expression getPredicate() {
        return this.f100883q.getChildExpression();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public UType getUType() {
        return getPredicate() instanceof InstanceOfExpression ? ((InstanceOfExpression) getPredicate()).getRequiredItemType().getUType() : UType.ANY;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    /* renamed from: matches */
    public boolean m63465s(Item item, XPathContext xPathContext) {
        XPathContextMinor newMinorContext = xPathContext.newMinorContext();
        newMinorContext.setCurrentIterator(new ManualIterator(item));
        newMinorContext.setCurrentOutputUri(null);
        try {
            return getPredicate().effectiveBooleanValue(newMinorContext);
        } catch (XPathException unused) {
            return false;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return this.f100883q;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public String reconstruct() {
        return ".[" + getPredicate() + IteratorUtils.f104924b;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern copy(RebindingMap rebindingMap) {
        BooleanExpressionPattern booleanExpressionPattern = new BooleanExpressionPattern(getPredicate().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, booleanExpressionPattern);
        booleanExpressionPattern.setOriginalText(getOriginalText());
        return booleanExpressionPattern;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.f100883q.setChildExpression(getPredicate().optimize(expressionVisitor, expressionVisitor.getConfiguration().getDefaultContextItemStaticInfo()));
        return this;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.f100883q.setChildExpression(getPredicate().typeCheck(expressionVisitor, expressionVisitor.getConfiguration().getDefaultContextItemStaticInfo()));
        return this;
    }
}
