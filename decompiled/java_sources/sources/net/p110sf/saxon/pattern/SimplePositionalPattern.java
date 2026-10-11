package net.p110sf.saxon.pattern;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.type.AlphaCode;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public final class SimplePositionalPattern extends Pattern {

    /* renamed from: q */
    public final NodeTest f100934q;

    /* renamed from: r */
    public final int f100935r;

    public SimplePositionalPattern(NodeTest nodeTest, int i) {
        this.f100934q = nodeTest;
        this.f100935r = i;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return (this.f100935r << 3) ^ this.f100934q.hashCode();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (!(obj instanceof SimplePositionalPattern)) {
            return false;
        }
        SimplePositionalPattern simplePositionalPattern = (SimplePositionalPattern) obj;
        return this.f100934q.equals(simplePositionalPattern.f100934q) && this.f100935r == simplePositionalPattern.f100935r;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) {
        expressionPresenter.startElement("p.simPos");
        expressionPresenter.emitAttribute(Constants.ATTRNAME_TEST, AlphaCode.fromItemType(this.f100934q));
        expressionPresenter.emitAttribute("pos", this.f100935r + "");
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public int getFingerprint() {
        return this.f100934q.getFingerprint();
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.PseudoExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return this.f100934q.getPrimitiveItemType();
    }

    public NodeTest getNodeTest() {
        return this.f100934q;
    }

    public int getPosition() {
        return this.f100935r;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public UType getUType() {
        return this.f100934q.getUType();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public boolean isMotionless() {
        return false;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    /* renamed from: matches */
    public boolean m63465s(Item item, XPathContext xPathContext) {
        return (item instanceof NodeInfo) && matchesBeneathAnchor((NodeInfo) item, null, xPathContext);
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public boolean matchesBeneathAnchor(NodeInfo nodeInfo, NodeInfo nodeInfo2, XPathContext xPathContext) {
        if (!this.f100934q.test(nodeInfo)) {
            return false;
        }
        if (nodeInfo2 != null && nodeInfo.getParent() != nodeInfo2) {
            return false;
        }
        int i = this.f100935r;
        return i == Navigator.getSiblingPosition(nodeInfo, this.f100934q, i);
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public String reconstruct() {
        return this.f100934q + IteratorUtils.f104923a + this.f100935r + IteratorUtils.f104924b;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern copy(RebindingMap rebindingMap) {
        SimplePositionalPattern simplePositionalPattern = new SimplePositionalPattern(this.f100934q.copy(), this.f100935r);
        ExpressionTool.copyLocationInfo(this, simplePositionalPattern);
        simplePositionalPattern.setOriginalText(getOriginalText());
        return simplePositionalPattern;
    }
}
