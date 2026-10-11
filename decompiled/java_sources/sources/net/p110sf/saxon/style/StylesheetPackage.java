package net.p110sf.saxon.style;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.PreparedStylesheet;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.ComponentBinding;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.instruct.GlobalContextRequirement;
import net.p110sf.saxon.expr.instruct.GlobalParam;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.instruct.NamedTemplate;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.functions.ExecutableFunctionLibrary;
import net.p110sf.saxon.functions.FunctionLibrary;
import net.p110sf.saxon.functions.FunctionLibraryList;
import net.p110sf.saxon.functions.registry.ConstructorFunctionLibrary;
import net.p110sf.saxon.om.Action;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.query.XQueryFunctionLibrary;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.serialize.CharacterMap;
import net.p110sf.saxon.serialize.CharacterMapIndex;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.ComponentTest;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.Mode;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.VisibilityProvenance;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.rules.RuleManager;
import net.p110sf.saxon.type.Affinity;

/* loaded from: classes11.dex */
public class StylesheetPackage extends PackageData {

    /* renamed from: F */
    public static final boolean f101820F = false;

    /* renamed from: A */
    public int f101821A;

    /* renamed from: B */
    public boolean f101822B;

    /* renamed from: C */
    public boolean f101823C;

    /* renamed from: D */
    public final HashMap<SymbolicName, Component> f101824D;

    /* renamed from: E */
    public final HashMap<SymbolicName, Component> f101825E;
    protected Properties defaultOutputProperties;
    protected GlobalContextRequirement globalContextRequirement;
    protected List<Component> hiddenComponents;

    /* renamed from: k */
    public PackageVersion f101826k;

    /* renamed from: l */
    public String f101827l;

    /* renamed from: m */
    public final List<StylesheetPackage> f101828m;

    /* renamed from: n */
    public RuleManager f101829n;
    protected Map<StructuredQName, Properties> namedOutputProperties;

    /* renamed from: o */
    public CharacterMapIndex f101830o;
    protected HashMap<SymbolicName, Component> overriddenComponents;

    /* renamed from: p */
    public boolean f101831p;

    /* renamed from: q */
    public final List<Action> f101832q;

    /* renamed from: r */
    public boolean f101833r;

    /* renamed from: s */
    public boolean f101834s;
    protected Set<String> schemaIndex;
    protected SpaceStrippingRule stripperRules;

    /* renamed from: t */
    public boolean f101835t;

    /* renamed from: u */
    public StructuredQName f101836u;

    /* renamed from: v */
    public boolean f101837v;

    /* renamed from: w */
    public FunctionLibraryList f101838w;

    /* renamed from: x */
    public XQueryFunctionLibrary f101839x;

    /* renamed from: y */
    public ExecutableFunctionLibrary f101840y;

    /* renamed from: z */
    public ExecutableFunctionLibrary f101841z;

    public StylesheetPackage(Configuration configuration) {
        super(configuration);
        this.f101826k = null;
        this.f101828m = new ArrayList();
        this.f101832q = new ArrayList();
        this.globalContextRequirement = null;
        this.f101833r = false;
        this.f101834s = false;
        this.f101835t = false;
        this.namedOutputProperties = new HashMap(4);
        this.schemaIndex = new HashSet(10);
        this.f101821A = -1;
        this.f101822B = false;
        this.f101824D = new HashMap<>(20);
        this.hiddenComponents = new ArrayList();
        this.overriddenComponents = new HashMap<>();
        this.f101825E = new HashMap<>();
        setHostLanguage(HostLanguage.XSLT, 30);
        setAccumulatorRegistry(configuration.makeAccumulatorRegistry());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m63996e(Component component, Set set, Map map) throws XPathException {
        Component component2;
        m64003k("Doing mode completion for " + component.getActor().getSymbolicName());
        List<ComponentBinding> componentBindings = component.getBaseComponent().getComponentBindings();
        List<ComponentBinding> componentBindings2 = component.getComponentBindings();
        for (int i = 0; i < componentBindings.size(); i++) {
            SymbolicName symbolicName = componentBindings.get(i).getSymbolicName();
            if (set.contains(symbolicName)) {
                component2 = getComponent(symbolicName);
                if (component2 == null) {
                    throw new AssertionError("We know there's an override for " + symbolicName + ", but we can't find it");
                }
            } else {
                component2 = (Component) map.get(componentBindings.get(i).getTarget());
                if (component2 == null) {
                    throw new AssertionError("Saxon can't find the new component corresponding to " + symbolicName);
                }
            }
            componentBindings2.set(i, new ComponentBinding(symbolicName, component2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m63997f(Component component, Set set, Map map) throws XPathException {
        m64003k("Doing normal completion for " + component.getActor().getSymbolicName());
        List<ComponentBinding> componentBindings = component.getBaseComponent().getComponentBindings();
        ArrayList arrayList = new ArrayList(componentBindings.size());
        m64000h(set, map, componentBindings, arrayList);
        component.setComponentBindings(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m63998g(Component component, Set set, Map map) throws XPathException {
        List<ComponentBinding> componentBindings = component.getBaseComponent().getComponentBindings();
        ArrayList arrayList = new ArrayList(componentBindings.size());
        m64000h(set, map, componentBindings, arrayList);
        component.setComponentBindings(arrayList);
    }

    public void addCompletionAction(Action action) {
        this.f101832q.add(action);
    }

    public void addComponent(Component component) {
        this.f101824D.put(component.getActor().getSymbolicName(), component);
        if (component.getVisibility() == Visibility.ABSTRACT && component.getContainingPackage() == this) {
            this.f101825E.put(component.getActor().getSymbolicName(), component);
        }
    }

    public void addComponentsFromUsedPackage(StylesheetPackage stylesheetPackage, List<XSLAccept> list, final Set<SymbolicName> set) throws XPathException {
        Visibility visibility;
        this.f101828m.add(stylesheetPackage);
        m64003k("=== Adding components from " + stylesheetPackage.getPackageName() + " to " + getPackageName() + " ===");
        final HashMap hashMap = new HashMap();
        for (Map.Entry<SymbolicName, Component> entry : stylesheetPackage.f101824D.entrySet()) {
            SymbolicName key = entry.getKey();
            Component value = entry.getValue();
            Visibility visibility2 = value.getVisibility();
            Visibility visibility3 = Visibility.UNDEFINED;
            if (!set.contains(key) || (value.getActor() instanceof Mode)) {
                Visibility m63999d = m63999d(key, list);
                if (m63999d == visibility3) {
                    m63999d = m64004l(key, list);
                    if (m63999d == visibility3 || !XSLAccept.isCompatible(visibility2, m63999d)) {
                        m63999d = visibility3;
                    }
                } else if (!XSLAccept.isCompatible(visibility2, m63999d)) {
                    throw new XPathException("Cannot accept a " + Err.describeVisibility(visibility2) + " component (" + key + ") from package " + stylesheetPackage.getPackageName() + " with visibility " + Err.describeVisibility(m63999d), "XTSE3040");
                }
                visibility = m63999d == visibility3 ? (visibility2 == Visibility.PUBLIC || visibility2 == Visibility.FINAL) ? Visibility.PRIVATE : Visibility.HIDDEN : m63999d;
            } else {
                visibility = Visibility.HIDDEN;
            }
            m64003k(value.getActor().getSymbolicName() + " (" + Err.describeVisibility(visibility2) + ") becomes " + Err.describeVisibility(visibility));
            final Component makeComponent = Component.makeComponent(value.getActor(), visibility, VisibilityProvenance.DERIVED, this, value.getDeclaringPackage());
            hashMap.put(value, makeComponent);
            makeComponent.setBaseComponent(value);
            if (set.contains(key)) {
                this.overriddenComponents.put(key, makeComponent);
                if (visibility != Visibility.ABSTRACT) {
                    this.f101825E.remove(key);
                }
            }
            if (makeComponent.getVisibility() == Visibility.HIDDEN) {
                this.hiddenComponents.add(makeComponent);
            } else if (this.f101824D.get(key) == null) {
                this.f101824D.put(key, makeComponent);
                if ((value.getActor() instanceof Mode) && ((visibility2 == Visibility.PUBLIC || visibility2 == Visibility.FINAL) && getRuleManager().obtainMode(key.getComponentName(), false) != null)) {
                    throw new XPathException("Duplicate " + entry.getKey(), "XTSE3050", value.getActor());
                }
            } else if (!(value.getActor() instanceof Mode)) {
                throw new XPathException("Duplicate " + entry.getKey(), "XTSE3050", value.getActor());
            }
            if ((makeComponent.getActor() instanceof Mode) && set.contains(key)) {
                addCompletionAction(new Action() { // from class: com.sunia.HTREnginev2.i4n
                    @Override // net.p110sf.saxon.om.Action
                    public final void doAction() {
                        StylesheetPackage.this.m63996e(makeComponent, set, hashMap);
                    }
                });
            } else {
                addCompletionAction(new Action() { // from class: com.sunia.HTREnginev2.j4n
                    @Override // net.p110sf.saxon.om.Action
                    public final void doAction() {
                        StylesheetPackage.this.m63997f(makeComponent, set, hashMap);
                    }
                });
            }
        }
        for (Component component : stylesheetPackage.hiddenComponents) {
            m64003k(component.getActor().getSymbolicName() + " (HIDDEN, declared in " + component.getDeclaringPackage().getPackageName() + ") becomes HIDDEN");
            final Component makeComponent2 = Component.makeComponent(component.getActor(), Visibility.HIDDEN, VisibilityProvenance.DERIVED, this, component.getDeclaringPackage());
            hashMap.put(component, makeComponent2);
            makeComponent2.setBaseComponent(component);
            this.hiddenComponents.add(makeComponent2);
            addCompletionAction(new Action() { // from class: com.sunia.HTREnginev2.k4n
                @Override // net.p110sf.saxon.om.Action
                public final void doAction() {
                    StylesheetPackage.this.m63998g(makeComponent2, set, hashMap);
                }
            });
        }
        if (stylesheetPackage.isCreatesSecondaryResultDocuments()) {
            setCreatesSecondaryResultDocuments(true);
        }
    }

    @Override // net.p110sf.saxon.expr.PackageData
    public void addGlobalVariable(GlobalVariable globalVariable) {
        super.addGlobalVariable(globalVariable);
        if (this.f101824D.get(globalVariable.getSymbolicName()) == null) {
            Component declaringComponent = globalVariable.getDeclaringComponent();
            if (declaringComponent == null) {
                declaringComponent = globalVariable.makeDeclaringComponent(Visibility.PRIVATE, this);
            }
            addComponent(declaringComponent);
        }
    }

    public void addHiddenComponent(Component component) {
        this.hiddenComponents.add(component);
    }

    public void addIxslFunctionLibrary(FunctionLibraryList functionLibraryList) {
    }

    public void addOverriddenComponent(Component component) {
        this.overriddenComponents.put(component.getActor().getSymbolicName(), component);
    }

    public void addUsedPackage(StylesheetPackage stylesheetPackage) {
        this.f101828m.add(stylesheetPackage);
    }

    public void allocateBinderySlots() {
        SlotManager makeSlotManager = getConfiguration().makeSlotManager();
        Iterator<Component> it2 = this.f101824D.values().iterator();
        while (it2.hasNext()) {
            m64002j(it2.next(), makeSlotManager);
        }
        Iterator<Component> it3 = this.hiddenComponents.iterator();
        while (it3.hasNext()) {
            m64002j(it3.next(), makeSlotManager);
        }
        setGlobalSlotManager(makeSlotManager);
    }

    public void checkForAbstractComponents() throws XPathException {
        for (Map.Entry<SymbolicName, Component> entry : this.f101824D.entrySet()) {
            if (entry.getValue().getVisibility() == Visibility.ABSTRACT && entry.getValue().getContainingPackage() == this) {
                this.f101825E.put(entry.getKey(), entry.getValue());
            }
        }
        if (this.f101825E.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder(256);
        Iterator<SymbolicName> it2 = this.f101825E.keySet().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            SymbolicName next = it2.next();
            int i2 = i + 1;
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(next.toString());
            if (sb.length() > 300) {
                sb.append(" ...");
                break;
            }
            i = i2;
        }
        throw new XPathException("The package is not executable, because it contains abstract components: " + ((Object) sb), "XTSE3080");
    }

    public void complete() throws XPathException {
        Iterator<Action> it2 = this.f101832q.iterator();
        while (it2.hasNext()) {
            it2.next().doAction();
        }
        allocateBinderySlots();
    }

    public boolean contains(StylesheetPackage stylesheetPackage) {
        for (StylesheetPackage stylesheetPackage2 : this.f101828m) {
            if (stylesheetPackage2 == stylesheetPackage || stylesheetPackage2.contains(stylesheetPackage)) {
                return true;
            }
        }
        return false;
    }

    public void createFunctionLibrary() {
        FunctionLibraryList functionLibraryList = new FunctionLibraryList();
        functionLibraryList.addFunctionLibrary((!"HE".equals(getTargetEdition()) && !"JS".equals(getTargetEdition()) ? this.config : new Configuration()).getXSLT30FunctionSet());
        functionLibraryList.addFunctionLibrary(new StylesheetFunctionLibrary(this, true));
        functionLibraryList.addFunctionLibrary(this.config.getBuiltInExtensionLibraryList());
        functionLibraryList.addFunctionLibrary(new ConstructorFunctionLibrary(this.config));
        if ("JS".equals(getTargetEdition())) {
            addIxslFunctionLibrary(functionLibraryList);
        }
        XQueryFunctionLibrary xQueryFunctionLibrary = new XQueryFunctionLibrary(this.config);
        this.f101839x = xQueryFunctionLibrary;
        functionLibraryList.addFunctionLibrary(xQueryFunctionLibrary);
        functionLibraryList.addFunctionLibrary(this.config.getIntegratedFunctionLibrary());
        this.config.addExtensionBinders(functionLibraryList);
        functionLibraryList.addFunctionLibrary(new StylesheetFunctionLibrary(this, false));
        this.f101838w = functionLibraryList;
    }

    /* renamed from: d */
    public final Visibility m63999d(SymbolicName symbolicName, List<XSLAccept> list) throws XPathException {
        for (XSLAccept xSLAccept : list) {
            Iterator<ComponentTest> it2 = xSLAccept.getExplicitComponentTests().iterator();
            while (it2.hasNext()) {
                if (it2.next().matches(symbolicName)) {
                    return xSLAccept.getVisibility();
                }
            }
        }
        return Visibility.UNDEFINED;
    }

    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        throw new XPathException("Exporting a stylesheet requires Saxon-EE");
    }

    public Map<SymbolicName, Component> getAbstractComponents() {
        return this.f101825E;
    }

    public CharacterMapIndex getCharacterMapIndex() {
        return this.f101830o;
    }

    public Component getComponent(SymbolicName symbolicName) {
        return this.f101824D.get(symbolicName);
    }

    public HashMap<SymbolicName, Component> getComponentIndex() {
        return this.f101824D;
    }

    public GlobalContextRequirement getContextItemRequirements() {
        return this.globalContextRequirement;
    }

    public StructuredQName getDefaultMode() {
        return this.f101836u;
    }

    public UserFunction getFunction(SymbolicName.C18533F c18533f) {
        if (c18533f.getArity() != -1) {
            Component component = getComponentIndex().get(c18533f);
            if (component == null) {
                return null;
            }
            UserFunction userFunction = (UserFunction) component.getActor();
            userFunction.incrementReferenceCount();
            return userFunction;
        }
        for (int i = 0; i < 20; i++) {
            UserFunction function = getFunction(new SymbolicName.C18533F(c18533f.getComponentName(), i));
            if (function != null) {
                function.incrementReferenceCount();
                return function;
            }
        }
        return null;
    }

    public FunctionLibraryList getFunctionLibrary() {
        return this.f101838w;
    }

    public int getMaxFunctionArity() {
        if (this.f101821A == -1) {
            for (Component component : this.f101824D.values()) {
                if ((component.getActor() instanceof UserFunction) && ((UserFunction) component.getActor()).getArity() > this.f101821A) {
                    this.f101821A = ((UserFunction) component.getActor()).getArity();
                }
            }
        }
        return this.f101821A;
    }

    public Properties getNamedOutputProperties(StructuredQName structuredQName) {
        return this.namedOutputProperties.get(structuredQName);
    }

    public Component getOverriddenComponent(SymbolicName symbolicName) {
        return this.overriddenComponents.get(symbolicName);
    }

    public String getPackageName() {
        return this.f101827l;
    }

    public PackageVersion getPackageVersion() {
        return this.f101826k;
    }

    public FunctionLibrary getPublicFunctions() {
        return new PublicStylesheetFunctionLibrary(this.f101838w);
    }

    public RuleManager getRuleManager() {
        return this.f101829n;
    }

    public Set<String> getSchemaNamespaces() {
        return this.schemaIndex;
    }

    public SpaceStrippingRule getSpaceStrippingRule() {
        return this.stripperRules;
    }

    public SpaceStrippingRule getStripperRules() {
        return this.stripperRules;
    }

    public Iterable<StylesheetPackage> getUsedPackages() {
        return this.f101828m;
    }

    public XQueryFunctionLibrary getXQueryFunctionLibrary() {
        return this.f101839x;
    }

    /* renamed from: h */
    public final void m64000h(Set<SymbolicName> set, Map<Component, Component> map, List<ComponentBinding> list, List<ComponentBinding> list2) {
        Component component;
        for (ComponentBinding componentBinding : list) {
            SymbolicName symbolicName = componentBinding.getSymbolicName();
            if (set.contains(symbolicName)) {
                component = getComponent(symbolicName);
                if (component == null) {
                    throw new AssertionError("We know there's an override for " + symbolicName + ", but we can't find it");
                }
            } else {
                component = map.get(componentBinding.getTarget());
                if (component == null) {
                    throw new AssertionError("Saxon can't find the new component corresponding to " + symbolicName);
                }
            }
            list2.add(new ComponentBinding(symbolicName, component));
        }
    }

    /* renamed from: i */
    public final boolean m64001i() {
        if (this.f101831p) {
            return true;
        }
        Iterator<StylesheetPackage> it2 = this.f101828m.iterator();
        while (it2.hasNext()) {
            if (it2.next().m64001i()) {
                return true;
            }
        }
        return false;
    }

    public boolean isCreatesSecondaryResultDocuments() {
        return this.f101831p;
    }

    public boolean isDeclaredModes() {
        return this.f101837v;
    }

    public boolean isFallbackToNonStreaming() {
        return true;
    }

    public boolean isImplicitPackage() {
        return this.f101823C;
    }

    public boolean isJustInTimeCompilation() {
        return false;
    }

    public boolean isRetainUnusedFunctions() {
        return this.f101822B;
    }

    public boolean isStripsTypeAnnotations() {
        return this.f101835t;
    }

    public boolean isStripsWhitespace() {
        return this.f101834s;
    }

    /* renamed from: j */
    public final void m64002j(Component component, SlotManager slotManager) {
        if (component.getActor() instanceof GlobalVariable) {
            GlobalVariable globalVariable = (GlobalVariable) component.getActor();
            int allocateSlotNumber = slotManager.allocateSlotNumber(globalVariable.getVariableQName());
            globalVariable.setPackageData(this);
            globalVariable.setBinderySlotNumber(allocateSlotNumber);
        }
    }

    /* renamed from: k */
    public final void m64003k(String str) {
    }

    /* renamed from: l */
    public final Visibility m64004l(SymbolicName symbolicName, List<XSLAccept> list) throws XPathException {
        Visibility visibility = Visibility.UNDEFINED;
        for (XSLAccept xSLAccept : list) {
            for (ComponentTest componentTest : xSLAccept.getWildcardComponentTests()) {
                if (((NodeTest) componentTest.getQNameTest()).getDefaultPriority() == -0.25d && componentTest.matches(symbolicName)) {
                    visibility = xSLAccept.getVisibility();
                }
            }
        }
        if (visibility != Visibility.UNDEFINED) {
            return visibility;
        }
        for (XSLAccept xSLAccept2 : list) {
            Iterator<ComponentTest> it2 = xSLAccept2.getWildcardComponentTests().iterator();
            while (it2.hasNext()) {
                if (it2.next().matches(symbolicName)) {
                    visibility = xSLAccept2.getVisibility();
                }
            }
        }
        return visibility;
    }

    public void markNonExportable(String str, String str2) {
    }

    public void setCharacterMapIndex(CharacterMapIndex characterMapIndex) {
        this.f101830o = characterMapIndex;
    }

    public void setContextItemRequirements(GlobalContextRequirement globalContextRequirement) throws XPathException {
        if (this.f101833r) {
            if ((!globalContextRequirement.isAbsentFocus() && this.globalContextRequirement.isAbsentFocus()) || (globalContextRequirement.isMayBeOmitted() && !this.globalContextRequirement.isMayBeOmitted())) {
                throw new XPathException("The package contains two xsl:global-context-item declarations with conflicting @use attributes", "XTSE3087");
            }
            if (getConfiguration().getTypeHierarchy().relationship(globalContextRequirement.getRequiredItemType(), this.globalContextRequirement.getRequiredItemType()) != Affinity.SAME_TYPE) {
                throw new XPathException("The package contains two xsl:global-context-item declarations with conflicting item types", "XTSE3087");
            }
        }
        this.f101833r = true;
        this.globalContextRequirement = globalContextRequirement;
    }

    public void setCreatesSecondaryResultDocuments(boolean z) {
        this.f101831p = z;
    }

    public void setDeclaredModes(boolean z) {
        this.f101837v = z;
    }

    public void setDefaultMode(StructuredQName structuredQName) {
        this.f101836u = structuredQName;
    }

    public void setDefaultOutputProperties(Properties properties) {
        this.defaultOutputProperties = properties;
    }

    public void setFallbackToNonStreaming() {
    }

    public void setFunctionLibraryDetails(FunctionLibraryList functionLibraryList, ExecutableFunctionLibrary executableFunctionLibrary, ExecutableFunctionLibrary executableFunctionLibrary2) {
        if (functionLibraryList != null) {
            this.f101838w = functionLibraryList;
        }
        this.f101840y = executableFunctionLibrary;
        this.f101841z = executableFunctionLibrary2;
    }

    public void setImplicitPackage(boolean z) {
        this.f101823C = z;
    }

    public void setJustInTimeCompilation(boolean z) {
    }

    public void setLanguageVersion(int i) {
        this.hostLanguageVersion = i;
    }

    public void setNamedOutputProperties(StructuredQName structuredQName, Properties properties) {
        this.namedOutputProperties.put(structuredQName, properties);
    }

    public void setPackageName(String str) {
        this.f101827l = str;
    }

    public void setPackageVersion(PackageVersion packageVersion) {
        this.f101826k = packageVersion;
    }

    public void setRetainUnusedFunctions() {
        this.f101822B = true;
    }

    public void setRuleManager(RuleManager ruleManager) {
        this.f101829n = ruleManager;
    }

    public void setStripperRules(SpaceStrippingRule spaceStrippingRule) {
        this.stripperRules = spaceStrippingRule;
    }

    public void setStripsTypeAnnotations(boolean z) {
        this.f101835t = z;
    }

    public void setStripsWhitespace(boolean z) {
        this.f101834s = z;
    }

    public void updatePreparedStylesheet(PreparedStylesheet preparedStylesheet) throws XPathException {
        for (Map.Entry<SymbolicName, Component> entry : this.f101824D.entrySet()) {
            if (entry.getValue().getVisibility() == Visibility.ABSTRACT) {
                this.f101825E.put(entry.getKey(), entry.getValue());
            }
        }
        preparedStylesheet.setTopLevelPackage(this);
        if (isSchemaAware() || !this.schemaIndex.isEmpty()) {
            preparedStylesheet.setSchemaAware(true);
        }
        preparedStylesheet.setHostLanguage(HostLanguage.XSLT);
        FunctionLibraryList functionLibraryList = new FunctionLibraryList();
        for (FunctionLibrary functionLibrary : this.f101838w.getLibraryList()) {
            if (!(functionLibrary instanceof StylesheetFunctionLibrary)) {
                functionLibraryList.addFunctionLibrary(functionLibrary);
            } else if (((StylesheetFunctionLibrary) functionLibrary).isOverrideExtensionFunction()) {
                functionLibraryList.addFunctionLibrary(this.f101840y);
            } else {
                functionLibraryList.addFunctionLibrary(this.f101841z);
            }
        }
        preparedStylesheet.setFunctionLibrary(functionLibraryList);
        if (!preparedStylesheet.createsSecondaryResult()) {
            preparedStylesheet.setCreatesSecondaryResult(m64001i());
        }
        preparedStylesheet.setDefaultOutputProperties(this.defaultOutputProperties);
        for (Map.Entry<StructuredQName, Properties> entry2 : this.namedOutputProperties.entrySet()) {
            preparedStylesheet.setOutputProperties(entry2.getKey(), entry2.getValue());
        }
        CharacterMapIndex characterMapIndex = this.f101830o;
        if (characterMapIndex != null) {
            Iterator<CharacterMap> it2 = characterMapIndex.iterator();
            while (it2.hasNext()) {
                CharacterMap next = it2.next();
                preparedStylesheet.getCharacterMapIndex().putCharacterMap(next.getName(), next);
            }
        }
        preparedStylesheet.setRuleManager(this.f101829n);
        for (Component component : this.f101824D.values()) {
            if (component.getActor() instanceof NamedTemplate) {
                NamedTemplate namedTemplate = (NamedTemplate) component.getActor();
                preparedStylesheet.putNamedTemplate(namedTemplate.getTemplateName(), namedTemplate);
            }
        }
        preparedStylesheet.setComponentIndex(this.f101824D);
        for (Component component2 : this.f101824D.values()) {
            if (component2.getActor() instanceof GlobalParam) {
                preparedStylesheet.registerGlobalParameter((GlobalParam) component2.getActor());
            }
        }
        GlobalContextRequirement globalContextRequirement = this.globalContextRequirement;
        if (globalContextRequirement != null) {
            preparedStylesheet.setGlobalContextRequirement(globalContextRequirement);
        }
    }
}
