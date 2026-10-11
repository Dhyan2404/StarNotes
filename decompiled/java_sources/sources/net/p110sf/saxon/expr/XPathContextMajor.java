package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import java.util.Arrays;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.PreparedStylesheet;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.TailCallLoop;
import net.p110sf.saxon.expr.XPathContextMinor;
import net.p110sf.saxon.expr.instruct.Executable;
import net.p110sf.saxon.expr.instruct.ParameterSet;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.sort.GroupIterator;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.ResourceResolver;
import net.p110sf.saxon.om.FocusTrackingIterator;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.regex.RegexIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XsltController;
import net.p110sf.saxon.trans.rules.Rule;
import net.p110sf.saxon.trans.rules.RuleManager;
import net.p110sf.saxon.tree.iter.SingletonIterator;

/* loaded from: classes11.dex */
public class XPathContextMajor extends XPathContextMinor {

    /* renamed from: e */
    public ParameterSet f99425e;

    /* renamed from: f */
    public ParameterSet f99426f;

    /* renamed from: g */
    public TailCallLoop.TailCallInfo f99427g;

    /* renamed from: h */
    public Component.C18300M f99428h;

    /* renamed from: i */
    public Rule f99429i;

    /* renamed from: j */
    public GroupIterator f99430j;

    /* renamed from: k */
    public GroupIterator f99431k;

    /* renamed from: l */
    public RegexIterator f99432l;

    /* renamed from: m */
    public ContextOriginator f99433m;

    /* renamed from: n */
    public ThreadManager f99434n = null;

    /* renamed from: o */
    public ResourceResolver f99435o;

    /* renamed from: p */
    public ErrorReporter f99436p;

    /* renamed from: q */
    public Component f99437q;

    /* renamed from: r */
    public XPathException f99438r;

    /* loaded from: classes11.dex */
    public static abstract class ThreadManager {
        public abstract void waitForChildThreads() throws XPathException;
    }

    public XPathContextMajor(Controller controller) {
        this.f99439a = controller;
        this.stackFrame = StackFrame.EMPTY;
        this.f99433m = controller;
    }

    public static XPathContextMajor newThreadContext(XPathContextMinor xPathContextMinor) {
        XPathContextMajor newContext = newContext(xPathContextMinor);
        newContext.stackFrame = xPathContextMinor.stackFrame.copy();
        return newContext;
    }

    public void createThreadManager() {
        this.f99434n = getConfiguration().makeThreadManager();
    }

    public Sequence[] getAllVariableValues() {
        return this.stackFrame.getStackFrameValues();
    }

    @Override // net.p110sf.saxon.expr.XPathContextMinor, net.p110sf.saxon.expr.XPathContext
    public Component getCurrentComponent() {
        return this.f99437q;
    }

    @Override // net.p110sf.saxon.expr.XPathContextMinor, net.p110sf.saxon.expr.XPathContext
    public XPathException getCurrentException() {
        return this.f99438r;
    }

    @Override // net.p110sf.saxon.expr.XPathContextMinor, net.p110sf.saxon.expr.XPathContext
    public GroupIterator getCurrentGroupIterator() {
        return this.f99430j;
    }

    @Override // net.p110sf.saxon.expr.XPathContextMinor, net.p110sf.saxon.expr.XPathContext
    public GroupIterator getCurrentMergeGroupIterator() {
        return this.f99431k;
    }

    @Override // net.p110sf.saxon.expr.XPathContextMinor, net.p110sf.saxon.expr.XPathContext
    public Component.C18300M getCurrentMode() {
        Component.C18300M c18300m = this.f99428h;
        if (c18300m != null) {
            return c18300m;
        }
        RuleManager ruleManager = getController().getRuleManager();
        if (ruleManager != null) {
            return ruleManager.getUnnamedMode().getDeclaringComponent();
        }
        return null;
    }

    @Override // net.p110sf.saxon.expr.XPathContextMinor, net.p110sf.saxon.expr.XPathContext
    public RegexIterator getCurrentRegexIterator() {
        return this.f99432l;
    }

    @Override // net.p110sf.saxon.expr.XPathContextMinor, net.p110sf.saxon.expr.XPathContext
    public Rule getCurrentTemplateRule() {
        return this.f99429i;
    }

    @Override // net.p110sf.saxon.expr.XPathContextMinor, net.p110sf.saxon.expr.XPathContext
    public ErrorReporter getErrorReporter() {
        ErrorReporter errorReporter = this.f99436p;
        return errorReporter == null ? this.f99439a.getErrorReporter() : errorReporter;
    }

    @Override // net.p110sf.saxon.expr.XPathContextMinor, net.p110sf.saxon.expr.XPathContext
    public ParameterSet getLocalParameters() {
        if (this.f99425e == null) {
            this.f99425e = new ParameterSet();
        }
        return this.f99425e;
    }

    public ContextOriginator getOrigin() {
        return this.f99433m;
    }

    @Override // net.p110sf.saxon.expr.XPathContextMinor, net.p110sf.saxon.expr.XPathContext
    public ResourceResolver getResourceResolver() {
        ResourceResolver resourceResolver = this.f99435o;
        return resourceResolver == null ? this.f99439a.getResourceResolver() : resourceResolver;
    }

    public TailCallLoop.TailCallInfo getTailCallInfo() {
        TailCallLoop.TailCallInfo tailCallInfo = this.f99427g;
        this.f99427g = null;
        return tailCallInfo;
    }

    @Override // net.p110sf.saxon.expr.XPathContextMinor, net.p110sf.saxon.expr.XPathContext
    public Component getTargetComponent(int i) {
        try {
            return this.f99437q.getComponentBindings().get(i).getTarget();
        } catch (IndexOutOfBoundsException e) {
            e.printStackTrace();
            throw e;
        } catch (NullPointerException e2) {
            e2.printStackTrace();
            throw e2;
        }
    }

    @Override // net.p110sf.saxon.expr.XPathContextMinor, net.p110sf.saxon.expr.XPathContext
    public ThreadManager getThreadManager() {
        return this.f99434n;
    }

    @Override // net.p110sf.saxon.expr.XPathContextMinor, net.p110sf.saxon.expr.XPathContext
    public ParameterSet getTunnelParameters() {
        return this.f99426f;
    }

    @Override // net.p110sf.saxon.expr.XPathContextMinor, net.p110sf.saxon.expr.XPathContext
    public XPathContextMajor newContext() {
        XPathContextMajor xPathContextMajor = new XPathContextMajor();
        xPathContextMajor.f99439a = this.f99439a;
        xPathContextMajor.f99440b = this.f99440b;
        xPathContextMajor.stackFrame = this.stackFrame;
        xPathContextMajor.f99425e = this.f99425e;
        xPathContextMajor.f99426f = this.f99426f;
        xPathContextMajor.f99441c = this.f99441c;
        xPathContextMajor.currentDestination = this.currentDestination;
        xPathContextMajor.f99428h = this.f99428h;
        xPathContextMajor.f99429i = this.f99429i;
        xPathContextMajor.f99432l = this.f99432l;
        xPathContextMajor.f99430j = this.f99430j;
        xPathContextMajor.f99431k = this.f99431k;
        xPathContextMajor.f99438r = this.f99438r;
        xPathContextMajor.f99442d = this;
        xPathContextMajor.f99427g = null;
        xPathContextMajor.temporaryOutputState = this.temporaryOutputState;
        xPathContextMajor.f99434n = this.f99434n;
        xPathContextMajor.f99437q = this.f99437q;
        xPathContextMajor.f99436p = this.f99436p;
        xPathContextMajor.f99435o = this.f99435o;
        return xPathContextMajor;
    }

    public void openStackFrame(SlotManager slotManager) {
        int numberOfVariables = slotManager.getNumberOfVariables();
        if (numberOfVariables == 0) {
            this.stackFrame = StackFrame.EMPTY;
        } else {
            this.stackFrame = new StackFrame(slotManager, new Sequence[numberOfVariables]);
        }
    }

    public void requestTailCall(TailCallLoop.TailCallInfo tailCallInfo, Sequence[] sequenceArr) {
        if (sequenceArr != null) {
            int length = sequenceArr.length;
            StackFrame stackFrame = this.stackFrame;
            Sequence[] sequenceArr2 = stackFrame.slots;
            if (length > sequenceArr2.length) {
                stackFrame.slots = (Sequence[]) Arrays.copyOf(sequenceArr, sequenceArr.length);
            } else {
                System.arraycopy(sequenceArr, 0, sequenceArr2, 0, sequenceArr.length);
            }
        }
        this.f99427g = tailCallInfo;
    }

    public void resetAllVariableValues(Sequence[] sequenceArr) {
        this.stackFrame.setStackFrameValues(sequenceArr);
    }

    public void resetParameterValues(Sequence[] sequenceArr) {
        System.arraycopy(sequenceArr, 0, this.stackFrame.slots, 0, sequenceArr.length);
    }

    public void resetStackFrameMap(SlotManager slotManager, int i) {
        StackFrame stackFrame = this.stackFrame;
        stackFrame.map = slotManager;
        if (stackFrame.slots.length == slotManager.getNumberOfVariables()) {
            Sequence[] sequenceArr = this.stackFrame.slots;
            Arrays.fill(sequenceArr, i, sequenceArr.length, (Object) null);
        } else {
            Sequence[] sequenceArr2 = new Sequence[slotManager.getNumberOfVariables()];
            System.arraycopy(this.stackFrame.slots, 0, sequenceArr2, 0, i);
            this.stackFrame.slots = sequenceArr2;
        }
    }

    public void setCurrentComponent(Component component) {
        this.f99437q = component;
    }

    public void setCurrentException(XPathException xPathException) {
        this.f99438r = xPathException;
    }

    public void setCurrentGroupIterator(GroupIterator groupIterator) {
        this.f99430j = groupIterator;
    }

    public void setCurrentMergeGroupIterator(GroupIterator groupIterator) {
        this.f99431k = groupIterator;
    }

    public void setCurrentMode(Component.C18300M c18300m) {
        this.f99428h = c18300m;
    }

    public void setCurrentRegexIterator(RegexIterator regexIterator) {
        this.f99432l = regexIterator;
    }

    public void setCurrentTemplateRule(Rule rule) {
        this.f99429i = rule;
    }

    public void setErrorReporter(ErrorReporter errorReporter) {
        this.f99436p = errorReporter;
    }

    public void setLocalParameters(ParameterSet parameterSet) {
        this.f99425e = parameterSet;
    }

    public void setOrigin(ContextOriginator contextOriginator) {
        this.f99433m = contextOriginator;
    }

    public void setResourceResolver(ResourceResolver resourceResolver) {
        this.f99435o = resourceResolver;
    }

    public void setStackFrame(SlotManager slotManager, Sequence[] sequenceArr) {
        this.stackFrame = new StackFrame(slotManager, sequenceArr);
        if (slotManager == null || sequenceArr.length == slotManager.getNumberOfVariables()) {
            return;
        }
        if (sequenceArr.length <= slotManager.getNumberOfVariables()) {
            this.stackFrame.slots = new Sequence[slotManager.getNumberOfVariables()];
            System.arraycopy(sequenceArr, 0, this.stackFrame.slots, 0, sequenceArr.length);
        } else {
            throw new IllegalStateException("Attempting to set more local variables (" + sequenceArr.length + ") than the stackframe can accommodate (" + slotManager.getNumberOfVariables() + MotionUtils.f31762d);
        }
    }

    public void setTunnelParameters(ParameterSet parameterSet) {
        this.f99426f = parameterSet;
    }

    @Override // net.p110sf.saxon.expr.XPathContextMinor, net.p110sf.saxon.expr.XPathContext
    public int useLocalParameter(StructuredQName structuredQName, int i, boolean z) throws XPathException {
        int index;
        ParameterSet tunnelParameters = z ? getTunnelParameters() : this.f99425e;
        if (tunnelParameters == null || (index = tunnelParameters.getIndex(structuredQName)) < 0) {
            return 0;
        }
        this.stackFrame.slots[i] = tunnelParameters.getValue(index);
        return tunnelParameters.isTypeChecked(index) ? 2 : 1;
    }

    @Override // net.p110sf.saxon.expr.XPathContextMinor, net.p110sf.saxon.expr.XPathContext
    public void waitForChildThreads() throws XPathException {
        ThreadManager threadManager = this.f99434n;
        if (threadManager != null) {
            threadManager.waitForChildThreads();
        }
    }

    public void openStackFrame(int i) {
        this.stackFrame = new StackFrame(new SlotManager(i), SequenceTool.makeSequenceArray(i));
    }

    public XPathContextMajor() {
    }

    public XPathContextMajor(Item item, Executable executable) {
        Controller controller;
        if (executable instanceof PreparedStylesheet) {
            controller = new XsltController(executable.getConfiguration(), (PreparedStylesheet) executable);
        } else {
            controller = new Controller(executable.getConfiguration(), executable);
        }
        this.f99439a = controller;
        if (item != null) {
            FocusTrackingIterator focusTrackingIterator = new FocusTrackingIterator(SingletonIterator.makeIterator(item));
            this.f99440b = focusTrackingIterator;
            focusTrackingIterator.next();
            this.f99441c = new XPathContextMinor.LastValue(1);
        }
        this.f99433m = this.f99439a;
    }

    public static XPathContextMajor newContext(XPathContextMinor xPathContextMinor) {
        XPathContextMajor xPathContextMajor = new XPathContextMajor();
        XPathContext xPathContext = xPathContextMinor;
        while (!(xPathContext instanceof XPathContextMajor)) {
            xPathContext = xPathContext.getCaller();
        }
        xPathContextMajor.f99439a = xPathContext.getController();
        xPathContextMajor.f99440b = xPathContextMinor.getCurrentIterator();
        xPathContextMajor.stackFrame = xPathContextMinor.getStackFrame();
        xPathContextMajor.f99425e = xPathContext.getLocalParameters();
        xPathContextMajor.f99426f = xPathContext.getTunnelParameters();
        xPathContextMajor.f99441c = xPathContextMinor.f99441c;
        xPathContextMajor.currentDestination = xPathContextMinor.currentDestination;
        xPathContextMajor.f99428h = xPathContext.getCurrentMode();
        xPathContextMajor.f99429i = xPathContext.getCurrentTemplateRule();
        xPathContextMajor.f99432l = xPathContext.getCurrentRegexIterator();
        xPathContextMajor.f99430j = xPathContext.getCurrentGroupIterator();
        xPathContextMajor.f99431k = xPathContext.getCurrentMergeGroupIterator();
        xPathContextMajor.f99442d = xPathContextMinor;
        xPathContextMajor.f99427g = null;
        XPathContextMajor xPathContextMajor2 = (XPathContextMajor) xPathContext;
        xPathContextMajor.f99434n = xPathContextMajor2.f99434n;
        xPathContextMajor.f99437q = xPathContextMajor2.f99437q;
        xPathContextMajor.f99436p = xPathContextMajor2.f99436p;
        xPathContextMajor.f99435o = xPathContextMajor2.f99435o;
        xPathContextMajor.temporaryOutputState = xPathContextMinor.temporaryOutputState;
        return xPathContextMajor;
    }
}
