package net.p110sf.saxon.expr;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.ArrayList;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.ForExpression;
import net.p110sf.saxon.expr.flwor.OuterForExpression;
import net.p110sf.saxon.expr.instruct.Choose;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AlphaCode;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class ForExpression extends Assignation {

    /* renamed from: q */
    public int f99255q = 32768;

    /* loaded from: classes11.dex */
    public static class MappingAction implements MappingFunction, ItemMappingFunction {
        protected XPathContext context;

        /* renamed from: e */
        public final int f99256e;

        /* renamed from: f */
        public final Expression f99257f;

        public MappingAction(XPathContext xPathContext, int i, Expression expression) {
            this.context = xPathContext;
            this.f99256e = i;
            this.f99257f = expression;
        }

        @Override // net.p110sf.saxon.expr.MappingFunction
        public SequenceIterator map(Item item) throws XPathException {
            this.context.setLocalVariable(this.f99256e, item);
            return this.f99257f.iterate(this.context);
        }

        @Override // net.p110sf.saxon.expr.ItemMappingFunction
        public Item mapItem(Item item) throws XPathException {
            this.context.setLocalVariable(this.f99256e, item);
            return this.f99257f.evaluateItem(this.context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ void m62575j(XPathContext xPathContext, int i, PendingUpdateList pendingUpdateList, Item item) throws XPathException {
        xPathContext.setLocalVariable(i, item);
        getAction().evaluatePendingUpdates(xPathContext, pendingUpdateList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ void m62576k(XPathContext xPathContext, int i, Outputter outputter, Item item) throws XPathException {
        xPathContext.setLocalVariable(i, item);
        getAction().process(outputter, xPathContext);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkPermittedContents(SchemaType schemaType, boolean z) throws XPathException {
        getAction().checkPermittedContents(schemaType, false);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return Cardinality.multiply(getSequence().getCardinality(), getAction().getCardinality());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ForExpression forExpression = new ForExpression();
        ExpressionTool.copyLocationInfo(this, forExpression);
        forExpression.setRequiredType(this.requiredType);
        forExpression.setVariableQName(this.variableName);
        forExpression.setSequence(getSequence().copy(rebindingMap));
        rebindingMap.put(this, forExpression);
        forExpression.setAction(getAction().copy(rebindingMap));
        forExpression.variableName = this.variableName;
        forExpression.slotNumber = this.slotNumber;
        return forExpression;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void evaluatePendingUpdates(final XPathContext xPathContext, final PendingUpdateList pendingUpdateList) throws XPathException {
        try {
            final int localSlotNumber = getLocalSlotNumber();
            SequenceTool.supply(getSequence().iterate(xPathContext), new ItemConsumer() { // from class: com.sunia.HTREnginev2.rsg
                @Override // net.p110sf.saxon.om.ItemConsumer
                public final void accept(Item item) {
                    ForExpression.this.m62575j(xPathContext, localSlotNumber, pendingUpdateList, item);
                }
            });
        } catch (UncheckedXPathException e) {
            throw e.getXPathException();
        }
    }

    public void explainSpecializedAttributes(ExpressionPresenter expressionPresenter) {
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("for", this);
        explainSpecializedAttributes(expressionPresenter);
        expressionPresenter.emitAttribute("var", getVariableQName());
        ItemType itemType = getSequence().getItemType();
        if (itemType != AnyItemType.getInstance()) {
            expressionPresenter.emitAttribute("as", AlphaCode.fromItemType(itemType));
        }
        expressionPresenter.emitAttribute("slot", "" + getLocalSlotNumber());
        expressionPresenter.setChildRole("in");
        getSequence().export(expressionPresenter);
        expressionPresenter.setChildRole("return");
        getAction().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "for";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 6;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public IntegerValue[] getIntegerBounds() {
        return getAction().getIntegerBounds();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return getAction().getItemType();
    }

    public int getRangeVariableCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return getAction().getStaticUType(uType);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "ForExpression";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isVacuousExpression() {
        return getAction().isVacuousExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        SequenceIterator iterate = getSequence().iterate(xPathContext);
        MappingAction mappingAction = new MappingAction(xPathContext, getLocalSlotNumber(), getAction());
        int i = this.f99255q;
        return i != 16384 ? i != 24576 ? new MappingIterator(iterate, mappingAction) : new ItemMappingIterator(iterate, mappingAction, false) : new ItemMappingIterator(iterate, mappingAction, true);
    }

    /* renamed from: l */
    public final Expression m62577l() {
        if (Choose.isSingleBranchChoice(getAction())) {
            Expression condition = ((Choose) getAction()).getCondition(0);
            int i = 1;
            Binding[] bindingArr = {this};
            ArrayList arrayList = new ArrayList(5);
            BooleanExpression.listAndComponents(condition, arrayList);
            Expression expression = null;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                Expression expression2 = (Expression) arrayList.get(size);
                if (!ExpressionTool.dependsOnVariable(expression2, bindingArr)) {
                    expression = expression == null ? expression2 : new AndExpression(expression2, expression);
                    arrayList.remove(size);
                }
            }
            if (expression != null) {
                if (arrayList.isEmpty()) {
                    setAction(((Choose) getAction()).getAction(0));
                    return Choose.makeConditional(expression, this);
                }
                Expression expression3 = (Expression) arrayList.get(0);
                while (i < arrayList.size()) {
                    AndExpression andExpression = new AndExpression(expression3, (Expression) arrayList.get(i));
                    i++;
                    expression3 = andExpression;
                }
                ((Choose) getAction()).setCondition(0, expression3);
                Expression makeConditional = Choose.makeConditional(expression, this, Literal.makeEmptySequence());
                ExpressionTool.copyLocationInfo(this, makeConditional);
                return makeConditional;
            }
        }
        return null;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int markTailFunctionCalls(StructuredQName structuredQName, int i) {
        if (Cardinality.allowsMany(getSequence().getCardinality())) {
            return 0;
        }
        return ExpressionTool.markTailFunctionCalls(getAction(), structuredQName, i);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Configuration configuration = expressionVisitor.getConfiguration();
        Optimizer obtainOptimizer = expressionVisitor.obtainOptimizer();
        boolean booleanProperty = configuration.getBooleanProperty(Feature.TRACE_OPTIMIZER_DECISIONS);
        if (Choose.isSingleBranchChoice(getAction())) {
            getActionOp().optimize(expressionVisitor, contextItemStaticInfo);
        }
        Expression m62577l = m62577l();
        if (m62577l != null) {
            if (booleanProperty) {
                obtainOptimizer.trace("Promoted where clause in for $" + getVariableName(), m62577l);
            }
            return m62577l.optimize(expressionVisitor, contextItemStaticInfo);
        }
        Expression sequence = getSequence();
        getSequenceOp().optimize(expressionVisitor, contextItemStaticInfo);
        if (sequence != getSequence()) {
            return optimize(expressionVisitor, contextItemStaticInfo);
        }
        if (Literal.isEmptySequence(getSequence()) && !(this instanceof OuterForExpression)) {
            return getSequence();
        }
        Expression action = getAction();
        getActionOp().optimize(expressionVisitor, contextItemStaticInfo);
        if (action != getAction()) {
            return optimize(expressionVisitor, contextItemStaticInfo);
        }
        if (Literal.isEmptySequence(getAction())) {
            return getAction();
        }
        if ((getSequence() instanceof SlashExpression) && (getAction() instanceof SlashExpression)) {
            SlashExpression slashExpression = (SlashExpression) getAction();
            Expression selectExpression = slashExpression.getSelectExpression();
            Expression actionExpression = slashExpression.getActionExpression();
            if ((selectExpression instanceof VariableReference) && ((VariableReference) selectExpression).getBinding() == this && ExpressionTool.getReferenceCount(getAction(), this, false) == 1 && (actionExpression.getDependencies() & 12) == 0) {
                SlashExpression slashExpression2 = new SlashExpression(getSequence(), slashExpression.getActionExpression());
                ExpressionTool.copyLocationInfo(this, slashExpression2);
                Expression typeCheck = slashExpression2.simplify().typeCheck(expressionVisitor, contextItemStaticInfo);
                if (typeCheck instanceof SlashExpression) {
                    if (booleanProperty) {
                        obtainOptimizer.trace("Collapsed return clause of for $" + getVariableName() + " into path expression", typeCheck);
                    }
                    return typeCheck.optimize(expressionVisitor, contextItemStaticInfo);
                }
            }
        }
        if ((getAction() instanceof VariableReference) && ((VariableReference) getAction()).getBinding() == this) {
            if (booleanProperty) {
                obtainOptimizer.trace("Collapsed redundant for expression $" + getVariableName(), getSequence());
            }
            return getSequence();
        }
        if (getSequence().getCardinality() != 16384) {
            return this;
        }
        LetExpression letExpression = new LetExpression();
        letExpression.setVariableQName(this.variableName);
        letExpression.setRequiredType(SequenceType.makeSequenceType(getSequence().getItemType(), 16384));
        letExpression.setSequence(getSequence());
        letExpression.setAction(getAction());
        letExpression.setSlotNumber(this.slotNumber);
        letExpression.setRetainedStaticContextLocally(getRetainedStaticContext());
        ExpressionTool.rebindVariableReferences(getAction(), this, letExpression);
        return letExpression.typeCheck(expressionVisitor, contextItemStaticInfo).optimize(expressionVisitor, contextItemStaticInfo);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void process(final Outputter outputter, final XPathContext xPathContext) throws XPathException {
        final int localSlotNumber = getLocalSlotNumber();
        SequenceTool.supply(getSequence().iterate(xPathContext), new ItemConsumer() { // from class: com.sunia.HTREnginev2.qsg
            @Override // net.p110sf.saxon.om.ItemConsumer
            public final void accept(Item item) {
                ForExpression.this.m62576k(xPathContext, localSlotNumber, outputter, item);
            }
        });
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        StringBuilder sb = new StringBuilder();
        sb.append("for $");
        sb.append(getVariableQName().getDisplayName());
        sb.append(CloudStorageConstants.OPERATION_IN);
        sb.append(getSequence() == null ? "(...)" : getSequence().toShortString());
        sb.append(" return ");
        sb.append(getAction() != null ? getAction().toShortString() : "(...)");
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("for $");
        sb.append(getVariableEQName());
        sb.append(CloudStorageConstants.OPERATION_IN);
        sb.append(getSequence() == null ? "(...)" : getSequence().toString());
        sb.append(" return ");
        sb.append(getAction() != null ? ExpressionTool.parenthesize(getAction()) : "(...)");
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getSequenceOp().typeCheck(expressionVisitor, contextItemStaticInfo);
        if (Literal.isEmptySequence(getSequence()) && !(this instanceof OuterForExpression)) {
            return getSequence();
        }
        SequenceType sequenceType = this.requiredType;
        if (sequenceType != null) {
            setSequence(TypeChecker.strictTypeCheck(getSequence(), SequenceType.makeSequenceType(sequenceType.getPrimaryType(), 57344), new RoleDiagnostic(3, this.variableName.getDisplayName(), 0), expressionVisitor.getStaticContext()));
            refineTypeInformation(getSequence().getItemType(), getRangeVariableCardinality(), null, getSequence().getSpecialProperties(), this);
        }
        if (Literal.isEmptySequence(getAction())) {
            return getAction();
        }
        getActionOp().typeCheck(expressionVisitor, contextItemStaticInfo);
        this.f99255q = getAction().getCardinality();
        return this;
    }

    @Override // net.p110sf.saxon.expr.Assignation, net.p110sf.saxon.expr.Expression
    public Expression unordered(boolean z, boolean z2) throws XPathException {
        setSequence(getSequence().unordered(z, z2));
        setAction(getAction().unordered(z, z2));
        return this;
    }
}
