package net.p110sf.saxon.pattern;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AlphaCode;
import net.p110sf.saxon.type.SchemaDeclaration;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public class NodeTestPattern extends Pattern {

    /* renamed from: q */
    public final NodeTest f100926q;

    public NodeTestPattern(NodeTest nodeTest) {
        this.f100926q = nodeTest;
        setPriority(nodeTest.getDefaultPriority());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return this.f100926q.hashCode() ^ 2062548648;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public Pattern convertToTypedPattern(String str) throws XPathException {
        NodeTest nodeTest = this.f100926q;
        if (!(nodeTest instanceof NameTest) || nodeTest.getUType() != UType.ELEMENT) {
            return this;
        }
        SchemaDeclaration elementDeclaration = getConfiguration().getElementDeclaration(this.f100926q.getMatchingNodeName());
        if (elementDeclaration != null) {
            return new NodeTestPattern(elementDeclaration.makeSchemaNodeTest());
        }
        if ("lax".equals(str)) {
            return this;
        }
        throw new XPathException("The mode specifies typed='strict', but there is no schema element declaration named " + this.f100926q, "XTSE3105");
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        return (obj instanceof NodeTestPattern) && ((NodeTestPattern) obj).f100926q.equals(this.f100926q);
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("p.nodeTest");
        expressionPresenter.emitAttribute(Constants.ATTRNAME_TEST, AlphaCode.fromItemType(this.f100926q));
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public int getFingerprint() {
        return this.f100926q.getFingerprint();
    }

    public NodeTest getNodeTest() {
        return this.f100926q;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public UType getUType() {
        return this.f100926q.getUType();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    /* renamed from: matches */
    public boolean m63465s(Item item, XPathContext xPathContext) {
        return (item instanceof NodeInfo) && this.f100926q.test((NodeInfo) item);
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public String reconstruct() {
        return this.f100926q.toString();
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return this.f100926q.toShortString();
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern copy(RebindingMap rebindingMap) {
        NodeTestPattern nodeTestPattern = new NodeTestPattern(this.f100926q.copy());
        nodeTestPattern.setPriority(getDefaultPriority());
        ExpressionTool.copyLocationInfo(this, nodeTestPattern);
        nodeTestPattern.setOriginalText(getOriginalText());
        return nodeTestPattern;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.PseudoExpression, net.p110sf.saxon.expr.Expression
    public NodeTest getItemType() {
        return this.f100926q;
    }
}
