package net.p110sf.saxon.trans;

import com.caverock.androidsvg.SVGParser;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Predicate;
import net.p110sf.saxon.expr.ComponentBinding;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.Actor;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.instruct.TemplateRule;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeTestPattern;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.style.StylesheetModule;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.Mode;
import net.p110sf.saxon.trans.SimpleMode;
import net.p110sf.saxon.trans.rules.BuiltInRuleSet;
import net.p110sf.saxon.trans.rules.Rule;
import net.p110sf.saxon.trans.rules.RuleChain;
import net.p110sf.saxon.trans.rules.RuleSearchState;
import net.p110sf.saxon.trans.rules.RuleTarget;
import net.p110sf.saxon.trans.rules.TextOnlyCopyRuleSet;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class SimpleMode extends Mode {

    /* renamed from: J */
    public static final /* synthetic */ boolean f102339J = false;
    protected RuleChain atomicValueRuleChain;
    protected RuleChain commentRuleChain;
    protected RuleChain documentRuleChain;
    protected RuleChain functionItemRuleChain;
    protected final RuleChain genericRuleChain;
    protected IntHashMap<RuleChain> namedAttributeRuleChains;
    protected IntHashMap<RuleChain> namedElementRuleChains;
    protected RuleChain namespaceRuleChain;
    protected RuleChain processingInstructionRuleChain;
    protected Map<StructuredQName, RuleChain> qNamedAttributeRuleChains;
    protected Map<StructuredQName, RuleChain> qNamedElementRuleChains;

    /* renamed from: t */
    public BuiltInRuleSet f102340t;
    protected RuleChain textRuleChain;

    /* renamed from: u */
    public Rule f102341u;
    protected RuleChain unnamedAttributeRuleChain;
    protected RuleChain unnamedElementRuleChain;

    /* renamed from: v */
    public int f102342v;

    /* renamed from: w */
    public int f102343w;

    /* renamed from: x */
    public int f102344x;

    /* renamed from: y */
    public final Map<String, Integer> f102345y;

    /* renamed from: z */
    public final Map<String, String> f102346z;

    /* loaded from: classes11.dex */
    public interface RuleGroupAction {
        void end();

        void setLabel(String str);

        void start();

        void start(int i);
    }

    /* renamed from: net.sf.saxon.trans.SimpleMode$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18530a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f102347a;

        static {
            int[] iArr = new int[RecoveryPolicy.values().length];
            f102347a = iArr;
            try {
                iArr[RecoveryPolicy.DO_NOT_RECOVER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f102347a[RecoveryPolicy.RECOVER_WITH_WARNINGS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f102347a[RecoveryPolicy.RECOVER_SILENTLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: net.sf.saxon.trans.SimpleMode$c */
    /* loaded from: classes11.dex */
    public static class C18532c {

        /* renamed from: a */
        public ArrayList<Rule> f102350a = new ArrayList<>(100);

        /* renamed from: b */
        public final int f102351b;

        public C18532c(int i) {
            this.f102351b = i;
        }

        /* renamed from: b */
        public void m64489b(Rule rule) {
            this.f102350a.add(rule);
        }

        /* renamed from: c */
        public void m64490c() {
            this.f102350a.sort(new Comparator() { // from class: com.sunia.HTREnginev2.nsm
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int compareComputedRank;
                    compareComputedRank = ((Rule) obj).compareComputedRank((Rule) obj2);
                    return compareComputedRank;
                }
            });
            int i = this.f102351b;
            for (int i2 = 0; i2 < this.f102350a.size(); i2++) {
                if (i2 > 0 && this.f102350a.get(i2 - 1).compareComputedRank(this.f102350a.get(i2)) != 0) {
                    i++;
                }
                this.f102350a.get(i2).setRank(i);
            }
        }

        /* renamed from: d */
        public int m64491d() {
            return this.f102350a.size();
        }
    }

    public SimpleMode(StructuredQName structuredQName) {
        super(structuredQName);
        this.genericRuleChain = new RuleChain();
        this.atomicValueRuleChain = new RuleChain();
        this.functionItemRuleChain = new RuleChain();
        this.documentRuleChain = new RuleChain();
        this.textRuleChain = new RuleChain();
        this.commentRuleChain = new RuleChain();
        this.processingInstructionRuleChain = new RuleChain();
        this.namespaceRuleChain = new RuleChain();
        this.unnamedElementRuleChain = new RuleChain();
        this.unnamedAttributeRuleChain = new RuleChain();
        this.namedElementRuleChains = new IntHashMap<>(32);
        this.namedAttributeRuleChains = new IntHashMap<>(8);
        this.f102340t = TextOnlyCopyRuleSet.getInstance();
        this.f102343w = 0;
        this.f102345y = new HashMap();
        this.f102346z = new HashMap();
    }

    public static void copyRules(SimpleMode simpleMode, final SimpleMode simpleMode2) {
        try {
            simpleMode.processRules(new Mode.RuleAction() { // from class: com.sunia.HTREnginev2.msm
                @Override // net.sf.saxon.trans.Mode.RuleAction
                public final void processRule(Rule rule) {
                    SimpleMode.m64480o(SimpleMode.this, rule);
                }
            });
            simpleMode2.f102341u = simpleMode.f102341u;
            simpleMode2.f102342v = simpleMode.f102342v;
        } catch (XPathException e) {
            throw new AssertionError(e);
        }
    }

    public static void forceAllocateAllBindingSlots(final StylesheetPackage stylesheetPackage, final SimpleMode simpleMode, final List<ComponentBinding> list) {
        final HashSet hashSet = new HashSet();
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        try {
            simpleMode.processRules(new Mode.RuleAction() { // from class: com.sunia.HTREnginev2.lsm
                @Override // net.sf.saxon.trans.Mode.RuleAction
                public final void processRule(Rule rule) {
                    SimpleMode.m64483r(identityHashMap, stylesheetPackage, simpleMode, list, hashSet, rule);
                }
            });
        } catch (XPathException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: m */
    public static void m64478m(NamePool namePool, IntHashMap<RuleChain> intHashMap, Map<StructuredQName, RuleChain> map) {
        IntIterator keyIterator = intHashMap.keyIterator();
        while (keyIterator.hasNext()) {
            int next = keyIterator.next();
            map.put(namePool.getStructuredQName(next), intHashMap.get(next));
        }
    }

    /* renamed from: n */
    public static /* synthetic */ void m64479n(SlotManager slotManager, List list, Rule rule) throws XPathException {
        list.set(0, Integer.valueOf(Math.max(((Integer) list.get(0)).intValue(), rule.getPattern().allocateSlots(slotManager, 0))));
    }

    /* renamed from: o */
    public static /* synthetic */ void m64480o(SimpleMode simpleMode, Rule rule) throws XPathException {
        Rule copy = rule.copy(false);
        simpleMode.addRule(copy.getPattern(), copy);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ void m64481p(ExpressionPresenter expressionPresenter, Rule rule) throws XPathException {
        rule.export(expressionPresenter, isDeclaredStreamable());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public /* synthetic */ void m64482q(ExpressionPresenter expressionPresenter, Rule rule) throws XPathException {
        rule.export(expressionPresenter, isDeclaredStreamable());
    }

    /* renamed from: r */
    public static /* synthetic */ void m64483r(IdentityHashMap identityHashMap, StylesheetPackage stylesheetPackage, SimpleMode simpleMode, List list, Set set, Rule rule) throws XPathException {
        Pattern pattern = rule.getPattern();
        if (!identityHashMap.containsKey(pattern)) {
            Actor.allocateBindingSlotsRecursive(stylesheetPackage, simpleMode, pattern, list);
            identityHashMap.put(pattern, Boolean.TRUE);
        }
        TemplateRule templateRule = (TemplateRule) rule.getAction();
        if (templateRule.getBody() == null || set.contains(templateRule)) {
            return;
        }
        Actor.allocateBindingSlotsRecursive(stylesheetPackage, simpleMode, templateRule.getBody(), list);
        set.add(templateRule);
    }

    /* renamed from: s */
    public static /* synthetic */ void m64484s(List list, Rule rule) throws XPathException {
        if (rule.getPrecedence() > ((Integer) list.get(0)).intValue()) {
            list.set(0, Integer.valueOf(rule.getPrecedence()));
        }
    }

    /* renamed from: t */
    public static String m64485t(Pattern pattern) {
        return Whitespace.collapseWhitespace(StringView.m63901of(pattern.toShortString()).tidy()).toString();
    }

    public void addRule(Pattern pattern, RuleTarget ruleTarget, StylesheetModule stylesheetModule, int i, double d, int i2, int i3) {
        int primitiveType;
        this.f102320o = true;
        if (pattern.getItemType() instanceof ErrorType) {
            return;
        }
        int hashCode = stylesheetModule.hashCode();
        Rule makeRule = makeRule(pattern, ruleTarget, i, stylesheetModule.getMinImportPrecedence(), d, i2, i3);
        if (pattern instanceof NodeTestPattern) {
            ItemType itemType = pattern.getItemType();
            if (itemType instanceof AnyNodeTest) {
                makeRule.setAlwaysMatches(true);
            } else if (itemType instanceof NodeKindTest) {
                makeRule.setAlwaysMatches(true);
            } else if ((itemType instanceof NameTest) && ((primitiveType = itemType.getPrimitiveType()) == 1 || primitiveType == 2)) {
                makeRule.setAlwaysMatches(true);
            }
        }
        this.f102341u = makeRule;
        this.f102342v = hashCode;
        addRule(pattern, makeRule);
    }

    public void addRuleToNamedOrUnnamedChain(Rule rule, int i, RuleChain ruleChain, IntHashMap<RuleChain> intHashMap) {
        if (i == -1) {
            m64486l(rule, ruleChain);
            return;
        }
        RuleChain ruleChain2 = intHashMap.get(i);
        if (ruleChain2 == null) {
            intHashMap.put(i, new RuleChain(rule));
        } else {
            m64486l(rule, ruleChain2);
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public void allocateAllBindingSlots(StylesheetPackage stylesheetPackage) {
        if (getDeclaringComponent().getDeclaringPackage() != stylesheetPackage || this.f102321p) {
            return;
        }
        forceAllocateAllBindingSlots(stylesheetPackage, this, getDeclaringComponent().getComponentBindings());
        this.f102321p = true;
    }

    public void allocateAllPatternSlots() {
        final ArrayList arrayList = new ArrayList(1);
        arrayList.add(0);
        final SlotManager slotManager = new SlotManager();
        try {
            processRules(new Mode.RuleAction() { // from class: com.sunia.HTREnginev2.gsm
                @Override // net.sf.saxon.trans.Mode.RuleAction
                public final void processRule(Rule rule) {
                    SimpleMode.m64479n(SlotManager.this, arrayList, rule);
                }
            });
            this.f102343w = ((Integer) arrayList.get(0)).intValue();
        } catch (XPathException e) {
            throw new AssertionError(e);
        }
    }

    public void allocatePatternSlots(int i) {
        this.f102343w = Math.max(this.f102343w, i);
    }

    @Override // net.p110sf.saxon.trans.Mode
    public void computeRankings(int i) throws XPathException {
        final C18532c c18532c = new C18532c(i);
        processRules(new Mode.RuleAction() { // from class: com.sunia.HTREnginev2.ksm
            @Override // net.sf.saxon.trans.Mode.RuleAction
            public final void processRule(Rule rule) {
                SimpleMode.C18532c.this.m64489b(rule);
            }
        });
        c18532c.m64490c();
        this.f102344x = i + c18532c.m64491d();
    }

    public void computeStreamability() throws XPathException {
    }

    @Override // net.p110sf.saxon.trans.Mode
    public void explainTemplateRules(final ExpressionPresenter expressionPresenter) throws XPathException {
        try {
            processRules(new Mode.RuleAction() { // from class: com.sunia.HTREnginev2.ism
                @Override // net.sf.saxon.trans.Mode.RuleAction
                public final void processRule(Rule rule) {
                    SimpleMode.this.m64481p(expressionPresenter, rule);
                }
            }, new C18531b(expressionPresenter));
        } catch (XPathException unused) {
        }
    }

    @Override // net.p110sf.saxon.trans.Mode
    public void exportTemplateRules(final ExpressionPresenter expressionPresenter) throws XPathException {
        processRules(new Mode.RuleAction() { // from class: com.sunia.HTREnginev2.hsm
            @Override // net.sf.saxon.trans.Mode.RuleAction
            public final void processRule(Rule rule) {
                SimpleMode.this.m64482q(expressionPresenter, rule);
            }
        });
    }

    @Override // net.p110sf.saxon.trans.Mode
    public SimpleMode getActivePart() {
        return this;
    }

    @Override // net.p110sf.saxon.trans.Mode
    public BuiltInRuleSet getBuiltInRuleSet() {
        return this.f102340t;
    }

    @Override // net.p110sf.saxon.trans.Mode
    public Set<String> getExplicitNamespaces(NamePool namePool) {
        HashSet hashSet = new HashSet();
        IntIterator keyIterator = this.namedElementRuleChains.keyIterator();
        while (keyIterator.hasNext()) {
            hashSet.add(namePool.getURI(keyIterator.next()));
        }
        return hashSet;
    }

    public String getLabel() {
        if (isUnnamedMode()) {
            return "the unnamed mode";
        }
        return "mode " + this.modeName.getDisplayName();
    }

    @Override // net.p110sf.saxon.trans.Mode
    public int getMaxPrecedence() {
        try {
            final ArrayList arrayList = new ArrayList(1);
            arrayList.add(0);
            processRules(new Mode.RuleAction() { // from class: com.sunia.HTREnginev2.jsm
                @Override // net.sf.saxon.trans.Mode.RuleAction
                public final void processRule(Rule rule) {
                    SimpleMode.m64484s(arrayList, rule);
                }
            });
            return ((Integer) arrayList.get(0)).intValue();
        } catch (XPathException e) {
            throw new AssertionError(e);
        }
    }

    @Override // net.p110sf.saxon.trans.Mode
    public int getMaxRank() {
        return this.f102344x;
    }

    public RuleChain getNamedRuleChain(XPathContext xPathContext, int i, String str, String str2) {
        synchronized (this) {
            if (this.qNamedElementRuleChains == null) {
                this.qNamedElementRuleChains = new HashMap(this.namedElementRuleChains.size());
                this.qNamedAttributeRuleChains = new HashMap(this.namedAttributeRuleChains.size());
                NamePool namePool = xPathContext.getNamePool();
                m64478m(namePool, this.namedElementRuleChains, this.qNamedElementRuleChains);
                m64478m(namePool, this.namedAttributeRuleChains, this.qNamedAttributeRuleChains);
            }
        }
        return (i == 1 ? this.qNamedElementRuleChains : this.qNamedAttributeRuleChains).get(new StructuredQName("", str, str2));
    }

    public String getPropertyValue(String str) {
        return this.f102346z.get(str);
    }

    @Override // net.p110sf.saxon.trans.Mode
    public Rule getRule(Item item, XPathContext xPathContext) throws XPathException {
        RuleChain ruleChain;
        RuleChain namedRuleChain;
        RuleChain namedRuleChain2;
        if (this.f102343w > 0) {
            xPathContext = makeNewContext(xPathContext);
        }
        if (item instanceof NodeInfo) {
            NodeInfo nodeInfo = (NodeInfo) item;
            int nodeKind = nodeInfo.getNodeKind();
            if (nodeKind == 1) {
                ruleChain = this.unnamedElementRuleChain;
                if (nodeInfo.hasFingerprint()) {
                    namedRuleChain = this.namedElementRuleChains.get(nodeInfo.getFingerprint());
                } else {
                    namedRuleChain = getNamedRuleChain(xPathContext, 1, nodeInfo.getURI(), nodeInfo.getLocalPart());
                }
                if (namedRuleChain != null) {
                    r1 = searchRuleChain(nodeInfo, xPathContext, null, namedRuleChain);
                }
            } else if (nodeKind == 2) {
                ruleChain = this.unnamedAttributeRuleChain;
                if (nodeInfo.hasFingerprint()) {
                    namedRuleChain2 = this.namedAttributeRuleChains.get(nodeInfo.getFingerprint());
                } else {
                    namedRuleChain2 = getNamedRuleChain(xPathContext, 2, nodeInfo.getURI(), nodeInfo.getLocalPart());
                }
                if (namedRuleChain2 != null) {
                    r1 = searchRuleChain(nodeInfo, xPathContext, null, namedRuleChain2);
                }
            } else if (nodeKind == 3) {
                ruleChain = this.textRuleChain;
            } else if (nodeKind == 7) {
                ruleChain = this.processingInstructionRuleChain;
            } else if (nodeKind == 8) {
                ruleChain = this.commentRuleChain;
            } else if (nodeKind == 9) {
                ruleChain = this.documentRuleChain;
            } else if (nodeKind == 13) {
                ruleChain = this.namespaceRuleChain;
            } else {
                throw new AssertionError("Unknown node kind");
            }
            if (ruleChain != null) {
                r1 = searchRuleChain(nodeInfo, xPathContext, r1, ruleChain);
            }
            return searchRuleChain(nodeInfo, xPathContext, r1, this.genericRuleChain);
        }
        if (item instanceof AtomicValue) {
            RuleChain ruleChain2 = this.atomicValueRuleChain;
            return searchRuleChain(item, xPathContext, ruleChain2 != null ? searchRuleChain(item, xPathContext, null, ruleChain2) : null, this.genericRuleChain);
        }
        if (!(item instanceof Function)) {
            return null;
        }
        RuleChain ruleChain3 = this.functionItemRuleChain;
        return searchRuleChain(item, xPathContext, ruleChain3 != null ? searchRuleChain(item, xPathContext, null, ruleChain3) : null, this.genericRuleChain);
    }

    @Override // net.p110sf.saxon.trans.Mode
    public int getStackFrameSlotsNeeded() {
        return this.f102343w;
    }

    public void invertStreamableTemplates() throws XPathException {
    }

    @Override // net.p110sf.saxon.trans.Mode
    public boolean isEmpty() {
        return !this.f102320o;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m64486l(net.p110sf.saxon.trans.rules.Rule r9, net.p110sf.saxon.trans.rules.RuleChain r10) {
        /*
            r8 = this;
            net.sf.saxon.trans.rules.Rule r8 = r10.head()
            if (r8 != 0) goto La
            r10.setHead(r9)
            goto L4b
        La:
            int r8 = r9.getPrecedence()
            double r0 = r9.getPriority()
            net.sf.saxon.trans.rules.Rule r2 = r10.head()
            r3 = 0
            r4 = r3
        L18:
            if (r2 == 0) goto L43
            int r5 = r2.getPrecedence()
            if (r5 < r8) goto L37
            int r5 = r2.getPrecedence()
            if (r5 != r8) goto L2f
            double r5 = r2.getPriority()
            int r5 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r5 > 0) goto L2f
            goto L37
        L2f:
            net.sf.saxon.trans.rules.Rule r4 = r2.getNext()
            r7 = r4
            r4 = r2
            r2 = r7
            goto L18
        L37:
            r9.setNext(r2)
            if (r4 != 0) goto L40
            r10.setHead(r9)
            goto L43
        L40:
            r4.setNext(r9)
        L43:
            if (r2 != 0) goto L4b
            r4.setNext(r9)
            r9.setNext(r3)
        L4b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.trans.SimpleMode.m64486l(net.sf.saxon.trans.rules.Rule, net.sf.saxon.trans.rules.RuleChain):void");
    }

    public Rule makeRule(Pattern pattern, RuleTarget ruleTarget, int i, int i2, double d, int i3, int i4) {
        return new Rule(pattern, ruleTarget, i, i2, d, i3, i4);
    }

    public RuleSearchState makeRuleSearchState(RuleChain ruleChain, XPathContext xPathContext) {
        return new RuleSearchState();
    }

    public void optimizeRules() {
    }

    public void prepareStreamability() throws XPathException {
    }

    public void processRuleChain(RuleChain ruleChain, Mode.RuleAction ruleAction) throws XPathException {
        for (Rule head = ruleChain == null ? null : ruleChain.head(); head != null; head = head.getNext()) {
            ruleAction.processRule(head);
        }
    }

    public void processRuleChains(IntHashMap<RuleChain> intHashMap, Mode.RuleAction ruleAction, RuleGroupAction ruleGroupAction) throws XPathException {
        if (intHashMap.size() > 0) {
            if (ruleGroupAction != null) {
                ruleGroupAction.start();
            }
            IntIterator keyIterator = intHashMap.keyIterator();
            while (keyIterator.hasNext()) {
                int next = keyIterator.next();
                if (ruleGroupAction != null) {
                    ruleGroupAction.start(next);
                }
                processRuleChain(intHashMap.get(next), ruleAction, null);
                if (ruleGroupAction != null) {
                    ruleGroupAction.end();
                }
            }
            if (ruleGroupAction != null) {
                ruleGroupAction.end();
            }
        }
    }

    @Override // net.p110sf.saxon.trans.Mode
    public void processRules(Mode.RuleAction ruleAction) throws XPathException {
        processRules(ruleAction, null);
    }

    public void reportAmbiguity(Item item, Rule rule, Rule rule2, XPathContext xPathContext) throws XPathException {
        String str;
        if (getRecoveryPolicy() == RecoveryPolicy.RECOVER_SILENTLY) {
            return;
        }
        if (rule.getAction() == rule2.getAction() && rule.getSequence() == rule2.getSequence()) {
            return;
        }
        String path = item instanceof NodeInfo ? Navigator.getPath((NodeInfo) item) : item.toShortString();
        Pattern pattern = rule.getPattern();
        Pattern pattern2 = rule2.getPattern();
        if (rule.getAction() == rule2.getAction()) {
            str = "Ambiguous rule match for " + path + ". Matches \"" + m64485t(pattern) + "\" on line " + pattern.getLocation().getLineNumber() + " of " + pattern.getLocation().getSystemId() + ", a rule which appears in the stylesheet more than once, because the containing module was included more than once";
        } else {
            str = "Ambiguous rule match for " + path + "\nMatches both \"" + m64485t(pattern) + "\" on line " + pattern.getLocation().getLineNumber() + " of " + pattern.getLocation().getSystemId() + "\nand \"" + m64485t(pattern2) + "\" on line " + pattern2.getLocation().getLineNumber() + " of " + pattern2.getLocation().getSystemId();
        }
        int i = C18530a.f102347a[getRecoveryPolicy().ordinal()];
        if (i == 1) {
            throw new XPathException(str, "XTDE0540", getLocation());
        }
        if (i != 2) {
            return;
        }
        xPathContext.getController().warning(str, "XTDE0540", getLocation());
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0099, code lost:
    
        if (r5.equals(com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants.CONFLICT_BEHAVIOR_FAIL) == false) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void resolveProperties(net.p110sf.saxon.trans.rules.RuleManager r15) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.trans.SimpleMode.resolveProperties(net.sf.saxon.trans.rules.RuleManager):void");
    }

    public boolean ruleMatches(Rule rule, Item item, XPathContextMajor xPathContextMajor, RuleSearchState ruleSearchState) throws XPathException {
        return rule.isAlwaysMatches() || rule.matches(item, xPathContextMajor);
    }

    public Rule searchRuleChain(Item item, XPathContext xPathContext, Rule rule, RuleChain ruleChain) throws XPathException {
        while (!(xPathContext instanceof XPathContextMajor)) {
            xPathContext = xPathContext.getCaller();
        }
        RuleSearchState makeRuleSearchState = makeRuleSearchState(ruleChain, xPathContext);
        for (Rule head = ruleChain == null ? null : ruleChain.head(); head != null; head = head.getNext()) {
            if (rule != null) {
                int compareRank = head.compareRank(rule);
                if (compareRank < 0) {
                    return rule;
                }
                if (compareRank == 0) {
                    if (ruleMatches(head, item, (XPathContextMajor) xPathContext, makeRuleSearchState)) {
                        if (head.getSequence() != rule.getSequence()) {
                            reportAmbiguity(item, rule, head, xPathContext);
                        }
                        int compare = Integer.compare(rule.getSequence(), head.getSequence());
                        if (compare > 0) {
                            return rule;
                        }
                        if (compare < 0) {
                            return head;
                        }
                        if (rule.getPartNumber() > head.getPartNumber()) {
                            return rule;
                        }
                        return head;
                    }
                } else {
                    if (!ruleMatches(head, item, (XPathContextMajor) xPathContext, makeRuleSearchState)) {
                    }
                    rule = head;
                }
            } else if (ruleMatches(head, item, (XPathContextMajor) xPathContext, makeRuleSearchState)) {
                if (getRecoveryPolicy() == RecoveryPolicy.RECOVER_SILENTLY) {
                    return head;
                }
                rule = head;
            } else {
                continue;
            }
        }
        return rule;
    }

    public void setBuiltInRuleSet(BuiltInRuleSet builtInRuleSet) {
        this.f102340t = builtInRuleSet;
        this.f102320o = true;
    }

    public void setExplicitProperty(String str, String str2, int i) {
        int intValue = this.f102345y.getOrDefault(str, Integer.MIN_VALUE).intValue();
        if (intValue == Integer.MIN_VALUE) {
            this.f102345y.put(str, Integer.valueOf(i));
            this.f102346z.put(str, str2);
        } else if (intValue < i) {
            this.f102345y.put(str, Integer.valueOf(i));
            this.f102346z.put(str, str2);
        } else if (intValue == i) {
            if ((!r7.equals(str2)) & (this.f102346z.get(str) != null)) {
                this.f102346z.put(str, "##conflict##");
            }
        }
        String str3 = this.f102346z.get("typed");
        this.mustBeTyped = "yes".equals(str3) || "strict".equals(str3) || "lax".equals(str3);
        this.mustBeUntyped = SVGParser.f16048t.equals(str3);
    }

    public RuleGroupAction setGroup(RuleGroupAction ruleGroupAction, String str) {
        if (ruleGroupAction != null) {
            ruleGroupAction.setLabel(str);
        }
        return ruleGroupAction;
    }

    public void setStackFrameSlotsNeeded(int i) {
        this.f102343w = i;
    }

    /* renamed from: net.sf.saxon.trans.SimpleMode$b */
    /* loaded from: classes11.dex */
    public static class C18531b implements RuleGroupAction {

        /* renamed from: a */
        public String f102348a;

        /* renamed from: b */
        public final ExpressionPresenter f102349b;

        public C18531b(ExpressionPresenter expressionPresenter) {
            this.f102349b = expressionPresenter;
        }

        @Override // net.sf.saxon.trans.SimpleMode.RuleGroupAction
        public void end() {
            this.f102349b.endElement();
        }

        @Override // net.sf.saxon.trans.SimpleMode.RuleGroupAction
        public void setLabel(String str) {
            this.f102348a = str;
        }

        @Override // net.sf.saxon.trans.SimpleMode.RuleGroupAction
        public void start() {
            this.f102349b.startElement("ruleSet");
            this.f102349b.emitAttribute("type", this.f102348a);
        }

        @Override // net.sf.saxon.trans.SimpleMode.RuleGroupAction
        public void start(int i) {
            this.f102349b.startElement("ruleChain");
            ExpressionPresenter expressionPresenter = this.f102349b;
            expressionPresenter.emitAttribute("key", expressionPresenter.getNamePool().getClarkName(i));
        }
    }

    public void processRules(Mode.RuleAction ruleAction, RuleGroupAction ruleGroupAction) throws XPathException {
        processRuleChain(this.documentRuleChain, ruleAction, setGroup(ruleGroupAction, "document-node()"));
        processRuleChain(this.unnamedElementRuleChain, ruleAction, setGroup(ruleGroupAction, "element()"));
        processRuleChains(this.namedElementRuleChains, ruleAction, setGroup(ruleGroupAction, "namedElements"));
        processRuleChain(this.unnamedAttributeRuleChain, ruleAction, setGroup(ruleGroupAction, "attribute()"));
        processRuleChains(this.namedAttributeRuleChains, ruleAction, setGroup(ruleGroupAction, "namedAttributes"));
        processRuleChain(this.textRuleChain, ruleAction, setGroup(ruleGroupAction, "text()"));
        processRuleChain(this.commentRuleChain, ruleAction, setGroup(ruleGroupAction, "comment()"));
        processRuleChain(this.processingInstructionRuleChain, ruleAction, setGroup(ruleGroupAction, "processing-instruction()"));
        processRuleChain(this.namespaceRuleChain, ruleAction, setGroup(ruleGroupAction, "namespace()"));
        processRuleChain(this.genericRuleChain, ruleAction, setGroup(ruleGroupAction, "node()"));
        processRuleChain(this.atomicValueRuleChain, ruleAction, setGroup(ruleGroupAction, "atomicValue"));
        processRuleChain(this.functionItemRuleChain, ruleAction, setGroup(ruleGroupAction, "function()"));
    }

    public void processRuleChain(RuleChain ruleChain, Mode.RuleAction ruleAction, RuleGroupAction ruleGroupAction) throws XPathException {
        Rule head = ruleChain == null ? null : ruleChain.head();
        if (head != null) {
            if (ruleGroupAction != null) {
                ruleGroupAction.start();
            }
            while (head != null) {
                ruleAction.processRule(head);
                head = head.getNext();
            }
            if (ruleGroupAction != null) {
                ruleGroupAction.end();
            }
        }
    }

    public Rule searchRuleChain(Item item, XPathContext xPathContext, Rule rule, RuleChain ruleChain, RuleSearchState ruleSearchState, Predicate<Rule> predicate) throws XPathException {
        while (!(xPathContext instanceof XPathContextMajor)) {
            xPathContext = xPathContext.getCaller();
        }
        for (Rule head = ruleChain == null ? null : ruleChain.head(); head != null; head = head.getNext()) {
            if (predicate == null || predicate.test(head)) {
                if (rule != null) {
                    int compareRank = head.compareRank(rule);
                    if (compareRank < 0) {
                        return rule;
                    }
                    if (compareRank == 0) {
                        if (ruleMatches(head, item, (XPathContextMajor) xPathContext, ruleSearchState)) {
                            reportAmbiguity(item, rule, head, xPathContext);
                            if (rule.getSequence() > head.getSequence()) {
                                return rule;
                            }
                            return head;
                        }
                    } else {
                        if (!ruleMatches(head, item, (XPathContextMajor) xPathContext, ruleSearchState)) {
                        }
                        rule = head;
                    }
                } else if (ruleMatches(head, item, (XPathContextMajor) xPathContext, ruleSearchState)) {
                    if (getRecoveryPolicy() == RecoveryPolicy.RECOVER_SILENTLY) {
                        return head;
                    }
                    rule = head;
                } else {
                    continue;
                }
            }
        }
        return rule;
    }

    public void addRule(Pattern pattern, Rule rule) {
        UType uType = pattern.getUType();
        if (uType.equals(UType.ELEMENT)) {
            addRuleToNamedOrUnnamedChain(rule, pattern.getFingerprint(), this.unnamedElementRuleChain, this.namedElementRuleChains);
            return;
        }
        if (uType.equals(UType.ATTRIBUTE)) {
            addRuleToNamedOrUnnamedChain(rule, pattern.getFingerprint(), this.unnamedAttributeRuleChain, this.namedAttributeRuleChains);
            return;
        }
        if (uType.equals(UType.DOCUMENT)) {
            m64486l(rule, this.documentRuleChain);
            return;
        }
        if (uType.equals(UType.TEXT)) {
            m64486l(rule, this.textRuleChain);
            return;
        }
        if (uType.equals(UType.COMMENT)) {
            m64486l(rule, this.commentRuleChain);
            return;
        }
        if (uType.equals(UType.f102819PI)) {
            m64486l(rule, this.processingInstructionRuleChain);
            return;
        }
        if (uType.equals(UType.NAMESPACE)) {
            m64486l(rule, this.namespaceRuleChain);
            return;
        }
        if (UType.ANY_ATOMIC.subsumes(uType)) {
            m64486l(rule, this.atomicValueRuleChain);
        } else if (UType.FUNCTION.subsumes(uType)) {
            m64486l(rule, this.functionItemRuleChain);
        } else {
            m64486l(rule, this.genericRuleChain);
        }
    }

    @Override // net.p110sf.saxon.trans.Mode
    public Rule getRule(Item item, XPathContext xPathContext, Predicate<Rule> predicate) throws XPathException {
        RuleChain ruleChain;
        RuleChain namedRuleChain;
        Rule searchRuleChain;
        RuleChain ruleChain2;
        RuleChain namedRuleChain2;
        RuleChain ruleChain3;
        if (this.f102343w > 0) {
            xPathContext = makeNewContext(xPathContext);
        }
        Rule rule = null;
        if (item instanceof NodeInfo) {
            NodeInfo nodeInfo = (NodeInfo) item;
            int nodeKind = nodeInfo.getNodeKind();
            if (nodeKind == 1) {
                ruleChain = this.unnamedElementRuleChain;
                if (nodeInfo.hasFingerprint()) {
                    namedRuleChain = this.namedElementRuleChains.get(nodeInfo.getFingerprint());
                } else {
                    namedRuleChain = getNamedRuleChain(xPathContext, 1, nodeInfo.getURI(), nodeInfo.getLocalPart());
                }
                RuleChain ruleChain4 = namedRuleChain;
                if (ruleChain4 != null) {
                    searchRuleChain = searchRuleChain(item, xPathContext, null, ruleChain4, makeRuleSearchState(ruleChain4, xPathContext), predicate);
                    rule = searchRuleChain;
                }
                ruleChain2 = ruleChain;
            } else if (nodeKind != 2) {
                if (nodeKind == 3) {
                    ruleChain3 = this.textRuleChain;
                } else if (nodeKind == 7) {
                    ruleChain3 = this.processingInstructionRuleChain;
                } else if (nodeKind == 8) {
                    ruleChain3 = this.commentRuleChain;
                } else if (nodeKind == 9) {
                    ruleChain3 = this.documentRuleChain;
                } else if (nodeKind == 13) {
                    ruleChain3 = this.namespaceRuleChain;
                } else {
                    throw new AssertionError("Unknown node kind");
                }
                ruleChain2 = ruleChain3;
            } else {
                ruleChain = this.unnamedAttributeRuleChain;
                if (nodeInfo.hasFingerprint()) {
                    namedRuleChain2 = this.namedAttributeRuleChains.get(nodeInfo.getFingerprint());
                } else {
                    namedRuleChain2 = getNamedRuleChain(xPathContext, 2, nodeInfo.getURI(), nodeInfo.getLocalPart());
                }
                RuleChain ruleChain5 = namedRuleChain2;
                if (ruleChain5 != null) {
                    searchRuleChain = searchRuleChain(item, xPathContext, null, ruleChain5, makeRuleSearchState(ruleChain5, xPathContext), predicate);
                    rule = searchRuleChain;
                }
                ruleChain2 = ruleChain;
            }
            XPathContext xPathContext2 = xPathContext;
            return searchRuleChain(item, xPathContext2, searchRuleChain(item, xPathContext2, rule, ruleChain2, makeRuleSearchState(ruleChain2, xPathContext), predicate), this.genericRuleChain, makeRuleSearchState(this.genericRuleChain, xPathContext), predicate);
        }
        if (item instanceof AtomicValue) {
            RuleChain ruleChain6 = this.atomicValueRuleChain;
            if (ruleChain6 != null) {
                XPathContext xPathContext3 = xPathContext;
                rule = searchRuleChain(item, xPathContext3, null, this.atomicValueRuleChain, makeRuleSearchState(ruleChain6, xPathContext), predicate);
            }
            return searchRuleChain(item, xPathContext, rule, this.genericRuleChain, makeRuleSearchState(this.genericRuleChain, xPathContext), predicate);
        }
        if (!(item instanceof Function)) {
            return null;
        }
        RuleChain ruleChain7 = this.functionItemRuleChain;
        if (ruleChain7 != null) {
            XPathContext xPathContext4 = xPathContext;
            rule = searchRuleChain(item, xPathContext4, null, this.functionItemRuleChain, makeRuleSearchState(ruleChain7, xPathContext), predicate);
        }
        return searchRuleChain(item, xPathContext, rule, this.genericRuleChain, makeRuleSearchState(this.genericRuleChain, xPathContext), predicate);
    }
}
