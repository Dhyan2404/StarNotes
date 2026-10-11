package net.p110sf.saxon.expr.instruct;

import java.util.Arrays;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trace.TemplateRuleTraceListener;
import net.p110sf.saxon.trans.Mode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XsltController;
import net.p110sf.saxon.trans.rules.Rule;

/* loaded from: classes11.dex */
public class NextMatch extends ApplyNextMatchingTemplate {

    /* renamed from: q */
    public static final /* synthetic */ boolean f99783q = false;

    /* renamed from: p */
    public boolean f99784p;

    /* renamed from: net.sf.saxon.expr.instruct.NextMatch$a */
    /* loaded from: classes11.dex */
    public static class C18317a implements TailCall {

        /* renamed from: a */
        public final NextMatch f99785a;

        /* renamed from: b */
        public final Rule f99786b;

        /* renamed from: c */
        public final ParameterSet f99787c;

        /* renamed from: d */
        public final ParameterSet f99788d;

        /* renamed from: e */
        public final Outputter f99789e;

        /* renamed from: f */
        public final XPathContext f99790f;

        public C18317a(NextMatch nextMatch, Rule rule, ParameterSet parameterSet, ParameterSet parameterSet2, Outputter outputter, XPathContext xPathContext) {
            this.f99785a = nextMatch;
            this.f99786b = rule;
            this.f99787c = parameterSet;
            this.f99788d = parameterSet2;
            this.f99789e = outputter;
            this.f99790f = xPathContext;
        }

        @Override // net.p110sf.saxon.expr.instruct.TailCall
        public TailCall processLeavingTail() throws XPathException {
            TemplateRule templateRule = (TemplateRule) this.f99786b.getAction();
            templateRule.initialize();
            XPathContextMajor newContext = this.f99790f.newContext();
            newContext.setOrigin(this.f99785a);
            newContext.setLocalParameters(this.f99787c);
            newContext.setTunnelParameters(this.f99788d);
            newContext.openStackFrame(templateRule.getStackFrameMap());
            newContext.setCurrentTemplateRule(this.f99786b);
            newContext.setCurrentComponent(this.f99790f.getCurrentComponent());
            newContext.setCurrentMergeGroupIterator(null);
            if (!this.f99790f.getCurrentMode().getActor().isModeTracing()) {
                return templateRule.applyLeavingTail(this.f99789e, newContext);
            }
            TemplateRuleTraceListener templateRuleTraceListener = ((XsltController) this.f99790f.getController()).getTemplateRuleTraceListener();
            templateRuleTraceListener.enter("next-match", this.f99785a.getLocation(), this.f99790f.getContextItem(), templateRule);
            TailCall applyLeavingTail = templateRule.applyLeavingTail(this.f99789e, newContext);
            templateRuleTraceListener.leave();
            return applyLeavingTail;
        }
    }

    public NextMatch(boolean z) {
        this.f99784p = z;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        NextMatch nextMatch = new NextMatch(this.f99784p);
        nextMatch.setActualParams(WithParam.copy(nextMatch, getActualParams(), rebindingMap));
        nextMatch.setTunnelParams(WithParam.copy(nextMatch, getTunnelParams(), rebindingMap));
        ExpressionTool.copyLocationInfo(this, nextMatch);
        return nextMatch;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("nextMatch", this);
        expressionPresenter.emitAttribute("flags", this.f99784p ? "t" : "i");
        if (getActualParams().length != 0) {
            WithParam.exportParameters(getActualParams(), expressionPresenter, false);
        }
        if (getTunnelParams().length != 0) {
            WithParam.exportParameters(getTunnelParams(), expressionPresenter, true);
        }
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 184;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "NextMatch";
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        Controller controller = xPathContext.getController();
        ParameterSet assembleParams = Instruction.assembleParams(xPathContext, getActualParams());
        ParameterSet assembleTunnelParams = Instruction.assembleTunnelParams(xPathContext, getTunnelParams());
        Rule currentTemplateRule = xPathContext.getCurrentTemplateRule();
        if (currentTemplateRule == null) {
            XPathException xPathException = new XPathException("There is no current template rule", "XTDE0560");
            xPathException.setXPathContext(xPathContext);
            xPathException.setLocation(getLocation());
            throw xPathException;
        }
        Component.C18300M currentMode = xPathContext.getCurrentMode();
        if (currentMode == null) {
            throw new AssertionError("Current mode is null");
        }
        Mode actor = currentMode.getActor();
        Item current = xPathContext.getCurrentIterator().current();
        Rule nextMatchRule = actor.getNextMatchRule(current, currentTemplateRule, xPathContext);
        if (nextMatchRule == null) {
            actor.getBuiltInRuleSet().process(current, assembleParams, assembleTunnelParams, outputter, xPathContext, getLocation());
        } else {
            if (this.f99784p) {
                Arrays.fill(xPathContext.getStackFrame().getStackFrameValues(), (Object) null);
                ((XPathContextMajor) xPathContext).setCurrentComponent(currentMode);
                return new C18317a(this, nextMatchRule, assembleParams, assembleTunnelParams, outputter, xPathContext);
            }
            TemplateRule templateRule = (TemplateRule) nextMatchRule.getAction();
            templateRule.initialize();
            XPathContextMajor newContext = xPathContext.newContext();
            newContext.setOrigin(this);
            newContext.openStackFrame(templateRule.getStackFrameMap());
            newContext.setLocalParameters(assembleParams);
            newContext.setTunnelParameters(assembleTunnelParams);
            newContext.setCurrentTemplateRule(nextMatchRule);
            newContext.setCurrentComponent(currentMode);
            newContext.setCurrentMergeGroupIterator(null);
            if (actor.isModeTracing()) {
                TemplateRuleTraceListener templateRuleTraceListener = ((XsltController) controller).getTemplateRuleTraceListener();
                templateRuleTraceListener.enter("next-match", getLocation(), current, templateRule);
                templateRule.apply(outputter, newContext);
                templateRuleTraceListener.leave();
            } else {
                templateRule.apply(outputter, newContext);
            }
        }
        return null;
    }
}
