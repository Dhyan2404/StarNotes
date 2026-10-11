package net.p110sf.saxon.expr.sort;

import com.sunia.HTREnginev2.lmj;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Set;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.CardinalityChecker;
import net.p110sf.saxon.expr.ContextMappingFunction;
import net.p110sf.saxon.expr.ContextMappingIterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.ItemMapper;
import net.p110sf.saxon.expr.ItemMappingIterator;
import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.OperandUsage;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.XPathContextMinor;
import net.p110sf.saxon.expr.accum.Accumulator;
import net.p110sf.saxon.expr.accum.AccumulatorManager;
import net.p110sf.saxon.expr.instruct.Instruction;
import net.p110sf.saxon.expr.instruct.TailCall;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.expr.sort.MergeInstr;
import net.p110sf.saxon.functions.Count;
import net.p110sf.saxon.functions.CurrentMergeGroup;
import net.p110sf.saxon.functions.CurrentMergeKey;
import net.p110sf.saxon.functions.DocumentFn;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.Validation;
import net.p110sf.saxon.om.FocusIterator;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XsltController;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.ManualIterator;
import net.p110sf.saxon.tree.iter.SingletonIterator;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.ObjectValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class MergeInstr extends Instruction {

    /* renamed from: o */
    public static final OperandRole f100085o = new OperandRole(6, OperandUsage.INSPECTION, SequenceType.ANY_SEQUENCE);
    protected AtomicComparer[] comparators;
    protected MergeSource[] mergeSources;

    /* renamed from: n */
    public Operand f100086n;

    /* loaded from: classes11.dex */
    public static class MergeKeyMappingFunction {

        /* renamed from: a */
        public final MergeSource f100087a;

        /* renamed from: b */
        public final XPathContext f100088b;

        /* renamed from: c */
        public final XPathContext f100089c;

        /* renamed from: d */
        public final ManualIterator f100090d;

        public MergeKeyMappingFunction(XPathContext xPathContext, MergeSource mergeSource) {
            this.f100088b = xPathContext;
            this.f100087a = mergeSource;
            XPathContextMinor newMinorContext = xPathContext.newMinorContext();
            this.f100089c = newMinorContext;
            newMinorContext.setTemporaryOutputState(176);
            ManualIterator manualIterator = new ManualIterator();
            this.f100090d = manualIterator;
            manualIterator.setPosition(1);
            newMinorContext.setCurrentIterator(manualIterator);
        }

        public SequenceIterator map(XPathContext xPathContext) throws XPathException {
            Item contextItem = xPathContext.getContextItem();
            this.f100090d.setContextItem(contextItem);
            MergeSource mergeSource = this.f100087a;
            return SingletonIterator.makeIterator(new ObjectValue(new ItemWithMergeKeys(contextItem, mergeSource.mergeKeyDefinitions, mergeSource.sourceName, this.f100089c)));
        }
    }

    /* renamed from: net.sf.saxon.expr.sort.MergeInstr$a */
    /* loaded from: classes11.dex */
    public class C18327a implements LastPositionFinder {

        /* renamed from: e */
        public int f100092e = -1;

        /* renamed from: f */
        public final /* synthetic */ XPathContext f100093f;

        public C18327a(XPathContext xPathContext) {
            this.f100093f = xPathContext;
        }

        @Override // net.p110sf.saxon.expr.LastPositionFinder
        public int getLength() {
            try {
                int i = this.f100092e;
                if (i >= 0) {
                    return i;
                }
                AtomicComparer[] m62922m = MergeInstr.this.m62922m(this.f100093f);
                GroupIterator currentMergeGroupIterator = this.f100093f.getCurrentMergeGroupIterator();
                XPathContextMajor newContext = this.f100093f.newContext();
                newContext.setCurrentMergeGroupIterator(currentMergeGroupIterator);
                SequenceIterator m62925p = MergeInstr.this.m62925p(this.f100093f, m62922m, newContext);
                MergeInstr mergeInstr = MergeInstr.this;
                int steppingCount = Count.steppingCount(new MergeGroupingIterator(m62925p, mergeInstr.getComparer(mergeInstr.mergeSources[0].mergeKeyDefinitions, m62922m), null));
                this.f100092e = steppingCount;
                return steppingCount;
            } catch (XPathException e) {
                throw new UncheckedXPathException(e);
            }
        }

        @Override // net.p110sf.saxon.expr.LastPositionFinder
        public boolean supportsGetLength() {
            return true;
        }
    }

    /* renamed from: net.sf.saxon.expr.sort.MergeInstr$b */
    /* loaded from: classes11.dex */
    public class C18328b implements Comparator<ObjectValue<ItemWithMergeKeys>> {

        /* renamed from: e */
        public final /* synthetic */ SortKeyDefinitionList f100095e;

        /* renamed from: f */
        public final /* synthetic */ AtomicComparer[] f100096f;

        public C18328b(SortKeyDefinitionList sortKeyDefinitionList, AtomicComparer[] atomicComparerArr) {
            this.f100095e = sortKeyDefinitionList;
            this.f100096f = atomicComparerArr;
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(ObjectValue<ItemWithMergeKeys> objectValue, ObjectValue<ItemWithMergeKeys> objectValue2) {
            ItemWithMergeKeys object = objectValue.getObject();
            ItemWithMergeKeys object2 = objectValue2.getObject();
            for (int i = 0; i < this.f100095e.size(); i++) {
                try {
                    int compareAtomicValues = this.f100096f[i].compareAtomicValues(object.f100069b.get(i), object2.f100069b.get(i));
                    if (compareAtomicValues != 0) {
                        return compareAtomicValues;
                    }
                } catch (NoDynamicContextException e) {
                    throw new IllegalStateException(e);
                }
            }
            return 0;
        }
    }

    /* renamed from: l */
    public static void m62917l(Expression expression, MergeInstr mergeInstr, boolean z) {
        if (expression == null) {
            return;
        }
        if (expression.isCallOn(CurrentMergeGroup.class)) {
            ((CurrentMergeGroup) ((SystemFunctionCall) expression).getTargetFunction()).setControllingInstruction(mergeInstr, z);
            return;
        }
        if (expression.isCallOn(CurrentMergeKey.class)) {
            ((CurrentMergeKey) ((SystemFunctionCall) expression).getTargetFunction()).setControllingInstruction(mergeInstr);
            return;
        }
        if (!(expression instanceof MergeInstr)) {
            for (Operand operand : expression.operands()) {
                m62917l(operand.getChildExpression(), mergeInstr, z || operand.isEvaluatedRepeatedly());
            }
            return;
        }
        MergeInstr mergeInstr2 = (MergeInstr) expression;
        if (mergeInstr2 == mergeInstr) {
            m62917l(mergeInstr2.getAction(), mergeInstr, false);
            return;
        }
        for (MergeSource mergeSource : mergeInstr2.getMergeSources()) {
            Iterator<SortKeyDefinition> it2 = mergeSource.mergeKeyDefinitions.iterator();
            while (it2.hasNext()) {
                SortKeyDefinition next = it2.next();
                m62917l(next.getOrder(), mergeInstr, z);
                m62917l(next.getCaseOrder(), mergeInstr, z);
                m62917l(next.getDataTypeExpression(), mergeInstr, z);
                m62917l(next.getLanguage(), mergeInstr, z);
                m62917l(next.getCollationNameExpression(), mergeInstr, z);
                m62917l(next.getOrder(), mergeInstr, z);
            }
            if (mergeSource.forEachItemOp != null) {
                m62917l(mergeSource.getForEachItem(), mergeInstr, z);
            }
            if (mergeSource.forEachStreamOp != null) {
                m62917l(mergeSource.getForEachSource(), mergeInstr, z);
            }
            if (mergeSource.rowSelectOp != null) {
                m62917l(mergeSource.getRowSelect(), mergeInstr, z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public /* synthetic */ Item m62918q(ParseOptions parseOptions, XPathContextMajor xPathContextMajor, AccumulatorManager accumulatorManager, MergeSource mergeSource, Item item) throws XPathException {
        NodeInfo makeDoc = DocumentFn.makeDoc(item.getStringValue(), getRetainedStaticContext().getStaticBaseUriString(), getPackageData(), parseOptions, xPathContextMajor, getLocation(), true);
        if (makeDoc != null) {
            accumulatorManager.setApplicableAccumulators(makeDoc.getTreeInfo(), mergeSource.accumulators);
        }
        return makeDoc;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public /* synthetic */ SequenceIterator m62919r(XPathContext xPathContext) throws XPathException {
        return getAction().iterate(xPathContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public /* synthetic */ void m62920s(Outputter outputter, Item item) throws XPathException {
        outputter.m62516b(item, getLocation(), 524288);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean allowExtractingCommonSubexpressions() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkPermittedContents(SchemaType schemaType, boolean z) throws XPathException {
        getAction().checkPermittedContents(schemaType, false);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        MergeInstr mergeInstr = new MergeInstr();
        MergeSource[] mergeSourceArr = new MergeSource[this.mergeSources.length];
        Expression copy = getAction().copy(rebindingMap);
        int i = 0;
        while (true) {
            MergeSource[] mergeSourceArr2 = this.mergeSources;
            if (i >= mergeSourceArr2.length) {
                return mergeInstr.init(mergeSourceArr, copy);
            }
            mergeSourceArr[i] = mergeSourceArr2[i].copyMergeSource(mergeInstr, rebindingMap);
            i++;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        SchemaType schemaType;
        expressionPresenter.startElement("merge", this);
        for (MergeSource mergeSource : this.mergeSources) {
            expressionPresenter.startSubsidiaryElement("mergeSrc");
            String str = mergeSource.sourceName;
            if (str != null && !str.startsWith("saxon-merge-source-")) {
                expressionPresenter.emitAttribute("name", mergeSource.sourceName);
            }
            int i = mergeSource.validation;
            if (i != 4 && i != 8) {
                expressionPresenter.emitAttribute("validation", Validation.describe(i));
            }
            if (mergeSource.validation == 8 && (schemaType = mergeSource.schemaType) != null) {
                expressionPresenter.emitAttribute("type", schemaType.getStructuredQName());
            }
            Set<Accumulator> set = mergeSource.accumulators;
            if (set != null && !set.isEmpty()) {
                StringBuilder sb = new StringBuilder(256);
                for (Accumulator accumulator : mergeSource.accumulators) {
                    if (sb.length() != 0) {
                        sb.append(" ");
                    }
                    sb.append(accumulator.getAccumulatorName().getEQName());
                }
                expressionPresenter.emitAttribute("accum", sb.toString());
            }
            if (mergeSource.streamable) {
                expressionPresenter.emitAttribute("flags", "s");
            }
            if (mergeSource.getForEachItem() != null) {
                expressionPresenter.setChildRole("forEachItem");
                mergeSource.getForEachItem().export(expressionPresenter);
            }
            if (mergeSource.getForEachSource() != null) {
                expressionPresenter.setChildRole("forEachStream");
                mergeSource.getForEachSource().export(expressionPresenter);
            }
            expressionPresenter.setChildRole("selectRows");
            mergeSource.getRowSelect().export(expressionPresenter);
            mergeSource.getMergeKeyDefinitionSet().export(expressionPresenter);
            expressionPresenter.endSubsidiaryElement();
        }
        expressionPresenter.setChildRole("action");
        getAction().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    public void fixupGroupReferences() {
        m62917l(this, this, false);
    }

    public Expression getAction() {
        return this.f100086n.getChildExpression();
    }

    public Comparator<ObjectValue<ItemWithMergeKeys>> getComparer(SortKeyDefinitionList sortKeyDefinitionList, AtomicComparer[] atomicComparerArr) {
        return new C18328b(sortKeyDefinitionList, atomicComparerArr);
    }

    public Expression getGroupingKey() {
        return this.mergeSources[0].mergeKeyDefinitions.getSortKeyDefinition(0).getSortKey();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 174;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return getAction().getItemType();
    }

    public MergeSource[] getMergeSources() {
        return this.mergeSources;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "MergeInstr";
    }

    public MergeInstr init(MergeSource[] mergeSourceArr, Expression expression) {
        this.f100086n = new Operand(this, expression, OperandRole.FOCUS_CONTROLLED_ACTION);
        this.mergeSources = mergeSourceArr;
        for (MergeSource mergeSource : mergeSourceArr) {
            adoptChildExpression(mergeSource.getForEachItem());
            adoptChildExpression(mergeSource.getForEachSource());
            adoptChildExpression(mergeSource.getRowSelect());
        }
        adoptChildExpression(expression);
        return this;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        try {
            AtomicComparer[] m62922m = m62922m(xPathContext);
            GroupIterator currentMergeGroupIterator = xPathContext.getCurrentMergeGroupIterator();
            XPathContextMajor newContext = xPathContext.newContext();
            newContext.setCurrentMergeGroupIterator(currentMergeGroupIterator);
            MergeGroupingIterator mergeGroupingIterator = new MergeGroupingIterator(m62925p(xPathContext, m62922m, newContext), getComparer(this.mergeSources[0].mergeKeyDefinitions, m62922m), m62924o(xPathContext));
            newContext.setCurrentMergeGroupIterator(mergeGroupingIterator);
            XPathContextMinor newMinorContext = newContext.newMinorContext();
            newMinorContext.trackFocus(mergeGroupingIterator);
            return new ContextMappingIterator(new ContextMappingFunction() { // from class: com.sunia.HTREnginev2.nmj
                @Override // net.p110sf.saxon.expr.ContextMappingFunction
                public final SequenceIterator map(XPathContext xPathContext2) {
                    SequenceIterator m62919r;
                    m62919r = MergeInstr.this.m62919r(xPathContext2);
                    return m62919r;
                }
            }, newMinorContext);
        } catch (XPathException e) {
            e.maybeSetLocation(getLocation());
            throw e;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: k */
    public final void m62921k(SortKeyDefinition[] sortKeyDefinitionArr) throws XPathException {
        for (int i = 1; i < sortKeyDefinitionArr.length; i++) {
            if (!sortKeyDefinitionArr[0].isEqual(sortKeyDefinitionArr[i])) {
                throw new XPathException("Corresponding xsl:merge-key attributes in different xsl:merge-source elements do not have the same effective values", "XTDE2210");
            }
        }
    }

    /* renamed from: m */
    public final AtomicComparer[] m62922m(XPathContext xPathContext) throws XPathException {
        AtomicComparer[] atomicComparerArr = this.comparators;
        if (atomicComparerArr == null) {
            SortKeyDefinition[] sortKeyDefinitionArr = new SortKeyDefinition[this.mergeSources.length];
            for (int i = 0; i < this.mergeSources[0].mergeKeyDefinitions.size(); i++) {
                int i2 = 0;
                while (true) {
                    MergeSource[] mergeSourceArr = this.mergeSources;
                    if (i2 < mergeSourceArr.length) {
                        sortKeyDefinitionArr[i2] = mergeSourceArr[i2].mergeKeyDefinitions.getSortKeyDefinition(i).fix(xPathContext);
                        i2++;
                    }
                }
                m62921k(sortKeyDefinitionArr);
            }
            atomicComparerArr = new AtomicComparer[this.mergeSources[0].mergeKeyDefinitions.size()];
            for (int i3 = 0; i3 < this.mergeSources[0].mergeKeyDefinitions.size(); i3++) {
                AtomicComparer finalComparator = this.mergeSources[0].mergeKeyDefinitions.getSortKeyDefinition(i3).getFinalComparator();
                if (finalComparator == null) {
                    finalComparator = this.mergeSources[0].mergeKeyDefinitions.getSortKeyDefinition(i3).makeComparator(xPathContext);
                }
                atomicComparerArr[i3] = finalComparator;
            }
        }
        return atomicComparerArr;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public final boolean mayCreateNewNodes() {
        return (getAction().getSpecialProperties() & 8388608) == 0;
    }

    /* renamed from: n */
    public final SequenceIterator m62923n(AtomicComparer[] atomicComparerArr, SequenceIterator sequenceIterator, MergeSource mergeSource, XPathContext xPathContext) throws XPathException {
        XPathContextMinor newMinorContext = xPathContext.newMinorContext();
        newMinorContext.setTemporaryOutputState(176);
        newMinorContext.trackFocus(mergeSource.getRowSelect().iterate(xPathContext));
        return m62926t(sequenceIterator, atomicComparerArr, mergeSource, new ContextMappingIterator(new lmj(new MergeKeyMappingFunction(newMinorContext, mergeSource)), newMinorContext));
    }

    /* renamed from: o */
    public final LastPositionFinder m62924o(XPathContext xPathContext) {
        return new C18327a(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        ArrayList arrayList = new ArrayList(6);
        arrayList.add(this.f100086n);
        MergeSource[] mergeSourceArr = this.mergeSources;
        if (mergeSourceArr != null) {
            for (MergeSource mergeSource : mergeSourceArr) {
                Operand operand = mergeSource.forEachItemOp;
                if (operand != null) {
                    arrayList.add(operand);
                }
                Operand operand2 = mergeSource.forEachStreamOp;
                if (operand2 != null) {
                    arrayList.add(operand2);
                }
                Operand operand3 = mergeSource.rowSelectOp;
                if (operand3 != null) {
                    arrayList.add(operand3);
                }
                arrayList.add(new Operand(this, mergeSource.mergeKeyDefinitions, OperandRole.SINGLE_ATOMIC));
            }
        }
        return arrayList;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        ContextItemStaticInfo contextItemStaticInfo2;
        Configuration configuration = expressionVisitor.getConfiguration();
        TypeHierarchy typeHierarchy = configuration.getTypeHierarchy();
        ItemType itemType = null;
        for (MergeSource mergeSource : this.mergeSources) {
            if (mergeSource.getForEachItem() != null) {
                mergeSource.forEachItemOp.optimize(expressionVisitor, contextItemStaticInfo);
                contextItemStaticInfo2 = configuration.makeContextItemStaticInfo(mergeSource.getForEachItem().getItemType(), false);
            } else if (mergeSource.getForEachSource() != null) {
                mergeSource.forEachStreamOp.optimize(expressionVisitor, contextItemStaticInfo);
                contextItemStaticInfo2 = configuration.makeContextItemStaticInfo(NodeKindTest.DOCUMENT, false);
            } else {
                contextItemStaticInfo2 = contextItemStaticInfo;
            }
            mergeSource.rowSelectOp.optimize(expressionVisitor, contextItemStaticInfo2);
            ItemType itemType2 = mergeSource.getRowSelect().getItemType();
            itemType = itemType == null ? itemType2 : Type.getCommonSuperType(itemType, itemType2, typeHierarchy);
        }
        setAction(getAction().optimize(expressionVisitor, configuration.makeContextItemStaticInfo(itemType, false)));
        if (Literal.isEmptySequence(getAction())) {
            return getAction();
        }
        MergeSource[] mergeSourceArr = this.mergeSources;
        return (mergeSourceArr.length == 1 && Literal.isEmptySequence(mergeSourceArr[0].getRowSelect())) ? this.mergeSources[0].getRowSelect() : this;
    }

    /* renamed from: p */
    public final SequenceIterator m62925p(XPathContext xPathContext, AtomicComparer[] atomicComparerArr, final XPathContextMajor xPathContextMajor) throws XPathException {
        EmptyIterator emptyIterator = EmptyIterator.getInstance();
        SequenceIterator sequenceIterator = emptyIterator;
        for (final MergeSource mergeSource : this.mergeSources) {
            if (!mergeSource.streamable || mergeSource.getForEachSource() == null) {
                if (mergeSource.getForEachSource() != null) {
                    final ParseOptions parseOptions = new ParseOptions(xPathContext.getConfiguration().getParseOptions());
                    parseOptions.setSchemaValidationMode(mergeSource.validation);
                    parseOptions.setTopLevelType(mergeSource.schemaType);
                    parseOptions.setApplicableAccumulators(mergeSource.accumulators);
                    SequenceIterator iterate = mergeSource.getForEachSource().iterate(xPathContextMajor);
                    final AccumulatorManager accumulatorManager = ((XsltController) xPathContext.getController()).getAccumulatorManager();
                    ItemMappingIterator map = ItemMappingIterator.map(iterate, new ItemMapper.Lambda() { // from class: com.sunia.HTREnginev2.kmj
                        @Override // net.sf.saxon.expr.ItemMapper.Lambda
                        public final Item map(Item item) {
                            Item m62918q;
                            m62918q = MergeInstr.this.m62918q(parseOptions, xPathContextMajor, accumulatorManager, mergeSource, item);
                            return m62918q;
                        }
                    });
                    XPathContextMinor newMinorContext = xPathContextMajor.newMinorContext();
                    FocusIterator trackFocus = newMinorContext.trackFocus(map);
                    while (trackFocus.next() != null) {
                        XPathContextMinor newMinorContext2 = newMinorContext.newMinorContext();
                        newMinorContext2.trackFocus(mergeSource.getRowSelect().iterate(newMinorContext));
                        sequenceIterator = m62926t(sequenceIterator, atomicComparerArr, mergeSource, new ContextMappingIterator(new lmj(new MergeKeyMappingFunction(newMinorContext2, mergeSource)), newMinorContext2));
                    }
                } else if (mergeSource.getForEachItem() != null) {
                    SequenceIterator iterate2 = mergeSource.getForEachItem().iterate(xPathContextMajor);
                    XPathContextMinor newMinorContext3 = xPathContextMajor.newMinorContext();
                    FocusIterator trackFocus2 = newMinorContext3.trackFocus(iterate2);
                    while (trackFocus2.next() != null) {
                        sequenceIterator = m62923n(atomicComparerArr, sequenceIterator, mergeSource, newMinorContext3);
                    }
                } else {
                    sequenceIterator = m62923n(atomicComparerArr, sequenceIterator, mergeSource, xPathContextMajor);
                }
            }
        }
        return sequenceIterator;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void prepareForStreaming() throws XPathException {
        for (MergeSource mergeSource : this.mergeSources) {
            mergeSource.prepareForStreaming();
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(final Outputter outputter, XPathContext xPathContext) throws XPathException {
        SequenceIterator iterate = iterate(xPathContext);
        try {
            try {
                SequenceTool.supply(iterate, new ItemConsumer() { // from class: com.sunia.HTREnginev2.mmj
                    @Override // net.p110sf.saxon.om.ItemConsumer
                    public final void accept(Item item) {
                        MergeInstr.this.m62920s(outputter, item);
                    }
                });
                iterate.close();
                return null;
            } catch (UncheckedXPathException e) {
                iterate.close();
                XPathException xPathException = e.getXPathException();
                xPathException.maybeSetLocation(getLocation());
                xPathException.maybeSetContext(xPathContext);
                throw xPathException;
            }
        } catch (Throwable th) {
            iterate.close();
            throw th;
        }
    }

    public void setAction(Expression expression) {
        this.f100086n.setChildExpression(expression);
    }

    /* renamed from: t */
    public final SequenceIterator m62926t(SequenceIterator sequenceIterator, AtomicComparer[] atomicComparerArr, MergeSource mergeSource, ContextMappingIterator contextMappingIterator) throws XPathException {
        return (sequenceIterator == null || (sequenceIterator instanceof EmptyIterator)) ? contextMappingIterator : new MergeIterator(sequenceIterator, contextMappingIterator, getComparer(mergeSource.mergeKeyDefinitions, atomicComparerArr));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        ContextItemStaticInfo contextItemStaticInfo2;
        TypeHierarchy typeHierarchy;
        ContextItemStaticInfo contextItemStaticInfo3 = contextItemStaticInfo;
        Configuration configuration = expressionVisitor.getConfiguration();
        TypeHierarchy typeHierarchy2 = configuration.getTypeHierarchy();
        TypeChecker typeChecker = configuration.getTypeChecker(false);
        MergeSource[] mergeSourceArr = this.mergeSources;
        int length = mergeSourceArr.length;
        ItemType itemType = null;
        int i = 0;
        while (i < length) {
            MergeSource mergeSource = mergeSourceArr[i];
            if (mergeSource.getForEachItem() != null) {
                mergeSource.forEachItemOp.typeCheck(expressionVisitor, contextItemStaticInfo3);
                contextItemStaticInfo2 = configuration.makeContextItemStaticInfo(mergeSource.getForEachItem().getItemType(), false);
            } else if (mergeSource.getForEachSource() != null) {
                mergeSource.forEachStreamOp.typeCheck(expressionVisitor, contextItemStaticInfo3);
                mergeSource.setForEachStream(typeChecker.staticTypeCheck(mergeSource.getForEachSource(), SequenceType.STRING_SEQUENCE, new RoleDiagnostic(4, "xsl:merge/for-each-source", 0), expressionVisitor));
                contextItemStaticInfo2 = configuration.makeContextItemStaticInfo(NodeKindTest.DOCUMENT, false);
            } else {
                contextItemStaticInfo2 = contextItemStaticInfo3;
            }
            mergeSource.rowSelectOp.typeCheck(expressionVisitor, contextItemStaticInfo2);
            ItemType itemType2 = mergeSource.getRowSelect().getItemType();
            itemType = itemType == null ? itemType2 : Type.getCommonSuperType(itemType, itemType2, typeHierarchy2);
            ContextItemStaticInfo makeContextItemStaticInfo = configuration.makeContextItemStaticInfo(itemType, false);
            SortKeyDefinitionList sortKeyDefinitionList = mergeSource.mergeKeyDefinitions;
            if (sortKeyDefinitionList != null) {
                Iterator<SortKeyDefinition> it2 = sortKeyDefinitionList.iterator();
                while (it2.hasNext()) {
                    SortKeyDefinition next = it2.next();
                    Expression typeCheck = next.getSortKey().typeCheck(expressionVisitor, makeContextItemStaticInfo);
                    if (typeCheck != null) {
                        typeHierarchy = typeHierarchy2;
                        RoleDiagnostic roleDiagnostic = new RoleDiagnostic(4, "xsl:merge-key/select", 0);
                        roleDiagnostic.setErrorCode("XTTE1020");
                        next.setSortKey(CardinalityChecker.makeCardinalityChecker(typeCheck, 24576, roleDiagnostic), true);
                    } else {
                        typeHierarchy = typeHierarchy2;
                    }
                    next.setLanguage(next.getLanguage().typeCheck(expressionVisitor, configuration.makeContextItemStaticInfo(itemType, false)));
                    next.setOrder(next.getOrder().typeCheck(expressionVisitor, makeContextItemStaticInfo));
                    Expression collationNameExpression = next.getCollationNameExpression();
                    if (collationNameExpression != null) {
                        next.setCollationNameExpression(collationNameExpression.typeCheck(expressionVisitor, makeContextItemStaticInfo));
                    }
                    next.setCaseOrder(next.getCaseOrder().typeCheck(expressionVisitor, makeContextItemStaticInfo));
                    Expression dataTypeExpression = next.getDataTypeExpression();
                    if (dataTypeExpression != null) {
                        next.setDataTypeExpression(dataTypeExpression.typeCheck(expressionVisitor, makeContextItemStaticInfo));
                    }
                    typeHierarchy2 = typeHierarchy;
                }
            }
            i++;
            contextItemStaticInfo3 = contextItemStaticInfo;
            typeHierarchy2 = typeHierarchy2;
        }
        this.f100086n.typeCheck(expressionVisitor, configuration.makeContextItemStaticInfo(itemType, false));
        if (Literal.isEmptySequence(getAction())) {
            return getAction();
        }
        MergeSource[] mergeSourceArr2 = this.mergeSources;
        if (mergeSourceArr2.length == 1 && Literal.isEmptySequence(mergeSourceArr2[0].getRowSelect())) {
            return this.mergeSources[0].getRowSelect();
        }
        fixupGroupReferences();
        return this;
    }

    /* loaded from: classes11.dex */
    public static class MergeSource {

        /* renamed from: a */
        public final MergeInstr f100091a;
        public Set<Accumulator> accumulators;
        public String baseURI;
        public Operand forEachItemOp;
        public Operand forEachStreamOp;
        public Object invertedAction;
        public Location location;
        public SortKeyDefinitionList mergeKeyDefinitions;
        public Operand rowSelectOp;
        public SchemaType schemaType;
        public String sourceName;
        public boolean streamable;
        public int validation;

        public MergeSource(MergeInstr mergeInstr) {
            this.forEachItemOp = null;
            this.forEachStreamOp = null;
            this.rowSelectOp = null;
            this.sourceName = null;
            this.mergeKeyDefinitions = null;
            this.baseURI = null;
            this.f100091a = mergeInstr;
        }

        /* renamed from: a */
        public static Expression m62927a(Expression expression, RebindingMap rebindingMap) {
            if (expression == null) {
                return null;
            }
            return expression.copy(rebindingMap);
        }

        public MergeSource copyMergeSource(MergeInstr mergeInstr, RebindingMap rebindingMap) {
            SortKeyDefinition[] sortKeyDefinitionArr = new SortKeyDefinition[this.mergeKeyDefinitions.size()];
            for (int i = 0; i < this.mergeKeyDefinitions.size(); i++) {
                sortKeyDefinitionArr[i] = this.mergeKeyDefinitions.getSortKeyDefinition(i).copy(rebindingMap);
            }
            MergeSource mergeSource = new MergeSource(mergeInstr, m62927a(getForEachItem(), rebindingMap), m62927a(getForEachSource(), rebindingMap), m62927a(getRowSelect(), rebindingMap), this.sourceName, new SortKeyDefinitionList(sortKeyDefinitionArr), this.baseURI);
            mergeSource.validation = this.validation;
            mergeSource.schemaType = this.schemaType;
            mergeSource.streamable = this.streamable;
            mergeSource.location = this.location;
            return mergeSource;
        }

        public Expression getForEachItem() {
            Operand operand = this.forEachItemOp;
            if (operand == null) {
                return null;
            }
            return operand.getChildExpression();
        }

        public Expression getForEachSource() {
            Operand operand = this.forEachStreamOp;
            if (operand == null) {
                return null;
            }
            return operand.getChildExpression();
        }

        public SortKeyDefinitionList getMergeKeyDefinitionSet() {
            return this.mergeKeyDefinitions;
        }

        public Expression getRowSelect() {
            return this.rowSelectOp.getChildExpression();
        }

        public void initForEachItem(MergeInstr mergeInstr, Expression expression) {
            this.forEachItemOp = new Operand(mergeInstr, expression, OperandRole.INSPECT);
        }

        public void initForEachStream(MergeInstr mergeInstr, Expression expression) {
            this.forEachStreamOp = new Operand(mergeInstr, expression, OperandRole.INSPECT);
        }

        public void initRowSelect(MergeInstr mergeInstr, Expression expression) {
            this.rowSelectOp = new Operand(mergeInstr, expression, MergeInstr.f100085o);
        }

        public void prepareForStreaming() throws XPathException {
        }

        public void setForEachItem(Expression expression) {
            if (expression != null) {
                this.forEachItemOp.setChildExpression(expression);
            }
        }

        public void setForEachStream(Expression expression) {
            if (expression != null) {
                this.forEachStreamOp.setChildExpression(expression);
            }
        }

        public void setMergeKeyDefinitionSet(SortKeyDefinitionList sortKeyDefinitionList) {
            this.mergeKeyDefinitions = sortKeyDefinitionList;
        }

        public void setRowSelect(Expression expression) {
            this.rowSelectOp.setChildExpression(expression);
        }

        public void setStreamable(boolean z) {
            this.streamable = z;
            if (z && this.f100091a.getConfiguration().getBooleanProperty(Feature.STREAMING_FALLBACK)) {
                this.streamable = false;
                Expression childExpression = this.rowSelectOp.getChildExpression();
                this.rowSelectOp.setChildExpression(SystemFunction.makeCall("snapshot", childExpression.getRetainedStaticContext(), childExpression));
            }
        }

        public MergeSource(MergeInstr mergeInstr, Expression expression, Expression expression2, Expression expression3, String str, SortKeyDefinitionList sortKeyDefinitionList, String str2) {
            this.forEachItemOp = null;
            this.forEachStreamOp = null;
            this.rowSelectOp = null;
            this.sourceName = null;
            this.mergeKeyDefinitions = null;
            this.baseURI = null;
            this.f100091a = mergeInstr;
            if (expression != null) {
                initForEachItem(mergeInstr, expression);
            }
            if (expression2 != null) {
                initForEachStream(mergeInstr, expression2);
            }
            if (expression3 != null) {
                initRowSelect(mergeInstr, expression3);
            }
            this.sourceName = str;
            this.mergeKeyDefinitions = sortKeyDefinitionList;
            this.baseURI = str2;
        }
    }
}
