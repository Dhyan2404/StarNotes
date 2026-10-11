package net.p110sf.saxon.expr.instruct;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.expr.CardinalityChecker;
import net.p110sf.saxon.expr.ContextMappingFunction;
import net.p110sf.saxon.expr.ContextMappingIterator;
import net.p110sf.saxon.expr.ContextSwitchingExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FirstItemExpression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.XPathContextMinor;
import net.p110sf.saxon.expr.instruct.ForEachGroup;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.expr.sort.CodepointCollator;
import net.p110sf.saxon.expr.sort.GroupAdjacentIterator;
import net.p110sf.saxon.expr.sort.GroupBreakingIterator;
import net.p110sf.saxon.expr.sort.GroupByIterator;
import net.p110sf.saxon.expr.sort.GroupEndingIterator;
import net.p110sf.saxon.expr.sort.GroupIterator;
import net.p110sf.saxon.expr.sort.GroupStartingIterator;
import net.p110sf.saxon.expr.sort.SortKeyDefinition;
import net.p110sf.saxon.expr.sort.SortKeyDefinitionList;
import net.p110sf.saxon.expr.sort.SortKeyEvaluator;
import net.p110sf.saxon.expr.sort.SortedGroupIterator;
import net.p110sf.saxon.functions.CurrentGroupCall;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.lib.TraceListener;
import net.p110sf.saxon.om.FocusIterator;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class ForEachGroup extends Instruction implements SortKeyEvaluator, ContextSwitchingExpression {
    public static final int GROUP_ADJACENT = 1;
    public static final int GROUP_BREAKING_WHEN = 4;
    public static final int GROUP_BY = 0;
    public static final int GROUP_ENDING = 3;
    public static final int GROUP_STARTING = 2;

    /* renamed from: y */
    public static final /* synthetic */ boolean f99717y = false;

    /* renamed from: n */
    public final byte f99718n;

    /* renamed from: o */
    public int f99719o;

    /* renamed from: p */
    public StringCollator f99720p;

    /* renamed from: q */
    public transient AtomicComparer[] f99721q = null;

    /* renamed from: r */
    public boolean f99722r = false;

    /* renamed from: s */
    public boolean f99723s = false;

    /* renamed from: t */
    public final Operand f99724t;

    /* renamed from: u */
    public final Operand f99725u;

    /* renamed from: v */
    public final Operand f99726v;

    /* renamed from: w */
    public Operand f99727w;

    /* renamed from: x */
    public Operand f99728x;

    public ForEachGroup(Expression expression, Expression expression2, byte b, Expression expression3, StringCollator stringCollator, Expression expression4, SortKeyDefinitionList sortKeyDefinitionList) {
        this.f99720p = null;
        this.f99724t = new Operand(this, expression, OperandRole.FOCUS_CONTROLLING_SELECT);
        this.f99725u = new Operand(this, expression2, OperandRole.FOCUS_CONTROLLED_ACTION);
        this.f99726v = new Operand(this, expression3, (b == 3 || b == 2) ? OperandRole.PATTERN : OperandRole.NEW_FOCUS_ATOMIC);
        if (expression4 != null) {
            this.f99727w = new Operand(this, expression4, OperandRole.SINGLE_ATOMIC);
        }
        if (sortKeyDefinitionList != null) {
            this.f99728x = new Operand(this, sortKeyDefinitionList, OperandRole.SINGLE_ATOMIC);
        }
        this.f99718n = b;
        this.f99720p = stringCollator;
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            adoptChildExpression(it2.next().getChildExpression());
        }
    }

    /* renamed from: e */
    public static void m62768e(Expression expression, ForEachGroup forEachGroup, ItemType itemType, boolean z) {
        if (expression == null) {
            return;
        }
        if (expression instanceof CurrentGroupCall) {
            ((CurrentGroupCall) expression).setControllingInstruction(forEachGroup, itemType, z);
            return;
        }
        if (!(expression instanceof ForEachGroup)) {
            for (Operand operand : expression.operands()) {
                m62768e(operand.getChildExpression(), forEachGroup, itemType, z || operand.isHigherOrder());
            }
            return;
        }
        ForEachGroup forEachGroup2 = (ForEachGroup) expression;
        if (forEachGroup2 == forEachGroup) {
            m62768e(forEachGroup2.getActionExpression(), forEachGroup, itemType, false);
            return;
        }
        m62768e(forEachGroup2.getSelectExpression(), forEachGroup, itemType, z);
        m62768e(forEachGroup2.getGroupingKey(), forEachGroup, itemType, z);
        if (forEachGroup2.getSortKeyDefinitions() != null) {
            Iterator<SortKeyDefinition> it2 = forEachGroup2.getSortKeyDefinitions().iterator();
            while (it2.hasNext()) {
                SortKeyDefinition next = it2.next();
                m62768e(next.getOrder(), forEachGroup, itemType, z);
                m62768e(next.getCaseOrder(), forEachGroup, itemType, z);
                m62768e(next.getDataTypeExpression(), forEachGroup, itemType, z);
                m62768e(next.getLanguage(), forEachGroup, itemType, z);
                m62768e(next.getCollationNameExpression(), forEachGroup, itemType, z);
                m62768e(next.getOrder(), forEachGroup, itemType, z);
            }
        }
    }

    /* renamed from: g */
    public static String m62769g(byte b) {
        return b != 0 ? b != 1 ? b != 2 ? b != 3 ? b != 4 ? "** unknown algorithm **" : "breaking" : "ending" : "starting" : "adjacent" : "by";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ SequenceIterator m62770j(XPathContext xPathContext) throws XPathException {
        return getActionExpression().iterate(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        PathMap.PathMapNodeSet addToPathMap = getSelectExpression().addToPathMap(pathMap, pathMapNodeSet);
        if (getCollationNameExpression() != null) {
            getCollationNameExpression().addToPathMap(pathMap, pathMapNodeSet);
        }
        if (getSortKeyDefinitions() != null) {
            Iterator<SortKeyDefinition> it2 = getSortKeyDefinitions().iterator();
            while (it2.hasNext()) {
                SortKeyDefinition next = it2.next();
                next.getSortKey().addToPathMap(pathMap, addToPathMap);
                Expression order = next.getOrder();
                if (order != null) {
                    order.addToPathMap(pathMap, pathMapNodeSet);
                }
                Expression caseOrder = next.getCaseOrder();
                if (caseOrder != null) {
                    caseOrder.addToPathMap(pathMap, pathMapNodeSet);
                }
                Expression dataTypeExpression = next.getDataTypeExpression();
                if (dataTypeExpression != null) {
                    dataTypeExpression.addToPathMap(pathMap, pathMapNodeSet);
                }
                Expression language = next.getLanguage();
                if (language != null) {
                    language.addToPathMap(pathMap, pathMapNodeSet);
                }
                Expression collationNameExpression = next.getCollationNameExpression();
                if (collationNameExpression != null) {
                    collationNameExpression.addToPathMap(pathMap, pathMapNodeSet);
                }
            }
        }
        return getActionExpression().addToPathMap(pathMap, addToPathMap);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean allowExtractingCommonSubexpressions() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkPermittedContents(SchemaType schemaType, boolean z) throws XPathException {
        getActionExpression().checkPermittedContents(schemaType, false);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeDependencies() {
        int dependencies = getSelectExpression().getDependencies() | 0 | (getGroupingKey().getDependencies() & (-31)) | (getActionExpression().getDependencies() & (-63));
        if (getSortKeyDefinitions() != null) {
            Iterator<SortKeyDefinition> it2 = getSortKeyDefinitions().iterator();
            while (it2.hasNext()) {
                SortKeyDefinition next = it2.next();
                dependencies |= next.getSortKey().getDependencies() & (-31);
                Expression caseOrder = next.getCaseOrder();
                if (caseOrder != null && !(caseOrder instanceof Literal)) {
                    dependencies |= caseOrder.getDependencies();
                }
                Expression dataTypeExpression = next.getDataTypeExpression();
                if (dataTypeExpression != null && !(dataTypeExpression instanceof Literal)) {
                    dependencies |= dataTypeExpression.getDependencies();
                }
                Expression language = next.getLanguage();
                if (language != null && !(language instanceof Literal)) {
                    dependencies |= language.getDependencies();
                }
            }
        }
        return getCollationNameExpression() != null ? dependencies | getCollationNameExpression().getDependencies() : dependencies;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return (getActionExpression().getSpecialProperties() & 134217728) | super.computeSpecialProperties();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        SortKeyDefinition[] sortKeyDefinitionArr;
        if (getSortKeyDefinitions() != null) {
            sortKeyDefinitionArr = new SortKeyDefinition[getSortKeyDefinitions().size()];
            for (int i = 0; i < getSortKeyDefinitions().size(); i++) {
                sortKeyDefinitionArr[i] = getSortKeyDefinitions().getSortKeyDefinition(i).copy(rebindingMap);
            }
        } else {
            sortKeyDefinitionArr = null;
        }
        ForEachGroup forEachGroup = new ForEachGroup(getSelectExpression().copy(rebindingMap), getActionExpression().copy(rebindingMap), this.f99718n, getGroupingKey().copy(rebindingMap), this.f99720p, getCollationNameExpression().copy(rebindingMap), sortKeyDefinitionArr != null ? new SortKeyDefinitionList(sortKeyDefinitionArr) : null);
        ExpressionTool.copyLocationInfo(this, forEachGroup);
        forEachGroup.setComposite(isComposite());
        m62768e(forEachGroup, forEachGroup, getSelectExpression().getItemType(), false);
        return forEachGroup;
    }

    @Override // net.p110sf.saxon.expr.sort.SortKeyEvaluator
    public AtomicValue evaluateSortKey(int i, XPathContext xPathContext) throws XPathException {
        return (AtomicValue) getSortKeyDefinitions().getSortKeyDefinition(i).getSortKey().evaluateItem(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("forEachGroup", this);
        expressionPresenter.emitAttribute("algorithm", m62769g(this.f99718n));
        String str = this.f99722r ? "c" : "";
        if (isInFork()) {
            str = str + C4921e.f26537n;
        }
        if (!str.isEmpty()) {
            expressionPresenter.emitAttribute("flags", str);
        }
        expressionPresenter.setChildRole("select");
        getSelectExpression().export(expressionPresenter);
        byte b = this.f99718n;
        if (b == 0 || b == 1 || b == 4) {
            expressionPresenter.setChildRole("key");
            getGroupingKey().export(expressionPresenter);
        } else {
            expressionPresenter.setChildRole(Constants.ATTRNAME_MATCH);
            getGroupingKey().export(expressionPresenter);
        }
        if (getSortKeyDefinitions() != null) {
            expressionPresenter.setChildRole(Constants.ELEMNAME_SORT_STRING);
            getSortKeyDefinitionList().export(expressionPresenter);
        }
        if (getCollationNameExpression() != null) {
            expressionPresenter.setChildRole("collation");
            getCollationNameExpression().export(expressionPresenter);
        }
        expressionPresenter.setChildRole("content");
        getActionExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.ContextSwitchingExpression
    public Expression getActionExpression() {
        return this.f99725u.getChildExpression();
    }

    public byte getAlgorithm() {
        return this.f99718n;
    }

    public URI getBaseURI() {
        try {
            return getRetainedStaticContext().getStaticBaseUri();
        } catch (XPathException unused) {
            return null;
        }
    }

    public StringCollator getCollation() {
        return this.f99720p;
    }

    public Expression getCollationNameExpression() {
        Operand operand = this.f99727w;
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    public GroupIterator getGroupIterator(Expression expression, XPathContext xPathContext) throws XPathException {
        GroupIterator groupByIterator;
        byte b = this.f99718n;
        if (b == 0) {
            StringCollator stringCollator = this.f99720p;
            if (stringCollator == null) {
                stringCollator = m62771h(xPathContext);
            }
            XPathContextMinor newMinorContext = xPathContext.newMinorContext();
            groupByIterator = new GroupByIterator(newMinorContext.trackFocus(expression.iterate(xPathContext)), getGroupingKey(), newMinorContext, stringCollator, this.f99722r);
        } else if (b == 1) {
            StringCollator stringCollator2 = this.f99720p;
            if (stringCollator2 == null) {
                stringCollator2 = m62771h(xPathContext);
            }
            groupByIterator = new GroupAdjacentIterator(expression, getGroupingKey(), xPathContext, stringCollator2, this.f99722r);
        } else if (b == 2) {
            groupByIterator = new GroupStartingIterator(expression, (Pattern) getGroupingKey(), xPathContext);
        } else if (b == 3) {
            groupByIterator = new GroupEndingIterator(expression, (Pattern) getGroupingKey(), xPathContext);
        } else {
            if (b != 4) {
                throw new AssertionError("Unknown grouping algorithm");
            }
            groupByIterator = new GroupBreakingIterator(expression, (Function) getGroupingKey().evaluateItem(xPathContext), xPathContext);
        }
        if (getSortKeyDefinitions() == null) {
            return groupByIterator;
        }
        AtomicComparer[] atomicComparerArr = this.f99721q;
        XPathContextMinor newMinorContext2 = xPathContext.newMinorContext();
        if (atomicComparerArr == null) {
            atomicComparerArr = new AtomicComparer[getSortKeyDefinitions().size()];
            for (int i = 0; i < getSortKeyDefinitions().size(); i++) {
                atomicComparerArr[i] = getSortKeyDefinitions().getSortKeyDefinition(i).makeComparator(newMinorContext2);
            }
        }
        return new SortedGroupIterator(newMinorContext2, groupByIterator, this, atomicComparerArr);
    }

    public Expression getGroupingKey() {
        return this.f99726v.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 156;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return getActionExpression().getItemType();
    }

    public int getKeyItemType() {
        return this.f99719o;
    }

    @Override // net.p110sf.saxon.expr.ContextSwitchingExpression
    public Expression getSelectExpression() {
        return this.f99724t.getChildExpression();
    }

    public AtomicComparer[] getSortKeyComparators() {
        return this.f99721q;
    }

    public SortKeyDefinitionList getSortKeyDefinitionList() {
        Operand operand = this.f99728x;
        if (operand == null) {
            return null;
        }
        return (SortKeyDefinitionList) operand.getChildExpression();
    }

    public SortKeyDefinitionList getSortKeyDefinitions() {
        Operand operand = this.f99728x;
        if (operand == null) {
            return null;
        }
        return (SortKeyDefinitionList) operand.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "ForEachGroup";
    }

    /* renamed from: h */
    public final StringCollator m62771h(XPathContext xPathContext) throws XPathException {
        if (getCollationNameExpression() == null) {
            return CodepointCollator.getInstance();
        }
        try {
            return xPathContext.getConfiguration().getCollation(((StringValue) getCollationNameExpression().evaluateItem(xPathContext)).getStringValue(), getStaticBaseURIString(), "FOCH0002");
        } catch (XPathException e) {
            e.setLocation(this.getLocation());
            throw e;
        }
    }

    /* renamed from: i */
    public final GroupIterator m62772i(XPathContext xPathContext) throws XPathException {
        return getGroupIterator(getSelectExpression(), xPathContext);
    }

    public boolean isComposite() {
        return this.f99722r;
    }

    public boolean isInFork() {
        return this.f99723s;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        GroupIterator m62772i = m62772i(xPathContext);
        XPathContextMajor newContext = xPathContext.newContext();
        newContext.setOrigin(this);
        newContext.trackFocus(m62772i);
        newContext.setCurrentGroupIterator(m62772i);
        newContext.setCurrentTemplateRule(null);
        return new ContextMappingIterator(new ContextMappingFunction() { // from class: com.sunia.HTREnginev2.osg
            @Override // net.p110sf.saxon.expr.ContextMappingFunction
            public final SequenceIterator map(XPathContext xPathContext2) {
                SequenceIterator m62770j;
                m62770j = ForEachGroup.this.m62770j(xPathContext2);
                return m62770j;
            }
        }, newContext);
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public final boolean mayCreateNewNodes() {
        return (getActionExpression().getSpecialProperties() & 8388608) == 0;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandSparseList(this.f99724t, this.f99725u, this.f99726v, this.f99727w, this.f99728x);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.f99724t.optimize(expressionVisitor, contextItemStaticInfo);
        ContextItemStaticInfo makeContextItemStaticInfo = expressionVisitor.getConfiguration().makeContextItemStaticInfo(getSelectExpression().getItemType(), false);
        makeContextItemStaticInfo.setContextSettingExpression(getSelectExpression());
        this.f99725u.optimize(expressionVisitor, makeContextItemStaticInfo);
        this.f99726v.optimize(expressionVisitor, makeContextItemStaticInfo);
        if (Literal.isEmptySequence(getSelectExpression())) {
            return getSelectExpression();
        }
        if (Literal.isEmptySequence(getActionExpression())) {
            return getActionExpression();
        }
        if (getSortKeyDefinitions() != null) {
            Iterator<SortKeyDefinition> it2 = getSortKeyDefinitions().iterator();
            while (it2.hasNext()) {
                SortKeyDefinition next = it2.next();
                next.setSortKey(next.getSortKey().optimize(expressionVisitor, makeContextItemStaticInfo), true);
            }
        }
        Operand operand = this.f99727w;
        if (operand != null) {
            operand.optimize(expressionVisitor, contextItemStaticInfo);
        }
        if (this.f99720p == null && (getCollationNameExpression() instanceof StringLiteral)) {
            try {
                URI uri = new URI(((StringLiteral) getCollationNameExpression()).stringify());
                if (!uri.isAbsolute()) {
                    URI resolve = getStaticBaseURI().resolve(uri);
                    String uri2 = resolve.toString();
                    setCollationNameExpression(new StringLiteral(uri2));
                    StringCollator collation = expressionVisitor.getConfiguration().getCollation(uri2);
                    this.f99720p = collation;
                    if (collation == null) {
                        XPathException xPathException = new XPathException("Unknown collation " + Err.wrap(resolve.toString(), 7));
                        xPathException.setErrorCode("XTDE1110");
                        xPathException.setLocation(getLocation());
                        throw xPathException;
                    }
                }
            } catch (URISyntaxException unused) {
                XPathException xPathException2 = new XPathException("Collation name '" + getCollationNameExpression() + "' is not a valid URI");
                xPathException2.setErrorCode("XTDE1110");
                xPathException2.setLocation(getLocation());
                throw xPathException2;
            }
        }
        return this;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        Controller controller = xPathContext.getController();
        PipelineConfiguration pipelineConfiguration = outputter.getPipelineConfiguration();
        GroupIterator m62772i = m62772i(xPathContext);
        XPathContextMajor newContext = xPathContext.newContext();
        newContext.setOrigin(this);
        FocusIterator trackFocus = newContext.trackFocus(m62772i);
        newContext.setCurrentGroupIterator(m62772i);
        newContext.setCurrentTemplateRule(null);
        pipelineConfiguration.setXPathContext(newContext);
        if (controller.isTracing()) {
            TraceListener traceListener = controller.getTraceListener();
            while (true) {
                Item next = trackFocus.next();
                if (next == null) {
                    break;
                }
                traceListener.startCurrentItem(next);
                getActionExpression().process(outputter, newContext);
                traceListener.endCurrentItem(next);
            }
        } else {
            while (trackFocus.next() != null) {
                getActionExpression().process(outputter, newContext);
            }
        }
        pipelineConfiguration.setXPathContext(xPathContext);
        return null;
    }

    public void setAction(Expression expression) {
        this.f99725u.setChildExpression(expression);
    }

    public void setCollationNameExpression(Expression expression) {
        Operand operand = this.f99727w;
        if (operand == null) {
            this.f99727w = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
        } else {
            operand.setChildExpression(expression);
        }
    }

    public void setComposite(boolean z) {
        this.f99722r = z;
    }

    public void setIsInFork(boolean z) {
        this.f99723s = z;
    }

    public void setKey(Expression expression) {
        this.f99726v.setChildExpression(expression);
    }

    public void setSelect(Expression expression) {
        this.f99724t.setChildExpression(expression);
    }

    public void setSortKeyDefinitions(SortKeyDefinitionList sortKeyDefinitionList) {
        Operand operand = this.f99728x;
        if (operand == null) {
            this.f99728x = new Operand(this, sortKeyDefinitionList, OperandRole.SINGLE_ATOMIC);
        } else {
            operand.setChildExpression(sortKeyDefinitionList);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        int i;
        Expression makeCardinalityChecker;
        this.f99724t.typeCheck(expressionVisitor, contextItemStaticInfo);
        Operand operand = this.f99727w;
        if (operand != null) {
            operand.typeCheck(expressionVisitor, contextItemStaticInfo);
        }
        ItemType itemType = getSelectExpression().getItemType();
        if (itemType == ErrorType.getInstance()) {
            return Literal.makeEmptySequence();
        }
        Iterator<Operand> it2 = operands().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            it2.next();
            m62768e(this, this, itemType, false);
        }
        ContextItemStaticInfo makeContextItemStaticInfo = expressionVisitor.getConfiguration().makeContextItemStaticInfo(itemType, false);
        makeContextItemStaticInfo.setContextSettingExpression(getSelectExpression());
        this.f99725u.typeCheck(expressionVisitor, makeContextItemStaticInfo);
        this.f99726v.typeCheck(expressionVisitor, makeContextItemStaticInfo);
        if (Literal.isEmptySequence(getSelectExpression())) {
            return getSelectExpression();
        }
        if (Literal.isEmptySequence(getActionExpression())) {
            return getActionExpression();
        }
        if (getSortKeyDefinitions() != null) {
            Iterator<SortKeyDefinition> it3 = getSortKeyDefinitions().iterator();
            boolean z = true;
            while (it3.hasNext()) {
                SortKeyDefinition next = it3.next();
                Expression typeCheck = next.getSortKey().typeCheck(expressionVisitor, makeContextItemStaticInfo);
                if (next.isBackwardsCompatible()) {
                    makeCardinalityChecker = FirstItemExpression.makeFirstItemExpression(typeCheck);
                } else {
                    RoleDiagnostic roleDiagnostic = new RoleDiagnostic(4, "xsl:sort/select", 0);
                    roleDiagnostic.setErrorCode("XTTE1020");
                    makeCardinalityChecker = CardinalityChecker.makeCardinalityChecker(typeCheck, 24576, roleDiagnostic);
                }
                next.setSortKey(makeCardinalityChecker, true);
                next.typeCheck(expressionVisitor, contextItemStaticInfo);
                if (next.isFixed()) {
                    next.setFinalComparator(next.makeComparator(expressionVisitor.getStaticContext().makeEarlyEvaluationContext()));
                } else {
                    z = false;
                }
            }
            if (z) {
                this.f99721q = new AtomicComparer[getSortKeyDefinitions().size()];
                for (i = 0; i < getSortKeyDefinitions().size(); i++) {
                    this.f99721q[i] = getSortKeyDefinitions().getSortKeyDefinition(i).getFinalComparator();
                }
            }
        }
        this.f99719o = getGroupingKey().getItemType().getPrimitiveType();
        return this;
    }
}
