package net.p110sf.saxon.query;

import javax.xml.transform.ErrorListener;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.instruct.GlobalParameterSet;
import net.p110sf.saxon.functions.AccessorFn;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.ErrorReporterToListener;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.lib.ResourceResolver;
import net.p110sf.saxon.lib.TraceListener;
import net.p110sf.saxon.lib.UnparsedTextURIResolver;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.DateTimeValue;

/* loaded from: classes11.dex */
public class DynamicQueryContext {

    /* renamed from: a */
    public Item f100972a;

    /* renamed from: c */
    public final Configuration f100974c;

    /* renamed from: d */
    public ResourceResolver f100975d;

    /* renamed from: e */
    public ErrorReporter f100976e;

    /* renamed from: f */
    public TraceListener f100977f;

    /* renamed from: g */
    public UnparsedTextURIResolver f100978g;

    /* renamed from: h */
    public DateTimeValue f100979h;

    /* renamed from: i */
    public Logger f100980i;

    /* renamed from: b */
    public GlobalParameterSet f100973b = new GlobalParameterSet();

    /* renamed from: j */
    public int f100981j = 0;

    /* renamed from: k */
    public boolean f100982k = true;

    public DynamicQueryContext(Configuration configuration) {
        this.f100974c = configuration;
        this.f100976e = configuration.makeErrorReporter();
        this.f100980i = configuration.getLogger();
    }

    public void clearParameters() {
        this.f100973b = new GlobalParameterSet();
    }

    public Configuration getConfiguration() {
        return this.f100974c;
    }

    public Item getContextItem() {
        return this.f100972a;
    }

    public DateTimeValue getCurrentDateTime() {
        return this.f100979h;
    }

    @Deprecated
    public ErrorListener getErrorListener() {
        ErrorReporter errorReporter = getErrorReporter();
        if (errorReporter instanceof ErrorReporterToListener) {
            return ((ErrorReporterToListener) errorReporter).getErrorListener();
        }
        return null;
    }

    public ErrorReporter getErrorReporter() {
        return this.f100976e;
    }

    public GroundedValue getParameter(StructuredQName structuredQName) {
        GlobalParameterSet globalParameterSet = this.f100973b;
        if (globalParameterSet == null) {
            return null;
        }
        return globalParameterSet.get(structuredQName);
    }

    public GlobalParameterSet getParameters() {
        GlobalParameterSet globalParameterSet = this.f100973b;
        return globalParameterSet == null ? new GlobalParameterSet() : globalParameterSet;
    }

    public ResourceResolver getResourceResolver() {
        return this.f100975d;
    }

    public int getSchemaValidationMode() {
        return this.f100981j;
    }

    public Logger getTraceFunctionDestination() {
        return this.f100980i;
    }

    public TraceListener getTraceListener() {
        return this.f100977f;
    }

    public UnparsedTextURIResolver getUnparsedTextURIResolver() {
        return this.f100978g;
    }

    public void initializeController(Controller controller) throws XPathException {
        controller.setResourceResolver(getResourceResolver());
        controller.setErrorReporter(getErrorReporter());
        controller.addTraceListener(getTraceListener());
        UnparsedTextURIResolver unparsedTextURIResolver = this.f100978g;
        if (unparsedTextURIResolver != null) {
            controller.setUnparsedTextURIResolver(unparsedTextURIResolver);
        }
        controller.setTraceFunctionDestination(getTraceFunctionDestination());
        controller.setSchemaValidationMode(getSchemaValidationMode());
        DateTimeValue currentDateTime = getCurrentDateTime();
        if (currentDateTime != null) {
            try {
                controller.setCurrentDateTime(currentDateTime);
            } catch (XPathException e) {
                throw new AssertionError(e);
            }
        }
        controller.setGlobalContextItem(this.f100972a);
        controller.initializeController(this.f100973b);
        controller.setApplyFunctionConversionRulesToExternalVariables(this.f100982k);
    }

    public boolean isApplyFunctionConversionRulesToExternalVariables() {
        return this.f100982k;
    }

    public void setApplyFunctionConversionRulesToExternalVariables(boolean z) {
        this.f100982k = z;
    }

    public void setContextItem(Item item) {
        if (item == null) {
            throw new NullPointerException("Context item cannot be null");
        }
        if ((item instanceof NodeInfo) && !((NodeInfo) item).getConfiguration().isCompatible(this.f100974c)) {
            throw new IllegalArgumentException("Supplied node must be built using the same or a compatible Configuration");
        }
        this.f100972a = item;
    }

    public void setCurrentDateTime(DateTimeValue dateTimeValue) throws XPathException {
        this.f100979h = dateTimeValue;
        if (dateTimeValue.getComponent(AccessorFn.Component.TIMEZONE) == null) {
            throw new XPathException("Supplied date/time must include a timezone");
        }
    }

    @Deprecated
    public void setErrorListener(ErrorListener errorListener) {
        this.f100976e = new ErrorReporterToListener(errorListener);
    }

    public void setErrorReporter(ErrorReporter errorReporter) {
        this.f100976e = errorReporter;
    }

    public void setParameter(StructuredQName structuredQName, GroundedValue groundedValue) {
        if (this.f100973b == null) {
            this.f100973b = new GlobalParameterSet();
        }
        this.f100973b.put(structuredQName, groundedValue);
    }

    public void setResourceResolver(ResourceResolver resourceResolver) {
        this.f100975d = resourceResolver;
    }

    public void setSchemaValidationMode(int i) {
        this.f100981j = i;
    }

    public void setTraceFunctionDestination(Logger logger) {
        this.f100980i = logger;
    }

    public void setTraceListener(TraceListener traceListener) {
        this.f100977f = traceListener;
    }

    public void setUnparsedTextURIResolver(UnparsedTextURIResolver unparsedTextURIResolver) {
        this.f100978g = unparsedTextURIResolver;
    }
}
