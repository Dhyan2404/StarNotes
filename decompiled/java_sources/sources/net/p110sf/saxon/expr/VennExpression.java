package net.p110sf.saxon.expr;

import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.instruct.ForEachGroup;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.Token;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.expr.sort.DocumentSorter;
import net.p110sf.saxon.expr.sort.GlobalOrderComparer;
import net.p110sf.saxon.functions.CurrentGroupCall;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.pattern.CombinedNodeTest;
import net.p110sf.saxon.pattern.ExceptPattern;
import net.p110sf.saxon.pattern.GeneralNodePattern;
import net.p110sf.saxon.pattern.IntersectPattern;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.pattern.UnionPattern;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class VennExpression extends BinaryExpression {
    public VennExpression(Expression expression, int i, Expression expression2) {
        super(expression, i, expression2);
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public final int computeCardinality() {
        int cardinality = getLhsExpression().getCardinality();
        int cardinality2 = getRhsExpression().getCardinality();
        int i = this.operator;
        if (i == 1) {
            return Literal.isEmptySequence(getLhsExpression()) ? cardinality2 : Literal.isEmptySequence(getRhsExpression()) ? cardinality : cardinality | cardinality2 | 16384 | 32768;
        }
        if (i == 23) {
            if (Literal.isEmptySequence(getLhsExpression()) || Literal.isEmptySequence(getRhsExpression())) {
                return 8192;
            }
            return (cardinality & cardinality2) | 8192 | 16384;
        }
        if (i != 24) {
            return 57344;
        }
        if (Literal.isEmptySequence(getLhsExpression())) {
            return 8192;
        }
        return Literal.isEmptySequence(getRhsExpression()) ? cardinality : cardinality | 8192 | 16384;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return getRhsExpression().hashCode() ^ getLhsExpression().hashCode();
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        int specialProperties = getLhsExpression().getSpecialProperties();
        int specialProperties2 = getRhsExpression().getSpecialProperties();
        int i = m62665o(specialProperties, specialProperties2) ? 196608 : 131072;
        if (m62666p(specialProperties, specialProperties2)) {
            i |= 1048576;
        }
        return m62660j(specialProperties, specialProperties2) ? i | 8388608 : i;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        VennExpression vennExpression = new VennExpression(getLhsExpression().copy(rebindingMap), this.operator, getRhsExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, vennExpression);
        return vennExpression;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        return this.operator == 1 ? getLhsExpression().effectiveBooleanValue(xPathContext) || getRhsExpression().effectiveBooleanValue(xPathContext) : super.effectiveBooleanValue(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (obj instanceof VennExpression) {
            VennExpression vennExpression = (VennExpression) obj;
            if (this.operator != vennExpression.operator) {
                return false;
            }
            if (getLhsExpression().isEqual(vennExpression.getLhsExpression()) && getRhsExpression().isEqual(vennExpression.getRhsExpression())) {
                return true;
            }
            int i = this.operator;
            if (i == 1 || i == 23) {
                HashSet hashSet = new HashSet(10);
                gatherComponents(this.operator, hashSet);
                HashSet hashSet2 = new HashSet(10);
                vennExpression.gatherComponents(this.operator, hashSet2);
                return hashSet.equals(hashSet2);
            }
        }
        return false;
    }

    public void gatherComponents(int i, Set<Expression> set) {
        if ((getLhsExpression() instanceof VennExpression) && ((VennExpression) getLhsExpression()).operator == i) {
            ((VennExpression) getLhsExpression()).gatherComponents(i, set);
        } else {
            set.add(getLhsExpression());
        }
        if ((getRhsExpression() instanceof VennExpression) && ((VennExpression) getRhsExpression()).operator == i) {
            ((VennExpression) getRhsExpression()).gatherComponents(i, set);
        } else {
            set.add(getRhsExpression());
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        int i = this.operator;
        return i != 1 ? i != 23 ? i != 24 ? "unknown" : "except" : "intersect" : "union";
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public final ItemType getItemType() {
        ItemType itemType = getLhsExpression().getItemType();
        return this.operator == 1 ? Type.getCommonSuperType(itemType, getRhsExpression().getItemType(), getConfiguration().getTypeHierarchy()) : itemType;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression
    public OperandRole getOperandRole(int i) {
        return OperandRole.SAME_FOCUS_ACTION;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        int i = this.operator;
        return i != 1 ? i != 23 ? getLhsExpression().getStaticUType(uType) : getLhsExpression().getStaticUType(uType).intersection(getRhsExpression().getStaticUType(uType)) : getLhsExpression().getStaticUType(uType).union(getRhsExpression().getStaticUType(uType));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "VennExpression";
    }

    /* renamed from: i */
    public final boolean m62659i(Expression expression, Expression expression2) {
        if (!(expression instanceof ContextItemExpression) || !(expression2 instanceof CurrentGroupCall)) {
            return false;
        }
        Expression focusSettingContainer = ExpressionTool.getFocusSettingContainer(expression);
        ForEachGroup controllingInstruction = ((CurrentGroupCall) expression2).getControllingInstruction();
        return controllingInstruction != null && focusSettingContainer == controllingInstruction;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        int i = this.operator;
        if (i == 1) {
            ArrayList arrayList = new ArrayList();
            m62661k(arrayList, xPathContext);
            return new UnionIterator(arrayList, GlobalOrderComparer.getInstance());
        }
        if (i == 23) {
            return new IntersectionEnumeration(getLhsExpression().iterate(xPathContext), getRhsExpression().iterate(xPathContext), GlobalOrderComparer.getInstance());
        }
        if (i == 24) {
            return new DifferenceEnumeration(getLhsExpression().iterate(xPathContext), getRhsExpression().iterate(xPathContext), GlobalOrderComparer.getInstance());
        }
        throw new UnsupportedOperationException("Unknown operator in Venn Expression");
    }

    /* renamed from: j */
    public final boolean m62660j(int i, int i2) {
        return ((i & 8388608) == 0 || (8388608 & i2) == 0) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m62661k(java.util.List<net.p110sf.saxon.om.SequenceIterator> r5, net.p110sf.saxon.expr.XPathContext r6) throws net.p110sf.saxon.trans.XPathException {
        /*
            r4 = this;
            net.sf.saxon.expr.Expression r0 = r4.getLhsExpression()
            boolean r1 = r0 instanceof net.p110sf.saxon.expr.VennExpression
            r2 = 1
            if (r1 == 0) goto L14
            r1 = r0
            net.sf.saxon.expr.VennExpression r1 = (net.p110sf.saxon.expr.VennExpression) r1
            int r3 = r1.operator
            if (r3 != r2) goto L14
            r1.m62661k(r5, r6)
            goto L1b
        L14:
            net.sf.saxon.om.SequenceIterator r0 = r0.iterate(r6)
            r5.add(r0)
        L1b:
            net.sf.saxon.expr.Expression r4 = r4.getRhsExpression()
            boolean r0 = r4 instanceof net.p110sf.saxon.expr.VennExpression
            if (r0 == 0) goto L2e
            r0 = r4
            net.sf.saxon.expr.VennExpression r0 = (net.p110sf.saxon.expr.VennExpression) r0
            int r1 = r0.operator
            if (r1 != r2) goto L2e
            r0.m62661k(r5, r6)
            goto L35
        L2e:
            net.sf.saxon.om.SequenceIterator r4 = r4.iterate(r6)
            r5.add(r4)
        L35:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.VennExpression.m62661k(java.util.List, net.sf.saxon.expr.XPathContext):void");
    }

    /* renamed from: l */
    public final boolean m62662l(Expression expression) {
        return (expression.getDependencies() & 2) == 0;
    }

    /* renamed from: m */
    public final boolean m62663m(Expression expression) {
        if (expression instanceof ItemChecker) {
            expression = ((ItemChecker) expression).getBaseExpression();
        }
        return (expression instanceof FilterExpression) && (((FilterExpression) expression).getSelectExpression() instanceof ContextItemExpression);
    }

    /* renamed from: n */
    public final boolean m62664n(TypeHierarchy typeHierarchy) {
        return typeHierarchy.relationship(getLhsExpression().getItemType(), getRhsExpression().getItemType()) == Affinity.DISJOINT;
    }

    /* renamed from: o */
    public final boolean m62665o(int i, int i2) {
        int i3 = this.operator;
        return i3 != 1 ? i3 != 23 ? i3 == 24 && (i & 65536) != 0 : ((i | i2) & 65536) != 0 : ((i & i2) & 65536) != 0;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression orExpression;
        Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
        if (optimize != this) {
            return optimize;
        }
        TypeHierarchy typeHierarchy = expressionVisitor.getConfiguration().getTypeHierarchy();
        Expression lhsExpression = getLhsExpression();
        Expression rhsExpression = getRhsExpression();
        int i = this.operator;
        if (i != 1) {
            if (i != 23) {
                if (i == 24) {
                    if (Literal.isEmptySequence(lhsExpression)) {
                        return lhsExpression;
                    }
                    if (Literal.isEmptySequence(rhsExpression) && (lhsExpression.getSpecialProperties() & 131072) != 0) {
                        return lhsExpression;
                    }
                    if (m62659i(lhsExpression, rhsExpression)) {
                        return Literal.makeEmptySequence();
                    }
                    if (m62659i(rhsExpression, lhsExpression)) {
                        return new TailExpression(lhsExpression, 2);
                    }
                }
            } else {
                if (Literal.isEmptySequence(lhsExpression)) {
                    return lhsExpression;
                }
                if (Literal.isEmptySequence(rhsExpression)) {
                    return rhsExpression;
                }
                if (m62659i(lhsExpression, rhsExpression)) {
                    return lhsExpression;
                }
                if (m62659i(rhsExpression, lhsExpression)) {
                    return rhsExpression;
                }
            }
        } else {
            if (Literal.isEmptySequence(lhsExpression) && (rhsExpression.getSpecialProperties() & 131072) != 0) {
                return rhsExpression;
            }
            if (Literal.isEmptySequence(rhsExpression) && (lhsExpression.getSpecialProperties() & 131072) != 0) {
                return lhsExpression;
            }
            if (m62659i(lhsExpression, rhsExpression)) {
                return rhsExpression;
            }
            if (m62659i(rhsExpression, lhsExpression)) {
                return lhsExpression;
            }
        }
        boolean z = lhsExpression instanceof AxisExpression;
        if (z && (rhsExpression instanceof AxisExpression)) {
            AxisExpression axisExpression = (AxisExpression) lhsExpression;
            AxisExpression axisExpression2 = (AxisExpression) rhsExpression;
            if (axisExpression.getAxis() == axisExpression2.getAxis()) {
                if (axisExpression.getNodeTest().equals(axisExpression2.getNodeTest())) {
                    return this.operator == 24 ? Literal.makeEmptySequence() : axisExpression;
                }
                AxisExpression axisExpression3 = new AxisExpression(axisExpression.getAxis(), new CombinedNodeTest(axisExpression.getNodeTest(), this.operator, axisExpression2.getNodeTest()));
                ExpressionTool.copyLocationInfo(this, axisExpression3);
                return axisExpression3;
            }
        }
        if ((lhsExpression instanceof SlashExpression) && (rhsExpression instanceof SlashExpression) && this.operator == 1) {
            SlashExpression slashExpression = (SlashExpression) lhsExpression;
            SlashExpression slashExpression2 = (SlashExpression) rhsExpression;
            if (slashExpression.getFirstStep().isEqual(slashExpression2.getFirstStep())) {
                VennExpression vennExpression = new VennExpression(slashExpression.getRemainingSteps(), this.operator, slashExpression2.getRemainingSteps());
                ExpressionTool.copyLocationInfo(this, vennExpression);
                Expression makePathExpression = ExpressionTool.makePathExpression(slashExpression.getFirstStep(), vennExpression);
                ExpressionTool.copyLocationInfo(this, makePathExpression);
                return makePathExpression.optimize(expressionVisitor, contextItemStaticInfo);
            }
        }
        if ((lhsExpression instanceof FilterExpression) && (rhsExpression instanceof FilterExpression)) {
            FilterExpression filterExpression = (FilterExpression) lhsExpression;
            FilterExpression filterExpression2 = (FilterExpression) rhsExpression;
            if (!filterExpression.isPositional(typeHierarchy) && !filterExpression2.isPositional(typeHierarchy) && filterExpression.getSelectExpression().isEqual(filterExpression2.getSelectExpression())) {
                int i2 = this.operator;
                if (i2 == 1) {
                    orExpression = new OrExpression(filterExpression.getFilter(), filterExpression2.getFilter());
                } else if (i2 == 23) {
                    orExpression = new AndExpression(filterExpression.getFilter(), filterExpression2.getFilter());
                } else {
                    if (i2 != 24) {
                        throw new AssertionError("Unknown operator " + this.operator);
                    }
                    orExpression = new AndExpression(filterExpression.getFilter(), SystemFunction.makeCall(Keywords.FUNC_NOT_STRING, getRetainedStaticContext(), filterExpression2.getFilter()));
                }
                ExpressionTool.copyLocationInfo(this, orExpression);
                FilterExpression filterExpression3 = new FilterExpression(filterExpression.getSelectExpression(), orExpression);
                ExpressionTool.copyLocationInfo(this, filterExpression3);
                return filterExpression3.simplify().typeCheck(expressionVisitor, contextItemStaticInfo).optimize(expressionVisitor, contextItemStaticInfo);
            }
        }
        if (!expressionVisitor.isOptimizeForStreaming() && this.operator == 1 && z && (rhsExpression instanceof AxisExpression)) {
            AxisExpression axisExpression4 = (AxisExpression) lhsExpression;
            AxisExpression axisExpression5 = (AxisExpression) rhsExpression;
            if (axisExpression4.getAxis() == 2 && axisExpression5.getAxis() == 3) {
                return new Block(new Expression[]{lhsExpression, rhsExpression});
            }
            if (axisExpression5.getAxis() == 2 && axisExpression4.getAxis() == 3) {
                return new Block(new Expression[]{rhsExpression, lhsExpression});
            }
        }
        if (this.operator == 23 && !Cardinality.allowsMany(lhsExpression.getCardinality())) {
            return new SingletonIntersectExpression(lhsExpression, this.operator, rhsExpression.unordered(false, false));
        }
        if (this.operator == 23 && !Cardinality.allowsMany(rhsExpression.getCardinality())) {
            return new SingletonIntersectExpression(rhsExpression, this.operator, lhsExpression.unordered(false, false));
        }
        if (!m62664n(typeHierarchy)) {
            return this;
        }
        int i3 = this.operator;
        return i3 == 23 ? Literal.makeEmptySequence() : i3 == 24 ? (lhsExpression.getSpecialProperties() & 131072) != 0 ? lhsExpression : new DocumentSorter(lhsExpression) : this;
    }

    /* renamed from: p */
    public final boolean m62666p(int i, int i2) {
        int i3 = this.operator;
        return i3 != 1 ? i3 != 23 ? i3 == 24 && (i & 1048576) != 0 : ((i | i2) & 1048576) != 0 : ((i & i2) & 1048576) != 0;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        if (!(getLhsExpression() instanceof DocumentSorter)) {
            setLhsExpression(new DocumentSorter(getLhsExpression()));
        }
        if (!(getRhsExpression() instanceof DocumentSorter)) {
            setRhsExpression(new DocumentSorter(getRhsExpression()));
        }
        super.simplify();
        return this;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression
    public String tag() {
        int i = this.operator;
        return i == 1 ? "union" : Token.tokens[i];
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Pattern toPattern(Configuration configuration) throws XPathException {
        if (m62663m(getLhsExpression()) || m62663m(getRhsExpression())) {
            throw new XPathException("Cannot use a predicate pattern as an operand of a union, intersect, or except operator", "XTSE0340");
        }
        if (this.operator == 1) {
            return new UnionPattern(getLhsExpression().toPattern(configuration), getRhsExpression().toPattern(configuration));
        }
        int axisNavigation = ExpressionTool.getAxisNavigation(this);
        return (axisNavigation == 3 || axisNavigation == 2 || m62662l(getLhsExpression()) || m62662l(getRhsExpression())) ? this.operator == 24 ? new ExceptPattern(getLhsExpression().toPattern(configuration), getRhsExpression().toPattern(configuration)) : new IntersectPattern(getLhsExpression().toPattern(configuration), getRhsExpression().toPattern(configuration)) : new GeneralNodePattern(this, (NodeTest) getItemType());
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Configuration configuration = expressionVisitor.getConfiguration();
        TypeChecker typeChecker = configuration.getTypeChecker(false);
        getLhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        getRhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        if (!(getLhsExpression() instanceof Pattern)) {
            setLhsExpression(typeChecker.staticTypeCheck(getLhsExpression(), SequenceType.NODE_SEQUENCE, new RoleDiagnostic(1, Token.tokens[this.operator], 0), expressionVisitor));
        }
        if (!(getRhsExpression() instanceof Pattern)) {
            setRhsExpression(typeChecker.staticTypeCheck(getRhsExpression(), SequenceType.NODE_SEQUENCE, new RoleDiagnostic(1, Token.tokens[this.operator], 1), expressionVisitor));
        }
        return (this.operator == 1 || configuration.getTypeHierarchy().relationship(getLhsExpression().getItemType(), getRhsExpression().getItemType()) != Affinity.DISJOINT) ? this : this.operator == 23 ? Literal.makeEmptySequence() : getLhsExpression().hasSpecialProperty(131072) ? getLhsExpression() : new DocumentSorter(getLhsExpression());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression unordered(boolean z, boolean z2) {
        if (this.operator != 1 || z2 || !m62664n(getConfiguration().getTypeHierarchy())) {
            return this;
        }
        Block block = new Block(new Expression[]{getLhsExpression(), getRhsExpression()});
        ExpressionTool.copyLocationInfo(this, block);
        return block;
    }
}
