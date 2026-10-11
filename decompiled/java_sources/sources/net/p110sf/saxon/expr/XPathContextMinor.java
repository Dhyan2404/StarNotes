package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
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
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.regex.RegexIterator;
import net.p110sf.saxon.trace.ContextStackFrame;
import net.p110sf.saxon.trace.ContextStackIterator;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.rules.Rule;
import net.p110sf.saxon.tree.iter.LookaheadIterator;
import net.p110sf.saxon.value.DateTimeValue;

/* loaded from: classes11.dex */
public class XPathContextMinor implements XPathContext {

    /* renamed from: a */
    public Controller f99439a;

    /* renamed from: b */
    public FocusIterator f99440b;
    protected StackFrame stackFrame;

    /* renamed from: c */
    public LastValue f99441c = null;

    /* renamed from: d */
    public XPathContext f99442d = null;
    protected String currentDestination = "";
    protected int temporaryOutputState = 0;

    /* loaded from: classes11.dex */
    public static class LastValue {
        public final int value;

        public LastValue(int i) {
            this.value = i;
        }
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public final Sequence evaluateLocalVariable(int i) {
        return this.stackFrame.slots[i];
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public final XPathContext getCaller() {
        return this.f99442d;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public final Configuration getConfiguration() {
        return this.f99439a.getConfiguration();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public final Item getContextItem() {
        FocusIterator focusIterator = this.f99440b;
        if (focusIterator == null) {
            return null;
        }
        return focusIterator.current();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public final Controller getController() {
        return this.f99439a;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public Component getCurrentComponent() {
        return this.f99442d.getCurrentComponent();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public DateTimeValue getCurrentDateTime() {
        return this.f99439a.getCurrentDateTime();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public XPathException getCurrentException() {
        return this.f99442d.getCurrentException();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public GroupIterator getCurrentGroupIterator() {
        return getCaller().getCurrentGroupIterator();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public final FocusIterator getCurrentIterator() {
        return this.f99440b;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public GroupIterator getCurrentMergeGroupIterator() {
        return getCaller().getCurrentMergeGroupIterator();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public Component.C18300M getCurrentMode() {
        return getCaller().getCurrentMode();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public String getCurrentOutputUri() {
        return this.currentDestination;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public RegexIterator getCurrentRegexIterator() {
        return getCaller().getCurrentRegexIterator();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public Rule getCurrentTemplateRule() {
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public ErrorReporter getErrorReporter() {
        return this.f99442d.getErrorReporter();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public final int getImplicitTimezone() {
        return this.f99439a.getImplicitTimezone();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public final int getLast() throws UncheckedXPathException {
        FocusIterator focusIterator = this.f99440b;
        if (focusIterator == null) {
            XPathException xPathException = new XPathException("The context item is absent, so last() is undefined");
            xPathException.setXPathContext(this);
            xPathException.setErrorCode("XPDY0002");
            throw new UncheckedXPathException(xPathException);
        }
        int i = this.f99441c.value;
        if (i >= 0) {
            return i;
        }
        try {
            int length = focusIterator.getLength();
            this.f99441c = new LastValue(length);
            return length;
        } catch (XPathException e) {
            throw new UncheckedXPathException(e);
        }
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public ParameterSet getLocalParameters() {
        return getCaller().getLocalParameters();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public final NamePool getNamePool() {
        return this.f99439a.getConfiguration().getNamePool();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public ResourceResolver getResourceResolver() {
        return this.f99442d.getResourceResolver();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public StackFrame getStackFrame() {
        return this.stackFrame;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public Component getTargetComponent(int i) {
        return getCaller().getTargetComponent(i);
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public int getTemporaryOutputState() {
        return this.temporaryOutputState;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public XPathContextMajor.ThreadManager getThreadManager() {
        return this.f99442d.getThreadManager();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public ParameterSet getTunnelParameters() {
        return getCaller().getTunnelParameters();
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public final boolean isAtLast() throws XPathException {
        FocusIterator focusIterator = this.f99440b;
        if ((focusIterator instanceof LookaheadIterator) && ((LookaheadIterator) focusIterator).supportsHasNext()) {
            return !((LookaheadIterator) this.f99440b).hasNext();
        }
        try {
            return this.f99440b.position() == getLast();
        } catch (UncheckedXPathException e) {
            throw XPathException.makeXPathException(e);
        }
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public Iterator<ContextStackFrame> iterateStackFrames() {
        return new ContextStackIterator(this);
    }

    public void makeStackFrameMutable() {
        if (this.stackFrame == StackFrame.EMPTY) {
            this.stackFrame = new StackFrame(null, SequenceTool.makeSequenceArray(0));
        }
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public XPathContextMajor newCleanContext() {
        XPathContextMajor xPathContextMajor = new XPathContextMajor(getController());
        xPathContextMajor.setCaller(this);
        return xPathContextMajor;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public XPathContextMajor newContext() {
        return XPathContextMajor.newContext(this);
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public XPathContextMinor newMinorContext() {
        XPathContextMinor xPathContextMinor = new XPathContextMinor();
        xPathContextMinor.f99439a = this.f99439a;
        xPathContextMinor.f99442d = this;
        xPathContextMinor.f99440b = this.f99440b;
        xPathContextMinor.f99441c = this.f99441c;
        xPathContextMinor.stackFrame = this.stackFrame;
        xPathContextMinor.currentDestination = this.currentDestination;
        xPathContextMinor.temporaryOutputState = this.temporaryOutputState;
        return xPathContextMinor;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public void setCaller(XPathContext xPathContext) {
        this.f99442d = xPathContext;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public void setCurrentIterator(FocusIterator focusIterator) {
        this.f99440b = focusIterator;
        this.f99441c = new LastValue(-1);
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public void setCurrentOutputUri(String str) {
        this.currentDestination = str;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public final void setLocalVariable(int i, Sequence sequence) throws XPathException {
        try {
            this.stackFrame.slots[i] = sequence.makeRepeatable();
        } catch (ArrayIndexOutOfBoundsException unused) {
            if (i == -999) {
                throw new AssertionError("Internal error: Cannot set local variable: no slot allocated");
            }
            throw new AssertionError("Internal error: Cannot set local variable (slot " + i + " of " + getStackFrame().getStackFrameValues().length + MotionUtils.f31762d);
        }
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public void setTemporaryOutputState(int i) {
        this.temporaryOutputState = i;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public FocusIterator trackFocus(SequenceIterator sequenceIterator) {
        FocusTrackingIterator apply = this.f99439a.getFocusTrackerFactory(false).apply(sequenceIterator);
        setCurrentIterator(apply);
        return apply;
    }

    public FocusIterator trackFocusMultithreaded(SequenceIterator sequenceIterator) {
        FocusTrackingIterator apply = this.f99439a.getFocusTrackerFactory(true).apply(sequenceIterator);
        setCurrentIterator(apply);
        return apply;
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public int useLocalParameter(StructuredQName structuredQName, int i, boolean z) throws XPathException {
        return getCaller().useLocalParameter(structuredQName, i, z);
    }

    @Override // net.p110sf.saxon.expr.XPathContext
    public synchronized void waitForChildThreads() throws XPathException {
        getCaller().waitForChildThreads();
    }
}
