package net.p110sf.saxon.expr;

import com.sun.org.apache.xml.internal.utils.res.XResourceBundle;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.Token;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.expr.sort.GlobalOrderComparer;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public final class IdentityComparison extends BinaryExpression {

    /* renamed from: p */
    public boolean f99261p;

    public IdentityComparison(Expression expression, int i, Expression expression2) {
        super(expression, i, expression2);
        this.f99261p = false;
    }

    /* renamed from: j */
    public static NodeInfo m62587j(Expression expression, XPathContext xPathContext) throws XPathException {
        return (NodeInfo) expression.evaluateItem(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        IdentityComparison identityComparison = new IdentityComparison(getLhsExpression().copy(rebindingMap), this.operator, getRhsExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, identityComparison);
        identityComparison.f99261p = this.f99261p;
        return identityComparison;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        NodeInfo m62587j = m62587j(getLhsExpression(), xPathContext);
        if (m62587j == null) {
            return this.f99261p && m62587j(getRhsExpression(), xPathContext) == null;
        }
        NodeInfo m62587j2 = m62587j(getRhsExpression(), xPathContext);
        return m62587j2 != null && m62588i(m62587j, m62587j2);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "nodeComparison";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return BuiltInAtomicType.BOOLEAN;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression
    public OperandRole getOperandRole(int i) {
        return OperandRole.INSPECT;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return UType.BOOLEAN;
    }

    /* renamed from: i */
    public final boolean m62588i(NodeInfo nodeInfo, NodeInfo nodeInfo2) {
        int i = this.operator;
        if (i == 20) {
            return nodeInfo.equals(nodeInfo2);
        }
        if (i == 38) {
            return GlobalOrderComparer.getInstance().compare(nodeInfo, nodeInfo2) < 0;
        }
        if (i == 39) {
            return GlobalOrderComparer.getInstance().compare(nodeInfo, nodeInfo2) > 0;
        }
        throw new UnsupportedOperationException("Unknown node identity test");
    }

    public boolean isGenerateIdEmulation() {
        return this.f99261p;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
        return (optimize == this || this.f99261p || !(Literal.isEmptySequence(getLhsExpression()) || Literal.isEmptySequence(getRhsExpression()))) ? optimize : Literal.makeEmptySequence();
    }

    public void setGenerateIdEmulation(boolean z) {
        this.f99261p = z;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression
    public String tag() {
        int i = this.operator;
        return i != 20 ? i != 38 ? i != 39 ? "?" : XResourceBundle.MULT_FOLLOWS : XResourceBundle.MULT_PRECEDES : "is";
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getLhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        getRhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        if (!this.f99261p && (Literal.isEmptySequence(getLhsExpression()) || Literal.isEmptySequence(getRhsExpression()))) {
            return Literal.makeEmptySequence();
        }
        String[] strArr = Token.tokens;
        RoleDiagnostic roleDiagnostic = new RoleDiagnostic(1, strArr[this.operator], 0);
        TypeChecker typeChecker = expressionVisitor.getConfiguration().getTypeChecker(false);
        Expression lhsExpression = getLhsExpression();
        SequenceType sequenceType = SequenceType.OPTIONAL_NODE;
        setLhsExpression(typeChecker.staticTypeCheck(lhsExpression, sequenceType, roleDiagnostic, expressionVisitor));
        setRhsExpression(typeChecker.staticTypeCheck(getRhsExpression(), sequenceType, new RoleDiagnostic(1, strArr[this.operator], 1), expressionVisitor));
        if (!Cardinality.allowsZero(getLhsExpression().getCardinality()) && !Cardinality.allowsZero(getRhsExpression().getCardinality())) {
            this.f99261p = false;
        }
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public BooleanValue evaluateItem(XPathContext xPathContext) throws XPathException {
        NodeInfo m62587j = m62587j(getLhsExpression(), xPathContext);
        if (m62587j == null) {
            if (this.f99261p) {
                return BooleanValue.get(m62587j(getRhsExpression(), xPathContext) == null);
            }
            return null;
        }
        NodeInfo m62587j2 = m62587j(getRhsExpression(), xPathContext);
        if (m62587j2 == null) {
            if (this.f99261p) {
                return BooleanValue.FALSE;
            }
            return null;
        }
        return BooleanValue.get(m62588i(m62587j, m62587j2));
    }
}
