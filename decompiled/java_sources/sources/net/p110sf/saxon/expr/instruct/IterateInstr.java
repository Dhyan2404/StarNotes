package net.p110sf.saxon.expr.instruct;

import java.util.Iterator;
import java.util.function.Predicate;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.expr.Binding;
import net.p110sf.saxon.expr.ContextSwitchingExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.OperandUsage;
import net.p110sf.saxon.expr.TailCallLoop;
import net.p110sf.saxon.expr.TryCatch;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.XPathContextMinor;
import net.p110sf.saxon.expr.instruct.IterateInstr;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.lib.TraceListener;
import net.p110sf.saxon.om.FocusIterator;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public final class IterateInstr extends Instruction implements ContextSwitchingExpression {

    /* renamed from: n */
    public final Operand f99748n;

    /* renamed from: o */
    public final Operand f99749o;

    /* renamed from: p */
    public final Operand f99750p;

    /* renamed from: q */
    public final Operand f99751q;

    public IterateInstr(Expression expression, LocalParamBlock localParamBlock, Expression expression2, Expression expression3) {
        expression3 = expression3 == null ? Literal.makeEmptySequence() : expression3;
        this.f99748n = new Operand(this, expression, OperandRole.FOCUS_CONTROLLING_SELECT);
        this.f99749o = new Operand(this, expression2, OperandRole.FOCUS_CONTROLLED_ACTION);
        this.f99750p = new Operand(this, localParamBlock, new OperandRole(16, OperandUsage.NAVIGATION, SequenceType.ANY_SEQUENCE, new Predicate() { // from class: com.sunia.HTREnginev2.kqi
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m62777g;
                m62777g = IterateInstr.m62777g((Expression) obj);
                return m62777g;
            }
        }));
        this.f99751q = new Operand(this, expression3, new OperandRole(2, OperandUsage.TRANSMISSION));
    }

    /* renamed from: e */
    public static boolean m62776e(Expression expression, boolean z) {
        if ((expression instanceof BreakInstr) || (expression instanceof NextIteration)) {
            return z;
        }
        boolean z2 = z || (expression instanceof TryCatch);
        Iterator<Operand> it2 = expression.operands().iterator();
        while (it2.hasNext()) {
            if (m62776e(it2.next().getChildExpression(), z2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: g */
    public static /* synthetic */ boolean m62777g(Expression expression) {
        return expression instanceof LocalParamBlock;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkPermittedContents(SchemaType schemaType, boolean z) throws XPathException {
        getActionExpression().checkPermittedContents(schemaType, false);
        getOnCompletion().checkPermittedContents(schemaType, false);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        IterateInstr iterateInstr = new IterateInstr(getSelectExpression().copy(rebindingMap), (LocalParamBlock) getInitiallyExp().copy(rebindingMap), getActionExpression().copy(rebindingMap), getOnCompletion().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, iterateInstr);
        return iterateInstr;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("iterate", this);
        expressionPresenter.setChildRole("select");
        getSelectExpression().export(expressionPresenter);
        expressionPresenter.setChildRole("params");
        getInitiallyExp().export(expressionPresenter);
        if (!Literal.isEmptySequence(getOnCompletion())) {
            expressionPresenter.setChildRole("on-completion");
            getOnCompletion().export(expressionPresenter);
        }
        expressionPresenter.setChildRole("action");
        getActionExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.ContextSwitchingExpression
    public Expression getActionExpression() {
        return this.f99749o.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 4;
    }

    public LocalParamBlock getInitiallyExp() {
        return (LocalParamBlock) this.f99750p.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 168;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public final ItemType getItemType() {
        if (Literal.isEmptySequence(getOnCompletion())) {
            return getActionExpression().getItemType();
        }
        return Type.getCommonSuperType(getActionExpression().getItemType(), getOnCompletion().getItemType(), getConfiguration().getTypeHierarchy());
    }

    public Expression getOnCompletion() {
        return this.f99751q.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.ContextSwitchingExpression
    public Expression getSelectExpression() {
        return this.f99748n.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "Iterate";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean hasVariableBinding(Binding binding) {
        Iterator<Operand> it2 = getInitiallyExp().operands().iterator();
        while (it2.hasNext()) {
            if (((LocalParam) it2.next().getChildExpression()) == binding) {
                return true;
            }
        }
        return false;
    }

    public boolean isCompilable() {
        return !m62776e(this, false);
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public final boolean mayCreateNewNodes() {
        return ((getOnCompletion().getSpecialProperties() & getActionExpression().getSpecialProperties()) & 8388608) == 0;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandList(this.f99748n, this.f99749o, this.f99750p, this.f99751q);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.f99748n.optimize(expressionVisitor, contextItemStaticInfo);
        this.f99750p.optimize(expressionVisitor, contextItemStaticInfo);
        ContextItemStaticInfo makeContextItemStaticInfo = expressionVisitor.getConfiguration().makeContextItemStaticInfo(getSelectExpression().getItemType(), false);
        makeContextItemStaticInfo.setContextSettingExpression(getSelectExpression());
        this.f99749o.optimize(expressionVisitor, makeContextItemStaticInfo);
        this.f99751q.optimize(expressionVisitor, ContextItemStaticInfo.ABSENT);
        return Literal.isEmptySequence(getOnCompletion()) ? (Literal.isEmptySequence(getSelectExpression()) || Literal.isEmptySequence(getActionExpression())) ? getOnCompletion() : this : this;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        XPathContextMajor newContext = xPathContext.newContext();
        newContext.setOrigin(this);
        FocusIterator trackFocus = newContext.trackFocus(getSelectExpression().iterate(xPathContext));
        newContext.setCurrentTemplateRule(null);
        PipelineConfiguration pipelineConfiguration = outputter.getPipelineConfiguration();
        pipelineConfiguration.setXPathContext(newContext);
        boolean isTracing = xPathContext.getController().isTracing();
        TraceListener traceListener = isTracing ? xPathContext.getController().getTraceListener() : null;
        getInitiallyExp().process(outputter, xPathContext);
        while (true) {
            Item next = trackFocus.next();
            if (next == null) {
                XPathContextMinor newMinorContext = xPathContext.newMinorContext();
                newMinorContext.setCurrentIterator(null);
                getOnCompletion().process(outputter, newMinorContext);
                pipelineConfiguration.setXPathContext(xPathContext);
                return null;
            }
            if (isTracing) {
                traceListener.startCurrentItem(next);
            }
            getActionExpression().process(outputter, newContext);
            if (isTracing) {
                traceListener.endCurrentItem(next);
            }
            TailCallLoop.TailCallInfo tailCallInfo = newContext.getTailCallInfo();
            if (tailCallInfo != null && (tailCallInfo instanceof BreakInstr)) {
                trackFocus.close();
                return null;
            }
        }
    }

    public void setAction(Expression expression) {
        this.f99749o.setChildExpression(expression);
    }

    public void setInitiallyExp(LocalParamBlock localParamBlock) {
        this.f99750p.setChildExpression(localParamBlock);
    }

    public void setOnCompletion(Expression expression) {
        this.f99751q.setChildExpression(expression);
    }

    public void setSelect(Expression expression) {
        this.f99748n.setChildExpression(expression);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.f99748n.typeCheck(expressionVisitor, contextItemStaticInfo);
        this.f99750p.typeCheck(expressionVisitor, contextItemStaticInfo);
        ItemType itemType = getSelectExpression().getItemType();
        if (itemType == ErrorType.getInstance()) {
            itemType = AnyItemType.getInstance();
        }
        ContextItemStaticInfo makeContextItemStaticInfo = expressionVisitor.getConfiguration().makeContextItemStaticInfo(itemType, false);
        makeContextItemStaticInfo.setContextSettingExpression(getSelectExpression());
        this.f99749o.typeCheck(expressionVisitor, makeContextItemStaticInfo);
        this.f99751q.typeCheck(expressionVisitor, ContextItemStaticInfo.ABSENT);
        return Literal.isEmptySequence(getOnCompletion()) ? (Literal.isEmptySequence(getSelectExpression()) || Literal.isEmptySequence(getActionExpression())) ? getOnCompletion() : this : this;
    }
}
