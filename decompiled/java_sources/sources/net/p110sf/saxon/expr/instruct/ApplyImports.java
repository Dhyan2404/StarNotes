package net.p110sf.saxon.expr.instruct;

import com.sun.org.apache.xalan.internal.templates.Constants;
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
public class ApplyImports extends ApplyNextMatchingTemplate implements ITemplateCall {

    /* renamed from: p */
    public static final /* synthetic */ boolean f99608p = false;

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ApplyImports applyImports = new ApplyImports();
        applyImports.setActualParams(WithParam.copy(applyImports, getActualParams(), rebindingMap));
        applyImports.setTunnelParams(WithParam.copy(applyImports, getTunnelParams(), rebindingMap));
        ExpressionTool.copyLocationInfo(this, applyImports);
        return applyImports;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("applyImports", this);
        expressionPresenter.emitAttribute("flags", "i");
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
        return 132;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "ApplyImports";
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        Controller controller = xPathContext.getController();
        ParameterSet assembleParams = Instruction.assembleParams(xPathContext, getActualParams());
        ParameterSet assembleTunnelParams = Instruction.assembleTunnelParams(xPathContext, getTunnelParams());
        Rule currentTemplateRule = xPathContext.getCurrentTemplateRule();
        if (currentTemplateRule == null) {
            XPathException xPathException = new XPathException("There is no current template rule");
            xPathException.setXPathContext(xPathContext);
            xPathException.setErrorCode("XTDE0560");
            xPathException.setLocation(getLocation());
            throw xPathException;
        }
        int minImportPrecedence = currentTemplateRule.getMinImportPrecedence();
        int precedence = currentTemplateRule.getPrecedence() - 1;
        Component.C18300M currentMode = xPathContext.getCurrentMode();
        if (currentMode == null) {
            throw new AssertionError("Current mode is null");
        }
        Item current = xPathContext.getCurrentIterator().current();
        Mode actor = currentMode.getActor();
        Rule rule = actor.getRule(current, minImportPrecedence, precedence, xPathContext);
        if (rule == null) {
            actor.getBuiltInRuleSet().process(current, assembleParams, assembleTunnelParams, outputter, xPathContext, getLocation());
        } else {
            XPathContextMajor newContext = xPathContext.newContext();
            TemplateRule templateRule = (TemplateRule) rule.getAction();
            templateRule.initialize();
            newContext.setOrigin(this);
            newContext.setLocalParameters(assembleParams);
            newContext.setTunnelParameters(assembleTunnelParams);
            newContext.openStackFrame(templateRule.getStackFrameMap());
            newContext.setCurrentTemplateRule(rule);
            newContext.setCurrentComponent(currentMode);
            newContext.setCurrentMergeGroupIterator(null);
            if (actor.isModeTracing()) {
                TemplateRuleTraceListener templateRuleTraceListener = ((XsltController) controller).getTemplateRuleTraceListener();
                templateRuleTraceListener.enter(Constants.ELEMNAME_APPLY_IMPORTS_STRING, getLocation(), current, templateRule);
                templateRule.apply(outputter, newContext);
                templateRuleTraceListener.leave();
            } else {
                templateRule.apply(outputter, newContext);
            }
        }
        return null;
    }
}
