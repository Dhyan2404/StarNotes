package net.p110sf.saxon.event;

import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.s9api.HostLanguage;

/* loaded from: classes11.dex */
public class PipelineConfiguration {

    /* renamed from: a */
    public Configuration f99050a;

    /* renamed from: b */
    public Controller f99051b;

    /* renamed from: c */
    public ParseOptions f99052c;

    /* renamed from: d */
    public HostLanguage f99053d;

    /* renamed from: e */
    public Map<String, Object> f99054e;

    /* renamed from: f */
    public XPathContext f99055f;

    /* renamed from: g */
    public Function<NodeInfo, Object> f99056g;

    public PipelineConfiguration(Configuration configuration) {
        this.f99053d = HostLanguage.UNKNOWN;
        this.f99050a = configuration;
        this.f99052c = new ParseOptions();
    }

    public Object getComponent(String str) {
        Map<String, Object> map = this.f99054e;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public Configuration getConfiguration() {
        return this.f99050a;
    }

    public Controller getController() {
        return this.f99051b;
    }

    public Function<NodeInfo, Object> getCopyInformee() {
        return this.f99056g;
    }

    public ErrorReporter getErrorReporter() {
        ErrorReporter errorReporter = getParseOptions().getErrorReporter();
        if (errorReporter != null) {
            return errorReporter;
        }
        Controller controller = this.f99051b;
        return controller == null ? this.f99050a.makeErrorReporter() : controller.getErrorReporter();
    }

    public HostLanguage getHostLanguage() {
        HostLanguage hostLanguage = this.f99053d;
        HostLanguage hostLanguage2 = HostLanguage.UNKNOWN;
        if (hostLanguage == hostLanguage2) {
            Controller controller = this.f99051b;
            if (controller != null) {
                hostLanguage2 = controller.getExecutable().getHostLanguage();
            }
            this.f99053d = hostLanguage2;
        }
        return this.f99053d;
    }

    public ParseOptions getParseOptions() {
        if (this.f99052c == null) {
            this.f99052c = this.f99050a.getParseOptions();
        }
        return this.f99052c;
    }

    public XPathContext getXPathContext() {
        return this.f99055f;
    }

    public boolean isRecoverFromValidationErrors() {
        return getParseOptions().isContinueAfterValidationErrors();
    }

    public boolean isXSLT() {
        return getHostLanguage() == HostLanguage.XSLT;
    }

    public void setComponent(String str, Object obj) {
        if (this.f99054e == null) {
            this.f99054e = new HashMap();
        }
        this.f99054e.put(str, obj);
    }

    public void setConfiguration(Configuration configuration) {
        this.f99050a = configuration;
    }

    public void setController(Controller controller) {
        this.f99051b = controller;
    }

    public void setCopyInformee(Function<NodeInfo, Object> function) {
        this.f99056g = function;
    }

    public void setErrorReporter(ErrorReporter errorReporter) {
        getParseOptions().setErrorReporter(errorReporter);
    }

    public void setExpandAttributeDefaults(boolean z) {
        getParseOptions().setExpandAttributeDefaults(z);
    }

    public void setHostLanguage(HostLanguage hostLanguage) {
        this.f99053d = hostLanguage;
    }

    public void setParseOptions(ParseOptions parseOptions) {
        this.f99052c = parseOptions;
    }

    public void setRecoverFromValidationErrors(boolean z) {
        getParseOptions().setContinueAfterValidationErrors(z);
    }

    public void setUseXsiSchemaLocation(boolean z) {
        getParseOptions().setUseXsiSchemaLocation(z);
    }

    public void setXPathContext(XPathContext xPathContext) {
        this.f99055f = xPathContext;
    }

    public PipelineConfiguration(PipelineConfiguration pipelineConfiguration) {
        this.f99053d = HostLanguage.UNKNOWN;
        this.f99050a = pipelineConfiguration.f99050a;
        this.f99051b = pipelineConfiguration.f99051b;
        this.f99052c = new ParseOptions(pipelineConfiguration.f99052c);
        this.f99053d = pipelineConfiguration.f99053d;
        if (pipelineConfiguration.f99054e != null) {
            this.f99054e = new HashMap(pipelineConfiguration.f99054e);
        }
        this.f99055f = pipelineConfiguration.f99055f;
        this.f99056g = null;
    }
}
