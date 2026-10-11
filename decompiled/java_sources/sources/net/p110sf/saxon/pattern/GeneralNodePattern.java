package net.p110sf.saxon.pattern;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.AxisExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FilterExpression;
import net.p110sf.saxon.expr.LocalBinding;
import net.p110sf.saxon.expr.LocalVariableReference;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.SingleItemFilter;
import net.p110sf.saxon.expr.SlashExpression;
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
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.ManualIterator;
import net.p110sf.saxon.type.AlphaCode;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public final class GeneralNodePattern extends Pattern {

    /* renamed from: q */
    public Expression f100893q;

    /* renamed from: r */
    public final NodeTest f100894r;

    /* renamed from: s */
    public Expression f100895s = null;

    public GeneralNodePattern(Expression expression, NodeTest nodeTest) {
        this.f100893q = expression;
        this.f100894r = nodeTest;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public int allocateSlots(SlotManager slotManager, int i) {
        return ExpressionTool.allocateSlots(this.f100893q, i, slotManager);
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public void bindCurrent(LocalBinding localBinding) {
        if (ExpressionTool.callsFunction(this.f100893q, Current.FN_CURRENT, false)) {
            if (this.f100893q.isCallOn(Current.class)) {
                this.f100893q = new LocalVariableReference(localBinding);
            } else {
                Pattern.replaceCurrent(this.f100893q, localBinding);
            }
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return this.f100893q.hashCode() ^ 83641;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (obj instanceof GeneralNodePattern) {
            return this.f100893q.isEqual(((GeneralNodePattern) obj).f100893q);
        }
        return false;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("p.genNode");
        expressionPresenter.emitAttribute(Constants.ATTRNAME_TEST, AlphaCode.fromItemType(this.f100894r));
        this.f100893q.export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public int getDependencies() {
        return this.f100893q.getDependencies() & 384;
    }

    public Expression getEquivalentExpr() {
        return this.f100893q;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public int getFingerprint() {
        return this.f100894r.getFingerprint();
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.PseudoExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return this.f100894r;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public UType getUType() {
        return this.f100894r.getUType();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public boolean isMotionless() {
        return false;
    }

    public void makeTopNodeEquivalent() {
        Expression expression = this.f100893q;
        if ((expression instanceof SlashExpression) && ExpressionTool.getAxisNavigation(((SlashExpression) expression).getFirstStep()) == 3) {
            SlashExpression slashExpression = (SlashExpression) this.f100893q.copy(new RebindingMap());
            Expression firstStep = slashExpression.getFirstStep();
            while (true) {
                if (!(firstStep instanceof FilterExpression)) {
                    if (!(firstStep instanceof SingleItemFilter)) {
                        break;
                    } else {
                        firstStep = ((SingleItemFilter) firstStep).getBaseExpression();
                    }
                } else {
                    firstStep = ((FilterExpression) firstStep).getBase();
                }
            }
            if (firstStep instanceof AxisExpression) {
                ((AxisExpression) firstStep).setAxis(12);
                this.f100895s = slashExpression;
            }
        }
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    /* renamed from: matches */
    public boolean m63465s(Item item, XPathContext xPathContext) throws XPathException {
        if (!this.f100894r.matches(item, xPathContext.getConfiguration().getTypeHierarchy())) {
            return false;
        }
        NodeInfo nodeInfo = (NodeInfo) item;
        AxisIterator iterateAxis = nodeInfo.iterateAxis(1);
        NodeInfo nodeInfo2 = nodeInfo;
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                if (this.f100895s == null || !UType.CHILD_NODE_KINDS.matches(nodeInfo2)) {
                    return false;
                }
                return m63425t(nodeInfo, nodeInfo2, this.f100895s, xPathContext);
            }
            if (matchesBeneathAnchor(nodeInfo, next, xPathContext)) {
                return true;
            }
            nodeInfo2 = next;
        }
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public boolean matchesBeneathAnchor(NodeInfo nodeInfo, NodeInfo nodeInfo2, XPathContext xPathContext) throws XPathException {
        NodeInfo next;
        if (!this.f100894r.test(nodeInfo)) {
            return false;
        }
        if (nodeInfo2 != null) {
            return m63425t(nodeInfo, nodeInfo2, this.f100893q, xPathContext);
        }
        AxisIterator iterateAxis = nodeInfo.iterateAxis(1);
        do {
            next = iterateAxis.next();
            if (next == null) {
                return false;
            }
        } while (!matchesBeneathAnchor(nodeInfo, next, xPathContext));
        return true;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return new Operand(this, this.f100893q, OperandRole.SAME_FOCUS_ACTION);
    }

    /* renamed from: t */
    public final boolean m63425t(NodeInfo nodeInfo, NodeInfo nodeInfo2, Expression expression, XPathContext xPathContext) throws XPathException {
        NodeInfo nodeInfo3;
        XPathContextMinor newMinorContext = xPathContext.newMinorContext();
        newMinorContext.setCurrentIterator(new ManualIterator(nodeInfo2));
        try {
            SequenceIterator iterate = expression.iterate(newMinorContext);
            do {
                nodeInfo3 = (NodeInfo) iterate.next();
                if (nodeInfo3 == null) {
                    return false;
                }
            } while (!nodeInfo3.equals(nodeInfo));
            return true;
        } catch (XPathException.Circularity | XPathException.StackOverflow e) {
            throw e;
        } catch (XPathException e2) {
            handleDynamicError(e2, newMinorContext);
            return false;
        }
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern copy(RebindingMap rebindingMap) {
        GeneralNodePattern generalNodePattern = new GeneralNodePattern(this.f100893q.copy(rebindingMap), this.f100894r);
        ExpressionTool.copyLocationInfo(this, generalNodePattern);
        generalNodePattern.setOriginalText(getOriginalText());
        Expression expression = this.f100895s;
        generalNodePattern.f100895s = expression == null ? null : expression.copy(rebindingMap);
        return generalNodePattern;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Configuration configuration = expressionVisitor.getConfiguration();
        ContextItemStaticInfo defaultContextItemStaticInfo = configuration.getDefaultContextItemStaticInfo();
        Expression optimize = this.f100893q.optimize(expressionVisitor, defaultContextItemStaticInfo);
        this.f100893q = optimize;
        if (!(optimize instanceof FilterExpression) || ((FilterExpression) optimize).isFilterIsPositional()) {
            return this;
        }
        try {
            return PatternMaker.fromExpression(this.f100893q, configuration, true).typeCheck(expressionVisitor, defaultContextItemStaticInfo);
        } catch (XPathException unused) {
            return this;
        }
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.f100893q = this.f100893q.typeCheck(expressionVisitor, new ContextItemStaticInfo(AnyNodeTest.getInstance(), false));
        makeTopNodeEquivalent();
        return this;
    }
}
