package net.p110sf.saxon.style;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import javax.xml.transform.SourceLocator;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.accum.Accumulator;
import net.p110sf.saxon.expr.accum.AccumulatorRegistry;
import net.p110sf.saxon.expr.instruct.Actor;
import net.p110sf.saxon.expr.instruct.AttributeSet;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.instruct.NamedTemplate;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.functions.DocumentFn;
import net.p110sf.saxon.functions.ExecutableFunctionLibrary;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.om.Action;
import net.p110sf.saxon.om.DocumentKey;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.query.XQueryFunction;
import net.p110sf.saxon.query.XQueryFunctionLibrary;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.serialize.CharacterMap;
import net.p110sf.saxon.serialize.CharacterMapIndex;
import net.p110sf.saxon.style.PrincipalStylesheetModule;
import net.p110sf.saxon.trans.CompilerInfo;
import net.p110sf.saxon.trans.ComponentTest;
import net.p110sf.saxon.trans.DecimalFormatManager;
import net.p110sf.saxon.trans.GlobalVariableManager;
import net.p110sf.saxon.trans.KeyDefinition;
import net.p110sf.saxon.trans.KeyDefinitionSet;
import net.p110sf.saxon.trans.KeyManager;
import net.p110sf.saxon.trans.Mode;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.Timer;
import net.p110sf.saxon.trans.TypeAliasManager;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.VisibilityProvenance;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.rules.RuleManager;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.linked.DocumentImpl;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class PrincipalStylesheetModule extends StylesheetModule implements GlobalVariableManager {

    /* renamed from: g */
    public final StylesheetPackage f101773g;

    /* renamed from: h */
    public final boolean f101774h;

    /* renamed from: i */
    public final HashMap<StructuredQName, ComponentDeclaration> f101775i;

    /* renamed from: j */
    public final HashMap<StructuredQName, ComponentDeclaration> f101776j;

    /* renamed from: k */
    public final HashMap<SymbolicName, ComponentDeclaration> f101777k;

    /* renamed from: l */
    public final KeyManager f101778l;

    /* renamed from: m */
    public final DecimalFormatManager f101779m;

    /* renamed from: n */
    public final RuleManager f101780n;

    /* renamed from: o */
    public AccumulatorRegistry f101781o;

    /* renamed from: p */
    public int f101782p;

    /* renamed from: q */
    public List<ComponentDeclaration> f101783q;

    /* renamed from: r */
    public HashMap<String, NamespaceBinding> f101784r;

    /* renamed from: s */
    public Set<String> f101785s;

    /* renamed from: t */
    public final Map<StructuredQName, List<ComponentDeclaration>> f101786t;

    /* renamed from: u */
    public final HashMap<DocumentKey, XSLModuleRoot> f101787u;

    /* renamed from: v */
    public final TypeAliasManager f101788v;

    /* renamed from: w */
    public final CharacterMapIndex f101789w;

    /* renamed from: x */
    public final List<Action> f101790x;

    /* renamed from: y */
    public boolean f101791y;

    public PrincipalStylesheetModule(XSLPackage xSLPackage) throws XPathException {
        super(xSLPackage, 0);
        this.f101775i = new HashMap<>(20);
        this.f101776j = new HashMap<>(20);
        this.f101777k = new HashMap<>(8);
        this.f101781o = null;
        this.f101782p = 0;
        this.f101783q = new ArrayList(5);
        this.f101786t = new HashMap();
        this.f101787u = new HashMap<>(4);
        this.f101790x = new ArrayList();
        this.f101791y = false;
        boolean isDeclaredModes = xSLPackage.isDeclaredModes();
        this.f101774h = isDeclaredModes;
        StylesheetPackage makeStylesheetPackage = getConfiguration().makeStylesheetPackage();
        this.f101773g = makeStylesheetPackage;
        CompilerInfo compilerInfo = xSLPackage.getCompilation().getCompilerInfo();
        makeStylesheetPackage.setTargetEdition(compilerInfo.getTargetEdition());
        makeStylesheetPackage.setRelocatable(compilerInfo.isRelocatable());
        makeStylesheetPackage.setJustInTimeCompilation(compilerInfo.isJustInTimeCompilation());
        makeStylesheetPackage.setImplicitPackage(!xSLPackage.getLocalPart().equals("package"));
        this.f101778l = makeStylesheetPackage.getKeyManager();
        this.f101779m = makeStylesheetPackage.getDecimalFormatManager();
        RuleManager ruleManager = new RuleManager(makeStylesheetPackage, compilerInfo);
        this.f101780n = ruleManager;
        ruleManager.getUnnamedMode().makeDeclaringComponent(Visibility.PRIVATE, makeStylesheetPackage);
        makeStylesheetPackage.setRuleManager(ruleManager);
        makeStylesheetPackage.setDeclaredModes(isDeclaredModes);
        StructuredQName m63986y = xSLPackage.m63986y();
        makeStylesheetPackage.setDefaultMode(xSLPackage.m63986y());
        if (m63986y != null) {
            ruleManager.obtainMode(m63986y, !isDeclaredModes);
        }
        CharacterMapIndex characterMapIndex = new CharacterMapIndex();
        this.f101789w = characterMapIndex;
        makeStylesheetPackage.setCharacterMapIndex(characterMapIndex);
        TypeAliasManager makeTypeAliasManager = getConfiguration().makeTypeAliasManager();
        this.f101788v = makeTypeAliasManager;
        makeStylesheetPackage.setTypeAliasManager(makeTypeAliasManager);
        try {
            setInputTypeAnnotations(xSLPackage.getInputTypeAnnotationsAttribute());
        } catch (XPathException unused) {
        }
    }

    /* renamed from: i */
    public static void m63935i(Compilation compilation, StyleElement styleElement, List<XSLUsePackage> list) throws XPathException {
        for (NodeInfo nodeInfo : styleElement.children()) {
            if (nodeInfo instanceof XSLUsePackage) {
                list.add((XSLUsePackage) nodeInfo);
            } else if (nodeInfo instanceof XSLInclude) {
                m63935i(compilation, (StyleElement) ((DocumentImpl) compilation.getStylesheetModules().get(DocumentFn.computeDocumentKey(Whitespace.trim(nodeInfo.getAttributeValue("", "href")), nodeInfo.getBaseURI(), compilation.getPackageData(), false)).getRootNode()).getDocumentElement(), list);
            }
        }
    }

    /* renamed from: j */
    public static /* synthetic */ void m63936j(List list, Item item) throws XPathException {
        if (item instanceof XSLLocalParam) {
            XSLLocalParam xSLLocalParam = (XSLLocalParam) item;
            xSLLocalParam.prepareTemplateSignatureAttributes();
            NamedTemplate.LocalParamInfo localParamInfo = new NamedTemplate.LocalParamInfo();
            localParamInfo.name = xSLLocalParam.getVariableQName();
            localParamInfo.requiredType = xSLLocalParam.getRequiredType();
            localParamInfo.isRequired = xSLLocalParam.isRequiredParam();
            localParamInfo.isTunnel = xSLLocalParam.isTunnelParam();
            list.add(localParamInfo);
        }
    }

    /* renamed from: n */
    public static void m63937n(XSLTemplate xSLTemplate, NamedTemplate namedTemplate) throws XPathException {
        AxisIterator iterateAxis = xSLTemplate.iterateAxis(3, NodeKindTest.ELEMENT);
        final ArrayList arrayList = new ArrayList();
        SequenceTool.supply(iterateAxis, new ItemConsumer() { // from class: com.sunia.HTREnginev2.h7l
            @Override // net.p110sf.saxon.om.ItemConsumer
            public final void accept(Item item) {
                PrincipalStylesheetModule.m63936j(arrayList, item);
            }
        });
        namedTemplate.setLocalParamDetails(arrayList);
    }

    public void addFixupAction(Action action) {
        this.f101790x.add(action);
    }

    @Override // net.p110sf.saxon.trans.GlobalVariableManager
    public void addGlobalVariable(GlobalVariable globalVariable) {
        addGlobalVariable(globalVariable, Visibility.PRIVATE);
    }

    public void addImportedSchema(String str) {
        this.f101773g.getSchemaNamespaces().add(str);
    }

    public void addNamespaceAlias(ComponentDeclaration componentDeclaration) {
        this.f101783q.add(componentDeclaration);
        this.f101782p++;
    }

    public void adjustExposedVisibility() throws XPathException {
        ComponentTest componentTest;
        ArrayList arrayList = new ArrayList();
        for (ComponentDeclaration componentDeclaration : this.topLevel) {
            if (componentDeclaration.getSourceElement() instanceof XSLExpose) {
                arrayList.add(0, (XSLExpose) componentDeclaration.getSourceElement());
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        NamePool namePool = getConfiguration().getNamePool();
        for (Component component : this.f101773g.getComponentIndex().values()) {
            int componentKind = component.getComponentKind();
            if (componentKind != 180 || !((Mode) component.getActor()).isUnnamedMode()) {
                boolean z = true;
                ComponentTest componentTest2 = new ComponentTest(componentKind, new NameTest(1, new FingerprintedQName(component.getActor().getComponentName(), namePool), namePool), -1);
                if (componentKind == 160) {
                    Function function = (Function) component.getActor();
                    componentTest = new ComponentTest(componentKind, new NameTest(1, new FingerprintedQName(function.getFunctionName(), namePool), namePool), function.getArity());
                } else {
                    componentTest = null;
                }
                for (XSLExpose xSLExpose : arrayList) {
                    Set<ComponentTest> explicitComponentTests = xSLExpose.getExplicitComponentTests();
                    if (explicitComponentTests.contains(componentTest2) || (componentTest != null && explicitComponentTests.contains(componentTest))) {
                        component.setVisibility(xSLExpose.getVisibility(), VisibilityProvenance.EXPOSED);
                        break;
                    }
                }
                z = false;
                if (!z && component.getVisibilityProvenance() == VisibilityProvenance.DEFAULTED && !m63943l(arrayList, component, z)) {
                    m63942k(arrayList, component);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean checkAcceptableModeForPackage(net.p110sf.saxon.style.XSLTemplate r4, net.p110sf.saxon.trans.Mode r5) {
        /*
            r3 = this;
            net.sf.saxon.style.StylesheetPackage r3 = r4.getPackageData()
            net.sf.saxon.expr.Component$M r0 = r5.getDeclaringComponent()
            r1 = 1
            if (r0 != 0) goto Lc
            return r1
        Lc:
            net.sf.saxon.expr.Component$M r0 = r5.getDeclaringComponent()
            net.sf.saxon.style.StylesheetPackage r0 = r0.getDeclaringPackage()
            if (r3 == r0) goto L51
            net.sf.saxon.tree.linked.NodeImpl r3 = r4.getParent()
            boolean r0 = r3 instanceof net.p110sf.saxon.style.XSLOverride
            r2 = 0
            if (r0 != 0) goto L21
        L1f:
            r3 = r1
            goto L47
        L21:
            net.sf.saxon.om.NodeInfo r3 = r3.getParent()
            boolean r0 = r3 instanceof net.p110sf.saxon.style.XSLUsePackage
            if (r0 != 0) goto L2a
            goto L1f
        L2a:
            net.sf.saxon.trans.SymbolicName r5 = r5.getSymbolicName()
            net.sf.saxon.style.XSLUsePackage r3 = (net.p110sf.saxon.style.XSLUsePackage) r3
            net.sf.saxon.style.StylesheetPackage r3 = r3.getUsedPackage()
            net.sf.saxon.expr.Component r3 = r3.getComponent(r5)
            net.sf.saxon.expr.Component$M r3 = (net.p110sf.saxon.expr.Component.C18300M) r3
            if (r3 != 0) goto L3d
            goto L1f
        L3d:
            net.sf.saxon.trans.Visibility r3 = r3.getVisibility()
            net.sf.saxon.trans.Visibility r5 = net.p110sf.saxon.trans.Visibility.FINAL
            if (r3 != r5) goto L46
            goto L1f
        L46:
            r3 = r2
        L47:
            if (r3 == 0) goto L51
            java.lang.String r3 = "A template rule cannot be added to a mode declared in a used package unless the xsl:template declaration appears within an xsl:override child of the appropriate xsl:use-package element"
            java.lang.String r5 = "XTSE3050"
            r4.compileError(r3, r5)
            return r2
        L51:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.PrincipalStylesheetModule.checkAcceptableModeForPackage(net.sf.saxon.style.XSLTemplate, net.sf.saxon.trans.Mode):boolean");
    }

    public void checkStreamability(AttributeSet attributeSet) throws XPathException {
    }

    public void combineAttributeSets(Compilation compilation) throws XPathException {
        HashMap hashMap = new HashMap();
        for (Map.Entry<StructuredQName, List<ComponentDeclaration>> entry : this.f101786t.entrySet()) {
            AttributeSet attributeSet = new AttributeSet();
            attributeSet.setName(entry.getKey());
            attributeSet.setPackageData(this.f101773g);
            StyleElement sourceElement = entry.getValue().get(0).getSourceElement();
            attributeSet.setSystemId(sourceElement.getSystemId());
            attributeSet.setLineNumber(sourceElement.getLineNumber());
            attributeSet.setColumnNumber(sourceElement.getColumnNumber());
            hashMap.put(entry.getKey(), attributeSet);
            Component declaringComponent = attributeSet.getDeclaringComponent();
            if (declaringComponent == null) {
                declaringComponent = attributeSet.makeDeclaringComponent(Visibility.PRIVATE, this.f101773g);
            }
            this.f101773g.addComponent(declaringComponent);
        }
        for (Map.Entry<StructuredQName, List<ComponentDeclaration>> entry2 : this.f101786t.entrySet()) {
            ArrayList arrayList = new ArrayList();
            Visibility visibility = Visibility.UNDEFINED;
            ArrayList<ComponentDeclaration> arrayList2 = new ArrayList();
            HashSet hashSet = new HashSet();
            for (int size = entry2.getValue().size() - 1; size >= 0; size--) {
                ComponentDeclaration componentDeclaration = entry2.getValue().get(size);
                XSLAttributeSet xSLAttributeSet = (XSLAttributeSet) componentDeclaration.getSourceElement();
                if (!hashSet.contains(xSLAttributeSet)) {
                    arrayList2.add(0, componentDeclaration);
                    hashSet.add(xSLAttributeSet);
                }
            }
            boolean z = false;
            boolean z2 = false;
            for (ComponentDeclaration componentDeclaration2 : arrayList2) {
                XSLAttributeSet xSLAttributeSet2 = (XSLAttributeSet) componentDeclaration2.getSourceElement();
                z |= xSLAttributeSet2.isDeclaredStreamable();
                xSLAttributeSet2.compileDeclaration(compilation, componentDeclaration2);
                arrayList.addAll(xSLAttributeSet2.getContainedInstructions());
                visibility = xSLAttributeSet2.getVisibility();
                z2 = z2 || xSLAttributeSet2.getAttributeValue("", "visibility") != null;
            }
            AttributeSet attributeSet2 = (AttributeSet) hashMap.get(entry2.getKey());
            attributeSet2.setDeclaredStreamable(z);
            Expression makeBlock = Block.makeBlock(arrayList);
            attributeSet2.setBody(makeBlock);
            SlotManager makeSlotManager = getConfiguration().makeSlotManager();
            ExpressionTool.allocateSlots(makeBlock, 0, makeSlotManager);
            attributeSet2.setStackFrameMap(makeSlotManager);
            attributeSet2.getDeclaringComponent().setVisibility(visibility, z2 ? VisibilityProvenance.EXPLICIT : VisibilityProvenance.DEFAULTED);
            if (z) {
                checkStreamability(attributeSet2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void compile(Compilation compilation) throws XPathException {
        NamedTemplate actor;
        try {
            Timer timer = compilation.timer;
            Configuration configuration = getConfiguration();
            Iterator<XQueryFunction> it2 = this.f101773g.getXQueryFunctionLibrary().getFunctionDefinitions().iterator();
            while (it2.hasNext()) {
                it2.next().fixupReferences();
            }
            if (Compilation.TIMING) {
                timer.report("fixup Query functions");
            }
            boolean z = !getStylesheetPackage().isDeclaredModes();
            Iterator<ComponentDeclaration> it3 = this.topLevel.iterator();
            while (it3.hasNext()) {
                StyleElement sourceElement = it3.next().getSourceElement();
                if (sourceElement instanceof XSLMode) {
                    getRuleManager().obtainMode(sourceElement.getObjectName(), true);
                }
                if (z) {
                    m63944m(sourceElement, getRuleManager());
                }
            }
            getRuleManager().checkConsistency();
            for (ComponentDeclaration componentDeclaration : this.topLevel) {
                StyleElement sourceElement2 = componentDeclaration.getSourceElement();
                if (sourceElement2 instanceof XSLTemplate) {
                    ((XSLTemplate) sourceElement2).register(componentDeclaration);
                }
            }
            if (Compilation.TIMING) {
                timer.report("register templates");
            }
            adjustExposedVisibility();
            if (Compilation.TIMING) {
                timer.report("adjust exposed visibility");
            }
            for (ComponentDeclaration componentDeclaration2 : this.topLevel) {
                StyleElement sourceElement3 = componentDeclaration2.getSourceElement();
                if (!sourceElement3.m63955F(2)) {
                    sourceElement3.m63970V(2);
                    sourceElement3.compileDeclaration(compilation, componentDeclaration2);
                }
            }
            if (Compilation.TIMING) {
                timer.report("compile top-level objects (" + this.topLevel.size() + MotionUtils.f31762d);
            }
            Iterator<ComponentDeclaration> it4 = this.f101777k.values().iterator();
            while (it4.hasNext()) {
                StyleElement sourceElement4 = it4.next().getSourceElement();
                if (!sourceElement4.m63955F(4)) {
                    sourceElement4.m63970V(4);
                    if (sourceElement4.getVisibility() != Visibility.ABSTRACT) {
                        ((XSLFunction) sourceElement4).getCompiledFunction().typeCheck(sourceElement4.makeExpressionVisitor());
                    }
                }
            }
            if (Compilation.TIMING) {
                timer.report("typeCheck functions (" + this.f101777k.size() + MotionUtils.f31762d);
            }
            if (compilation.getErrorCount() > 0) {
                return;
            }
            optimizeTopLevel();
            if (Compilation.TIMING) {
                timer.report("optimize top level");
            }
            for (ComponentDeclaration componentDeclaration3 : this.f101777k.values()) {
                StyleElement sourceElement5 = componentDeclaration3.getSourceElement();
                if (!sourceElement5.m63955F(8)) {
                    sourceElement5.m63970V(8);
                    ((StylesheetComponent) sourceElement5).optimize(componentDeclaration3);
                }
            }
            if (Compilation.TIMING) {
                timer.report("optimize functions");
            }
            getDecimalFormatManager().checkConsistency();
            if (Compilation.TIMING) {
                timer.report("check decimal formats");
            }
            RuleManager ruleManager = getRuleManager();
            ruleManager.computeRankings();
            if (!compilation.isFallbackToNonStreaming()) {
                ruleManager.invertStreamableTemplates();
            }
            if (configuration.obtainOptimizer().isOptionSet(2048)) {
                ruleManager.optimizeRules();
            }
            if (Compilation.TIMING) {
                timer.report("build template rule tables");
            }
            ExecutableFunctionLibrary executableFunctionLibrary = new ExecutableFunctionLibrary(configuration);
            ExecutableFunctionLibrary executableFunctionLibrary2 = new ExecutableFunctionLibrary(configuration);
            for (Component component : this.f101773g.getComponentIndex().values()) {
                component.getVisibility();
                if (component.getActor() instanceof UserFunction) {
                    UserFunction userFunction = (UserFunction) component.getActor();
                    if (userFunction.isOverrideExtensionFunction()) {
                        executableFunctionLibrary.addFunction(userFunction);
                    } else {
                        executableFunctionLibrary2.addFunction(userFunction);
                    }
                }
            }
            getStylesheetPackage().setFunctionLibraryDetails(null, executableFunctionLibrary, executableFunctionLibrary2);
            if (Compilation.TIMING) {
                timer.report("build runtime function tables");
            }
            Iterator<ComponentDeclaration> it5 = this.topLevel.iterator();
            while (it5.hasNext()) {
                StyleElement sourceElement6 = it5.next().getSourceElement();
                if ((sourceElement6 instanceof XSLTemplate) && (actor = ((XSLTemplate) sourceElement6).getActor()) != null && actor.getTemplateName() == null) {
                    actor.allocateAllBindingSlots(this.f101773g);
                }
            }
            if (Compilation.TIMING) {
                timer.report("allocate binding slots to named templates");
            }
            Iterator<Component> it6 = this.f101773g.getComponentIndex().values().iterator();
            while (it6.hasNext()) {
                Actor actor2 = it6.next().getActor();
                if (actor2 != null) {
                    actor2.allocateAllBindingSlots(this.f101773g);
                }
            }
            if (Compilation.TIMING) {
                timer.report("allocate binding slots to component references");
            }
            Iterator<KeyDefinitionSet> it7 = getKeyManager().getAllKeyDefinitionSets().iterator();
            while (it7.hasNext()) {
                for (KeyDefinition keyDefinition : it7.next().getKeyDefinitions()) {
                    keyDefinition.makeDeclaringComponent(Visibility.PRIVATE, getStylesheetPackage());
                    keyDefinition.allocateAllBindingSlots(this.f101773g);
                }
            }
            if (Compilation.TIMING) {
                timer.report("allocate binding slots to key definitions");
            }
            AccumulatorRegistry accumulatorManager = getAccumulatorManager();
            if (accumulatorManager != null) {
                Iterator<Accumulator> it8 = accumulatorManager.getAllAccumulators().iterator();
                while (it8.hasNext()) {
                    it8.next().allocateAllBindingSlots(this.f101773g);
                }
            }
            if (Compilation.TIMING) {
                timer.report("allocate binding slots to accumulators");
            }
            if (compilation.getCompilerInfo().isGenerateByteCode() && !configuration.isDeferredByteCode(HostLanguage.XSLT)) {
                if (Compilation.TIMING) {
                    configuration.getLogger().info("Generating byte code...");
                }
                Optimizer obtainOptimizer = configuration.obtainOptimizer();
                Iterator<ComponentDeclaration> it9 = this.topLevel.iterator();
                while (it9.hasNext()) {
                    SourceLocator sourceElement7 = it9.next().getSourceElement();
                    if (sourceElement7 instanceof StylesheetComponent) {
                        ((StylesheetComponent) sourceElement7).generateByteCode(obtainOptimizer);
                    }
                }
            }
            if (Compilation.TIMING) {
                timer.report("inject byte code candidates");
                timer.reportCumulative("total compile time");
            }
        } catch (RuntimeException e) {
            if (compilation.getErrorCount() == 0) {
                throw e;
            }
        }
    }

    public void compileError(String str, String str2) throws XPathException {
        compileError(new XPathException(str, str2));
    }

    public void complete() throws XPathException {
        this.f101773g.complete();
    }

    public void declareXQueryFunction(XQueryFunction xQueryFunction) throws XPathException {
        XQueryFunctionLibrary xQueryFunctionLibrary = getStylesheetPackage().getXQueryFunctionLibrary();
        if (getStylesheetPackage().getFunction(xQueryFunction.getUserFunction().getSymbolicName()) == null) {
            xQueryFunctionLibrary.declareFunction(xQueryFunction);
            return;
        }
        throw new XPathException("Duplicate declaration of " + xQueryFunction.getUserFunction().getSymbolicName(), "XQST0034");
    }

    /* renamed from: e */
    public final void m63938e() throws XPathException {
        for (int size = this.topLevel.size() - 1; size >= 0; size--) {
            ComponentDeclaration componentDeclaration = this.topLevel.get(size);
            componentDeclaration.getSourceElement().index(componentDeclaration, this);
        }
    }

    /* renamed from: f */
    public final void m63939f() {
        Compilation compilation = getRootElement().getCompilation();
        if (compilation.isSchemaAware() || !getConfiguration().isLicensedFeature(2)) {
            return;
        }
        Iterator<ComponentDeclaration> it2 = this.topLevel.iterator();
        while (it2.hasNext()) {
            if (it2.next().getSourceElement() instanceof XSLImportSchema) {
                compilation.setSchemaAware(true);
                return;
            }
        }
    }

    public void fixup() throws XPathException {
        Iterator<Action> it2 = this.f101790x.iterator();
        while (it2.hasNext()) {
            it2.next().doAction();
        }
    }

    /* renamed from: g */
    public final void m63940g() {
        this.f101784r = new HashMap<>(this.f101782p);
        this.f101785s = new HashSet(this.f101782p);
        HashSet hashSet = new HashSet();
        int i = -1;
        for (int i2 = 0; i2 < this.f101782p; i2++) {
            ComponentDeclaration componentDeclaration = this.f101783q.get(i2);
            XSLNamespaceAlias xSLNamespaceAlias = (XSLNamespaceAlias) componentDeclaration.getSourceElement();
            String stylesheetURI = xSLNamespaceAlias.getStylesheetURI();
            NamespaceBinding resultNamespaceBinding = xSLNamespaceAlias.getResultNamespaceBinding();
            int precedence = componentDeclaration.getPrecedence();
            if (i != precedence) {
                hashSet.clear();
                i = precedence;
            }
            if (hashSet.contains(stylesheetURI) && !this.f101784r.get(stylesheetURI).getURI().equals(resultNamespaceBinding.getURI())) {
                xSLNamespaceAlias.compileError("More than one alias is defined for the same namespace", "XTSE0810");
            }
            if (this.f101784r.get(stylesheetURI) == null) {
                this.f101784r.put(stylesheetURI, resultNamespaceBinding);
                this.f101785s.add(resultNamespaceBinding.getURI());
            }
            hashSet.add(stylesheetURI);
        }
        this.f101783q = null;
    }

    public Properties gatherOutputProperties(StructuredQName structuredQName) throws XPathException {
        boolean z = structuredQName == null;
        Properties properties = new Properties(getConfiguration().getDefaultSerializationProperties());
        HashMap<String, Integer> hashMap = new HashMap<>(10);
        for (int size = this.topLevel.size() - 1; size >= 0; size--) {
            ComponentDeclaration componentDeclaration = this.topLevel.get(size);
            if (componentDeclaration.getSourceElement() instanceof XSLOutput) {
                XSLOutput xSLOutput = (XSLOutput) componentDeclaration.getSourceElement();
                if (structuredQName == null) {
                    if (xSLOutput.getFormatQName() != null) {
                    }
                    xSLOutput.gatherOutputProperties(properties, hashMap, componentDeclaration.getPrecedence());
                    z = true;
                } else {
                    if (!structuredQName.equals(xSLOutput.getFormatQName())) {
                    }
                    xSLOutput.gatherOutputProperties(properties, hashMap, componentDeclaration.getPrecedence());
                    z = true;
                }
            }
        }
        if (!z) {
            compileError("Requested output format " + structuredQName.getDisplayName() + " has not been defined", "XTDE1460");
        }
        return properties;
    }

    public AccumulatorRegistry getAccumulatorManager() {
        return this.f101781o;
    }

    public List<ComponentDeclaration> getAttributeSetDeclarations(StructuredQName structuredQName) {
        return this.f101786t.get(structuredQName);
    }

    public void getAttributeSets(StructuredQName structuredQName, List<ComponentDeclaration> list) {
        for (ComponentDeclaration componentDeclaration : this.topLevel) {
            if ((componentDeclaration.getSourceElement() instanceof XSLAttributeSet) && ((XSLAttributeSet) componentDeclaration.getSourceElement()).getAttributeSetName().equals(structuredQName)) {
                list.add(componentDeclaration);
            }
        }
    }

    public ComponentDeclaration getCharacterMap(StructuredQName structuredQName) {
        for (int size = this.topLevel.size() - 1; size >= 0; size--) {
            ComponentDeclaration componentDeclaration = this.topLevel.get(size);
            if ((componentDeclaration.getSourceElement() instanceof XSLCharacterMap) && ((XSLCharacterMap) componentDeclaration.getSourceElement()).getCharacterMapName().equals(structuredQName)) {
                return componentDeclaration;
            }
        }
        return null;
    }

    public CharacterMapIndex getCharacterMapIndex() {
        return this.f101789w;
    }

    public Component getComponent(SymbolicName symbolicName) {
        return this.f101773g.getComponentIndex().get(symbolicName);
    }

    public DecimalFormatManager getDecimalFormatManager() {
        return this.f101779m;
    }

    @Override // net.p110sf.saxon.trans.GlobalVariableManager
    public GlobalVariable getEquivalentVariable(Expression expression) {
        return null;
    }

    public SourceBinding getGlobalVariableBinding(StructuredQName structuredQName) {
        ComponentDeclaration componentDeclaration = this.f101775i.get(structuredQName);
        if (componentDeclaration == null) {
            return null;
        }
        return ((XSLGlobalVariable) componentDeclaration.getSourceElement()).getSourceBinding();
    }

    public Set<String> getImportedSchemaTable() {
        return this.f101773g.getSchemaNamespaces();
    }

    public KeyManager getKeyManager() {
        return this.f101778l;
    }

    public NamedTemplate getNamedTemplate(StructuredQName structuredQName) {
        Component component = this.f101773g.getComponentIndex().get(new SymbolicName(210, structuredQName));
        if (component == null) {
            return null;
        }
        return (NamedTemplate) component.getActor();
    }

    public NamespaceBinding getNamespaceAlias(String str) {
        return this.f101784r.get(str);
    }

    @Override // net.p110sf.saxon.style.StylesheetModule
    public PrincipalStylesheetModule getPrincipalStylesheetModule() {
        return this;
    }

    public RuleManager getRuleManager() {
        return this.f101780n;
    }

    public SlotManager getSlotManager() {
        return null;
    }

    public XSLModuleRoot getStylesheetDocument(DocumentKey documentKey) {
        XSLModuleRoot xSLModuleRoot = this.f101787u.get(documentKey);
        if (xSLModuleRoot != null) {
            xSLModuleRoot.issueWarning(new XPathException("Stylesheet module " + documentKey + " is included or imported more than once. This is permitted, but may lead to errors or unexpected behavior"));
        }
        return xSLModuleRoot;
    }

    public StylesheetPackage getStylesheetPackage() {
        return this.f101773g;
    }

    public TypeAliasManager getTypeAliasManager() {
        return this.f101788v;
    }

    /* renamed from: h */
    public final void m63941h(XSLUsePackage xSLUsePackage, Compilation compilation, Set<SymbolicName> set) throws XPathException {
        xSLUsePackage.m64061Z(compilation.getCompilerInfo());
        xSLUsePackage.m64062a0(this, this.topLevel, set);
    }

    public boolean hasNamespaceAliases() {
        return this.f101782p > 0;
    }

    public void importSchemata() throws XPathException {
        for (int size = this.topLevel.size() - 1; size >= 0; size--) {
            ComponentDeclaration componentDeclaration = this.topLevel.get(size);
            if (componentDeclaration.getSourceElement() instanceof XSLImportSchema) {
                XPathException xPathException = new XPathException("xsl:import-schema requires Saxon-EE");
                xPathException.setErrorCode("XTSE1650");
                xPathException.setLocator(componentDeclaration.getSourceElement());
                throw xPathException;
            }
        }
    }

    public void indexAttributeSet(ComponentDeclaration componentDeclaration) throws XPathException {
        XSLAttributeSet xSLAttributeSet = (XSLAttributeSet) componentDeclaration.getSourceElement();
        StructuredQName attributeSetName = xSLAttributeSet.getAttributeSetName();
        List<ComponentDeclaration> list = this.f101786t.get(attributeSetName);
        if (list == null) {
            list = new ArrayList<>();
            this.f101786t.put(attributeSetName, list);
        } else {
            String trim = Whitespace.trim(xSLAttributeSet.getAttributeValue("", "visibility"));
            String trim2 = Whitespace.trim(list.get(0).getSourceElement().getAttributeValue("", "visibility"));
            if (trim != null ? !trim.equals(trim2) : trim2 != null) {
                throw new XPathException("Visibility attributes on attribute-sets sharing the same name must all be the same", "XTSE0010");
            }
        }
        list.add(0, componentDeclaration);
    }

    public void indexFunction(ComponentDeclaration componentDeclaration) {
        HashMap<SymbolicName, Component> componentIndex = this.f101773g.getComponentIndex();
        XSLFunction xSLFunction = (XSLFunction) componentDeclaration.getSourceElement();
        Component obtainDeclaringComponent = xSLFunction.getCompiledFunction().obtainDeclaringComponent(xSLFunction);
        SymbolicName.C18533F symbolicName = xSLFunction.getSymbolicName();
        if (symbolicName != null) {
            Component component = componentIndex.get(symbolicName);
            if (component == null) {
                componentIndex.put(symbolicName, obtainDeclaringComponent);
                this.f101777k.put(symbolicName, componentDeclaration);
                return;
            }
            if (component.getDeclaringPackage() != getStylesheetPackage()) {
                if (xSLFunction.m63983v(192) != null) {
                    componentIndex.put(symbolicName, obtainDeclaringComponent);
                    this.f101777k.put(symbolicName, componentDeclaration);
                    return;
                }
                xSLFunction.compileError("Function " + symbolicName.getShortName() + " conflicts with a public function in package " + component.getDeclaringPackage().getPackageName(), "XTSE3050");
                return;
            }
            int precedence = componentDeclaration.getPrecedence();
            ComponentDeclaration componentDeclaration2 = this.f101777k.get(symbolicName);
            int precedence2 = componentDeclaration2.getPrecedence();
            if (precedence != precedence2) {
                if (precedence < precedence2) {
                    return;
                }
                componentIndex.put(symbolicName, obtainDeclaringComponent);
                this.f101777k.put(symbolicName, componentDeclaration);
                return;
            }
            xSLFunction.compileError("Duplicate named function (see line " + componentDeclaration2.getSourceElement().getLineNumber() + " of " + componentDeclaration2.getSourceElement().getSystemId() + ')', "XTSE0770");
        }
    }

    public void indexMode(ComponentDeclaration componentDeclaration) {
        XSLMode xSLMode = (XSLMode) componentDeclaration.getSourceElement();
        StructuredQName objectName = xSLMode.getObjectName();
        if (objectName == null) {
            return;
        }
        SymbolicName symbolicName = new SymbolicName(180, objectName);
        Mode obtainMode = getStylesheetPackage().getRuleManager().obtainMode(objectName, false);
        if (obtainMode == null || obtainMode.getDeclaringComponent().getDeclaringPackage() == getStylesheetPackage()) {
            return;
        }
        xSLMode.compileError("Mode " + symbolicName.getComponentName().getDisplayName() + " conflicts with a public mode declared in package " + obtainMode.getDeclaringComponent().getDeclaringPackage().getPackageName(), "XTSE3050");
    }

    public void indexNamedTemplate(ComponentDeclaration componentDeclaration) throws XPathException {
        HashMap<SymbolicName, Component> componentIndex = this.f101773g.getComponentIndex();
        XSLTemplate xSLTemplate = (XSLTemplate) componentDeclaration.getSourceElement();
        SymbolicName symbolicName = xSLTemplate.getSymbolicName();
        if (symbolicName != null) {
            Component component = componentIndex.get(symbolicName);
            if (component == null) {
                NamedTemplate compiledNamedTemplate = ((XSLTemplate) componentDeclaration.getSourceElement()).getCompiledNamedTemplate();
                componentIndex.put(symbolicName, compiledNamedTemplate.obtainDeclaringComponent(xSLTemplate));
                m63937n(xSLTemplate, compiledNamedTemplate);
                this.f101776j.put(symbolicName.getComponentName(), componentDeclaration);
                return;
            }
            if (component.getDeclaringPackage() != getStylesheetPackage()) {
                if (xSLTemplate.m63983v(192) != null) {
                    componentIndex.put(symbolicName, xSLTemplate.getCompiledNamedTemplate().obtainDeclaringComponent(xSLTemplate));
                    this.f101776j.put(symbolicName.getComponentName(), componentDeclaration);
                    return;
                }
                xSLTemplate.compileError("Named template " + symbolicName.getComponentName().getDisplayName() + " conflicts with a public named template in package " + component.getDeclaringPackage().getPackageName(), "XTSE3050");
                return;
            }
            int precedence = componentDeclaration.getPrecedence();
            ComponentDeclaration componentDeclaration2 = this.f101776j.get(symbolicName.getComponentName());
            int precedence2 = componentDeclaration2.getPrecedence();
            if (precedence != precedence2) {
                if (precedence < precedence2) {
                    return;
                }
                NamedTemplate namedTemplate = new NamedTemplate(symbolicName.getComponentName());
                componentIndex.put(symbolicName, namedTemplate.obtainDeclaringComponent(xSLTemplate));
                this.f101776j.put(symbolicName.getComponentName(), componentDeclaration);
                m63937n(xSLTemplate, namedTemplate);
                return;
            }
            xSLTemplate.compileError("Duplicate named template (see line " + componentDeclaration2.getSourceElement().getLineNumber() + " of " + componentDeclaration2.getSourceElement().getSystemId() + ')', xSLTemplate.getParent() instanceof XSLOverride ? "XTSE3055" : "XTSE0660");
        }
    }

    public void indexVariableDeclaration(ComponentDeclaration componentDeclaration) throws XPathException {
        XSLGlobalVariable xSLGlobalVariable = (XSLGlobalVariable) componentDeclaration.getSourceElement();
        StructuredQName variableQName = xSLGlobalVariable.getSourceBinding().getVariableQName();
        Component obtainDeclaringComponent = ((GlobalVariable) xSLGlobalVariable.getActor()).obtainDeclaringComponent(xSLGlobalVariable);
        HashMap<SymbolicName, Component> componentIndex = this.f101773g.getComponentIndex();
        if (variableQName != null) {
            SymbolicName symbolicName = xSLGlobalVariable.getSymbolicName();
            Component component = componentIndex.get(symbolicName);
            if (component == null) {
                this.f101775i.put(variableQName, componentDeclaration);
                componentIndex.put(new SymbolicName(218, variableQName), xSLGlobalVariable.getActor().getDeclaringComponent());
                return;
            }
            if (component.getDeclaringPackage() != getStylesheetPackage()) {
                if (xSLGlobalVariable.m63983v(192) != null) {
                    componentIndex.put(symbolicName, obtainDeclaringComponent);
                    this.f101775i.put(symbolicName.getComponentName(), componentDeclaration);
                    return;
                }
                xSLGlobalVariable.compileError("Global " + (xSLGlobalVariable instanceof XSLGlobalParam ? "parameter" : Constants.ELEMNAME_VARIABLE_STRING) + " $" + symbolicName.getComponentName().getDisplayName() + " conflicts with a public variable/parameter in package " + component.getDeclaringPackage().getPackageName(), "XTSE3050");
                return;
            }
            int precedence = componentDeclaration.getPrecedence();
            ComponentDeclaration componentDeclaration2 = this.f101775i.get(symbolicName.getComponentName());
            int precedence2 = componentDeclaration2.getPrecedence();
            if (precedence != precedence2) {
                if (precedence < precedence2 && xSLGlobalVariable != componentDeclaration2.getSourceElement()) {
                    xSLGlobalVariable.setRedundant(true);
                    return;
                } else {
                    if (xSLGlobalVariable != componentDeclaration2.getSourceElement()) {
                        ((XSLGlobalVariable) componentDeclaration2.getSourceElement()).setRedundant(true);
                        this.f101775i.put(variableQName, componentDeclaration);
                        componentIndex.put(new SymbolicName(218, variableQName), xSLGlobalVariable.getActor().getDeclaringComponent());
                        return;
                    }
                    return;
                }
            }
            StyleElement sourceElement = componentDeclaration2.getSourceElement();
            if (sourceElement == xSLGlobalVariable) {
                xSLGlobalVariable.compileError("Global variable or parameter $" + variableQName.getDisplayName() + " is declared more than once (caused by including the containing module more than once)", "XTSE0630");
                return;
            }
            xSLGlobalVariable.compileError("Duplicate global variable/parameter $" + variableQName.getDisplayName() + " (see line " + sourceElement.getLineNumber() + " of " + sourceElement.getSystemId() + ')', "XTSE0630");
        }
    }

    public boolean isAliasResultNamespace(String str) {
        return this.f101785s.contains(str);
    }

    public boolean isDeclaredModes() {
        return this.f101774h;
    }

    public boolean isImportedSchema(String str) {
        return this.f101773g.getSchemaNamespaces().contains(str);
    }

    /* renamed from: k */
    public final void m63942k(List<XSLExpose> list, Component component) throws XPathException {
        for (XSLExpose xSLExpose : list) {
            Iterator<ComponentTest> it2 = xSLExpose.getWildcardComponentTests().iterator();
            while (it2.hasNext()) {
                if (it2.next().matches(component.getActor())) {
                    Visibility visibility = xSLExpose.getVisibility();
                    Visibility visibility2 = Visibility.ABSTRACT;
                    if (visibility != visibility2 || component.getVisibility() == visibility2) {
                        component.setVisibility(xSLExpose.getVisibility(), VisibilityProvenance.EXPOSED);
                        return;
                    }
                    XPathException xPathException = new XPathException("The non-abstract component " + component.getActor().getSymbolicName() + " cannot be made abstract by means of xsl:expose", "XTSE3025");
                    xPathException.setLocation(xSLExpose);
                    throw xPathException;
                }
            }
        }
    }

    /* renamed from: l */
    public final boolean m63943l(List<XSLExpose> list, Component component, boolean z) throws XPathException {
        for (XSLExpose xSLExpose : list) {
            for (ComponentTest componentTest : xSLExpose.getWildcardComponentTests()) {
                if (componentTest.isPartialWildcard() && componentTest.matches(component.getActor())) {
                    Visibility visibility = xSLExpose.getVisibility();
                    Visibility visibility2 = Visibility.ABSTRACT;
                    if (visibility != visibility2 || component.getVisibility() == visibility2) {
                        component.setVisibility(xSLExpose.getVisibility(), VisibilityProvenance.EXPOSED);
                        return true;
                    }
                    XPathException xPathException = new XPathException("The non-abstract component " + component.getActor().getSymbolicName() + " cannot be made abstract by means of xsl:expose", "XTSE3025");
                    xPathException.setLocation(xSLExpose);
                    throw xPathException;
                }
            }
        }
        return z;
    }

    /* renamed from: m */
    public final void m63944m(StyleElement styleElement, RuleManager ruleManager) {
        String attributeValue;
        if (((styleElement instanceof XSLApplyTemplates) || (styleElement instanceof XSLTemplate)) && (attributeValue = styleElement.getAttributeValue(Constants.ATTRNAME_MODE)) != null) {
            for (String str : Whitespace.trim(attributeValue).split("[ \t\n\r]+")) {
                if (!str.startsWith("#")) {
                    StructuredQName makeQName = styleElement.makeQName(str, null, Constants.ATTRNAME_MODE);
                    Component component = getStylesheetPackage().getComponentIndex().get(new SymbolicName(180, makeQName));
                    if (component == null || component.getDeclaringPackage() == getStylesheetPackage()) {
                        ruleManager.obtainMode(makeQName, true);
                    } else if ((styleElement instanceof XSLTemplate) && !(styleElement.getParent() instanceof XSLOverride)) {
                        styleElement.compileError("A template rule cannot be added to a mode declared in a used package unless the xsl:template declaration appears within an xsl:override child of the appropriate xsl:use-package element", "XTSE3050");
                    }
                }
            }
        }
        AxisIterator iterateAxis = styleElement.iterateAxis(3);
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return;
            }
            if (next instanceof StyleElement) {
                m63944m((StyleElement) next, ruleManager);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void optimizeTopLevel() throws XPathException {
        for (ComponentDeclaration componentDeclaration : this.topLevel) {
            StyleElement sourceElement = componentDeclaration.getSourceElement();
            if ((sourceElement instanceof StylesheetComponent) && !(sourceElement instanceof XSLFunction) && !sourceElement.m63955F(8)) {
                sourceElement.m63970V(8);
                ((StylesheetComponent) sourceElement).optimize(componentDeclaration);
            }
            if (sourceElement instanceof XSLTemplate) {
                ((XSLTemplate) sourceElement).allocatePatternSlotNumbers();
            }
        }
    }

    public void preprocess(Compilation compilation) throws XPathException {
        StructuredQName formatQName;
        Timer timer = compilation.timer;
        spliceUsePackages((XSLPackage) getRootElement(), getRootElement().getCompilation());
        if (Compilation.TIMING) {
            timer.report("spliceIncludes");
        }
        importSchemata();
        if (Compilation.TIMING) {
            timer.report("importSchemata");
        }
        getTypeAliasManager().processAllDeclarations(this.topLevel);
        m63938e();
        if (Compilation.TIMING) {
            timer.report("buildIndexes");
        }
        m63939f();
        if (Compilation.TIMING) {
            timer.report("checkForSchemaAwareness");
        }
        processAllAttributes();
        if (Compilation.TIMING) {
            timer.report("processAllAttributes");
        }
        m63940g();
        if (Compilation.TIMING) {
            timer.report("collectNamespaceAliases");
        }
        Iterator<ComponentDeclaration> it2 = this.topLevel.iterator();
        while (it2.hasNext()) {
            StyleElement sourceElement = it2.next().getSourceElement();
            if (!sourceElement.m63955F(16)) {
                sourceElement.m63970V(16);
                sourceElement.fixupReferences();
            }
        }
        if (Compilation.TIMING) {
            timer.report("fixupReferences");
        }
        XSLPackage xSLPackage = (XSLPackage) getStylesheetElement();
        if (!xSLPackage.m63955F(1)) {
            xSLPackage.m63970V(1);
            xSLPackage.validate(null);
            for (ComponentDeclaration componentDeclaration : this.topLevel) {
                componentDeclaration.getSourceElement().validateSubtree(componentDeclaration, false);
            }
        }
        if (Compilation.TIMING) {
            timer.report("validate");
        }
        Properties gatherOutputProperties = gatherOutputProperties(null);
        gatherOutputProperties.setProperty(SaxonOutputKeys.STYLESHEET_VERSION, xSLPackage.m63950A() + "");
        getStylesheetPackage().setDefaultOutputProperties(gatherOutputProperties);
        HashSet hashSet = new HashSet(5);
        for (ComponentDeclaration componentDeclaration2 : this.topLevel) {
            if ((componentDeclaration2.getSourceElement() instanceof XSLOutput) && (formatQName = ((XSLOutput) componentDeclaration2.getSourceElement()).getFormatQName()) != null) {
                hashSet.add(formatQName);
            }
        }
        if (!hashSet.isEmpty()) {
            Iterator it3 = hashSet.iterator();
            while (it3.hasNext()) {
                StructuredQName structuredQName = (StructuredQName) it3.next();
                getStylesheetPackage().setNamedOutputProperties(structuredQName, gatherOutputProperties(structuredQName));
            }
        } else if (this.f101791y) {
            throw new XPathException("The stylesheet contains xsl:result-document instructions that calculate the output format name at run-time, but there are no named xsl:output declarations", "XTDE1460");
        }
        if (Compilation.TIMING) {
            timer.report("Register output formats");
        }
        Iterator<ComponentDeclaration> it4 = this.topLevel.iterator();
        while (it4.hasNext()) {
            StyleElement sourceElement2 = it4.next().getSourceElement();
            if (sourceElement2 instanceof XSLCharacterMap) {
                XSLCharacterMap xSLCharacterMap = (XSLCharacterMap) sourceElement2;
                StructuredQName characterMapName = xSLCharacterMap.getCharacterMapName();
                IntHashMap<String> intHashMap = new IntHashMap<>();
                xSLCharacterMap.assemble(intHashMap);
                this.f101789w.putCharacterMap(xSLCharacterMap.getCharacterMapName(), new CharacterMap(characterMapName, intHashMap));
            }
        }
        if (Compilation.TIMING) {
            timer.report("Index character maps");
        }
    }

    public void processAllAttributes() throws XPathException {
        getRootElement().m63962N();
        getRootElement().m63963O();
        getRootElement().prepareAttributes();
        Iterator<XSLModuleRoot> it2 = this.f101787u.values().iterator();
        while (it2.hasNext()) {
            it2.next().prepareAttributes();
        }
        for (ComponentDeclaration componentDeclaration : this.topLevel) {
            StyleElement sourceElement = componentDeclaration.getSourceElement();
            if (!sourceElement.m63955F(32)) {
                sourceElement.m63970V(32);
                try {
                    sourceElement.processAllAttributes();
                } catch (XPathException e) {
                    componentDeclaration.getSourceElement().compileError(e);
                }
            }
        }
    }

    public void putStylesheetDocument(DocumentKey documentKey, XSLStylesheet xSLStylesheet) {
        this.f101787u.put(documentKey, xSLStylesheet);
    }

    public void setAccumulatorManager(AccumulatorRegistry accumulatorRegistry) {
        this.f101781o = accumulatorRegistry;
        this.f101773g.setAccumulatorRegistry(accumulatorRegistry);
    }

    public void setNeedsDynamicOutputProperties(boolean z) {
        this.f101791y = z;
    }

    public void spliceUsePackages(XSLPackage xSLPackage, Compilation compilation) throws XPathException {
        ArrayList<XSLUsePackage> arrayList = new ArrayList();
        m63935i(compilation, xSLPackage, arrayList);
        HashSet hashSet = new HashSet();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            m63941h((XSLUsePackage) it2.next(), compilation, hashSet);
        }
        StylesheetPackage stylesheetPackage = getStylesheetPackage();
        for (XSLUsePackage xSLUsePackage : arrayList) {
            stylesheetPackage.addComponentsFromUsedPackage(xSLUsePackage.getUsedPackage(), xSLUsePackage.m64064c0(), hashSet);
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            ((XSLUsePackage) it3.next()).m64063b0(this, hashSet);
        }
        spliceIncludes();
    }

    public void addGlobalVariable(GlobalVariable globalVariable, Visibility visibility) {
        Component makeDeclaringComponent = globalVariable.makeDeclaringComponent(visibility, getStylesheetPackage());
        if (globalVariable.getPackageData() == null) {
            globalVariable.setPackageData(this.f101773g);
        }
        if (visibility == Visibility.HIDDEN) {
            this.f101773g.addHiddenComponent(makeDeclaringComponent);
        } else {
            this.f101773g.getComponentIndex().put(new SymbolicName(218, globalVariable.getVariableQName()), makeDeclaringComponent);
        }
    }

    public void compileError(XPathException xPathException) {
        xPathException.setIsStaticError(true);
        getRootElement().compileError(xPathException);
    }
}
