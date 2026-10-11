package net.p110sf.saxon.pattern;

import net.p110sf.saxon.expr.AxisExpression;
import net.p110sf.saxon.expr.LocalBinding;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.AxisInfo;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public final class AncestorQualifiedPattern extends Pattern {

    /* renamed from: q */
    public Pattern f100874q;

    /* renamed from: r */
    public Pattern f100875r;

    /* renamed from: s */
    public int f100876s;

    /* renamed from: t */
    public ItemType f100877t;

    /* renamed from: u */
    public boolean f100878u = false;

    public AncestorQualifiedPattern(Pattern pattern, Pattern pattern2, int i) {
        this.f100874q = pattern;
        this.f100875r = pattern2;
        this.f100876s = i;
        adoptChildExpression(pattern);
        adoptChildExpression(pattern2);
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public int allocateSlots(SlotManager slotManager, int i) {
        return this.f100874q.allocateSlots(slotManager, this.f100875r.allocateSlots(slotManager, i));
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public void bindCurrent(LocalBinding localBinding) {
        this.f100874q.bindCurrent(localBinding);
        this.f100875r.bindCurrent(localBinding);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return (this.f100876s << 22) ^ ((this.f100874q.hashCode() ^ 88267) ^ this.f100875r.hashCode());
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public Pattern convertToTypedPattern(String str) throws XPathException {
        if (this.f100875r.getUType().equals(UType.DOCUMENT)) {
            Pattern convertToTypedPattern = this.f100874q.convertToTypedPattern(str);
            return convertToTypedPattern == this.f100874q ? this : new AncestorQualifiedPattern(convertToTypedPattern, this.f100875r, this.f100876s);
        }
        Pattern convertToTypedPattern2 = this.f100875r.convertToTypedPattern(str);
        return convertToTypedPattern2 == this.f100875r ? this : new AncestorQualifiedPattern(this.f100874q, convertToTypedPattern2, this.f100876s);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (!(obj instanceof AncestorQualifiedPattern)) {
            return false;
        }
        AncestorQualifiedPattern ancestorQualifiedPattern = (AncestorQualifiedPattern) obj;
        return this.f100874q.isEqual(ancestorQualifiedPattern.f100874q) && this.f100875r.isEqual(ancestorQualifiedPattern.f100875r) && this.f100876s == ancestorQualifiedPattern.f100876s;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("p.withUpper");
        expressionPresenter.emitAttribute("axis", AxisInfo.axisName[getUpwardsAxis()]);
        expressionPresenter.emitAttribute("upFirst", "" + this.f100878u);
        this.f100874q.export(expressionPresenter);
        this.f100875r.export(expressionPresenter);
        expressionPresenter.endElement();
    }

    public Pattern getBasePattern() {
        return this.f100874q;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public int getDependencies() {
        return this.f100875r.getDependencies() | this.f100874q.getDependencies();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public int getFingerprint() {
        return this.f100874q.getFingerprint();
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.PseudoExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        ItemType itemType = this.f100877t;
        return itemType != null ? itemType : this.f100874q.getItemType();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public UType getUType() {
        return this.f100874q.getUType();
    }

    public Pattern getUpperPattern() {
        return this.f100875r;
    }

    public int getUpwardsAxis() {
        return this.f100876s;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public boolean isMotionless() {
        return this.f100874q.isMotionless() && this.f100875r.isMotionless();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    /* renamed from: matches */
    public boolean m63465s(Item item, XPathContext xPathContext) throws XPathException {
        return (item instanceof NodeInfo) && matchesBeneathAnchor((NodeInfo) item, null, xPathContext);
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public boolean matchesBeneathAnchor(NodeInfo nodeInfo, NodeInfo nodeInfo2, XPathContext xPathContext) throws XPathException {
        return this.f100878u ? m63416u(nodeInfo, nodeInfo2, xPathContext) && this.f100874q.m63465s(nodeInfo, xPathContext) : this.f100874q.matchesBeneathAnchor(nodeInfo, nodeInfo2, xPathContext) && m63416u(nodeInfo, nodeInfo2, xPathContext);
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public boolean matchesCurrentGroup() {
        return this.f100875r.matchesCurrentGroup();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        Pattern pattern = this.f100875r;
        OperandRole operandRole = OperandRole.SAME_FOCUS_ACTION;
        return operandList(new Operand(this, pattern, operandRole), new Operand(this, this.f100874q, operandRole));
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public String reconstruct() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f100875r);
        sb.append(this.f100876s == 9 ? "/" : "//");
        sb.append(this.f100874q);
        return sb.toString();
    }

    /* renamed from: t */
    public final boolean m63415t(NodeInfo nodeInfo, NodeInfo nodeInfo2, XPathContext xPathContext) throws XPathException {
        while (nodeInfo2 != null) {
            if (this.f100875r.matchesBeneathAnchor(nodeInfo2, nodeInfo, xPathContext)) {
                return true;
            }
            if (nodeInfo2.equals(nodeInfo)) {
                return false;
            }
            nodeInfo2 = nodeInfo2.getParent();
        }
        return false;
    }

    /* renamed from: u */
    public final boolean m63416u(NodeInfo nodeInfo, NodeInfo nodeInfo2, XPathContext xPathContext) throws XPathException {
        int i = this.f100876s;
        if (i == 0) {
            return m63415t(nodeInfo2, nodeInfo.getParent(), xPathContext);
        }
        if (i == 1) {
            return m63415t(nodeInfo2, nodeInfo, xPathContext);
        }
        if (i == 9) {
            NodeInfo parent = nodeInfo.getParent();
            return parent != null && this.f100875r.matchesBeneathAnchor(parent, nodeInfo2, xPathContext);
        }
        if (i == 12) {
            return this.f100875r.matchesBeneathAnchor(nodeInfo, nodeInfo2, xPathContext);
        }
        throw new XPathException("Unsupported axis " + AxisInfo.axisName[this.f100876s] + " in pattern");
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern copy(RebindingMap rebindingMap) {
        AncestorQualifiedPattern ancestorQualifiedPattern = new AncestorQualifiedPattern(this.f100874q.copy(rebindingMap), this.f100875r.copy(rebindingMap), this.f100876s);
        ExpressionTool.copyLocationInfo(this, ancestorQualifiedPattern);
        ancestorQualifiedPattern.setOriginalText(getOriginalText());
        return ancestorQualifiedPattern;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern simplify() throws XPathException {
        this.f100875r = this.f100875r.simplify();
        this.f100874q = this.f100874q.simplify();
        return this;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        AxisExpression axisExpression;
        this.f100874q = this.f100874q.typeCheck(expressionVisitor, contextItemStaticInfo);
        this.f100875r = this.f100875r.typeCheck(expressionVisitor, contextItemStaticInfo);
        if (this.f100876s == 9) {
            ItemType itemType = this.f100874q.getItemType();
            if (itemType instanceof NodeTest) {
                if (itemType.getPrimitiveType() == 2) {
                    axisExpression = new AxisExpression(2, (NodeTest) itemType);
                } else {
                    axisExpression = new AxisExpression(3, (NodeTest) itemType);
                }
                ExpressionTool.copyLocationInfo(this, axisExpression);
                this.f100877t = axisExpression.typeCheck(expressionVisitor, expressionVisitor.getConfiguration().makeContextItemStaticInfo(this.f100875r.getItemType(), false)).getItemType();
            }
        }
        this.f100878u = this.f100875r.getCost() < this.f100874q.getCost();
        return this;
    }
}
