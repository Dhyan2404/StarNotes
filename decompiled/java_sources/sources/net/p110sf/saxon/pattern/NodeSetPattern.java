package net.p110sf.saxon.pattern;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.GlobalVariableReference;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.SingletonIntersectExpression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMinor;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ManualIterator;
import net.p110sf.saxon.type.AlphaCode;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class NodeSetPattern extends Pattern {

    /* renamed from: q */
    public final Operand f100919q;

    /* renamed from: r */
    public ItemType f100920r;

    public NodeSetPattern(Expression expression) {
        this.f100919q = new Operand(this, expression, OperandRole.NAVIGATE);
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public int allocateSlots(SlotManager slotManager, int i) {
        return ExpressionTool.allocateSlots(getSelectionExpression(), i, slotManager);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return getSelectionExpression().hashCode() ^ 1930463016;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        return (obj instanceof NodeSetPattern) && ((NodeSetPattern) obj).getSelectionExpression().isEqual(getSelectionExpression());
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("p.nodeSet");
        ItemType itemType = this.f100920r;
        if (itemType != null) {
            expressionPresenter.emitAttribute(Constants.ATTRNAME_TEST, AlphaCode.fromItemType(itemType));
        }
        getSelectionExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public int getDependencies() {
        return getSelectionExpression().getDependencies();
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.PseudoExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        if (this.f100920r == null) {
            this.f100920r = getSelectionExpression().getItemType();
        }
        ItemType itemType = this.f100920r;
        return itemType instanceof NodeTest ? itemType : AnyNodeTest.getInstance();
    }

    public Expression getSelectionExpression() {
        return this.f100919q.getChildExpression();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public UType getUType() {
        return getItemType().getUType();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    /* renamed from: matches */
    public boolean m63465s(Item item, XPathContext xPathContext) throws XPathException {
        if (!(item instanceof NodeInfo)) {
            return false;
        }
        try {
            Expression selectionExpression = getSelectionExpression();
            return selectionExpression instanceof GlobalVariableReference ? ((GlobalVariableReference) selectionExpression).evaluateVariable(xPathContext).containsNode((NodeInfo) item) : SingletonIntersectExpression.containsNode(selectionExpression.iterate(xPathContext), (NodeInfo) item);
        } catch (UncheckedXPathException | XPathException unused) {
            return false;
        } catch (XPathException.Circularity | XPathException.StackOverflow e) {
            throw e;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return this.f100919q;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public SequenceIterator selectNodes(TreeInfo treeInfo, XPathContext xPathContext) throws XPathException {
        XPathContextMinor newMinorContext = xPathContext.newMinorContext();
        newMinorContext.setCurrentIterator(new ManualIterator(treeInfo.getRootNode()));
        return getSelectionExpression().iterate(newMinorContext);
    }

    public void setItemType(ItemType itemType) {
        this.f100920r = itemType;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern copy(RebindingMap rebindingMap) {
        NodeSetPattern nodeSetPattern = new NodeSetPattern(getSelectionExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, nodeSetPattern);
        nodeSetPattern.setOriginalText(getOriginalText());
        return nodeSetPattern;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        expressionVisitor.obtainOptimizer().optimizeNodeSetPattern(this);
        return this;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression makeEmptySequence;
        this.f100919q.setChildExpression(getSelectionExpression().typeCheck(expressionVisitor, contextItemStaticInfo));
        RoleDiagnostic roleDiagnostic = new RoleDiagnostic(19, getSelectionExpression().toString(), 0);
        TypeChecker typeChecker = expressionVisitor.getConfiguration().getTypeChecker(false);
        getSelectionExpression();
        try {
            makeEmptySequence = typeChecker.staticTypeCheck(getSelectionExpression(), SequenceType.NODE_SEQUENCE, roleDiagnostic, expressionVisitor);
        } catch (XPathException e) {
            expressionVisitor.issueWarning("Pattern will never match anything. " + e.getMessage(), getLocation());
            makeEmptySequence = Literal.makeEmptySequence();
        }
        this.f100919q.setChildExpression(makeEmptySequence);
        this.f100920r = getSelectionExpression().getItemType();
        return this;
    }
}
