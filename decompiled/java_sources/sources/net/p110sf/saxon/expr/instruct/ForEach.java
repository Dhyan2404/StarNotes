package net.p110sf.saxon.expr.instruct;

import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.expr.AxisExpression;
import net.p110sf.saxon.expr.ContextMappingFunction;
import net.p110sf.saxon.expr.ContextMappingIterator;
import net.p110sf.saxon.expr.ContextSwitchingExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.PendingUpdateList;
import net.p110sf.saxon.expr.SimpleStepExpression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.XPathContextMinor;
import net.p110sf.saxon.expr.instruct.ForEach;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.lib.TraceListener;
import net.p110sf.saxon.om.FocusIterator;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.PrependSequenceIterator;
import net.p110sf.saxon.tree.util.Orphan;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.Cardinality;

/* loaded from: classes11.dex */
public class ForEach extends Instruction implements ContextSwitchingExpression {

    /* renamed from: n */
    public static final /* synthetic */ boolean f99716n = false;
    protected boolean _isInstruction;
    protected Operand actionOp;
    protected boolean containsTailCall;
    protected Operand selectOp;
    protected Operand separatorOp;
    protected Operand threadsOp;

    public ForEach(Expression expression, Expression expression2) {
        this(expression, expression2, false, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ SequenceIterator m62764h(XPathContext xPathContext) throws XPathException {
        return getAction().iterate(xPathContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ SequenceIterator m62765i(NodeInfo nodeInfo, XPathContext xPathContext) throws XPathException {
        return xPathContext.getCurrentIterator().position() == 1 ? getAction().iterate(xPathContext) : new PrependSequenceIterator(nodeInfo, getAction().iterate(xPathContext));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        return getAction().addToPathMap(pathMap, getSelect().addToPathMap(pathMap, pathMapNodeSet));
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public boolean alwaysCreatesNewNodes() {
        return (getAction() instanceof Instruction) && ((Instruction) getAction()).alwaysCreatesNewNodes();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkForUpdatingSubexpressions() throws XPathException {
        if (getSelect().isUpdatingExpression()) {
            XPathException xPathException = new XPathException("Updating expression appears in a context where it is not permitted", "XUST0001");
            xPathException.setLocation(getSelect().getLocation());
            throw xPathException;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkPermittedContents(SchemaType schemaType, boolean z) throws XPathException {
        getAction().checkPermittedContents(schemaType, false);
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return (getSelect().getCardinality() == 16384 ? getAction().getSpecialProperties() : getAction().getSpecialProperties() & 134217728) | super.computeSpecialProperties();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ForEach forEach = new ForEach(getSelect().copy(rebindingMap), getAction().copy(rebindingMap), this.containsTailCall, getThreads());
        if (this.separatorOp != null) {
            forEach.setSeparatorExpression(getSeparatorExpression().copy(rebindingMap));
        }
        ExpressionTool.copyLocationInfo(this, forEach);
        forEach.setInstruction(isInstruction());
        return forEach;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void evaluatePendingUpdates(XPathContext xPathContext, PendingUpdateList pendingUpdateList) throws XPathException {
        XPathContextMinor newMinorContext = xPathContext.newMinorContext();
        newMinorContext.trackFocus(getSelect().iterate(xPathContext));
        FocusIterator currentIterator = newMinorContext.getCurrentIterator();
        while (currentIterator.next() != null) {
            getAction().evaluatePendingUpdates(newMinorContext, pendingUpdateList);
        }
    }

    public void explainThreads(ExpressionPresenter expressionPresenter) throws XPathException {
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("forEach", this);
        getSelect().export(expressionPresenter);
        getAction().export(expressionPresenter);
        if (this.separatorOp != null) {
            expressionPresenter.setChildRole("separator");
            this.separatorOp.getChildExpression().export(expressionPresenter);
        }
        explainThreads(expressionPresenter);
        expressionPresenter.endElement();
    }

    public Expression getAction() {
        return this.actionOp.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.ContextSwitchingExpression
    public Expression getActionExpression() {
        return getAction();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "forEach";
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 30;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 155;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public final ItemType getItemType() {
        return getAction().getItemType();
    }

    public Expression getNumberOfThreadsExpression() {
        return getThreads();
    }

    public Expression getSelect() {
        return this.selectOp.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.ContextSwitchingExpression
    public Expression getSelectExpression() {
        return getSelect();
    }

    public Expression getSeparatorExpression() {
        Operand operand = this.separatorOp;
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return isInstruction() ? super.getStaticUType(uType) : getAction().getStaticUType(getSelect().getStaticUType(uType));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "ForEach";
    }

    public Expression getThreads() {
        Operand operand = this.threadsOp;
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public boolean isInstruction() {
        return this._isInstruction;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isUpdatingExpression() {
        return getAction().isUpdatingExpression();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        XPathContextMinor newMinorContext = xPathContext.newMinorContext();
        newMinorContext.trackFocus(getSelect().iterate(xPathContext));
        if (this.separatorOp == null) {
            return new ContextMappingIterator(new ContextMappingFunction() { // from class: com.sunia.HTREnginev2.ksg
                @Override // net.p110sf.saxon.expr.ContextMappingFunction
                public final SequenceIterator map(XPathContext xPathContext2) {
                    SequenceIterator m62764h;
                    m62764h = ForEach.this.m62764h(xPathContext2);
                    return m62764h;
                }
            }, newMinorContext);
        }
        final NodeInfo makeSeparator = makeSeparator(xPathContext);
        return new ContextMappingIterator(new ContextMappingFunction() { // from class: com.sunia.HTREnginev2.lsg
            @Override // net.p110sf.saxon.expr.ContextMappingFunction
            public final SequenceIterator map(XPathContext xPathContext2) {
                SequenceIterator m62765i;
                m62765i = ForEach.this.m62765i(makeSeparator, xPathContext2);
                return m62765i;
            }
        }, newMinorContext);
    }

    public NodeInfo makeSeparator(XPathContext xPathContext) throws XPathException {
        UnicodeString evaluateAsString = this.separatorOp.getChildExpression().evaluateAsString(xPathContext);
        Orphan orphan = new Orphan(xPathContext.getConfiguration());
        orphan.setNodeKind((short) 3);
        orphan.setStringValue(evaluateAsString);
        return orphan;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public final boolean mayCreateNewNodes() {
        return (getAction().getSpecialProperties() & 8388608) == 0;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandSparseList(this.selectOp, this.actionOp, this.separatorOp, this.threadsOp);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.selectOp.optimize(expressionVisitor, contextItemStaticInfo);
        ContextItemStaticInfo makeContextItemStaticInfo = expressionVisitor.getConfiguration().makeContextItemStaticInfo(getSelect().getItemType(), false);
        makeContextItemStaticInfo.setContextSettingExpression(getSelect());
        this.actionOp.optimize(expressionVisitor, makeContextItemStaticInfo);
        if (!expressionVisitor.isOptimizeForStreaming()) {
            if (Literal.isEmptySequence(getSelect())) {
                return getSelect();
            }
            if (Literal.isEmptySequence(getAction())) {
                return getAction();
            }
        }
        return (getSelect().getCardinality() == 16384 && (getAction() instanceof AxisExpression)) ? new SimpleStepExpression(getSelect(), getAction()) : (this.threadsOp == null || Literal.isEmptySequence(getThreads())) ? this : expressionVisitor.obtainOptimizer().generateMultithreadedInstruction(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(final Outputter outputter, XPathContext xPathContext) throws XPathException {
        Controller controller = xPathContext.getController();
        final XPathContextMajor newContext = xPathContext.newContext();
        newContext.setOrigin(this);
        FocusIterator trackFocus = newContext.trackFocus(getSelect().iterate(xPathContext));
        newContext.setCurrentTemplateRule(null);
        final Expression action = getAction();
        if (this.containsTailCall) {
            if (!controller.isTracing()) {
                if (trackFocus.next() == null) {
                    return null;
                }
                return ((TailCallReturner) action).processLeavingTail(outputter, newContext);
            }
            TraceListener traceListener = controller.getTraceListener();
            Item next = trackFocus.next();
            if (next == null) {
                return null;
            }
            traceListener.startCurrentItem(next);
            TailCall processLeavingTail = ((TailCallReturner) action).processLeavingTail(outputter, newContext);
            traceListener.endCurrentItem(next);
            return processLeavingTail;
        }
        PipelineConfiguration pipelineConfiguration = outputter.getPipelineConfiguration();
        pipelineConfiguration.setXPathContext(newContext);
        NodeInfo makeSeparator = this.separatorOp != null ? makeSeparator(xPathContext) : null;
        if (controller.isTracing() || makeSeparator != null) {
            TraceListener traceListener2 = controller.getTraceListener();
            boolean z = true;
            while (true) {
                Item next2 = trackFocus.next();
                if (next2 == null) {
                    break;
                }
                if (controller.isTracing()) {
                    traceListener2.startCurrentItem(next2);
                }
                if (makeSeparator != null) {
                    if (z) {
                        z = false;
                    } else {
                        outputter.append(makeSeparator);
                    }
                }
                action.process(outputter, newContext);
                if (controller.isTracing()) {
                    traceListener2.endCurrentItem(next2);
                }
            }
        } else {
            try {
                SequenceTool.supply(trackFocus, new ItemConsumer() { // from class: com.sunia.HTREnginev2.msg
                    @Override // net.p110sf.saxon.om.ItemConsumer
                    public final void accept(Item item) {
                        Expression.this.process(outputter, newContext);
                    }
                });
            } catch (UncheckedXPathException e) {
                throw e.getXPathException();
            }
        }
        pipelineConfiguration.setXPathContext(xPathContext);
        return null;
    }

    public void setAction(Expression expression) {
        this.actionOp.setChildExpression(expression);
    }

    public void setActionExpression(Expression expression) {
        setAction(expression);
    }

    public void setInstruction(boolean z) {
        this._isInstruction = z;
    }

    public void setSelect(Expression expression) {
        this.selectOp.setChildExpression(expression);
    }

    public void setSelectExpression(Expression expression) {
        setSelect(expression);
    }

    public void setSeparatorExpression(Expression expression) {
        this.separatorOp = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
    }

    public void setThreads(Expression expression) {
        if (expression != null) {
            Operand operand = this.threadsOp;
            if (operand == null) {
                this.threadsOp = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
            } else {
                operand.setChildExpression(expression);
            }
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return getSelect().toShortString() + "!" + getAction().toShortString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        return ExpressionTool.parenthesize(getSelect()) + " ! " + ExpressionTool.parenthesize(getAction());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.selectOp.typeCheck(expressionVisitor, contextItemStaticInfo);
        if (getSelect().getItemType() == ErrorType.getInstance()) {
            return Literal.makeEmptySequence();
        }
        ContextItemStaticInfo makeContextItemStaticInfo = expressionVisitor.getConfiguration().makeContextItemStaticInfo(getSelect().getItemType(), false);
        makeContextItemStaticInfo.setContextSettingExpression(getSelect());
        this.actionOp.typeCheck(expressionVisitor, makeContextItemStaticInfo);
        if (!Cardinality.allowsMany(getSelect().getCardinality())) {
            Operand operand = this.actionOp;
            operand.setOperandRole(operand.getOperandRole().modifyProperty(32, true));
        }
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression unordered(boolean z, boolean z2) throws XPathException {
        setSelect(getSelect().unordered(z, z2));
        setAction(getAction().unordered(z, z2));
        return this;
    }

    public ForEach(Expression expression, Expression expression2, boolean z, Expression expression3) {
        this.selectOp = new Operand(this, expression, OperandRole.FOCUS_CONTROLLING_SELECT);
        this.actionOp = new Operand(this, expression2, OperandRole.FOCUS_CONTROLLED_ACTION);
        if (expression3 != null) {
            this.threadsOp = new Operand(this, expression3, OperandRole.SINGLE_ATOMIC);
        }
        this.containsTailCall = z && (expression2 instanceof TailCallReturner);
    }
}
