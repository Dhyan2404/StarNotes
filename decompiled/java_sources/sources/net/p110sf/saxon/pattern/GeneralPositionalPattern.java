package net.p110sf.saxon.pattern;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.AxisExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FilterExpression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMinor;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.FocusIterator;
import net.p110sf.saxon.om.FocusTrackingIterator;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ManualIterator;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.type.AlphaCode;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.NumericValue;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class GeneralPositionalPattern extends Pattern {

    /* renamed from: q */
    public final NodeTest f100896q;

    /* renamed from: r */
    public Expression f100897r;

    /* renamed from: s */
    public boolean f100898s = true;

    public GeneralPositionalPattern(NodeTest nodeTest, Expression expression) {
        this.f100896q = nodeTest;
        this.f100897r = expression;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public int allocateSlots(SlotManager slotManager, int i) {
        return ExpressionTool.allocateSlots(this.f100897r, i, slotManager);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return this.f100897r.hashCode() ^ this.f100896q.hashCode();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (!(obj instanceof GeneralPositionalPattern)) {
            return false;
        }
        GeneralPositionalPattern generalPositionalPattern = (GeneralPositionalPattern) obj;
        return this.f100896q.equals(generalPositionalPattern.f100896q) && this.f100897r.isEqual(generalPositionalPattern.f100897r);
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("p.genPos");
        expressionPresenter.emitAttribute(Constants.ATTRNAME_TEST, AlphaCode.fromItemType(this.f100896q));
        if (!this.f100898s) {
            expressionPresenter.emitAttribute("flags", "P");
        }
        this.f100897r.export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public int getDependencies() {
        return this.f100897r.getDependencies() & 384;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public int getFingerprint() {
        return this.f100896q.getFingerprint();
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.PseudoExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return this.f100896q;
    }

    public NodeTest getNodeTest() {
        return this.f100896q;
    }

    public Expression getPositionExpr() {
        return this.f100897r;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public UType getUType() {
        return this.f100896q.getUType();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    /* renamed from: matches */
    public boolean m63465s(Item item, XPathContext xPathContext) throws XPathException {
        return (item instanceof NodeInfo) && matchesBeneathAnchor((NodeInfo) item, null, xPathContext);
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public boolean matchesBeneathAnchor(NodeInfo nodeInfo, NodeInfo nodeInfo2, XPathContext xPathContext) throws XPathException {
        return m63427u(nodeInfo, nodeInfo2, xPathContext);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return new Operand(this, this.f100897r, OperandRole.FOCUS_CONTROLLED_ACTION);
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public String reconstruct() {
        return this.f100896q + IteratorUtils.f104923a + this.f100897r + IteratorUtils.f104924b;
    }

    public void setUsesPosition(boolean z) {
        this.f100898s = z;
    }

    /* renamed from: t */
    public final int m63426t(NodeInfo nodeInfo, int i, FocusIterator focusIterator) {
        return focusIterator instanceof FocusTrackingIterator ? ((FocusTrackingIterator) focusIterator).getSiblingPosition(nodeInfo, this.f100896q, i) : Navigator.getSiblingPosition(nodeInfo, this.f100896q, i);
    }

    /* renamed from: u */
    public final boolean m63427u(NodeInfo nodeInfo, NodeInfo nodeInfo2, XPathContext xPathContext) throws XPathException {
        XPathContextMinor xPathContextMinor;
        int i;
        if (!this.f100896q.test(nodeInfo)) {
            return false;
        }
        XPathContextMinor newMinorContext = xPathContext.newMinorContext();
        newMinorContext.setCurrentIterator(new ManualIterator(nodeInfo));
        try {
            if (this.f100898s) {
                i = m63426t(nodeInfo, Integer.MAX_VALUE, xPathContext.getCurrentIterator());
                ManualIterator manualIterator = new ManualIterator(nodeInfo, i);
                xPathContextMinor = newMinorContext.newMinorContext();
                xPathContextMinor.setCurrentIterator(manualIterator);
            } else {
                xPathContextMinor = newMinorContext;
                i = -1;
            }
            Item evaluateItem = this.f100897r.evaluateItem(xPathContextMinor);
            if (!(evaluateItem instanceof NumericValue)) {
                return ExpressionTool.effectiveBooleanValue(evaluateItem);
            }
            int asSubscript = ((NumericValue) this.f100897r.evaluateItem(xPathContext)).asSubscript();
            if (i < 0 && asSubscript != -1) {
                i = m63426t(nodeInfo, asSubscript, xPathContext.getCurrentIterator());
            }
            return asSubscript != -1 && i == asSubscript;
        } catch (XPathException.Circularity | XPathException.StackOverflow e) {
            throw e;
        } catch (XPathException e2) {
            handleDynamicError(e2, newMinorContext);
            return false;
        }
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern copy(RebindingMap rebindingMap) {
        GeneralPositionalPattern generalPositionalPattern = new GeneralPositionalPattern(this.f100896q.copy(), this.f100897r.copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, generalPositionalPattern);
        generalPositionalPattern.setOriginalText(getOriginalText());
        return generalPositionalPattern;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Configuration configuration = expressionVisitor.getConfiguration();
        Expression optimize = this.f100897r.optimize(expressionVisitor, configuration.makeContextItemStaticInfo(getItemType(), false));
        this.f100897r = optimize;
        if (Literal.isConstantBoolean(optimize, true)) {
            return new NodeTestPattern(this.f100896q);
        }
        if (Literal.isConstantBoolean(this.f100897r, false)) {
            return new NodeTestPattern(ErrorType.getInstance());
        }
        if ((this.f100897r.getDependencies() & 4) == 0) {
            this.f100898s = false;
        }
        if (FilterExpression.isPositionalFilter(this.f100897r, configuration.getTypeHierarchy())) {
            return this;
        }
        int i = 2;
        if (this.f100896q.getPrimitiveType() != 2) {
            i = this.f100896q.getPrimitiveType() == 13 ? 8 : 3;
        }
        return PatternMaker.fromExpression(new FilterExpression(new AxisExpression(i, this.f100896q), this.f100897r), configuration, true).typeCheck(expressionVisitor, contextItemStaticInfo);
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern simplify() throws XPathException {
        this.f100897r = this.f100897r.simplify();
        return this;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression typeCheck = this.f100897r.typeCheck(expressionVisitor, expressionVisitor.getConfiguration().makeContextItemStaticInfo(getItemType(), false));
        this.f100897r = typeCheck;
        this.f100897r = ExpressionTool.unsortedIfHomogeneous(typeCheck, false);
        return this;
    }
}
