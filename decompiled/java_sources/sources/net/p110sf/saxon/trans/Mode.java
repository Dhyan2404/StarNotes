package net.p110sf.saxon.trans;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Collections;
import java.util.Set;
import java.util.function.Predicate;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.accum.Accumulator;
import net.p110sf.saxon.expr.instruct.Actor;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.Mode;
import net.p110sf.saxon.trans.rules.BuiltInRuleSet;
import net.p110sf.saxon.trans.rules.DeepCopyRuleSet;
import net.p110sf.saxon.trans.rules.DeepSkipRuleSet;
import net.p110sf.saxon.trans.rules.FailRuleSet;
import net.p110sf.saxon.trans.rules.Rule;
import net.p110sf.saxon.trans.rules.RuleSetWithWarnings;
import net.p110sf.saxon.trans.rules.ShallowCopyRuleSet;
import net.p110sf.saxon.trans.rules.ShallowSkipRuleSet;
import net.p110sf.saxon.trans.rules.TextOnlyCopyRuleSet;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public abstract class Mode extends Actor {
    public static final int RECOVER_WITH_WARNINGS = 1;

    /* renamed from: m */
    public boolean f102318m;
    protected StructuredQName modeName;

    /* renamed from: s */
    public Set<? extends Accumulator> f102324s;
    public static final StructuredQName OMNI_MODE = new StructuredQName("saxon", NamespaceConstant.SAXON, "_omniMode");
    public static final StructuredQName UNNAMED_MODE_NAME = new StructuredQName("xsl", "http://www.w3.org/1999/XSL/Transform", "unnamed");
    public static final StructuredQName DEFAULT_MODE_NAME = new StructuredQName("xsl", "http://www.w3.org/1999/XSL/Transform", "default");

    /* renamed from: n */
    public RecoveryPolicy f102319n = RecoveryPolicy.RECOVER_WITH_WARNINGS;
    public boolean mustBeTyped = false;
    public boolean mustBeUntyped = false;

    /* renamed from: o */
    public boolean f102320o = false;

    /* renamed from: p */
    public boolean f102321p = false;

    /* renamed from: q */
    public boolean f102322q = false;

    /* renamed from: r */
    public SequenceType f102323r = null;

    @FunctionalInterface
    /* loaded from: classes11.dex */
    public interface RuleAction {
        void processRule(Rule rule) throws XPathException;
    }

    /* loaded from: classes11.dex */
    public interface RuleFilter {
        boolean testRule(Rule rule);
    }

    public Mode(StructuredQName structuredQName) {
        this.modeName = structuredQName;
    }

    /* renamed from: d */
    public static /* synthetic */ boolean m64130d(Rule rule, Rule rule2) {
        int compareRank = rule2.compareRank(rule);
        if (compareRank < 0) {
            return true;
        }
        if (compareRank == 0) {
            int compare = Integer.compare(rule2.getSequence(), rule.getSequence());
            if (compare < 0) {
                return true;
            }
            return compare == 0 && rule2.getPartNumber() < rule.getPartNumber();
        }
        return false;
    }

    /* renamed from: e */
    public static /* synthetic */ boolean m64131e(int i, int i2, Rule rule) {
        int precedence = rule.getPrecedence();
        return precedence >= i && precedence <= i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x017f, code lost:
    
        if (r2 != null) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0181, code lost:
    
        r2 = r2.processLeavingTail();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0185, code lost:
    
        if (r2 != null) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0187, code lost:
    
        r14.endCurrentItem(r4);
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0197 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x009e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.expr.instruct.TailCall applyTemplates(net.p110sf.saxon.expr.instruct.ParameterSet r22, net.p110sf.saxon.expr.instruct.ParameterSet r23, net.p110sf.saxon.om.NodeInfo r24, net.p110sf.saxon.event.Outputter r25, net.p110sf.saxon.expr.XPathContextMajor r26, net.p110sf.saxon.s9api.Location r27) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.trans.Mode.applyTemplates(net.sf.saxon.expr.instruct.ParameterSet, net.sf.saxon.expr.instruct.ParameterSet, net.sf.saxon.om.NodeInfo, net.sf.saxon.event.Outputter, net.sf.saxon.expr.XPathContextMajor, net.sf.saxon.s9api.Location):net.sf.saxon.expr.instruct.TailCall");
    }

    public abstract void computeRankings(int i) throws XPathException;

    public void explain(ExpressionPresenter expressionPresenter) throws XPathException {
        String str;
        int startElement = expressionPresenter.startElement(Constants.ATTRNAME_MODE);
        if (!isUnnamedMode()) {
            expressionPresenter.emitAttribute("name", getModeName());
        }
        expressionPresenter.emitAttribute("onNo", getCodeForBuiltInRuleSet(getBuiltInRuleSet()));
        if (isDeclaredStreamable()) {
            str = "s";
        } else {
            str = "";
        }
        if (isUnnamedMode()) {
            str = str + "d";
        }
        if (this.mustBeTyped) {
            str = str + "t";
        }
        if (this.mustBeUntyped) {
            str = str + "u";
        }
        RecoveryPolicy recoveryPolicy = this.f102319n;
        if (recoveryPolicy == RecoveryPolicy.DO_NOT_RECOVER) {
            str = str + "F";
        } else if (recoveryPolicy == RecoveryPolicy.RECOVER_WITH_WARNINGS) {
            str = str + "W";
        }
        if (!str.isEmpty()) {
            expressionPresenter.emitAttribute("flags", str);
        }
        expressionPresenter.emitAttribute("patternSlots", getStackFrameSlotsNeeded() + "");
        explainTemplateRules(expressionPresenter);
        if (startElement != expressionPresenter.endElement()) {
            throw new IllegalStateException("tree unbalanced");
        }
    }

    public abstract void explainTemplateRules(ExpressionPresenter expressionPresenter) throws XPathException;

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public final void export(ExpressionPresenter expressionPresenter) throws XPathException {
        String str;
        int startElement = expressionPresenter.startElement(Constants.ATTRNAME_MODE);
        if (!isUnnamedMode()) {
            expressionPresenter.emitAttribute("name", getModeName());
        }
        expressionPresenter.emitAttribute("onNo", getCodeForBuiltInRuleSet(getBuiltInRuleSet()));
        if (isDeclaredStreamable()) {
            str = "s";
        } else {
            str = "";
        }
        if (isUnnamedMode()) {
            str = str + "d";
        }
        if (this.mustBeTyped) {
            str = str + "t";
        }
        if (this.mustBeUntyped) {
            str = str + "u";
        }
        RecoveryPolicy recoveryPolicy = this.f102319n;
        if (recoveryPolicy == RecoveryPolicy.DO_NOT_RECOVER) {
            str = str + "F";
        } else if (recoveryPolicy == RecoveryPolicy.RECOVER_WITH_WARNINGS) {
            str = str + "W";
        }
        if (!this.f102320o) {
            str = str + "e";
        }
        if (!str.isEmpty()) {
            expressionPresenter.emitAttribute("flags", str);
        }
        exportUseAccumulators(expressionPresenter);
        expressionPresenter.emitAttribute("patternSlots", getStackFrameSlotsNeeded() + "");
        exportTemplateRules(expressionPresenter);
        if (startElement == expressionPresenter.endElement()) {
            return;
        }
        throw new IllegalStateException("Export tree unbalanced for mode " + getModeName());
    }

    public abstract void exportTemplateRules(ExpressionPresenter expressionPresenter) throws XPathException;

    public void exportUseAccumulators(ExpressionPresenter expressionPresenter) {
    }

    public Set<? extends Accumulator> getAccumulators() {
        Set<? extends Accumulator> set = this.f102324s;
        return set == null ? Collections.emptySet() : set;
    }

    public abstract SimpleMode getActivePart();

    public abstract BuiltInRuleSet getBuiltInRuleSet();

    public BuiltInRuleSet getBuiltInRuleSetForCode(String str) {
        BuiltInRuleSet textOnlyCopyRuleSet;
        if (str.startsWith("SC")) {
            textOnlyCopyRuleSet = ShallowCopyRuleSet.getInstance();
        } else if (str.startsWith("SS")) {
            textOnlyCopyRuleSet = ShallowSkipRuleSet.getInstance();
        } else if (str.startsWith("DC")) {
            textOnlyCopyRuleSet = DeepCopyRuleSet.getInstance();
        } else if (str.startsWith("DS")) {
            textOnlyCopyRuleSet = DeepSkipRuleSet.getInstance();
        } else if (str.startsWith("FF")) {
            textOnlyCopyRuleSet = FailRuleSet.getInstance();
        } else {
            if (!str.startsWith("TC")) {
                throw new IllegalArgumentException(str);
            }
            textOnlyCopyRuleSet = TextOnlyCopyRuleSet.getInstance();
        }
        return str.endsWith("+W") ? new RuleSetWithWarnings(textOnlyCopyRuleSet) : textOnlyCopyRuleSet;
    }

    public String getCodeForBuiltInRuleSet(BuiltInRuleSet builtInRuleSet) {
        if (builtInRuleSet instanceof ShallowCopyRuleSet) {
            return "SC";
        }
        if (builtInRuleSet instanceof ShallowSkipRuleSet) {
            return "SS";
        }
        if (builtInRuleSet instanceof DeepCopyRuleSet) {
            return "DC";
        }
        if (builtInRuleSet instanceof DeepSkipRuleSet) {
            return "DS";
        }
        if (builtInRuleSet instanceof FailRuleSet) {
            return "FF";
        }
        if (builtInRuleSet instanceof TextOnlyCopyRuleSet) {
            return "TC";
        }
        if (!(builtInRuleSet instanceof RuleSetWithWarnings)) {
            return "???";
        }
        return getCodeForBuiltInRuleSet(((RuleSetWithWarnings) builtInRuleSet).getBaseRuleSet()) + "+W";
    }

    public SequenceType getDefaultResultType() {
        return this.f102323r;
    }

    public abstract Set<String> getExplicitNamespaces(NamePool namePool);

    public abstract int getMaxPrecedence();

    public abstract int getMaxRank();

    public StructuredQName getModeName() {
        return this.modeName;
    }

    public String getModeTitle(boolean z) {
        if (z) {
            if (isUnnamedMode()) {
                return "The unnamed mode";
            }
            return "Mode " + getModeName().getDisplayName();
        }
        if (isUnnamedMode()) {
            return "the unnamed mode";
        }
        return "mode " + getModeName().getDisplayName();
    }

    public Rule getNextMatchRule(Item item, final Rule rule, XPathContext xPathContext) throws XPathException {
        return getRule(item, xPathContext, new Predicate() { // from class: com.sunia.HTREnginev2.poj
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m64130d;
                m64130d = Mode.m64130d(Rule.this, (Rule) obj);
                return m64130d;
            }
        });
    }

    public StructuredQName getObjectName() {
        return getModeName();
    }

    public RecoveryPolicy getRecoveryPolicy() {
        return this.f102319n;
    }

    public Rule getRule(Item item, final int i, final int i2, XPathContext xPathContext) throws XPathException {
        return getRule(item, xPathContext, new Predicate() { // from class: com.sunia.HTREnginev2.qoj
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m64131e;
                m64131e = Mode.m64131e(i, i2, (Rule) obj);
                return m64131e;
            }
        });
    }

    public abstract Rule getRule(Item item, XPathContext xPathContext) throws XPathException;

    public abstract Rule getRule(Item item, XPathContext xPathContext, Predicate<Rule> predicate) throws XPathException;

    public abstract int getStackFrameSlotsNeeded();

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public SymbolicName getSymbolicName() {
        return new SymbolicName(180, getModeName());
    }

    public boolean isDeclaredStreamable() {
        return this.f102318m;
    }

    public abstract boolean isEmpty();

    public boolean isModeTracing() {
        return this.f102322q;
    }

    public boolean isMustBeTyped() {
        return this.mustBeTyped;
    }

    public boolean isUnnamedMode() {
        return this.modeName.equals(UNNAMED_MODE_NAME);
    }

    public XPathContext makeNewContext(XPathContext xPathContext) {
        XPathContextMajor newContext = xPathContext.newContext();
        newContext.setOrigin(xPathContext.getController());
        newContext.openStackFrame(getStackFrameSlotsNeeded());
        if (!(xPathContext.getCurrentComponent().getActor() instanceof Accumulator)) {
            newContext.setCurrentComponent(xPathContext.getCurrentMode());
        }
        return newContext;
    }

    public abstract void processRules(RuleAction ruleAction) throws XPathException;

    public void setAccumulators(Set<? extends Accumulator> set) {
        this.f102324s = set;
    }

    public void setDefaultResultType(SequenceType sequenceType) {
        this.f102323r = sequenceType;
    }

    public void setHasRules(boolean z) {
        this.f102320o = z;
    }

    public void setModeTracing(boolean z) {
        this.f102322q = z;
    }

    public void setRecoveryPolicy(RecoveryPolicy recoveryPolicy) {
        this.f102319n = recoveryPolicy;
    }

    public void setStreamable(boolean z) {
        this.f102318m = z;
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public Component.C18300M getDeclaringComponent() {
        return (Component.C18300M) super.getDeclaringComponent();
    }
}
