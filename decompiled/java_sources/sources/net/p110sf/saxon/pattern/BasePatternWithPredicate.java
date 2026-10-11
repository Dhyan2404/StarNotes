package net.p110sf.saxon.pattern;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.LocalBinding;
import net.p110sf.saxon.expr.LocalVariableReference;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMinor;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.functions.Current;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ManualIterator;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class BasePatternWithPredicate extends Pattern implements PatternWithPredicate {

    /* renamed from: q */
    public Operand f100881q;

    /* renamed from: r */
    public Operand f100882r;

    public BasePatternWithPredicate(Pattern pattern, Expression expression) {
        this.f100881q = new Operand(this, pattern, OperandRole.ATOMIC_SEQUENCE);
        this.f100882r = new Operand(this, expression, OperandRole.FOCUS_CONTROLLED_ACTION);
        adoptChildExpression(getBasePattern());
        adoptChildExpression(getPredicate());
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public int allocateSlots(SlotManager slotManager, int i) {
        return getBasePattern().allocateSlots(slotManager, ExpressionTool.allocateSlots(getPredicate(), i, slotManager));
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public void bindCurrent(LocalBinding localBinding) {
        Expression predicate = getPredicate();
        if (predicate.isCallOn(Current.class)) {
            this.f100882r.setChildExpression(new LocalVariableReference(localBinding));
        } else if (ExpressionTool.callsFunction(predicate, Current.FN_CURRENT, false)) {
            Pattern.replaceCurrent(predicate, localBinding);
        }
        getBasePattern().bindCurrent(localBinding);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return getPredicate().hashCode() ^ getBasePattern().hashCode();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public Pattern convertToTypedPattern(String str) throws XPathException {
        Pattern convertToTypedPattern = getBasePattern().convertToTypedPattern(str);
        return convertToTypedPattern == getBasePattern() ? this : new BasePatternWithPredicate(convertToTypedPattern, getPredicate());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (obj instanceof BasePatternWithPredicate) {
            BasePatternWithPredicate basePatternWithPredicate = (BasePatternWithPredicate) obj;
            if (basePatternWithPredicate.getBasePattern().isEqual(getBasePattern()) && basePatternWithPredicate.getPredicate().isEqual(getPredicate())) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("p.withPredicate");
        getBasePattern().export(expressionPresenter);
        getPredicate().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    public Pattern getBasePattern() {
        return (Pattern) this.f100881q.getChildExpression();
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public int getDependencies() {
        return getPredicate().getDependencies();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public int getFingerprint() {
        return getBasePattern().getFingerprint();
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.PseudoExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return getBasePattern().getItemType();
    }

    @Override // net.p110sf.saxon.pattern.PatternWithPredicate
    public Expression getPredicate() {
        return this.f100882r.getChildExpression();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public UType getUType() {
        return getBasePattern().getUType();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    /* renamed from: matches */
    public boolean m63465s(Item item, XPathContext xPathContext) throws XPathException {
        if (getBasePattern().m63465s(item, xPathContext)) {
            return m63419t(item, xPathContext);
        }
        return false;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public boolean matchesBeneathAnchor(NodeInfo nodeInfo, NodeInfo nodeInfo2, XPathContext xPathContext) throws XPathException {
        return getBasePattern().matchesBeneathAnchor(nodeInfo, nodeInfo2, xPathContext) && m63419t(nodeInfo, xPathContext);
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public boolean matchesCurrentGroup() {
        return getBasePattern().matchesCurrentGroup();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandList(this.f100881q, this.f100882r);
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public String reconstruct() {
        return getBasePattern() + IteratorUtils.f104923a + getPredicate() + IteratorUtils.f104924b;
    }

    /* renamed from: t */
    public final boolean m63419t(Item item, XPathContext xPathContext) throws XPathException {
        XPathContextMinor newMinorContext = xPathContext.newMinorContext();
        newMinorContext.setCurrentIterator(new ManualIterator(item));
        newMinorContext.setCurrentOutputUri(null);
        try {
            return getPredicate().effectiveBooleanValue(newMinorContext);
        } catch (XPathException.Circularity | XPathException.StackOverflow e) {
            throw e;
        } catch (XPathException e2) {
            this.handleDynamicError(e2, newMinorContext);
            return false;
        }
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return getBasePattern().toShortString() + IteratorUtils.f104923a + getPredicate().toShortString() + IteratorUtils.f104924b;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern copy(RebindingMap rebindingMap) {
        BasePatternWithPredicate basePatternWithPredicate = new BasePatternWithPredicate(getBasePattern().copy(rebindingMap), getPredicate().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, basePatternWithPredicate);
        basePatternWithPredicate.setOriginalText(getOriginalText());
        return basePatternWithPredicate;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.f100881q.setChildExpression(getBasePattern().optimize(expressionVisitor, contextItemStaticInfo));
        this.f100882r.setChildExpression(getPredicate().optimize(expressionVisitor, expressionVisitor.getConfiguration().makeContextItemStaticInfo(getBasePattern().getItemType(), false)));
        this.f100882r.setChildExpression(expressionVisitor.obtainOptimizer().eliminateCommonSubexpressions(getPredicate()));
        return this;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.f100881q.setChildExpression(getBasePattern().typeCheck(expressionVisitor, contextItemStaticInfo));
        this.f100882r.setChildExpression(getPredicate().typeCheck(expressionVisitor, expressionVisitor.getConfiguration().makeContextItemStaticInfo(getBasePattern().getItemType(), false)));
        return this;
    }
}
