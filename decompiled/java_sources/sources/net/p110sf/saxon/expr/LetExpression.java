package net.p110sf.saxon.expr;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiConsumer;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.instruct.DocumentInstr;
import net.p110sf.saxon.expr.instruct.TailCall;
import net.p110sf.saxon.expr.instruct.TailCallReturner;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.Evaluator;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class LetExpression extends Assignation implements TailCallReturner {

    /* renamed from: u */
    public static final /* synthetic */ boolean f99297u = false;

    /* renamed from: q */
    public Evaluator f99298q = null;

    /* renamed from: r */
    public boolean f99299r = false;

    /* renamed from: s */
    public boolean f99300s = false;

    /* renamed from: t */
    public boolean f99301t;

    @Override // net.p110sf.saxon.expr.Expression
    public void checkPermittedContents(SchemaType schemaType, boolean z) throws XPathException {
        getAction().checkPermittedContents(schemaType, z);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return getAction().getCardinality();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        int specialProperties = getAction().getSpecialProperties();
        return (getSequence().getSpecialProperties() & 8388608) == 0 ? specialProperties & (-8388609) : specialProperties;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        LetExpression letExpression = new LetExpression();
        rebindingMap.put(this, letExpression);
        letExpression.indexedVariable = this.indexedVariable;
        letExpression.hasLoopingReference = this.hasLoopingReference;
        letExpression.setNeedsEagerEvaluation(this.f99299r);
        letExpression.setNeedsLazyEvaluation(this.f99300s);
        letExpression.setVariableQName(this.variableName);
        letExpression.setRequiredType(this.requiredType);
        letExpression.setSequence(getSequence().copy(rebindingMap));
        letExpression.setInstruction(isInstruction());
        ExpressionTool.copyLocationInfo(this, letExpression);
        letExpression.setAction(getAction().copy(rebindingMap));
        return letExpression;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        while (true) {
            xPathContext.setLocalVariable(this.getLocalSlotNumber(), this.eval(xPathContext));
            if (!(this.getAction() instanceof LetExpression)) {
                return this.getAction().effectiveBooleanValue(xPathContext);
            }
            this = (LetExpression) this.getAction();
        }
    }

    public Sequence eval(XPathContext xPathContext) throws XPathException {
        if (this.f99298q == null) {
            setEvaluator(ExpressionTool.lazyEvaluator(getSequence(), getNominalReferenceCount() > 1));
        }
        try {
            int temporaryOutputState = xPathContext.getTemporaryOutputState();
            xPathContext.setTemporaryOutputState(218);
            Sequence evaluate = this.f99298q.evaluate(getSequence(), xPathContext);
            xPathContext.setTemporaryOutputState(temporaryOutputState);
            return evaluate;
        } catch (ClassCastException unused) {
            int temporaryOutputState2 = xPathContext.getTemporaryOutputState();
            xPathContext.setTemporaryOutputState(218);
            Sequence evaluate2 = Evaluator.EagerSequence.INSTANCE.evaluate(getSequence(), xPathContext);
            xPathContext.setTemporaryOutputState(temporaryOutputState2);
            return evaluate2;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        while (true) {
            xPathContext.setLocalVariable(this.getLocalSlotNumber(), this.eval(xPathContext));
            if (!(this.getAction() instanceof LetExpression)) {
                return this.getAction().evaluateItem(xPathContext);
            }
            this = (LetExpression) this.getAction();
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void evaluatePendingUpdates(XPathContext xPathContext, PendingUpdateList pendingUpdateList) throws XPathException {
        while (true) {
            xPathContext.setLocalVariable(this.getLocalSlotNumber(), this.eval(xPathContext));
            if (!(this.getAction() instanceof LetExpression)) {
                this.getAction().evaluatePendingUpdates(xPathContext, pendingUpdateList);
                return;
            }
            this = (LetExpression) this.getAction();
        }
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("let", this);
        expressionPresenter.emitAttribute("var", this.variableName);
        if (getRequiredType() != SequenceType.ANY_SEQUENCE) {
            expressionPresenter.emitAttribute("as", getRequiredType().toAlphaCode());
        }
        if (isIndexedVariable()) {
            expressionPresenter.emitAttribute("indexable", "true");
        }
        expressionPresenter.emitAttribute("slot", getLocalSlotNumber() + "");
        if (this.f99298q == null) {
            setEvaluator(ExpressionTool.lazyEvaluator(getSequence(), getNominalReferenceCount() > 1));
        }
        expressionPresenter.emitAttribute(Constants.ELEMNAME_EVAL_STRING, getEvaluator().getCode() + "");
        getSequence().export(expressionPresenter);
        getAction().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.trace.Traceable
    public void gatherProperties(BiConsumer<String, Object> biConsumer) {
        biConsumer.accept("name", getVariableQName());
    }

    @Override // net.p110sf.saxon.expr.Assignation, net.p110sf.saxon.expr.Expression
    public double getCost() {
        return getSequence().getCost() + getAction().getCost();
    }

    public Evaluator getEvaluator() {
        return this.f99298q;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "let";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return getAction().getImplementationMethod();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public IntegerValue[] getIntegerBounds() {
        return getAction().getIntegerBounds();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return getAction().getItemType();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return isInstruction() ? UType.ANY : getAction().getStaticUType(uType);
    }

    /* renamed from: h */
    public final boolean m62596h() {
        List<VariableReference> list = this.references;
        if (list == null) {
            return false;
        }
        Iterator<VariableReference> it2 = list.iterator();
        while (it2.hasNext()) {
            if (!it2.next().isFlattened()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: i */
    public final void m62597i() {
        for (VariableReference variableReference : this.references) {
            Expression parentExpression = variableReference.getParentExpression();
            if (parentExpression != null) {
                Operand findOperand = ExpressionTool.findOperand(parentExpression, variableReference);
                if (findOperand != null) {
                    findOperand.setChildExpression(getSequence().copy(new RebindingMap()));
                }
                ExpressionTool.resetStaticProperties(parentExpression);
            }
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean implementsStaticTypeCheck() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isInstruction() {
        return this.f99301t;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isLiftable(boolean z) {
        return super.isLiftable(z) && !this.f99299r;
    }

    public boolean isNeedsLazyEvaluation() {
        return this.f99300s;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isVacuousExpression() {
        return getAction().isVacuousExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        while (true) {
            xPathContext.setLocalVariable(this.getLocalSlotNumber(), this.eval(xPathContext));
            if (!(this.getAction() instanceof LetExpression)) {
                return this.getAction().iterate(xPathContext);
            }
            this = (LetExpression) this.getAction();
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int markTailFunctionCalls(StructuredQName structuredQName, int i) {
        return ExpressionTool.markTailFunctionCalls(getAction(), structuredQName, i);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Optimizer obtainOptimizer = expressionVisitor.obtainOptimizer();
        if ((getAction() instanceof VariableReference) && ((VariableReference) getAction()).getBinding() == this && !ExpressionTool.changesXsltContext(getSequence())) {
            getSequenceOp().optimize(expressionVisitor, contextItemStaticInfo);
            obtainOptimizer.trace("Eliminated trivial variable " + getVariableName(), getSequence());
            return getSequence();
        }
        if ((getSequence() instanceof Literal) && obtainOptimizer.isOptionSet(4)) {
            obtainOptimizer.trace("Inlined constant variable " + getVariableName(), getSequence());
            replaceVariable(getSequence());
            return getAction().optimize(expressionVisitor, contextItemStaticInfo);
        }
        if ((getSequence() instanceof DocumentInstr) && ((DocumentInstr) getSequence()).isTextOnly()) {
            verifyReferences();
            if (m62596h()) {
                setSequence(((DocumentInstr) getSequence()).getStringValueExpression().typeCheck(expressionVisitor, contextItemStaticInfo));
                this.requiredType = SequenceType.SINGLE_UNTYPED_ATOMIC;
                adoptChildExpression(getSequence());
                refineTypeInformation(this.requiredType.getPrimaryType(), this.requiredType.getCardinality(), null, 0, this);
            }
        }
        if (getSequence().hasSpecialProperty(33554432)) {
            this.f99299r = true;
        }
        this.hasLoopingReference |= removeDeadReferences();
        if (!this.f99299r) {
            List<VariableReference> list = this.references;
            boolean z = (((list == null || list.size() >= 2) && !(getSequence() instanceof VariableReference)) || this.indexedVariable || this.hasLoopingReference || this.f99299r) ? false : true;
            if (z) {
                verifyReferences();
                z = this.references != null;
            }
            if (z && this.references.isEmpty()) {
                getActionOp().optimize(expressionVisitor, contextItemStaticInfo);
                obtainOptimizer.trace("Eliminated unused variable " + getVariableName(), getAction());
                return getAction();
            }
            if (z && this.references.size() == 1 && ExpressionTool.dependsOnFocus(getSequence())) {
                if (expressionVisitor.isOptimizeForStreaming()) {
                    z = false;
                }
                VariableReference variableReference = this.references.get(0);
                Expression parentExpression = variableReference.getParentExpression();
                while (true) {
                    Expression expression = parentExpression;
                    Expression expression2 = variableReference;
                    variableReference = expression;
                    if (variableReference == null || variableReference == this) {
                        break;
                    }
                    if (!ExpressionTool.findOperand(variableReference, expression2).hasSameFocus()) {
                        z = false;
                        break;
                    }
                    parentExpression = variableReference.getParentExpression();
                }
            }
            if (z && this.references.size() == 1 && (ExpressionTool.changesXsltContext(getSequence()) || (getSequence().getDependencies() & 32) != 0 || this.references.get(0).isInLoop())) {
                z = false;
            }
            if (z && ((this.references.size() == 1 || (getSequence() instanceof Literal) || (getSequence() instanceof VariableReference)) && obtainOptimizer.isOptionSet(4))) {
                m62597i();
                obtainOptimizer.trace("Inlined references to $" + getVariableName(), getAction());
                this.references = null;
                return getAction().optimize(expressionVisitor, contextItemStaticInfo);
            }
        }
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i >= 5) {
                break;
            }
            Expression sequence = getSequence();
            getSequenceOp().optimize(expressionVisitor, contextItemStaticInfo);
            if ((getSequence() instanceof Literal) && !this.indexedVariable && obtainOptimizer.isOptionSet(4)) {
                return optimize(expressionVisitor, contextItemStaticInfo);
            }
            if (sequence == getSequence()) {
                break;
            }
            i = i2;
        }
        int i3 = 0;
        while (true) {
            int i4 = i3 + 1;
            if (i3 >= 5) {
                break;
            }
            Expression action = getAction();
            getActionOp().optimize(expressionVisitor, contextItemStaticInfo);
            if (action == getAction()) {
                break;
            }
            if (!this.indexedVariable && !this.f99299r) {
                verifyReferences();
                List<VariableReference> list2 = this.references;
                if (list2 != null && list2.size() < 2) {
                    if (this.references.isEmpty()) {
                        this.hasLoopingReference = false;
                        return optimize(expressionVisitor, contextItemStaticInfo);
                    }
                    if (!this.references.get(0).isInLoop()) {
                        return optimize(expressionVisitor, contextItemStaticInfo);
                    }
                }
            }
            i3 = i4;
        }
        setEvaluator();
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void process(Outputter outputter, XPathContext xPathContext) throws XPathException {
        while (true) {
            xPathContext.setLocalVariable(this.getLocalSlotNumber(), this.eval(xPathContext));
            if (!(this.getAction() instanceof LetExpression)) {
                this.getAction().process(outputter, xPathContext);
                return;
            }
            this = (LetExpression) this.getAction();
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        while (true) {
            xPathContext.setLocalVariable(this.getLocalSlotNumber(), this.eval(xPathContext));
            if (!(this.getAction() instanceof LetExpression)) {
                break;
            }
            this = (LetExpression) this.getAction();
        }
        if (this.getAction() instanceof TailCallReturner) {
            return ((TailCallReturner) this.getAction()).processLeavingTail(outputter, xPathContext);
        }
        this.getAction().process(outputter, xPathContext);
        return null;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void resetLocalStaticProperties() {
        super.resetLocalStaticProperties();
        this.references = new ArrayList();
        if (this.f99298q != Evaluator.Variable.INSTANCE || (getSequence() instanceof VariableReference)) {
            return;
        }
        this.f99298q = null;
        setEvaluator();
    }

    public void setEvaluator() {
        if (this.f99299r) {
            setEvaluator(ExpressionTool.eagerEvaluator(getSequence()));
        } else if (isIndexedVariable()) {
            setEvaluator(Evaluator.MakeIndexedVariable.INSTANCE);
        } else if (this.f99298q == null) {
            setEvaluator(ExpressionTool.lazyEvaluator(getSequence(), getNominalReferenceCount() > 1));
        }
    }

    public void setInstruction(boolean z) {
        this.f99301t = z;
    }

    public void setNeedsEagerEvaluation(boolean z) {
        this.f99299r = z;
    }

    public void setNeedsLazyEvaluation(boolean z) {
        if (z && this.f99299r) {
            this.f99299r = false;
        }
        this.f99300s = z;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression staticTypeCheck(SequenceType sequenceType, boolean z, RoleDiagnostic roleDiagnostic, ExpressionVisitor expressionVisitor) throws XPathException {
        setAction(expressionVisitor.getConfiguration().getTypeChecker(z).staticTypeCheck(getAction(), sequenceType, roleDiagnostic, expressionVisitor));
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return "let $" + getVariableName() + " := ...";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        return "let $" + getVariableEQName() + " := " + getSequence() + " return " + ExpressionTool.parenthesize(getAction());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getSequenceOp().typeCheck(expressionVisitor, contextItemStaticInfo);
        setSequence(TypeChecker.strictTypeCheck(getSequence(), this.requiredType, new RoleDiagnostic(3, getVariableQName().getDisplayName(), 0), expressionVisitor.getStaticContext()));
        refineTypeInformation(getSequence().getItemType(), getSequence().getCardinality(), getSequence() instanceof Literal ? ((Literal) getSequence()).getGroundedValue() : null, getSequence().getSpecialProperties(), this);
        getActionOp().typeCheck(expressionVisitor, contextItemStaticInfo);
        return this;
    }

    public void setEvaluator(Evaluator evaluator) {
        this.f99298q = evaluator;
    }
}
