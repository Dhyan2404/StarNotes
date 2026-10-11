package net.p110sf.saxon.expr.instruct;

import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Arrays;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.ComponentInvocation;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.NamedTemplate;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class CallTemplate extends Instruction implements ITemplateCall, ComponentInvocation {

    /* renamed from: n */
    public NamedTemplate f99636n;

    /* renamed from: o */
    public final StructuredQName f99637o;

    /* renamed from: p */
    public WithParam[] f99638p;

    /* renamed from: q */
    public WithParam[] f99639q;

    /* renamed from: r */
    public boolean f99640r;

    /* renamed from: s */
    public int f99641s;

    /* renamed from: t */
    public final boolean f99642t;

    /* loaded from: classes11.dex */
    public static class CallTemplatePackage implements TailCall {

        /* renamed from: a */
        public final Component f99643a;

        /* renamed from: b */
        public final ParameterSet f99644b;

        /* renamed from: c */
        public final ParameterSet f99645c;

        /* renamed from: d */
        public final CallTemplate f99646d;

        /* renamed from: e */
        public final Outputter f99647e;

        /* renamed from: f */
        public final XPathContext f99648f;

        public CallTemplatePackage(Component component, ParameterSet parameterSet, ParameterSet parameterSet2, CallTemplate callTemplate, Outputter outputter, XPathContext xPathContext) {
            this.f99643a = component;
            if (!(component.getActor() instanceof NamedTemplate)) {
                throw new ClassCastException("Target of call-template must be a named template");
            }
            this.f99644b = parameterSet;
            this.f99645c = parameterSet2;
            this.f99646d = callTemplate;
            this.f99647e = outputter;
            this.f99648f = xPathContext;
        }

        @Override // net.p110sf.saxon.expr.instruct.TailCall
        public TailCall processLeavingTail() throws XPathException {
            NamedTemplate namedTemplate = (NamedTemplate) this.f99643a.getActor();
            XPathContextMajor newContext = this.f99648f.newContext();
            newContext.setCurrentComponent(this.f99643a);
            newContext.setOrigin(this.f99646d);
            newContext.setLocalParameters(this.f99644b);
            newContext.setTunnelParameters(this.f99645c);
            newContext.openStackFrame(namedTemplate.getStackFrameMap());
            newContext.setCurrentMergeGroupIterator(null);
            return namedTemplate.expand(this.f99647e, newContext);
        }
    }

    public CallTemplate(NamedTemplate namedTemplate, StructuredQName structuredQName, boolean z, boolean z2) {
        WithParam[] withParamArr = WithParam.EMPTY_ARRAY;
        this.f99638p = withParamArr;
        this.f99639q = withParamArr;
        this.f99641s = -1;
        this.f99636n = namedTemplate;
        this.f99637o = structuredQName;
        this.f99640r = z;
        this.f99642t = z2;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        NamedTemplate namedTemplate = this.f99636n;
        if (namedTemplate == null) {
            return 57344;
        }
        return namedTemplate.getRequiredType().getCardinality();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        CallTemplate callTemplate = new CallTemplate(this.f99636n, this.f99637o, this.f99640r, this.f99642t);
        ExpressionTool.copyLocationInfo(this, callTemplate);
        callTemplate.f99638p = WithParam.copy(callTemplate, this.f99638p, rebindingMap);
        callTemplate.f99639q = WithParam.copy(callTemplate, this.f99639q, rebindingMap);
        return callTemplate;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("callT", this);
        NamedTemplate namedTemplate = this.f99636n;
        if (namedTemplate != null && namedTemplate.getTemplateName() != null) {
            expressionPresenter.emitAttribute("name", this.f99636n.getTemplateName());
        }
        StringBuilder sb = new StringBuilder();
        String str = "";
        sb.append("");
        sb.append(getBindingSlot());
        expressionPresenter.emitAttribute("bSlot", sb.toString());
        if (this.f99642t) {
            str = "d";
        }
        if (this.f99640r) {
            str = str + "t";
        }
        if (!str.isEmpty()) {
            expressionPresenter.emitAttribute("flags", str);
        }
        WithParam[] withParamArr = this.f99638p;
        if (withParamArr.length > 0) {
            WithParam.exportParameters(withParamArr, expressionPresenter, false);
        }
        WithParam[] withParamArr2 = this.f99639q;
        if (withParamArr2.length > 0) {
            WithParam.exportParameters(withParamArr2, expressionPresenter, true);
        }
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.instruct.ITemplateCall
    public WithParam[] getActualParams() {
        return this.f99638p;
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public int getBindingSlot() {
        return this.f99641s;
    }

    public StructuredQName getCalledTemplateName() {
        return this.f99637o;
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public Component getFixedTarget() {
        Component target = getTarget();
        Visibility visibility = target.getVisibility();
        if (visibility == Visibility.PRIVATE || visibility == Visibility.FINAL) {
            return target;
        }
        return null;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 140;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        return 639;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        NamedTemplate namedTemplate = this.f99636n;
        return namedTemplate == null ? AnyItemType.getInstance() : namedTemplate.getRequiredType().getPrimaryType();
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.trace.Traceable
    public StructuredQName getObjectName() {
        NamedTemplate namedTemplate = this.f99636n;
        if (namedTemplate == null) {
            return null;
        }
        return namedTemplate.getTemplateName();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "CallTemplate";
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public SymbolicName getSymbolicName() {
        StructuredQName structuredQName = this.f99637o;
        if (structuredQName == null) {
            return null;
        }
        return new SymbolicName(210, structuredQName);
    }

    public Component getTarget() {
        return this.f99636n.getDeclaringComponent();
    }

    public NamedTemplate getTargetTemplate() {
        return this.f99636n;
    }

    @Override // net.p110sf.saxon.expr.instruct.ITemplateCall
    public WithParam[] getTunnelParams() {
        return this.f99639q;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public final boolean mayCreateNewNodes() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        ArrayList arrayList = new ArrayList(10);
        WithParam.gatherOperands(this, this.f99638p, arrayList);
        WithParam.gatherOperands(this, this.f99639q, arrayList);
        return arrayList;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        WithParam.optimize(expressionVisitor, this.f99638p, contextItemStaticInfo);
        WithParam.optimize(expressionVisitor, this.f99639q, contextItemStaticInfo);
        return this;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public void process(Outputter outputter, XPathContext xPathContext) throws XPathException {
        Component fixedTarget = getFixedTarget();
        int i = this.f99641s;
        if (i >= 0) {
            fixedTarget = xPathContext.getTargetComponent(i);
            if (fixedTarget.isHiddenAbstractComponent()) {
                XPathException xPathException = new XPathException("Cannot call an abstract template (" + this.f99637o.getDisplayName() + ") with no implementation", "XTDE3052");
                xPathException.setLocation(getLocation());
                throw xPathException;
            }
        }
        NamedTemplate namedTemplate = (NamedTemplate) fixedTarget.getActor();
        XPathContextMajor newContext = xPathContext.newContext();
        newContext.setCurrentComponent(fixedTarget);
        newContext.setOrigin(this);
        newContext.openStackFrame(namedTemplate.getStackFrameMap());
        newContext.setLocalParameters(Instruction.assembleParams(xPathContext, this.f99638p));
        newContext.setTunnelParameters(Instruction.assembleTunnelParams(xPathContext, this.f99639q));
        if (this.f99642t) {
            newContext.setCurrentGroupIterator(null);
        }
        newContext.setCurrentMergeGroupIterator(null);
        try {
            for (TailCall expand = namedTemplate.expand(outputter, newContext); expand != null; expand = expand.processLeavingTail()) {
            }
        } catch (StackOverflowError unused) {
            XPathException.StackOverflow stackOverflow = new XPathException.StackOverflow("Too many nested template or function calls. The stylesheet may be looping.", SaxonErrorCode.SXLM0001, getLocation());
            stackOverflow.setXPathContext(xPathContext);
            throw stackOverflow;
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        if (!this.f99640r) {
            process(outputter, xPathContext);
            return null;
        }
        int i = this.f99641s;
        Component targetComponent = i >= 0 ? xPathContext.getTargetComponent(i) : getFixedTarget();
        if (targetComponent == null) {
            throw new XPathException("Internal Saxon error: No binding available for call-template instruction", SaxonErrorCode.SXPK0001, getLocation());
        }
        if (targetComponent.isHiddenAbstractComponent()) {
            throw new XPathException("Cannot call an abstract template (" + this.f99637o.getDisplayName() + ") with no implementation", "XTDE3052", getLocation());
        }
        ParameterSet assembleParams = Instruction.assembleParams(xPathContext, this.f99638p);
        ParameterSet assembleTunnelParams = Instruction.assembleTunnelParams(xPathContext, this.f99639q);
        if (assembleParams == null) {
            assembleParams = ParameterSet.EMPTY_PARAMETER_SET;
        }
        ParameterSet parameterSet = assembleParams;
        Arrays.fill(xPathContext.getStackFrame().getStackFrameValues(), (Object) null);
        return new CallTemplatePackage(targetComponent, parameterSet, assembleTunnelParams, this, outputter, xPathContext);
    }

    public void setActualParameters(WithParam[] withParamArr, WithParam[] withParamArr2) {
        this.f99638p = withParamArr;
        this.f99639q = withParamArr2;
        for (WithParam withParam : withParamArr) {
            adoptChildExpression(withParam.getSelectExpression());
        }
        for (WithParam withParam2 : withParamArr2) {
            adoptChildExpression(withParam2.getSelectExpression());
        }
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public void setBindingSlot(int i) {
        this.f99641s = i;
    }

    public void setTailRecursive(boolean z) {
        this.f99640r = z;
    }

    public void setTargetTemplate(NamedTemplate namedTemplate) {
        this.f99636n = namedTemplate;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        WithParam.simplify(this.f99638p);
        WithParam.simplify(this.f99639q);
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return "CallTemplate#" + this.f99636n.getObjectName().getDisplayName();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("CallTemplate#");
        if (this.f99636n.getObjectName() != null) {
            sb.append(this.f99636n.getObjectName().getDisplayName());
        }
        WithParam[] actualParams = getActualParams();
        int length = actualParams.length;
        boolean z = true;
        int i = 0;
        while (i < length) {
            WithParam withParam = actualParams[i];
            sb.append(z ? MotionUtils.f31761c : ", ");
            sb.append(withParam.getVariableQName().getDisplayName());
            sb.append("=");
            sb.append(withParam.getSelectExpression().toString());
            i++;
            z = false;
        }
        if (!z) {
            sb.append(MotionUtils.f31762d);
        }
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        WithParam.typeCheck(this.f99638p, expressionVisitor, contextItemStaticInfo);
        WithParam.typeCheck(this.f99639q, expressionVisitor, contextItemStaticInfo);
        TypeChecker typeChecker = expressionVisitor.getConfiguration().getTypeChecker(expressionVisitor.getStaticContext().isInBackwardsCompatibleMode());
        int i = 0;
        while (true) {
            WithParam[] withParamArr = this.f99638p;
            if (i >= withParamArr.length) {
                return this;
            }
            WithParam withParam = withParamArr[i];
            NamedTemplate.LocalParamInfo localParamInfo = this.f99636n.getLocalParamInfo(withParam.getVariableQName());
            if (localParamInfo != null) {
                SequenceType sequenceType = localParamInfo.requiredType;
                RoleDiagnostic roleDiagnostic = new RoleDiagnostic(8, withParam.getVariableQName().getDisplayName(), i);
                roleDiagnostic.setErrorCode("XTTE0590");
                withParam.setSelectExpression(this, typeChecker.staticTypeCheck(withParam.getSelectExpression(), sequenceType, roleDiagnostic, expressionVisitor));
                withParam.setTypeChecked(true);
            }
            i++;
        }
    }

    public boolean usesTailRecursion() {
        return this.f99640r;
    }
}
