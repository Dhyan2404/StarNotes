package net.p110sf.saxon.expr.instruct;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.ComponentInvocation;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.Mode;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.SimpleMode;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.rules.RuleManager;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.util.Orphan;

/* loaded from: classes11.dex */
public class ApplyTemplates extends Instruction implements ITemplateCall, ComponentInvocation {
    protected boolean _useTailRecursion;
    protected boolean implicitSelect;
    protected boolean inStreamableConstruct;
    protected Mode mode;

    /* renamed from: n */
    public Operand f99611n;

    /* renamed from: o */
    public Operand f99612o;

    /* renamed from: p */
    public WithParam[] f99613p;

    /* renamed from: q */
    public WithParam[] f99614q;

    /* renamed from: r */
    public int f99615r;
    protected RuleManager ruleManager;
    protected boolean useCurrentMode;

    /* loaded from: classes11.dex */
    public static class ApplyTemplatesPackage implements TailCall {

        /* renamed from: a */
        public Sequence f99616a;

        /* renamed from: b */
        public Component.C18300M f99617b;

        /* renamed from: c */
        public ParameterSet f99618c;

        /* renamed from: d */
        public ParameterSet f99619d;

        /* renamed from: e */
        public NodeInfo f99620e;

        /* renamed from: f */
        public XPathContextMajor f99621f;

        /* renamed from: g */
        public Outputter f99622g;

        /* renamed from: h */
        public Location f99623h;

        public ApplyTemplatesPackage(Sequence sequence, Component.C18300M c18300m, ParameterSet parameterSet, ParameterSet parameterSet2, NodeInfo nodeInfo, Outputter outputter, XPathContextMajor xPathContextMajor, Location location) {
            this.f99616a = sequence;
            this.f99617b = c18300m;
            this.f99618c = parameterSet;
            this.f99619d = parameterSet2;
            this.f99620e = nodeInfo;
            this.f99622g = outputter;
            this.f99621f = xPathContextMajor;
            this.f99623h = location;
        }

        @Override // net.p110sf.saxon.expr.instruct.TailCall
        public TailCall processLeavingTail() throws XPathException {
            this.f99621f.trackFocus(this.f99616a.iterate());
            this.f99621f.setCurrentMode(this.f99617b);
            this.f99621f.setCurrentComponent(this.f99617b);
            return this.f99617b.getActor().applyTemplates(this.f99618c, this.f99619d, this.f99620e, this.f99622g, this.f99621f, this.f99623h);
        }
    }

    public ApplyTemplates() {
        this.useCurrentMode = false;
        this._useTailRecursion = false;
        this.inStreamableConstruct = false;
        this.f99615r = -1;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        super.addToPathMap(pathMap, pathMapNodeSet).setReturnable(false);
        return new PathMap.PathMapNodeSet(pathMap.makeNewRoot(this));
    }

    public TailCall apply(Outputter outputter, XPathContext xPathContext, boolean z) throws XPathException {
        Component.C18300M targetMode = getTargetMode(xPathContext);
        Mode actor = targetMode.getActor();
        NodeInfo makeSeparator = this.f99612o != null ? makeSeparator(xPathContext) : null;
        ParameterSet assembleParams = Instruction.assembleParams(xPathContext, getActualParams());
        ParameterSet assembleTunnelParams = Instruction.assembleTunnelParams(xPathContext, getTunnelParams());
        if (z) {
            XPathContextMajor newContext = xPathContext.newContext();
            newContext.setOrigin(this);
            return new ApplyTemplatesPackage(ExpressionTool.lazyEvaluate(getSelect(), xPathContext, false), targetMode, assembleParams, assembleTunnelParams, makeSeparator, outputter, newContext, getLocation());
        }
        SequenceIterator iterate = getSelect().iterate(xPathContext);
        if (iterate instanceof EmptyIterator) {
            return null;
        }
        XPathContextMajor newContext2 = xPathContext.newContext();
        newContext2.trackFocus(iterate);
        newContext2.setCurrentMode(targetMode);
        newContext2.setOrigin(this);
        newContext2.setCurrentComponent(targetMode);
        if (this.inStreamableConstruct) {
            newContext2.setCurrentGroupIterator(null);
        }
        PipelineConfiguration pipelineConfiguration = outputter.getPipelineConfiguration();
        pipelineConfiguration.setXPathContext(newContext2);
        try {
            for (TailCall applyTemplates = actor.applyTemplates(assembleParams, assembleTunnelParams, makeSeparator, outputter, newContext2, getLocation()); applyTemplates != null; applyTemplates = applyTemplates.processLeavingTail()) {
            }
            pipelineConfiguration.setXPathContext(xPathContext);
            return null;
        } catch (StackOverflowError unused) {
            XPathException.StackOverflow stackOverflow = new XPathException.StackOverflow("Too many nested apply-templates calls. The stylesheet may be looping.", SaxonErrorCode.SXLM0001, getLocation());
            stackOverflow.setXPathContext(xPathContext);
            throw stackOverflow;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ApplyTemplates applyTemplates = new ApplyTemplates(getSelect().copy(rebindingMap), this.useCurrentMode, this._useTailRecursion, this.implicitSelect, this.inStreamableConstruct, this.mode, this.ruleManager);
        applyTemplates.setActualParams(WithParam.copy(applyTemplates, getActualParams(), rebindingMap));
        applyTemplates.setTunnelParams(WithParam.copy(applyTemplates, getTunnelParams(), rebindingMap));
        ExpressionTool.copyLocationInfo(this, applyTemplates);
        applyTemplates.ruleManager = this.ruleManager;
        if (this.f99612o != null) {
            applyTemplates.setSeparatorExpression(getSeparatorExpression().copy(rebindingMap));
        }
        return applyTemplates;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("applyT", this);
        Mode mode = this.mode;
        if (mode != null && !mode.isUnnamedMode()) {
            expressionPresenter.emitAttribute(Constants.ATTRNAME_MODE, this.mode.getModeName());
        }
        String str = this.useCurrentMode ? "c" : "";
        if (this._useTailRecursion) {
            str = str + "t";
        }
        if (this.implicitSelect) {
            str = str + "i";
        }
        if (!str.isEmpty()) {
            expressionPresenter.emitAttribute("flags", str);
        }
        expressionPresenter.emitAttribute("bSlot", "" + getBindingSlot());
        expressionPresenter.setChildRole("select");
        getSelect().export(expressionPresenter);
        if (this.f99612o != null) {
            expressionPresenter.setChildRole("separator");
            getSeparatorExpression().export(expressionPresenter);
        }
        if (getActualParams().length != 0) {
            WithParam.exportParameters(getActualParams(), expressionPresenter, false);
        }
        if (getTunnelParams().length != 0) {
            WithParam.exportParameters(getTunnelParams(), expressionPresenter, true);
        }
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.instruct.ITemplateCall
    public WithParam[] getActualParams() {
        return this.f99613p;
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public int getBindingSlot() {
        return this.f99615r;
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public Component getFixedTarget() {
        return this.mode.getDeclaringComponent();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return super.getImplementationMethod() | 8;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 133;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        return (this.useCurrentMode ? 1 : 0) | super.getIntrinsicDependencies();
    }

    public Mode getMode() {
        return this.mode;
    }

    public RuleManager getRuleManager() {
        return this.ruleManager;
    }

    public Expression getSelect() {
        return this.f99611n.getChildExpression();
    }

    public Expression getSelectExpression() {
        return getSelect();
    }

    public Expression getSeparatorExpression() {
        Operand operand = this.f99612o;
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "ApplyTemplates";
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public SymbolicName getSymbolicName() {
        Mode mode = this.mode;
        if (mode == null) {
            return null;
        }
        return mode.getSymbolicName();
    }

    public Component.C18300M getTargetMode(XPathContext xPathContext) {
        if (this.useCurrentMode) {
            return xPathContext.getCurrentMode();
        }
        int i = this.f99615r;
        if (i < 0) {
            return this.mode.getDeclaringComponent();
        }
        Component.C18300M c18300m = (Component.C18300M) xPathContext.getTargetComponent(i);
        if (c18300m.getVisibility() != Visibility.ABSTRACT) {
            return c18300m;
        }
        throw new AssertionError("Modes cannot be abstract");
    }

    @Override // net.p110sf.saxon.expr.instruct.ITemplateCall
    public WithParam[] getTunnelParams() {
        return this.f99614q;
    }

    public void init(Expression expression, boolean z, boolean z2, Mode mode) {
        setSelect(expression);
        this.useCurrentMode = z;
        this._useTailRecursion = z2;
        this.mode = mode;
        adoptChildExpression(expression);
    }

    public boolean isImplicitSelect() {
        return this.implicitSelect;
    }

    public NodeInfo makeSeparator(XPathContext xPathContext) throws XPathException {
        UnicodeString evaluateAsString = this.f99612o.getChildExpression().evaluateAsString(xPathContext);
        Orphan orphan = new Orphan(xPathContext.getConfiguration());
        orphan.setNodeKind((short) 3);
        orphan.setStringValue(evaluateAsString);
        return orphan;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public final boolean mayCreateNewNodes() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f99611n);
        Operand operand = this.f99612o;
        if (operand != null) {
            arrayList.add(operand);
        }
        WithParam.gatherOperands(this, getActualParams(), arrayList);
        WithParam.gatherOperands(this, getTunnelParams(), arrayList);
        return arrayList;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        WithParam.optimize(expressionVisitor, this.f99613p, contextItemStaticInfo);
        WithParam.optimize(expressionVisitor, this.f99614q, contextItemStaticInfo);
        this.f99611n.typeCheck(expressionVisitor, contextItemStaticInfo);
        this.f99611n.optimize(expressionVisitor, contextItemStaticInfo);
        return Literal.isEmptySequence(getSelect()) ? getSelect() : this;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public void process(Outputter outputter, XPathContext xPathContext) throws XPathException {
        apply(outputter, xPathContext, false);
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        return apply(outputter, xPathContext, this._useTailRecursion);
    }

    public void setActualParams(WithParam[] withParamArr) {
        this.f99613p = withParamArr;
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public void setBindingSlot(int i) {
        this.f99615r = i;
    }

    public void setMode(SimpleMode simpleMode) {
        this.mode = simpleMode;
    }

    public void setSelect(Expression expression) {
        this.f99611n.setChildExpression(expression);
    }

    public void setSeparatorExpression(Expression expression) {
        this.f99612o = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
    }

    public void setTunnelParams(WithParam[] withParamArr) {
        this.f99614q = withParamArr;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        WithParam.simplify(getActualParams());
        WithParam.simplify(getTunnelParams());
        setSelect(getSelect().simplify());
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        WithParam.typeCheck(this.f99613p, expressionVisitor, contextItemStaticInfo);
        WithParam.typeCheck(this.f99614q, expressionVisitor, contextItemStaticInfo);
        try {
            this.f99611n.typeCheck(expressionVisitor, contextItemStaticInfo);
            adoptChildExpression(getSelect());
            return Literal.isEmptySequence(getSelect()) ? getSelect() : this;
        } catch (XPathException e) {
            if (this.implicitSelect) {
                String errorCodeLocalPart = e.getErrorCodeLocalPart();
                if ("XPTY0020".equals(errorCodeLocalPart) || "XPTY0019".equals(errorCodeLocalPart)) {
                    XPathException xPathException = new XPathException("Cannot apply-templates to child nodes when the context item is an atomic value");
                    xPathException.setErrorCode("XTTE0510");
                    xPathException.setIsTypeError(true);
                    throw xPathException;
                }
                if ("XPDY0002".equals(errorCodeLocalPart)) {
                    XPathException xPathException2 = new XPathException("Cannot apply-templates to child nodes when the context item is absent");
                    xPathException2.setErrorCode("XTTE0510");
                    xPathException2.setIsTypeError(true);
                    throw xPathException2;
                }
            }
            throw e;
        }
    }

    public boolean useTailRecursion() {
        return this._useTailRecursion;
    }

    public boolean usesCurrentMode() {
        return this.useCurrentMode;
    }

    public ApplyTemplates(Expression expression, boolean z, boolean z2, boolean z3, boolean z4, Mode mode, RuleManager ruleManager) {
        this.useCurrentMode = false;
        this._useTailRecursion = false;
        this.inStreamableConstruct = false;
        this.f99615r = -1;
        this.f99611n = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
        init(expression, z, z2, mode);
        this.implicitSelect = z3;
        this.inStreamableConstruct = z4;
        this.ruleManager = ruleManager;
    }
}
