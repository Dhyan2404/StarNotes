package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.functions.KeyFn;
import net.p110sf.saxon.functions.SuperId;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.om.IdentityComparable;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntHashSet;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeSetPattern;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trace.Traceable;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.jiter.MonoIterator;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public abstract class Expression implements IdentityComparable, ExportAgent, Locatable, Traceable {
    public static final int EFFECTIVE_BOOLEAN_VALUE = 32;
    public static final int EVALUATE_METHOD = 1;
    public static final int ITEM_FEED_METHOD = 16;
    public static final int ITERATE_METHOD = 2;
    public static final double MAX_COST = 1.0E9d;
    public static final int PROCESS_METHOD = 4;
    public static final int UPDATE_METHOD = 64;
    public static final int WATCH_METHOD = 8;

    /* renamed from: m */
    public static final /* synthetic */ boolean f99242m = false;

    /* renamed from: f */
    public Expression f99244f;

    /* renamed from: g */
    public RetainedStaticContext f99245g;

    /* renamed from: h */
    public int[] f99246h;

    /* renamed from: i */
    public int f99247i;

    /* renamed from: j */
    public Map<String, Object> f99248j;
    public static final IntegerValue UNBOUNDED_LOWER = (IntegerValue) IntegerValue.fromDouble(-1.0E100d);
    public static final IntegerValue UNBOUNDED_UPPER = (IntegerValue) IntegerValue.fromDouble(1.0E100d);
    public static final IntegerValue MAX_STRING_LENGTH = Int64Value.makeIntegerValue(2147483647L);
    public static final IntegerValue MAX_SEQUENCE_LENGTH = Int64Value.makeIntegerValue(2147483647L);
    protected int staticProperties = -1;

    /* renamed from: e */
    public Location f99243e = Loc.NONE;

    /* renamed from: k */
    public double f99249k = -1.0d;

    /* renamed from: l */
    public int f99250l = -1;

    /* renamed from: b */
    public static void m62566b(Expression expression, IntHashSet intHashSet) {
        Expression interpretedExpression = expression.getInterpretedExpression();
        if (interpretedExpression instanceof LocalVariableReference) {
            intHashSet.add(((LocalVariableReference) interpretedExpression).getSlotNumber());
        } else {
            if (interpretedExpression instanceof SuppliedParameterReference) {
                intHashSet.add(((SuppliedParameterReference) interpretedExpression).getSlotNumber());
                return;
            }
            Iterator<Operand> it2 = interpretedExpression.operands().iterator();
            while (it2.hasNext()) {
                m62566b(it2.next().getChildExpression(), intHashSet);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m62567c(Outputter outputter, Item item) throws XPathException {
        outputter.m62516b(item, getLocation(), 524288);
    }

    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        boolean dependsOnFocus = ExpressionTool.dependsOnFocus(this);
        if (pathMapNodeSet == null) {
            if (dependsOnFocus) {
                ContextItemExpression contextItemExpression = new ContextItemExpression();
                ExpressionTool.copyLocationInfo(this, contextItemExpression);
                pathMapNodeSet = new PathMap.PathMapNodeSet(pathMap.makeNewRoot(contextItemExpression));
            }
        } else if (!dependsOnFocus) {
            pathMapNodeSet = null;
        }
        PathMap.PathMapNodeSet pathMapNodeSet2 = new PathMap.PathMapNodeSet();
        for (Operand operand : operands()) {
            OperandUsage usage = operand.getUsage();
            PathMap.PathMapNodeSet addToPathMap = operand.getChildExpression().addToPathMap(pathMap, pathMapNodeSet);
            if (usage == OperandUsage.NAVIGATION) {
                NodeKindTest nodeKindTest = NodeKindTest.ELEMENT;
                addToPathMap = addToPathMap.createArc(1, nodeKindTest).createArc(4, nodeKindTest);
            }
            pathMapNodeSet2.addNodeSet(addToPathMap);
        }
        if (getItemType() instanceof AtomicType) {
            return null;
        }
        return pathMapNodeSet2;
    }

    public void adoptChildExpression(Expression expression) {
        if (expression == null) {
            return;
        }
        expression.setParentExpression(this);
        if (expression.f99245g == null) {
            expression.f99245g = this.f99245g;
        }
        if (getLocation() == null || getLocation() == Loc.NONE) {
            ExpressionTool.copyLocationInfo(expression, this);
        } else if (expression.getLocation() == null || expression.getLocation() == Loc.NONE) {
            ExpressionTool.copyLocationInfo(this, expression);
        }
        resetLocalStaticProperties();
    }

    public boolean allowExtractingCommonSubexpressions() {
        return true;
    }

    public void checkForUpdatingSubexpressions() throws XPathException {
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            Expression childExpression = it2.next().getChildExpression();
            childExpression.getClass();
            childExpression.checkForUpdatingSubexpressions();
            if (childExpression.isUpdatingExpression()) {
                XPathException xPathException = new XPathException("Updating expression appears in a context where it is not permitted", "XUST0001");
                xPathException.setLocation(childExpression.getLocation());
                throw xPathException;
            }
        }
    }

    public void checkPermittedContents(SchemaType schemaType, boolean z) throws XPathException {
    }

    public final Iterable<Operand> checkedOperands() {
        Iterable<Operand> operands = operands();
        for (Operand operand : operands) {
            Expression childExpression = operand.getChildExpression();
            boolean z = operand.getParentExpression() != this;
            boolean z2 = childExpression.getParentExpression() != this;
            if (z || z2) {
                StringBuilder sb = new StringBuilder();
                sb.append("*** Bad parent pointer found in ");
                sb.append(z ? "operand " : "expression ");
                sb.append(childExpression.toShortString());
                sb.append(" at ");
                sb.append(childExpression.getLocation().getSystemId());
                sb.append("#");
                sb.append(childExpression.getLocation().getLineNumber());
                sb.append(" ***");
                String sb2 = sb.toString();
                try {
                    Configuration configuration = getConfiguration();
                    Logger logger = configuration == null ? null : configuration.getLogger();
                    if (logger == null) {
                        throw new IllegalStateException(sb2);
                    }
                    logger.warning(sb2);
                    childExpression.setParentExpression(this);
                } catch (Exception unused) {
                    throw new IllegalStateException(sb2);
                }
            }
            if (childExpression.getRetainedStaticContext() == null) {
                childExpression.setRetainedStaticContext(getRetainedStaticContext());
            }
        }
        return operands;
    }

    public abstract int computeCardinality();

    public int computeDependencies() {
        int intrinsicDependencies = getIntrinsicDependencies();
        for (Operand operand : operands()) {
            intrinsicDependencies |= operand.hasSameFocus() ? operand.getChildExpression().getDependencies() : operand.getChildExpression().getDependencies() & (-31);
        }
        return intrinsicDependencies;
    }

    public int computeHashCode() {
        return super.hashCode();
    }

    public int computeSpecialProperties() {
        return 0;
    }

    public final void computeStaticProperties() {
        this.staticProperties = computeDependencies() | computeCardinality() | computeSpecialProperties();
    }

    public abstract Expression copy(RebindingMap rebindingMap);

    public void dynamicError(String str, String str2, XPathContext xPathContext) throws XPathException {
        XPathException xPathException = new XPathException(str, str2, getLocation());
        xPathException.setXPathContext(xPathContext);
        xPathException.setFailingExpression(this);
        throw xPathException;
    }

    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        try {
            return ExpressionTool.effectiveBooleanValue(iterate(xPathContext));
        } catch (XPathException e) {
            e.maybeSetFailingExpression(this);
            e.maybeSetContext(xPathContext);
            throw e;
        }
    }

    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public UnicodeString evaluateAsString(XPathContext xPathContext) throws XPathException {
        Item evaluateItem = evaluateItem(xPathContext);
        return evaluateItem == null ? EmptyUnicodeString.getInstance() : evaluateItem.getUnicodeStringValue();
    }

    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        return iterate(xPathContext).next();
    }

    public void evaluatePendingUpdates(XPathContext xPathContext, PendingUpdateList pendingUpdateList) throws XPathException {
        if (isVacuousExpression()) {
            iterate(xPathContext).next();
            return;
        }
        throw new UnsupportedOperationException("Expression " + getClass() + " is not an updating expression");
    }

    public final void explain(Logger logger) {
        ExpressionPresenter expressionPresenter = new ExpressionPresenter(getConfiguration(), logger);
        ExpressionPresenter.ExportOptions exportOptions = new ExpressionPresenter.ExportOptions();
        exportOptions.explaining = true;
        expressionPresenter.setOptions(exportOptions);
        try {
            export(expressionPresenter);
        } catch (XPathException e) {
            expressionPresenter.startElement("failure");
            expressionPresenter.emitAttribute("message", e.getMessage());
            expressionPresenter.endElement();
        }
        expressionPresenter.close();
    }

    public abstract void export(ExpressionPresenter expressionPresenter) throws XPathException;

    public int getCardinality() {
        if (this.staticProperties == -1) {
            computeStaticProperties();
        }
        return this.staticProperties & 57344;
    }

    public Configuration getConfiguration() {
        try {
            return getRetainedStaticContext().getConfiguration();
        } catch (NullPointerException unused) {
            throw new NullPointerException("Internal error: expression " + this.toShortString() + " has no retained static context");
        }
    }

    public double getCost() {
        if (this.f99249k < 0.0d) {
            double netCost = getNetCost();
            Iterator<Operand> it2 = operands().iterator();
            while (it2.hasNext()) {
                netCost += it2.next().getChildExpression().getCost();
                if (netCost > 1.0E9d) {
                    break;
                }
            }
            this.f99249k = netCost;
        }
        return this.f99249k;
    }

    public int getDependencies() {
        if (this.staticProperties == -1) {
            computeStaticProperties();
        }
        return this.staticProperties & StaticProperty.DEPENDENCY_MASK;
    }

    public int getEvaluationMethod() {
        return this.f99247i;
    }

    public String getExpressionName() {
        return getClass().getSimpleName();
    }

    public Object getExtraProperty(String str) {
        Map<String, Object> map = this.f99248j;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public abstract int getImplementationMethod();

    public IntegerValue[] getIntegerBounds() {
        return null;
    }

    public Expression getInterpretedExpression() {
        return this;
    }

    public int getIntrinsicDependencies() {
        return 0;
    }

    public abstract ItemType getItemType();

    public RetainedStaticContext getLocalRetainedStaticContext() {
        return this.f99245g;
    }

    @Override // net.p110sf.saxon.expr.Locatable
    public final Location getLocation() {
        for (int i = 0; i < 10; i++) {
            Location location = this.f99243e;
            if ((location != null && location != Loc.NONE) || this.getParentExpression() == null) {
                return this.f99243e;
            }
            this = this.getParentExpression();
        }
        return this.f99243e;
    }

    public int getNetCost() {
        return 1;
    }

    public StructuredQName getObjectName() {
        return null;
    }

    public PackageData getPackageData() {
        try {
            return getRetainedStaticContext().getPackageData();
        } catch (NullPointerException unused) {
            throw new NullPointerException("Internal error: expression " + this.toShortString() + " has no retained static context");
        }
    }

    public Expression getParentExpression() {
        return this.f99244f;
    }

    public Iterator<String> getProperties() {
        return new MonoIterator("expression");
    }

    public Object getProperty(String str) {
        if (str.equals("expression")) {
            return getLocation();
        }
        return null;
    }

    public final RetainedStaticContext getRetainedStaticContext() {
        if (this.f99245g == null) {
            this.f99245g = getParentExpression().getRetainedStaticContext();
        }
        return this.f99245g;
    }

    public Expression getScopingExpression() {
        int intrinsicDependencies = getIntrinsicDependencies() & 30;
        if (intrinsicDependencies != 0) {
            return intrinsicDependencies == 16 ? ExpressionTool.getContextDocumentSettingContainer(this) : ExpressionTool.getFocusSettingContainer(this);
        }
        return null;
    }

    public final synchronized int[] getSlotsUsed() {
        int[] iArr = this.f99246h;
        if (iArr != null) {
            return iArr;
        }
        IntHashSet intHashSet = new IntHashSet(10);
        m62566b(this, intHashSet);
        this.f99246h = new int[intHashSet.size()];
        IntIterator it2 = intHashSet.iterator();
        int i = 0;
        while (it2.hasNext()) {
            this.f99246h[i] = it2.next();
            i++;
        }
        Arrays.sort(this.f99246h);
        return this.f99246h;
    }

    public final int getSpecialProperties() {
        if (this.staticProperties == -1) {
            computeStaticProperties();
        }
        return this.staticProperties & StaticProperty.SPECIAL_PROPERTY_MASK;
    }

    public URI getStaticBaseURI() throws XPathException {
        return getRetainedStaticContext().getStaticBaseUri();
    }

    public String getStaticBaseURIString() {
        return getRetainedStaticContext().getStaticBaseUriString();
    }

    public SequenceType getStaticType() {
        return SequenceType.makeSequenceType(getItemType(), getCardinality());
    }

    public UType getStaticUType(UType uType) {
        return UType.ANY;
    }

    public String getStreamerName() {
        return null;
    }

    public String getTracingTag() {
        return getExpressionName();
    }

    public boolean hasCompatibleStaticContext(Expression expression) {
        boolean z = (getIntrinsicDependencies() & 2048) != 0;
        if (z != ((expression.getIntrinsicDependencies() & 2048) != 0)) {
            return false;
        }
        if (z) {
            return getRetainedStaticContext().equals(expression.getRetainedStaticContext());
        }
        return true;
    }

    public boolean hasSpecialProperty(int i) {
        return (getSpecialProperties() & i) != 0;
    }

    public boolean hasVariableBinding(Binding binding) {
        return false;
    }

    public final int hashCode() {
        if (this.f99250l == -1) {
            this.f99250l = computeHashCode();
        }
        return this.f99250l;
    }

    @Override // net.p110sf.saxon.om.IdentityComparable
    public int identityHashCode() {
        return System.identityHashCode(getLocation());
    }

    public boolean implementsStaticTypeCheck() {
        return false;
    }

    public boolean isCallOn(Class<? extends SystemFunction> cls) {
        return false;
    }

    public final boolean isEqual(Expression expression) {
        return this == expression || (hashCode() == expression.hashCode() && equals(expression));
    }

    @Override // net.p110sf.saxon.om.IdentityComparable
    public boolean isIdentical(IdentityComparable identityComparable) {
        return this == identityComparable;
    }

    public boolean isInstruction() {
        return false;
    }

    public boolean isLiftable(boolean z) {
        int specialProperties = getSpecialProperties();
        int dependencies = getDependencies();
        return (8388608 & specialProperties) != 0 && (specialProperties & 33554432) == 0 && (dependencies & 512) == 0 && (dependencies & 4) == 0 && (dependencies & 8) == 0;
    }

    public boolean isMultiThreaded(Configuration configuration) {
        return false;
    }

    public boolean isStaticPropertiesKnown() {
        return this.staticProperties != -1;
    }

    public boolean isSubtreeExpression() {
        if (ExpressionTool.dependsOnFocus(this)) {
            if ((getIntrinsicDependencies() & 30) != 0) {
                return false;
            }
            Iterator<Operand> it2 = operands().iterator();
            while (it2.hasNext()) {
                if (!it2.next().getChildExpression().isSubtreeExpression()) {
                    return false;
                }
            }
        }
        return true;
    }

    public boolean isUpdatingExpression() {
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            if (it2.next().getChildExpression().isUpdatingExpression()) {
                return true;
            }
        }
        return false;
    }

    public boolean isVacuousExpression() {
        return false;
    }

    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return SequenceTool.itemOrEmpty(evaluateItem(xPathContext)).iterate();
    }

    public int markTailFunctionCalls(StructuredQName structuredQName, int i) {
        return 0;
    }

    public List<Operand> operandList(Operand... operandArr) {
        return Arrays.asList(operandArr);
    }

    public List<Operand> operandSparseList(Operand... operandArr) {
        ArrayList arrayList = new ArrayList();
        for (Operand operand : operandArr) {
            if (operand != null) {
                arrayList.add(operand);
            }
        }
        return arrayList;
    }

    public Iterable<Operand> operands() {
        return Collections.emptyList();
    }

    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        if (expressionVisitor.incrementAndTestDepth()) {
            optimizeChildren(expressionVisitor, contextItemStaticInfo);
            expressionVisitor.decrementDepth();
        }
        return this;
    }

    public final void optimizeChildren(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            it2.next().optimize(expressionVisitor, contextItemStaticInfo);
        }
    }

    public void prepareForStreaming() throws XPathException {
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x001e, code lost:
    
        if (net.p110sf.saxon.value.Cardinality.allowsMany(getCardinality()) == false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void process(final net.p110sf.saxon.event.Outputter r5, net.p110sf.saxon.expr.XPathContext r6) throws net.p110sf.saxon.trans.XPathException {
        /*
            r4 = this;
            int r0 = r4.getImplementationMethod()
            r1 = r0 & 1
            r2 = 0
            r3 = 1
            if (r1 == 0) goto Lc
            r1 = r3
            goto Ld
        Lc:
            r1 = r2
        Ld:
            r0 = r0 & 2
            if (r0 == 0) goto L12
            r2 = r3
        L12:
            if (r1 == 0) goto L30
            if (r2 == 0) goto L20
            int r0 = r4.getCardinality()     // Catch: net.p110sf.saxon.trans.XPathException -> L5a net.p110sf.saxon.trans.UncheckedXPathException -> L66
            boolean r0 = net.p110sf.saxon.value.Cardinality.allowsMany(r0)     // Catch: net.p110sf.saxon.trans.XPathException -> L5a net.p110sf.saxon.trans.UncheckedXPathException -> L66
            if (r0 != 0) goto L30
        L20:
            net.sf.saxon.om.Item r0 = r4.evaluateItem(r6)     // Catch: net.p110sf.saxon.trans.XPathException -> L5a net.p110sf.saxon.trans.UncheckedXPathException -> L66
            if (r0 == 0) goto L3e
            net.sf.saxon.s9api.Location r1 = r4.getLocation()     // Catch: net.p110sf.saxon.trans.XPathException -> L5a net.p110sf.saxon.trans.UncheckedXPathException -> L66
            r2 = 524288(0x80000, float:7.34684E-40)
            r5.m62516b(r0, r1, r2)     // Catch: net.p110sf.saxon.trans.XPathException -> L5a net.p110sf.saxon.trans.UncheckedXPathException -> L66
            goto L3e
        L30:
            if (r2 == 0) goto L3f
            net.sf.saxon.om.SequenceIterator r0 = r4.iterate(r6)     // Catch: net.p110sf.saxon.trans.XPathException -> L5a net.p110sf.saxon.trans.UncheckedXPathException -> L66
            com.sunia.HTREnginev2.v2g r1 = new com.sunia.HTREnginev2.v2g     // Catch: net.p110sf.saxon.trans.XPathException -> L5a net.p110sf.saxon.trans.UncheckedXPathException -> L66
            r1.<init>()     // Catch: net.p110sf.saxon.trans.XPathException -> L5a net.p110sf.saxon.trans.UncheckedXPathException -> L66
            net.p110sf.saxon.om.SequenceTool.supply(r0, r1)     // Catch: net.p110sf.saxon.trans.XPathException -> L5a net.p110sf.saxon.trans.UncheckedXPathException -> L66
        L3e:
            return
        L3f:
            java.lang.AssertionError r5 = new java.lang.AssertionError     // Catch: net.p110sf.saxon.trans.XPathException -> L5a net.p110sf.saxon.trans.UncheckedXPathException -> L66
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: net.p110sf.saxon.trans.XPathException -> L5a net.p110sf.saxon.trans.UncheckedXPathException -> L66
            r0.<init>()     // Catch: net.p110sf.saxon.trans.XPathException -> L5a net.p110sf.saxon.trans.UncheckedXPathException -> L66
            java.lang.String r1 = "process() is not implemented in the subclass "
            r0.append(r1)     // Catch: net.p110sf.saxon.trans.XPathException -> L5a net.p110sf.saxon.trans.UncheckedXPathException -> L66
            java.lang.Class r1 = r4.getClass()     // Catch: net.p110sf.saxon.trans.XPathException -> L5a net.p110sf.saxon.trans.UncheckedXPathException -> L66
            r0.append(r1)     // Catch: net.p110sf.saxon.trans.XPathException -> L5a net.p110sf.saxon.trans.UncheckedXPathException -> L66
            java.lang.String r0 = r0.toString()     // Catch: net.p110sf.saxon.trans.XPathException -> L5a net.p110sf.saxon.trans.UncheckedXPathException -> L66
            r5.<init>(r0)     // Catch: net.p110sf.saxon.trans.XPathException -> L5a net.p110sf.saxon.trans.UncheckedXPathException -> L66
            throw r5     // Catch: net.p110sf.saxon.trans.XPathException -> L5a net.p110sf.saxon.trans.UncheckedXPathException -> L66
        L5a:
            r5 = move-exception
            net.sf.saxon.s9api.Location r4 = r4.getLocation()
            r5.maybeSetLocation(r4)
            r5.maybeSetContext(r6)
            throw r5
        L66:
            r5 = move-exception
            net.sf.saxon.trans.XPathException r5 = r5.getXPathException()
            net.sf.saxon.s9api.Location r4 = r4.getLocation()
            r5.maybeSetLocation(r4)
            r5.maybeSetContext(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.Expression.process(net.sf.saxon.event.Outputter, net.sf.saxon.expr.XPathContext):void");
    }

    public void resetLocalStaticProperties() {
        this.staticProperties = -1;
        this.f99250l = -1;
    }

    public void restoreParentPointers() {
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            Expression childExpression = it2.next().getChildExpression();
            childExpression.setParentExpression(this);
            childExpression.restoreParentPointers();
        }
    }

    public void setEvaluationMethod(int i) {
        this.f99247i = i;
    }

    public void setExtraProperty(String str, Object obj) {
        if (this.f99248j == null) {
            if (obj == null) {
                return;
            } else {
                this.f99248j = new HashMap(4);
            }
        }
        if (obj == null) {
            this.f99248j.remove(str);
        } else {
            this.f99248j.put(str, obj);
        }
    }

    public void setFiltered(boolean z) {
    }

    public void setFlattened(boolean z) {
    }

    public void setLocation(Location location) {
        this.f99243e = location;
    }

    public void setParentExpression(Expression expression) {
        this.f99244f = expression;
    }

    public void setRetainedStaticContext(RetainedStaticContext retainedStaticContext) {
        Expression childExpression;
        if (retainedStaticContext != null) {
            this.f99245g = retainedStaticContext;
            for (Operand operand : operands()) {
                if (operand != null && (childExpression = operand.getChildExpression()) != null && childExpression.f99245g == null) {
                    childExpression.setRetainedStaticContext(retainedStaticContext);
                }
            }
        }
    }

    public void setRetainedStaticContextLocally(RetainedStaticContext retainedStaticContext) {
        if (retainedStaticContext != null) {
            this.f99245g = retainedStaticContext;
        }
    }

    public void setRetainedStaticContextThoroughly(RetainedStaticContext retainedStaticContext) {
        Expression childExpression;
        if (retainedStaticContext != null) {
            this.f99245g = retainedStaticContext;
            for (Operand operand : operands()) {
                if (operand != null && (childExpression = operand.getChildExpression()) != null) {
                    if (childExpression.getLocalRetainedStaticContext() == null) {
                        childExpression.setRetainedStaticContextThoroughly(retainedStaticContext);
                    } else {
                        retainedStaticContext = childExpression.getLocalRetainedStaticContext();
                        Iterator<Operand> it2 = childExpression.operands().iterator();
                        while (it2.hasNext()) {
                            Expression childExpression2 = it2.next().getChildExpression();
                            if (childExpression2 != null) {
                                childExpression2.setRetainedStaticContextThoroughly(retainedStaticContext);
                            }
                        }
                    }
                }
            }
        }
    }

    public void setStaticProperty(int i) {
        if (this.staticProperties == -1) {
            computeStaticProperties();
        }
        this.staticProperties = i | this.staticProperties;
    }

    public Expression simplify() throws XPathException {
        simplifyChildren();
        return this;
    }

    public final void simplifyChildren() throws XPathException {
        Expression childExpression;
        for (Operand operand : operands()) {
            if (operand != null && (childExpression = operand.getChildExpression()) != null) {
                operand.setChildExpression(childExpression.simplify());
            }
        }
    }

    public Expression staticTypeCheck(SequenceType sequenceType, boolean z, RoleDiagnostic roleDiagnostic, ExpressionVisitor expressionVisitor) throws XPathException {
        throw new UnsupportedOperationException("staticTypeCheck");
    }

    public void suppressValidation(int i) {
    }

    public Pattern toPattern(Configuration configuration) throws XPathException {
        ItemType itemType = getItemType();
        if ((getDependencies() & 14) == 0 && ((itemType instanceof NodeTest) || (this instanceof VariableReference))) {
            return new NodeSetPattern(this);
        }
        if (isCallOn(KeyFn.class) || isCallOn(SuperId.class)) {
            return new NodeSetPattern(this);
        }
        throw new XPathException("Cannot convert the expression {" + this + "} to a pattern");
    }

    public String toShortString() {
        return getExpressionName();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        String name = getClass().getName();
        while (true) {
            int indexOf = name.indexOf(46);
            if (indexOf < 0) {
                break;
            }
            name = name.substring(indexOf + 1);
        }
        sb.append(name);
        boolean z = true;
        for (Operand operand : operands()) {
            sb.append(z ? MotionUtils.f31761c : ", ");
            sb.append(operand.getChildExpression().toString());
            z = false;
        }
        if (!z) {
            sb.append(MotionUtils.f31762d);
        }
        return sb.toString();
    }

    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        typeCheckChildren(expressionVisitor, contextItemStaticInfo);
        return this;
    }

    public final void typeCheckChildren(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            it2.next().typeCheck(expressionVisitor, contextItemStaticInfo);
        }
    }

    public void typeError(String str, String str2, XPathContext xPathContext) throws XPathException {
        XPathException xPathException = new XPathException(str, str2, getLocation());
        xPathException.setIsTypeError(true);
        xPathException.setXPathContext(xPathContext);
        xPathException.setFailingExpression(this);
        throw xPathException;
    }

    public Expression unordered(boolean z, boolean z2) throws XPathException {
        return this;
    }

    public Expression verifyParentPointers() throws IllegalStateException {
        for (Operand operand : operands()) {
            Expression parentExpression = operand.getChildExpression().getParentExpression();
            if (parentExpression != this) {
                throw new IllegalStateException("Invalid parent pointer in " + parentExpression.toShortString() + " subexpression " + operand.getChildExpression().toShortString());
            }
            if (operand.getParentExpression() != this) {
                throw new IllegalStateException("Invalid parent pointer in operand object " + parentExpression.toShortString() + " subexpression " + operand.getChildExpression().toShortString());
            }
            if (ExpressionTool.findOperand(parentExpression, operand.getChildExpression()) == null) {
                throw new IllegalStateException("Incorrect parent pointer in " + parentExpression.toShortString() + " subexpression " + operand.getChildExpression().toShortString());
            }
            operand.getChildExpression().verifyParentPointers();
        }
        return this;
    }
}
