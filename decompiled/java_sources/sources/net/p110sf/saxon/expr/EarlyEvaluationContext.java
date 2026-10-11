package net.p110sf.saxon.expr;

import java.util.Collections;
import java.util.Iterator;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.ParameterSet;
import net.p110sf.saxon.expr.sort.GroupIterator;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.ResourceResolver;
import net.p110sf.saxon.om.FocusIterator;
import net.p110sf.saxon.om.FocusTrackingIterator;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.regex.RegexIterator;
import net.p110sf.saxon.trace.ContextStackFrame;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.rules.Rule;
import net.p110sf.saxon.value.DateTimeValue;

/* loaded from: classes11.dex */
public class EarlyEvaluationContext implements XPathContext {

    /* renamed from: a */
    public final Configuration f99236a;

    public EarlyEvaluationContext(Configuration configuration) {
        this.f99236a = configuration;
    }

    /* renamed from: a */
    public final void m62564a() {
        throw new UnsupportedOperationException(new NoDynamicContextException("Internal error: early evaluation of subexpression with no context"));
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public Sequence evaluateLocalVariable(int i) {
        m62564a();
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public XPathContext getCaller() {
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public Configuration getConfiguration() {
        return this.f99236a;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public Item getContextItem() {
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public Controller getController() {
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public Component getCurrentComponent() {
        m62564a();
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public DateTimeValue getCurrentDateTime() throws NoDynamicContextException {
        throw new NoDynamicContextException("current-dateTime");
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public XPathException getCurrentException() {
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public GroupIterator getCurrentGroupIterator() {
        m62564a();
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public FocusTrackingIterator getCurrentIterator() {
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public GroupIterator getCurrentMergeGroupIterator() {
        m62564a();
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public Component.C18300M getCurrentMode() {
        m62564a();
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public String getCurrentOutputUri() {
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public RegexIterator getCurrentRegexIterator() {
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public Rule getCurrentTemplateRule() {
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public ErrorReporter getErrorReporter() {
        return this.f99236a.makeErrorReporter();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public int getImplicitTimezone() {
        return Integer.MAX_VALUE;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public int getLast() throws UncheckedXPathException {
        XPathException xPathException = new XPathException("The context item is absent");
        xPathException.setErrorCode("XPDY0002");
        throw new UncheckedXPathException(xPathException);
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public ParameterSet getLocalParameters() {
        m62564a();
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public NamePool getNamePool() {
        return this.f99236a.getNamePool();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public ResourceResolver getResourceResolver() {
        return this.f99236a.getResourceResolver();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public StackFrame getStackFrame() {
        m62564a();
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public Component getTargetComponent(int i) {
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public int getTemporaryOutputState() {
        return 0;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public XPathContextMajor.ThreadManager getThreadManager() {
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public ParameterSet getTunnelParameters() {
        m62564a();
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public boolean isAtLast() throws XPathException {
        XPathException xPathException = new XPathException("The context item is absent");
        xPathException.setErrorCode("XPDY0002");
        throw xPathException;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public Iterator<ContextStackFrame> iterateStackFrames() {
        return Collections.emptyIterator();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public XPathContextMajor newCleanContext() {
        m62564a();
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public XPathContextMajor newContext() {
        return new Controller(this.f99236a).newXPathContext();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public XPathContextMinor newMinorContext() {
        return newContext().newMinorContext();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public void setCaller(XPathContext xPathContext) {
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public void setCurrentIterator(FocusIterator focusIterator) {
        m62564a();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public void setCurrentOutputUri(String str) {
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public void setLocalVariable(int i, Sequence sequence) {
        m62564a();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public void setTemporaryOutputState(int i) {
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public FocusIterator trackFocus(SequenceIterator sequenceIterator) {
        m62564a();
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public int useLocalParameter(StructuredQName structuredQName, int i, boolean z) {
        return 0;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public void waitForChildThreads() throws XPathException {
        getCaller().waitForChildThreads();
    }
}
