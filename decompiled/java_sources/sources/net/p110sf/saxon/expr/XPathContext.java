package net.p110sf.saxon.expr;

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
public interface XPathContext {
    Sequence evaluateLocalVariable(int i);

    XPathContext getCaller();

    Configuration getConfiguration();

    Item getContextItem();

    Controller getController();

    Component getCurrentComponent();

    DateTimeValue getCurrentDateTime() throws NoDynamicContextException;

    XPathException getCurrentException();

    GroupIterator getCurrentGroupIterator();

    FocusIterator getCurrentIterator();

    GroupIterator getCurrentMergeGroupIterator();

    Component.C18300M getCurrentMode();

    String getCurrentOutputUri();

    RegexIterator getCurrentRegexIterator();

    Rule getCurrentTemplateRule();

    ErrorReporter getErrorReporter();

    int getImplicitTimezone();

    int getLast() throws UncheckedXPathException;

    ParameterSet getLocalParameters();

    NamePool getNamePool();

    ResourceResolver getResourceResolver();

    StackFrame getStackFrame();

    Component getTargetComponent(int i);

    int getTemporaryOutputState();

    XPathContextMajor.ThreadManager getThreadManager();

    ParameterSet getTunnelParameters();

    boolean isAtLast() throws XPathException;

    Iterator<ContextStackFrame> iterateStackFrames();

    XPathContextMajor newCleanContext();

    XPathContextMajor newContext();

    XPathContextMinor newMinorContext();

    void setCaller(XPathContext xPathContext);

    void setCurrentIterator(FocusIterator focusIterator);

    void setCurrentOutputUri(String str);

    void setLocalVariable(int i, Sequence sequence) throws XPathException;

    void setTemporaryOutputState(int i);

    FocusIterator trackFocus(SequenceIterator sequenceIterator);

    int useLocalParameter(StructuredQName structuredQName, int i, boolean z) throws XPathException;

    void waitForChildThreads() throws XPathException;
}
