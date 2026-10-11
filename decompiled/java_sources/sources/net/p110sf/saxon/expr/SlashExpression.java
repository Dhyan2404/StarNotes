package net.p110sf.saxon.expr;

import android.R;
import androidx.room.FtsOptions;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.SequenceMapper;
import net.p110sf.saxon.expr.SlashExpression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.CopyOf;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.expr.sort.DocumentSorter;
import net.p110sf.saxon.functions.Doc;
import net.p110sf.saxon.functions.DocumentFn;
import net.p110sf.saxon.functions.KeyFn;
import net.p110sf.saxon.ma.arrays.SquareArrayConstructor;
import net.p110sf.saxon.om.AxisInfo;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class SlashExpression extends BinaryExpression implements ContextSwitchingExpression {

    /* renamed from: p */
    public boolean f99372p;

    /* renamed from: q */
    public boolean f99373q;

    public SlashExpression(Expression expression, Expression expression2) {
        super(expression, 2, expression2);
    }

    /* renamed from: l */
    public static /* synthetic */ SequenceIterator m62636l(Expression expression, Item item) throws XPathException {
        return ((AxisExpression) expression).iterate((NodeInfo) item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ SequenceIterator m62637m(XPathContext xPathContext) throws XPathException {
        return getStep().iterate(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        return getStep().addToPathMap(pathMap, getStart().addToPathMap(pathMap, pathMapNodeSet));
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return Cardinality.multiply(getStart().getCardinality(), getStep().getCardinality());
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return (-925020203) + getStart().hashCode() + getStep().hashCode();
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        int specialProperties = getStart().getSpecialProperties();
        int specialProperties2 = getStep().getSpecialProperties();
        if ((4194304 & specialProperties2) != 0) {
            return 9043968;
        }
        if (!Cardinality.allowsMany(getStart().getCardinality())) {
            specialProperties |= R.anim.fade_in;
        }
        if (!Cardinality.allowsMany(getStep().getCardinality())) {
            specialProperties2 |= R.anim.fade_in;
        }
        int i = specialProperties & specialProperties2;
        int i2 = (i & 65536) != 0 ? 65536 : 0;
        if ((specialProperties & 16777216) != 0 && (65536 & specialProperties2) != 0) {
            i2 |= 16777216;
        }
        if ((i & 524288) != 0) {
            i2 |= 524288;
        }
        if ((i & 1048576) != 0) {
            i2 |= 1048576;
        }
        if (m62641p(specialProperties, specialProperties2)) {
            i2 |= 131072;
        }
        if (m62640o()) {
            i2 |= 262144;
        }
        return (i & 8388608) != 0 ? i2 | 8388608 : i2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        Expression makePathExpression = ExpressionTool.makePathExpression(getStart().copy(rebindingMap), getStep().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, makePathExpression);
        if (makePathExpression instanceof SlashExpression) {
            ((SlashExpression) makePathExpression).f99373q = this.f99373q;
        }
        return makePathExpression;
    }

    public void disableIndexing() {
        this.f99373q = true;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (!(obj instanceof SlashExpression)) {
            return false;
        }
        SlashExpression slashExpression = (SlashExpression) obj;
        return getStart().isEqual(slashExpression.getStart()) && getStep().isEqual(slashExpression.getStep());
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("slash", this);
        if (this instanceof SimpleStepExpression) {
            expressionPresenter.emitAttribute(FtsOptions.TOKENIZER_SIMPLE, "1");
        } else if (isContextFree()) {
            expressionPresenter.emitAttribute(FtsOptions.TOKENIZER_SIMPLE, "2");
        }
        getStart().export(expressionPresenter);
        getStep().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.ContextSwitchingExpression
    public Expression getActionExpression() {
        return getStep();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public double getCost() {
        return Math.max(getLhsExpression().getCost() + 1.0d + ((Cardinality.allowsMany(getLhsExpression().getCardinality()) ? 5 : 1) * getRhsExpression().getCost()), 1.0E9d);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "pathExpression";
    }

    public Expression getFirstStep() {
        return getStart() instanceof SlashExpression ? ((SlashExpression) getStart()).getFirstStep() : getStart();
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public IntegerValue[] getIntegerBounds() {
        return getStep().getIntegerBounds();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public final ItemType getItemType() {
        return getStep().getItemType();
    }

    public Expression getLastStep() {
        return getStep() instanceof SlashExpression ? ((SlashExpression) getStep()).getLastStep() : getStep();
    }

    public Expression getLeadingSteps() {
        if (!(getStep() instanceof SlashExpression)) {
            return getStart();
        }
        ArrayList arrayList = new ArrayList(8);
        m62638k(arrayList);
        Expression m62639n = m62639n(arrayList.subList(0, arrayList.size() - 1));
        ExpressionTool.copyLocationInfo(this, m62639n);
        return m62639n;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression
    public OperandRole getOperandRole(int i) {
        return i == 0 ? OperandRole.FOCUS_CONTROLLING_SELECT : OperandRole.FOCUS_CONTROLLED_ACTION;
    }

    public Expression getRemainingSteps() {
        if (!(getStart() instanceof SlashExpression)) {
            return getStep();
        }
        ArrayList arrayList = new ArrayList(8);
        m62638k(arrayList);
        Expression m62639n = m62639n(arrayList.subList(1, arrayList.size()));
        ExpressionTool.copyLocationInfo(this, m62639n);
        return m62639n;
    }

    @Override // net.p110sf.saxon.expr.ContextSwitchingExpression
    public Expression getSelectExpression() {
        return getStart();
    }

    public Expression getStart() {
        return getLhsExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return getStep().getStaticUType(getStart().getStaticUType(uType));
    }

    public Expression getStep() {
        return getRhsExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "ForEach";
    }

    public boolean isAbsolute() {
        return getFirstStep().getItemType().getPrimitiveType() == 9;
    }

    public boolean isContextFree() {
        return this.f99372p;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        final Expression step = getStep();
        if (this.f99372p && (step instanceof AxisExpression)) {
            return MappingIterator.map(getStart().iterate(xPathContext), new SequenceMapper.Lambda() { // from class: com.sunia.HTREnginev2.itm
                @Override // net.sf.saxon.expr.SequenceMapper.Lambda
                public final SequenceIterator map(Item item) {
                    SequenceIterator m62636l;
                    m62636l = SlashExpression.m62636l(Expression.this, item);
                    return m62636l;
                }
            });
        }
        XPathContextMinor newMinorContext = xPathContext.newMinorContext();
        newMinorContext.trackFocus(getStart().iterate(xPathContext));
        return new ContextMappingIterator(new ContextMappingFunction() { // from class: com.sunia.HTREnginev2.jtm
            @Override // net.p110sf.saxon.expr.ContextMappingFunction
            public final SequenceIterator map(XPathContext xPathContext2) {
                SequenceIterator m62637m;
                m62637m = SlashExpression.this.m62637m(xPathContext2);
                return m62637m;
            }
        }, newMinorContext);
    }

    /* renamed from: k */
    public final void m62638k(List<Expression> list) {
        if (getStart() instanceof SlashExpression) {
            ((SlashExpression) getStart()).m62638k(list);
        } else {
            list.add(getStart());
        }
        if (getStep() instanceof SlashExpression) {
            ((SlashExpression) getStep()).m62638k(list);
        } else {
            list.add(getStep());
        }
    }

    /* renamed from: n */
    public final Expression m62639n(List<Expression> list) {
        return list.size() == 1 ? list.get(0).copy(new RebindingMap()) : new SlashExpression(list.get(0).copy(new RebindingMap()), m62639n(list.subList(1, list.size())));
    }

    /* renamed from: o */
    public final boolean m62640o() {
        return (Cardinality.allowsMany(getStart().getCardinality()) || !(getStep() instanceof AxisExpression)) ? (Cardinality.allowsMany(getStep().getCardinality()) || !(getStart() instanceof AxisExpression) || AxisInfo.isForwards[((AxisExpression) getStart()).getAxis()]) ? false : true : !AxisInfo.isForwards[((AxisExpression) getStep()).getAxis()];
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression convertPathExpressionToKey;
        TypeHierarchy typeHierarchy = expressionVisitor.getConfiguration().getTypeHierarchy();
        Optimizer obtainOptimizer = expressionVisitor.obtainOptimizer();
        getLhs().optimize(expressionVisitor, contextItemStaticInfo);
        if (Literal.isEmptySequence(getStart())) {
            return Literal.makeEmptySequence();
        }
        ContextItemStaticInfo makeContextItemStaticInfo = expressionVisitor.getConfiguration().makeContextItemStaticInfo(getStart().getItemType(), false);
        makeContextItemStaticInfo.setContextSettingExpression(getStart());
        getRhs().optimize(expressionVisitor, makeContextItemStaticInfo);
        if (Literal.isEmptySequence(getStep())) {
            return Literal.makeEmptySequence();
        }
        if ((getStart() instanceof RootExpression) && typeHierarchy.isSubType(contextItemStaticInfo.getItemType(), NodeKindTest.DOCUMENT)) {
            return getStep();
        }
        SlashExpression simplifyDescendantPath = simplifyDescendantPath(expressionVisitor.getStaticContext());
        if (simplifyDescendantPath != null) {
            return simplifyDescendantPath.optimize(expressionVisitor, contextItemStaticInfo);
        }
        if (!this.f99373q) {
            Expression firstStep = getFirstStep();
            if (!firstStep.isCallOn(Doc.class) && !firstStep.isCallOn(DocumentFn.class)) {
                Expression lastStep = getLastStep();
                if (lastStep instanceof FilterExpression) {
                    FilterExpression filterExpression = (FilterExpression) lastStep;
                    if (!filterExpression.isPositional(typeHierarchy)) {
                        FilterExpression filterExpression2 = new FilterExpression(ExpressionTool.makePathExpression(getLeadingSteps(), filterExpression.getSelectExpression()), filterExpression.getFilter());
                        ExpressionTool.copyLocationInfo(this, filterExpression2);
                        return filterExpression2.optimize(expressionVisitor, contextItemStaticInfo);
                    }
                }
            }
            if (!expressionVisitor.isOptimizeForStreaming() && (convertPathExpressionToKey = obtainOptimizer.convertPathExpressionToKey(this, expressionVisitor)) != null) {
                return convertPathExpressionToKey.typeCheck(expressionVisitor, contextItemStaticInfo).optimize(expressionVisitor, contextItemStaticInfo);
            }
        }
        Expression tryToMakeSorted = tryToMakeSorted(expressionVisitor, contextItemStaticInfo);
        if (tryToMakeSorted != null) {
            return tryToMakeSorted;
        }
        if (getStep() instanceof AxisExpression) {
            if (!Cardinality.allowsMany(getStart().getCardinality())) {
                SimpleStepExpression simpleStepExpression = new SimpleStepExpression(getStart(), getStep());
                ExpressionTool.copyLocationInfo(this, simpleStepExpression);
                simpleStepExpression.setParentExpression(getParentExpression());
                return simpleStepExpression;
            }
            this.f99372p = true;
        }
        if ((getStart() instanceof RootExpression) && getStep().isCallOn(KeyFn.class)) {
            SystemFunctionCall systemFunctionCall = (SystemFunctionCall) getStep();
            if (systemFunctionCall.getArity() == 3 && (systemFunctionCall.getArg(2) instanceof ContextItemExpression)) {
                systemFunctionCall.setArg(2, new RootExpression());
                systemFunctionCall.setParentExpression(getParentExpression());
                ExpressionTool.resetStaticProperties(systemFunctionCall);
                return systemFunctionCall;
            }
        }
        if (!expressionVisitor.isOptimizeForStreaming()) {
            return this;
        }
        Expression unfilteredExpression = ExpressionTool.unfilteredExpression(getStep(), true);
        if (!(unfilteredExpression instanceof CopyOf)) {
            return this;
        }
        CopyOf copyOf = (CopyOf) unfilteredExpression;
        if (!(copyOf.getSelect() instanceof ContextItemExpression)) {
            return this;
        }
        copyOf.setSelect(getStart());
        unfilteredExpression.resetLocalStaticProperties();
        getStep().resetLocalStaticProperties();
        return getStep();
    }

    /* renamed from: p */
    public final boolean m62641p(int i, int i2) {
        if ((i2 & 131072) == 0) {
            return false;
        }
        if (!Cardinality.allowsMany(getStart().getCardinality())) {
            return true;
        }
        if ((i & 131072) == 0) {
            return false;
        }
        if ((2097152 & i2) == 0 && (4194304 & i2) == 0) {
            return ((524288 & i) == 0 || (1048576 & i2) == 0) ? false : true;
        }
        return true;
    }

    public void setContextFree(boolean z) {
        this.f99372p = z;
    }

    public void setStart(Expression expression) {
        setLhsExpression(expression);
    }

    public void setStep(Expression expression) {
        setRhsExpression(expression);
    }

    public SlashExpression simplifyDescendantPath(StaticContext staticContext) {
        Expression step = getStep();
        while (step instanceof FilterExpression) {
            FilterExpression filterExpression = (FilterExpression) step;
            if (filterExpression.isPositional(staticContext.getConfiguration().getTypeHierarchy())) {
                return null;
            }
            step = filterExpression.getSelectExpression();
        }
        if (!(step instanceof AxisExpression)) {
            return null;
        }
        Expression start = getStart();
        if (start instanceof AxisExpression) {
            AxisExpression axisExpression = (AxisExpression) start;
            if (axisExpression.getAxis() != 5) {
                return null;
            }
            ContextItemExpression contextItemExpression = new ContextItemExpression();
            ExpressionTool.copyLocationInfo(this, contextItemExpression);
            start = ExpressionTool.makePathExpression(contextItemExpression, axisExpression.copy(new RebindingMap()));
            ExpressionTool.copyLocationInfo(this, start);
        }
        if (!(start instanceof SlashExpression)) {
            return null;
        }
        SlashExpression slashExpression = (SlashExpression) start;
        if (!(slashExpression.getStep() instanceof AxisExpression)) {
            return null;
        }
        AxisExpression axisExpression2 = (AxisExpression) slashExpression.getStep();
        if (axisExpression2.getAxis() != 5) {
            return null;
        }
        NodeTest nodeTest = axisExpression2.getNodeTest();
        if (nodeTest != null && !(nodeTest instanceof AnyNodeTest)) {
            return null;
        }
        AxisExpression axisExpression3 = (AxisExpression) step;
        int axis = axisExpression3.getAxis();
        if (axis != 3 && axis != 4 && axis != 5) {
            if (axis != 2) {
                return null;
            }
            AxisExpression axisExpression4 = new AxisExpression(5, NodeKindTest.ELEMENT);
            ExpressionTool.copyLocationInfo(this, axisExpression4);
            Expression makePathExpression = ExpressionTool.makePathExpression(ExpressionTool.makePathExpression(slashExpression.getStart(), axisExpression4), getStep());
            if (!(makePathExpression instanceof SlashExpression)) {
                return null;
            }
            ExpressionTool.copyLocationInfo(this, makePathExpression);
            return (SlashExpression) makePathExpression;
        }
        Expression axisExpression5 = new AxisExpression(axis != 5 ? 4 : 5, axisExpression3.getNodeTest());
        ExpressionTool.copyLocationInfo(this, axisExpression5);
        Expression step2 = getStep();
        Stack stack = new Stack();
        while (step2 instanceof FilterExpression) {
            FilterExpression filterExpression2 = (FilterExpression) step2;
            stack.push(filterExpression2.getFilter());
            step2 = filterExpression2.getSelectExpression();
        }
        while (!stack.isEmpty()) {
            Expression filterExpression3 = new FilterExpression(axisExpression5, (Expression) stack.pop());
            ExpressionTool.copyLocationInfo(getStep(), filterExpression3);
            axisExpression5 = filterExpression3;
        }
        Expression makePathExpression2 = ExpressionTool.makePathExpression(slashExpression.getStart(), axisExpression5);
        if (!(makePathExpression2 instanceof SlashExpression)) {
            return null;
        }
        ExpressionTool.copyLocationInfo(this, makePathExpression2);
        SlashExpression slashExpression2 = (SlashExpression) makePathExpression2;
        slashExpression2.f99373q = this.f99373q;
        return slashExpression2;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00b2  */
    @Override // net.p110sf.saxon.expr.Expression
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.pattern.Pattern toPattern(net.p110sf.saxon.Configuration r7) throws net.p110sf.saxon.trans.XPathException {
        /*
            r6 = this;
            net.sf.saxon.expr.Expression r0 = r6.getLeadingSteps()
            net.sf.saxon.expr.Expression r1 = r6.getLastStep()
            boolean r2 = r0 instanceof net.p110sf.saxon.expr.ItemChecker
            if (r2 == 0) goto L1c
            r2 = r0
            net.sf.saxon.expr.ItemChecker r2 = (net.p110sf.saxon.expr.ItemChecker) r2
            net.sf.saxon.expr.Expression r2 = r2.getBaseExpression()
            boolean r2 = r2 instanceof net.p110sf.saxon.expr.ContextItemExpression
            if (r2 == 0) goto L58
            net.sf.saxon.pattern.Pattern r6 = r1.toPattern(r7)
            return r6
        L1c:
            boolean r2 = r1 instanceof net.p110sf.saxon.expr.VennExpression
            if (r2 == 0) goto L58
            r2 = r1
            net.sf.saxon.expr.VennExpression r2 = (net.p110sf.saxon.expr.VennExpression) r2
            int r3 = r2.operator
            r4 = 1
            if (r3 != r4) goto L58
            net.sf.saxon.expr.SlashExpression r6 = new net.sf.saxon.expr.SlashExpression
            net.sf.saxon.expr.parser.RebindingMap r1 = new net.sf.saxon.expr.parser.RebindingMap
            r1.<init>()
            net.sf.saxon.expr.Expression r1 = r0.copy(r1)
            net.sf.saxon.expr.Expression r3 = r2.getLhsExpression()
            r6.<init>(r1, r3)
            net.sf.saxon.expr.SlashExpression r1 = new net.sf.saxon.expr.SlashExpression
            net.sf.saxon.expr.parser.RebindingMap r3 = new net.sf.saxon.expr.parser.RebindingMap
            r3.<init>()
            net.sf.saxon.expr.Expression r0 = r0.copy(r3)
            net.sf.saxon.expr.Expression r3 = r2.getRhsExpression()
            r1.<init>(r0, r3)
            net.sf.saxon.expr.VennExpression r0 = new net.sf.saxon.expr.VennExpression
            int r2 = r2.operator
            r0.<init>(r6, r2, r1)
            net.sf.saxon.pattern.Pattern r6 = r0.toPattern(r7)
            return r6
        L58:
            net.sf.saxon.pattern.Pattern r2 = r1.toPattern(r7)
            boolean r3 = r2 instanceof net.p110sf.saxon.pattern.NodeTestPattern
            if (r3 == 0) goto L69
            net.sf.saxon.type.ItemType r6 = r2.getItemType()
            boolean r6 = r6 instanceof net.p110sf.saxon.type.ErrorType
            if (r6 == 0) goto L79
            return r2
        L69:
            boolean r3 = r2 instanceof net.p110sf.saxon.pattern.GeneralNodePattern
            if (r3 == 0) goto L79
            net.sf.saxon.pattern.GeneralNodePattern r7 = new net.sf.saxon.pattern.GeneralNodePattern
            net.sf.saxon.type.ItemType r0 = r2.getItemType()
            net.sf.saxon.pattern.NodeTest r0 = (net.p110sf.saxon.pattern.NodeTest) r0
            r7.<init>(r6, r0)
            return r7
        L79:
            boolean r6 = r0 instanceof net.p110sf.saxon.expr.SlashExpression
            if (r6 == 0) goto Lad
            r6 = r0
            net.sf.saxon.expr.SlashExpression r6 = (net.p110sf.saxon.expr.SlashExpression) r6
            net.sf.saxon.expr.Expression r3 = r6.getActionExpression()
            boolean r3 = r3 instanceof net.p110sf.saxon.expr.AxisExpression
            if (r3 == 0) goto Lad
            net.sf.saxon.expr.Expression r3 = r6.getActionExpression()
            net.sf.saxon.expr.AxisExpression r3 = (net.p110sf.saxon.expr.AxisExpression) r3
            int r4 = r3.getAxis()
            r5 = 5
            if (r4 != r5) goto Lad
            net.sf.saxon.pattern.NodeTest r4 = r3.getNodeTest()
            if (r4 == 0) goto La3
            net.sf.saxon.pattern.NodeTest r3 = r3.getNodeTest()
            boolean r3 = r3 instanceof net.p110sf.saxon.pattern.AnyNodeTest
            if (r3 == 0) goto Lad
        La3:
            net.sf.saxon.expr.Expression r6 = r6.getSelectExpression()
            net.sf.saxon.pattern.Pattern r6 = r6.toPattern(r7)
            r3 = 0
            goto Lb0
        Lad:
            r3 = 9
            r6 = 0
        Lb0:
            if (r6 != 0) goto Lba
            int r3 = net.p110sf.saxon.pattern.PatternMaker.getAxisForPathStep(r1)
            net.sf.saxon.pattern.Pattern r6 = r0.toPattern(r7)
        Lba:
            net.sf.saxon.pattern.AncestorQualifiedPattern r7 = new net.sf.saxon.pattern.AncestorQualifiedPattern
            r7.<init>(r2, r6, r3)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.SlashExpression.toPattern(net.sf.saxon.Configuration):net.sf.saxon.pattern.Pattern");
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return ExpressionTool.parenthesizeShort(getStart()) + "/" + ExpressionTool.parenthesizeShort(getStep());
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public String toString() {
        return ExpressionTool.parenthesize(getStart()) + "/" + ExpressionTool.parenthesize(getStep());
    }

    public SlashExpression tryToMakeAbsolute() {
        SlashExpression slashExpression;
        SlashExpression tryToMakeAbsolute;
        ItemType contextItemType;
        Expression firstStep = getFirstStep();
        if (firstStep.getItemType().getPrimitiveType() == 9) {
            return this;
        }
        if (!(firstStep instanceof AxisExpression) || (contextItemType = ((AxisExpression) firstStep).getContextItemType()) == null || contextItemType.getPrimitiveType() != 9) {
            if (firstStep instanceof DocumentSorter) {
                DocumentSorter documentSorter = (DocumentSorter) firstStep;
                if ((documentSorter.getBaseExpression() instanceof SlashExpression) && (tryToMakeAbsolute = (slashExpression = (SlashExpression) documentSorter.getBaseExpression()).tryToMakeAbsolute()) != null) {
                    return tryToMakeAbsolute == slashExpression ? this : new SlashExpression(new DocumentSorter(tryToMakeAbsolute), getRemainingSteps());
                }
            }
            return null;
        }
        RootExpression rootExpression = new RootExpression();
        ExpressionTool.copyLocationInfo(this, rootExpression);
        Expression makePathExpression = ExpressionTool.makePathExpression(rootExpression, copy(new RebindingMap()));
        if (!(makePathExpression instanceof SlashExpression)) {
            return null;
        }
        ExpressionTool.copyLocationInfo(this, makePathExpression);
        return (SlashExpression) makePathExpression;
    }

    public Expression tryToMakeSorted(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        TypeHierarchy typeHierarchy = expressionVisitor.getConfiguration().getTypeHierarchy();
        Optimizer obtainOptimizer = expressionVisitor.obtainOptimizer();
        Expression unfilteredExpression = ExpressionTool.unfilteredExpression(getStart(), false);
        if ((unfilteredExpression instanceof AxisExpression) && ((AxisExpression) unfilteredExpression).getAxis() == 4) {
            Expression unfilteredExpression2 = ExpressionTool.unfilteredExpression(getStep(), false);
            if ((unfilteredExpression2 instanceof AxisExpression) && ((AxisExpression) unfilteredExpression2).getAxis() == 3) {
                Expression copy = getStart().copy(new RebindingMap());
                ((AxisExpression) ExpressionTool.unfilteredExpression(copy, false)).setAxis(9);
                Expression copy2 = getStep().copy(new RebindingMap());
                ((AxisExpression) ExpressionTool.unfilteredExpression(copy2, false)).setAxis(4);
                FilterExpression filterExpression = new FilterExpression(copy2, copy);
                if (typeHierarchy.isSubType(contextItemStaticInfo.getItemType(), NodeKindTest.DOCUMENT)) {
                    ExpressionTool.copyLocationInfo(this, filterExpression);
                    obtainOptimizer.trace("Rewrote descendant::X/child::Y as descendant::Y[parent::X]", filterExpression);
                    return filterExpression;
                }
                SlashExpression slashExpression = new SlashExpression(new AxisExpression(3, NodeKindTest.ELEMENT), filterExpression);
                ExpressionTool.copyLocationInfo(this, slashExpression);
                obtainOptimizer.trace("Rewrote descendant::X/child::Y as child::*/descendant::Y[parent::X]", slashExpression);
                return slashExpression;
            }
        }
        return null;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getLhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        if (Literal.isEmptySequence(getStart())) {
            return getStart();
        }
        Configuration configuration = expressionVisitor.getConfiguration();
        TypeChecker typeChecker = configuration.getTypeChecker(false);
        RoleDiagnostic roleDiagnostic = new RoleDiagnostic(1, "/", 0);
        roleDiagnostic.setErrorCode("XPTY0019");
        setStart(typeChecker.staticTypeCheck(getStart(), SequenceType.NODE_SEQUENCE, roleDiagnostic, expressionVisitor));
        ItemType itemType = getStart().getItemType();
        if (itemType == ErrorType.getInstance()) {
            return Literal.makeEmptySequence();
        }
        ContextItemStaticInfo makeContextItemStaticInfo = configuration.makeContextItemStaticInfo(itemType, false);
        makeContextItemStaticInfo.setContextSettingExpression(getStart());
        getRhs().typeCheck(expressionVisitor, makeContextItemStaticInfo);
        if ((getRhsExpression() instanceof SquareArrayConstructor) && ((SquareArrayConstructor) getRhsExpression()).getOperanda().getNumberOfOperands() == 1) {
            expressionVisitor.getStaticContext().issueWarning("An array constructor appears immediately after '/' or '//'. Perhaps '/*[predicate]' was intended? If not, consider using '!' rather than '/' to remove this warning.", getLocation());
        }
        SlashExpression simplifyDescendantPath = simplifyDescendantPath(expressionVisitor.getStaticContext());
        return simplifyDescendantPath != null ? simplifyDescendantPath.typeCheck(expressionVisitor, contextItemStaticInfo) : ((getStart() instanceof ContextItemExpression) && getStep().hasSpecialProperty(131072)) ? getStep() : ((getStep() instanceof ContextItemExpression) && getStart().hasSpecialProperty(131072)) ? getStart() : ((getStep() instanceof AxisExpression) && ((AxisExpression) getStep()).getAxis() == 12 && configuration.getTypeHierarchy().isSubType(itemType, getStep().getItemType())) ? getStart() : this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression unordered(boolean z, boolean z2) throws XPathException {
        setStart(getStart().unordered(z, z2));
        setStep(getStep().unordered(z, z2));
        return this;
    }
}
