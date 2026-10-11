package net.p110sf.saxon.query;

import com.google.android.material.motion.MotionUtils;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.EarlyEvaluationContext;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.GlobalVariableReference;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.Executable;
import net.p110sf.saxon.expr.instruct.GlobalContextRequirement;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.expr.parser.CodeInjector;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.expr.parser.OptimizerOptions;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.functions.FunctionLibrary;
import net.p110sf.saxon.functions.FunctionLibraryList;
import net.p110sf.saxon.functions.ResolveURI;
import net.p110sf.saxon.functions.registry.BuiltInFunctionSet;
import net.p110sf.saxon.functions.registry.ConstructorFunctionLibrary;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.QNameParser;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.query.XQueryParser;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.s9api.XmlProcessingError;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trace.XQueryTraceCodeInjector;
import net.p110sf.saxon.trans.DecimalFormatManager;
import net.p110sf.saxon.trans.KeyManager;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingAbort;
import net.p110sf.saxon.trans.XmlProcessingException;
import net.p110sf.saxon.trans.XmlProcessingIncident;
import net.p110sf.saxon.tree.util.IndexedStack;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class QueryModule implements StaticContext {

    /* renamed from: A0 */
    public PackageData f100987A0;

    /* renamed from: C0 */
    public Location f100989C0;

    /* renamed from: D0 */
    public OptimizerOptions f100990D0;

    /* renamed from: E0 */
    public int f100991E0;

    /* renamed from: Z */
    public String f100995Z;

    /* renamed from: e */
    public boolean f100996e;

    /* renamed from: f */
    public final Configuration f100997f;

    /* renamed from: g */
    public StaticQueryContext f100998g;

    /* renamed from: h */
    public final QueryModule f100999h;

    /* renamed from: i */
    public URI f101000i;

    /* renamed from: j */
    public String f101001j;

    /* renamed from: k */
    public String f101002k;

    /* renamed from: k0 */
    public String f101003k0;

    /* renamed from: l */
    public HashMap<String, String> f101004l;

    /* renamed from: m */
    public IndexedStack<NamespaceBinding> f101005m;

    /* renamed from: n */
    public HashMap<StructuredQName, GlobalVariable> f101006n;

    /* renamed from: o */
    public HashMap<StructuredQName, GlobalVariable> f101007o;

    /* renamed from: p */
    public HashMap<StructuredQName, UndeclaredVariable> f101008p;

    /* renamed from: q */
    public HashSet<String> f101009q;

    /* renamed from: r */
    public HashMap<String, HashSet<String>> f101011r;

    /* renamed from: s */
    public Executable f101012s;

    /* renamed from: t */
    public List<QueryModule> f101013t;

    /* renamed from: u */
    public FunctionLibraryList f101015u;

    /* renamed from: u0 */
    public String f101016u0;

    /* renamed from: v */
    public XQueryFunctionLibrary f101017v;

    /* renamed from: w */
    public int f101019w;

    /* renamed from: x */
    public int f101021x;

    /* renamed from: y */
    public int f101023y;

    /* renamed from: z */
    public Set<String> f101025z;

    /* renamed from: z0 */
    public CodeInjector f101026z0;

    /* renamed from: J */
    public boolean f100992J = true;

    /* renamed from: O */
    public boolean f100993O = true;

    /* renamed from: Q */
    public int f100994Q = 3;

    /* renamed from: q0 */
    public boolean f101010q0 = false;

    /* renamed from: t0 */
    public boolean f101014t0 = true;

    /* renamed from: v0 */
    public int f101018v0 = 4;

    /* renamed from: w0 */
    public boolean f101020w0 = false;

    /* renamed from: x0 */
    public ItemType f101022x0 = AnyItemType.getInstance();

    /* renamed from: y0 */
    public DecimalFormatManager f101024y0 = null;

    /* renamed from: B0 */
    public RetainedStaticContext f100988B0 = null;

    /* renamed from: net.sf.saxon.query.QueryModule$a */
    /* loaded from: classes11.dex */
    public class C18434a implements NamespaceResolver {
        public C18434a() {
        }

        @Override // net.p110sf.saxon.om.NamespaceResolver
        public String getURIForPrefix(String str, boolean z) {
            return QueryModule.this.checkURIForPrefix(str);
        }

        @Override // net.p110sf.saxon.om.NamespaceResolver
        public Iterator<String> iteratePrefixes() {
            return QueryModule.this.getNamespaceResolver().iteratePrefixes();
        }
    }

    /* renamed from: net.sf.saxon.query.QueryModule$b */
    /* loaded from: classes11.dex */
    public static class C18435b {

        /* renamed from: a */
        public String f101028a;

        /* renamed from: b */
        public String f101029b;
    }

    public QueryModule(StaticQueryContext staticQueryContext) throws XPathException {
        Configuration configuration = staticQueryContext.getConfiguration();
        this.f100997f = configuration;
        this.f100996e = true;
        this.f100999h = this;
        this.f100991E0 = staticQueryContext.getLanguageVersion();
        this.f101005m = new IndexedStack<>();
        this.f101001j = staticQueryContext.getBaseURI();
        this.f101016u0 = staticQueryContext.getDefaultCollationName();
        try {
            this.f101000i = this.f101001j == null ? null : new URI(this.f101001j);
            this.f101012s = staticQueryContext.makeExecutable();
            this.f101013t = null;
            m63483b(staticQueryContext);
            PackageData packageData = new PackageData(configuration);
            packageData.setHostLanguage(HostLanguage.XQUERY, getXPathVersion());
            packageData.setSchemaAware(isSchemaAware());
            this.f100987A0 = packageData;
            for (GlobalVariable globalVariable : staticQueryContext.iterateDeclaredGlobalVariables()) {
                declareVariable(globalVariable);
                packageData.addGlobalVariable(globalVariable);
                globalVariable.setPackageData(packageData);
            }
            this.f101012s.setTopLevelPackage(packageData);
            this.f101012s.addPackage(packageData);
            if (staticQueryContext.getModuleLocation() == null) {
                this.f100989C0 = new Loc(staticQueryContext.getSystemId(), 1, -1);
            } else {
                this.f100989C0 = staticQueryContext.getModuleLocation();
            }
            this.f100990D0 = staticQueryContext.getOptimizerOptions();
        } catch (URISyntaxException unused) {
            throw new XPathException("Invalid location URI: " + this.f101001j);
        }
    }

    public static QueryModule makeQueryModule(String str, Executable executable, QueryModule queryModule, String str2, String str3) throws XPathException {
        Objects.requireNonNull(str, "Base URI of XQuery module must not be null");
        Configuration configuration = executable.getConfiguration();
        QueryModule queryModule2 = new QueryModule(configuration, queryModule);
        try {
            queryModule2.setLocationURI(new URI(str));
            queryModule2.setBaseURI(str);
            queryModule2.setExecutable(executable);
            queryModule2.setModuleNamespace(str3);
            executable.addQueryLibraryModule(queryModule2);
            XQueryParser xQueryParser = (XQueryParser) configuration.newExpressionParser("XQ", queryModule.isUpdating(), 31);
            if (queryModule.getCodeInjector() != null) {
                xQueryParser.setCodeInjector(queryModule.getCodeInjector());
            } else if (configuration.isCompileWithTracing()) {
                xQueryParser.setCodeInjector(new XQueryTraceCodeInjector());
            }
            xQueryParser.setQNameParser(new QNameParser(queryModule2.getLiveNamespaceResolver()).withAcceptEQName(queryModule.getXPathVersion() >= 30).withUnescaper(new XQueryParser.Unescaper(configuration.getValidCharacterChecker())));
            xQueryParser.parseLibraryModule(str2, queryModule2);
            String moduleNamespace = queryModule2.getModuleNamespace();
            if (moduleNamespace == null) {
                XPathException xPathException = new XPathException("Imported module must be a library module");
                xPathException.setErrorCode("XQST0059");
                xPathException.setIsStaticError(true);
                throw xPathException;
            }
            if (moduleNamespace.equals(str3)) {
                return queryModule2;
            }
            XPathException xPathException2 = new XPathException("Imported module's namespace does not match requested namespace");
            xPathException2.setErrorCode("XQST0059");
            xPathException2.setIsStaticError(true);
            throw xPathException2;
        } catch (URISyntaxException e) {
            throw new XPathException("Invalid location URI " + str, e);
        }
    }

    /* renamed from: a */
    public NamespaceMap m63482a() {
        if (this.f101005m == null) {
            return NamespaceMap.emptyMap();
        }
        NamespaceMap emptyMap = NamespaceMap.emptyMap();
        HashSet hashSet = new HashSet(10);
        for (int size = this.f101005m.size() - 1; size >= 0; size--) {
            NamespaceBinding namespaceBinding = this.f101005m.get(size);
            if (!hashSet.contains(namespaceBinding.getPrefix())) {
                hashSet.add(namespaceBinding.getPrefix());
                if (!namespaceBinding.getURI().isEmpty()) {
                    emptyMap = emptyMap.put(namespaceBinding.getPrefix(), namespaceBinding.getURI());
                }
            }
        }
        return emptyMap;
    }

    public void addImportedNamespace(String str) {
        if (this.f101025z == null) {
            this.f101025z = new HashSet(5);
        }
        this.f101025z.add(str);
        getImportedFunctionLibrary().addImportedNamespace(str);
    }

    public void addImportedSchema(String str, String str2, List<String> list) {
        if (this.f101009q == null) {
            this.f101009q = new HashSet<>(5);
        }
        this.f101009q.add(str);
        HashMap<String, HashSet<String>> hashMap = getTopLevelModule().f101011r;
        if (hashMap == null) {
            hashMap = new HashMap<>(5);
            getTopLevelModule().f101011r = hashMap;
        }
        HashSet<String> hashSet = hashMap.get(str);
        if (hashSet == null) {
            hashSet = new HashSet<>(list.size());
            hashMap.put(str, hashSet);
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            try {
                hashSet.add(ResolveURI.makeAbsolute(it2.next(), str2).toString());
            } catch (URISyntaxException unused) {
            }
        }
    }

    /* renamed from: b */
    public final void m63483b(StaticQueryContext staticQueryContext) {
        this.f100998g = staticQueryContext;
        this.f101006n = new HashMap<>(10);
        this.f101008p = new HashMap<>(5);
        if (isTopLevelModule()) {
            this.f101007o = new HashMap<>(10);
        }
        this.f101009q = new HashSet<>(5);
        this.f101025z = new HashSet(5);
        this.f101002k = null;
        this.f101005m = new IndexedStack<>();
        this.f101004l = new HashMap<>(10);
        if (staticQueryContext != null) {
            this.f100992J = staticQueryContext.isInheritNamespaces();
            this.f100993O = staticQueryContext.isPreserveNamespaces();
            this.f101010q0 = staticQueryContext.isPreserveBoundarySpace();
            this.f101014t0 = staticQueryContext.isEmptyLeast();
            this.f100995Z = staticQueryContext.getDefaultFunctionNamespace();
            this.f101003k0 = staticQueryContext.getDefaultElementNamespace();
            this.f101016u0 = staticQueryContext.getDefaultCollationName();
            int constructionMode = staticQueryContext.getConstructionMode();
            this.f100994Q = constructionMode;
            if (constructionMode == 3 && !staticQueryContext.isSchemaAware()) {
                this.f100994Q = 4;
            }
            this.f101022x0 = staticQueryContext.getRequiredContextItemType();
            this.f101020w0 = staticQueryContext.isUpdatingEnabled();
            this.f101026z0 = staticQueryContext.getCodeInjector();
            this.f100990D0 = staticQueryContext.getOptimizerOptions();
        }
        m63484c(staticQueryContext);
    }

    public void bindUnboundFunctionCalls() throws XPathException {
        ((UnboundFunctionLibrary) this.f101015u.get(this.f101023y)).bindUnboundFunctionReferences(this.f101015u, getConfiguration());
    }

    public void bindUnboundVariables() throws XPathException {
        for (UndeclaredVariable undeclaredVariable : this.f101008p.values()) {
            StructuredQName variableQName = undeclaredVariable.getVariableQName();
            GlobalVariable globalVariable = this.f101006n.get(variableQName);
            if (globalVariable == null && importsNamespace(variableQName.getURI())) {
                globalVariable = getTopLevelModule().f101007o.get(variableQName);
            }
            if (globalVariable == null) {
                XPathException xPathException = new XPathException("Unresolved reference to variable $" + undeclaredVariable.getVariableQName().getDisplayName());
                xPathException.setErrorCode("XPST0008");
                xPathException.setIsStaticError(true);
                throw xPathException;
            }
            if (globalVariable.isPrivate() && !globalVariable.getSystemId().equals(getSystemId())) {
                XPathException xPathException2 = new XPathException("Cannot reference a private variable in a different module");
                xPathException2.setErrorCode("XPST0008");
                xPathException2.setIsStaticError(true);
                throw xPathException2;
            }
            undeclaredVariable.transferReferences(globalVariable);
        }
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public Expression bindVariable(StructuredQName structuredQName) throws XPathException {
        GlobalVariable globalVariable = this.f101006n.get(structuredQName);
        if (globalVariable == null) {
            String uri = structuredQName.getURI();
            if ((!uri.equals("") || !isMainModule()) && !uri.equals(this.f101002k) && !importsNamespace(uri)) {
                XPathException xPathException = new XPathException("Variable $" + structuredQName.getDisplayName() + " has not been declared");
                xPathException.setErrorCode("XPST0008");
                xPathException.setIsStaticError(true);
                throw xPathException;
            }
            QueryModule topLevelModule = getTopLevelModule();
            GlobalVariable globalVariable2 = topLevelModule.f101007o.get(structuredQName);
            if (globalVariable2 == null) {
                UndeclaredVariable undeclaredVariable = this.f101008p.get(structuredQName);
                if (undeclaredVariable != null) {
                    GlobalVariableReference globalVariableReference = new GlobalVariableReference(structuredQName);
                    undeclaredVariable.registerReference(globalVariableReference);
                    return globalVariableReference;
                }
                UndeclaredVariable undeclaredVariable2 = new UndeclaredVariable();
                undeclaredVariable2.setPackageData(topLevelModule.getPackageData());
                undeclaredVariable2.setVariableQName(structuredQName);
                GlobalVariableReference globalVariableReference2 = new GlobalVariableReference(structuredQName);
                undeclaredVariable2.registerReference(globalVariableReference2);
                this.f101008p.put(structuredQName, undeclaredVariable2);
                return globalVariableReference2;
            }
            if (globalVariable2.isPrivate()) {
                XPathException xPathException2 = new XPathException("Variable $" + structuredQName.getDisplayName() + " is private");
                xPathException2.setErrorCode("XPST0008");
                xPathException2.setIsStaticError(true);
                throw xPathException2;
            }
            globalVariable = globalVariable2;
        } else if (globalVariable.isPrivate() && (globalVariable.getSystemId() == null || !globalVariable.getSystemId().equals(getSystemId()))) {
            String str = "Variable $" + structuredQName.getDisplayName() + " is private";
            if (globalVariable.getSystemId() == null) {
                str = str + " (no base URI known)";
            }
            XPathException xPathException3 = new XPathException(str, "XPST0008");
            xPathException3.setIsStaticError(true);
            throw xPathException3;
        }
        GlobalVariableReference globalVariableReference3 = new GlobalVariableReference(structuredQName);
        globalVariable.registerReference(globalVariableReference3);
        return globalVariableReference3;
    }

    /* renamed from: c */
    public final void m63484c(StaticQueryContext staticQueryContext) {
        Configuration configuration = getConfiguration();
        if (isTopLevelModule()) {
            this.f101017v = new XQueryFunctionLibrary(configuration);
        }
        FunctionLibraryList functionLibraryList = new FunctionLibraryList();
        this.f101015u = functionLibraryList;
        functionLibraryList.addFunctionLibrary(getBuiltInFunctionSet());
        this.f101015u.addFunctionLibrary(configuration.getBuiltInExtensionLibraryList());
        this.f101015u.addFunctionLibrary(new ConstructorFunctionLibrary(configuration));
        this.f101019w = this.f101015u.addFunctionLibrary(new XQueryFunctionLibrary(configuration));
        this.f101021x = this.f101015u.addFunctionLibrary(new ImportedFunctionLibrary(this, getTopLevelModule().getGlobalFunctionLibrary()));
        if (staticQueryContext != null && staticQueryContext.getExtensionFunctionLibrary() != null) {
            this.f101015u.addFunctionLibrary(staticQueryContext.getExtensionFunctionLibrary());
        }
        this.f101015u.addFunctionLibrary(configuration.getIntegratedFunctionLibrary());
        configuration.addExtensionBinders(this.f101015u);
        this.f101023y = this.f101015u.addFunctionLibrary(new UnboundFunctionLibrary());
    }

    public void checkForCircularities(List<GlobalVariable> list, XQueryFunctionLibrary xQueryFunctionLibrary) throws XPathException {
        IndexedStack<Object> indexedStack = null;
        for (GlobalVariable globalVariable : list) {
            if (indexedStack == null) {
                indexedStack = new IndexedStack<>();
            }
            if (globalVariable != null) {
                globalVariable.lookForCycles(indexedStack, xQueryFunctionLibrary);
            }
        }
    }

    public String checkURIForPrefix(String str) {
        String namespaceForPrefix;
        IndexedStack<NamespaceBinding> indexedStack = this.f101005m;
        if (indexedStack != null) {
            for (int size = indexedStack.size() - 1; size >= 0; size--) {
                if (this.f101005m.get(size).getPrefix().equals(str)) {
                    String uri = this.f101005m.get(size).getURI();
                    if (!uri.equals("") || str.equals("")) {
                        return uri;
                    }
                    return null;
                }
            }
        }
        if (str.isEmpty()) {
            return this.f101003k0;
        }
        String str2 = this.f101004l.get(str);
        if (str2 != null) {
            if (str2.isEmpty()) {
                return null;
            }
            return str2;
        }
        StaticQueryContext staticQueryContext = this.f100998g;
        if (staticQueryContext == null || (namespaceForPrefix = staticQueryContext.getNamespaceForPrefix(str)) == null) {
            return null;
        }
        return namespaceForPrefix;
    }

    public void declareActiveNamespace(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("Null prefix supplied to declareActiveNamespace()");
        }
        if (str2 == null) {
            throw new NullPointerException("Null namespace URI supplied to declareActiveNamespace()");
        }
        this.f101005m.push(new NamespaceBinding(str, str2));
    }

    public void declareFunction(XQueryFunction xQueryFunction) throws XPathException {
        SchemaType schemaType;
        Configuration configuration = getConfiguration();
        if (xQueryFunction.getNumberOfArguments() != 1 || (schemaType = configuration.getSchemaType(xQueryFunction.getFunctionName())) == null || !schemaType.isAtomicType()) {
            getLocalFunctionLibrary().declareFunction(xQueryFunction);
            getTopLevelModule().f101017v.declareFunction(xQueryFunction);
            return;
        }
        XPathException xPathException = new XPathException("Function name " + xQueryFunction.getDisplayName() + " clashes with the name of the constructor function for an atomic type");
        xPathException.setErrorCode("XQST0034");
        xPathException.setIsStaticError(true);
        throw xPathException;
    }

    public void declarePrologNamespace(String str, String str2) throws XPathException {
        if (str == null) {
            throw new NullPointerException("Null prefix supplied to declarePrologNamespace()");
        }
        if (str2 == null) {
            throw new NullPointerException("Null namespace URI supplied to declarePrologNamespace()");
        }
        if (str.equals("xml") != str2.equals("http://www.w3.org/XML/1998/namespace")) {
            XPathException xPathException = new XPathException("Invalid declaration of the XML namespace");
            xPathException.setErrorCode("XQST0070");
            xPathException.setIsStaticError(true);
            throw xPathException;
        }
        if (this.f101004l.get(str) == null) {
            this.f101004l.put(str, str2);
            return;
        }
        XPathException xPathException2 = new XPathException("Duplicate declaration of namespace prefix \"" + str + '\"');
        xPathException2.setErrorCode("XQST0033");
        xPathException2.setIsStaticError(true);
        throw xPathException2;
    }

    public void declareVariable(GlobalVariable globalVariable) throws XPathException {
        GlobalVariable globalVariable2;
        StructuredQName variableQName = globalVariable.getVariableQName();
        if (this.f101006n.get(variableQName) == null || (globalVariable2 = this.f101006n.get(variableQName)) == globalVariable || globalVariable2.getUltimateOriginalVariable() == globalVariable.getUltimateOriginalVariable()) {
            this.f101006n.put(variableQName, globalVariable);
            getPackageData().addGlobalVariable(globalVariable);
            HashMap<StructuredQName, GlobalVariable> hashMap = getTopLevelModule().f101007o;
            GlobalVariable globalVariable3 = hashMap.get(variableQName);
            if (globalVariable3 == null || globalVariable3 == globalVariable) {
                if (isMainModule()) {
                    return;
                }
                hashMap.put(variableQName, globalVariable);
                return;
            }
            XPathException xPathException = new XPathException("Duplicate definition of global variable " + globalVariable.getVariableQName().getDisplayName() + " (see line " + globalVariable3.getLineNumber() + " in module " + globalVariable3.getSystemId() + ')');
            xPathException.setErrorCode("XQST0049");
            xPathException.setIsStaticError(true);
            xPathException.setLocation(globalVariable);
            throw xPathException;
        }
        String str = " (see line " + globalVariable2.getLineNumber();
        String systemId = globalVariable2.getSystemId();
        if (systemId != null && !systemId.equals(globalVariable.getSystemId())) {
            str = str + " in module " + globalVariable2.getSystemId();
        }
        XPathException xPathException2 = new XPathException("Duplicate definition of global variable " + globalVariable.getVariableQName().getDisplayName() + (str + MotionUtils.f31762d));
        xPathException2.setErrorCode("XQST0049");
        xPathException2.setIsStaticError(true);
        xPathException2.setLocation(globalVariable);
        throw xPathException2;
    }

    public void explainGlobalFunctions(ExpressionPresenter expressionPresenter) throws XPathException {
        this.f101017v.explainGlobalFunctions(expressionPresenter);
    }

    public void fixupGlobalFunctions() throws XPathException {
        this.f101017v.fixupGlobalFunctions(this);
    }

    public List<GlobalVariable> fixupGlobalVariables(SlotManager slotManager) throws XPathException {
        ArrayList arrayList = new ArrayList(20);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(this.f101006n.values());
        arrayList2.add(this.f101007o.values());
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            for (GlobalVariable globalVariable : (Iterable) it2.next()) {
                if (!arrayList.contains(globalVariable)) {
                    globalVariable.compile(getExecutable(), slotManager.allocateSlotNumber(globalVariable.getVariableQName()));
                    arrayList.add(globalVariable);
                }
            }
        }
        return arrayList;
    }

    public Iterable<GlobalVariable> getAllGlobalVariables() {
        if (!isMainModule()) {
            return getTopLevelModule().getAllGlobalVariables();
        }
        ArrayList arrayList = new ArrayList(this.f101007o.values());
        arrayList.addAll(this.f101006n.values());
        return arrayList;
    }

    public BuiltInFunctionSet getBuiltInFunctionSet() {
        return isUpdating() ? this.f100997f.getXQueryUpdateFunctionSet() : this.f100991E0 == 40 ? this.f100997f.getXPath40FunctionSet() : this.f100997f.getXPath31FunctionSet();
    }

    public CodeInjector getCodeInjector() {
        return this.f101026z0;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public Configuration getConfiguration() {
        return this.f100997f;
    }

    public int getConstructionMode() {
        return this.f100994Q;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public Location getContainingLocation() {
        return this.f100989C0;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public DecimalFormatManager getDecimalFormatManager() {
        if (this.f101024y0 == null) {
            this.f101024y0 = new DecimalFormatManager(HostLanguage.XQUERY, getXPathVersion());
        }
        return this.f101024y0;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public String getDefaultCollationName() {
        if (this.f101016u0 == null) {
            this.f101016u0 = NamespaceConstant.CODEPOINT_COLLATION_URI;
        }
        return this.f101016u0;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public String getDefaultElementNamespace() {
        return checkURIForPrefix("");
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public String getDefaultFunctionNamespace() {
        return this.f100995Z;
    }

    public Executable getExecutable() {
        return this.f101012s;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public FunctionLibrary getFunctionLibrary() {
        return this.f101015u;
    }

    public XQueryFunctionLibrary getGlobalFunctionLibrary() {
        return this.f101017v;
    }

    public SlotManager getGlobalStackFrameMap() {
        return getPackageData().getGlobalSlotManager();
    }

    public ImportedFunctionLibrary getImportedFunctionLibrary() {
        return (ImportedFunctionLibrary) this.f101015u.get(this.f101021x);
    }

    public Iterable<GlobalVariable> getImportedGlobalVariables() {
        return this.f101007o.values();
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public Set<String> getImportedSchemaNamespaces() {
        HashSet<String> hashSet = this.f101009q;
        return hashSet == null ? Collections.emptySet() : hashSet;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public KeyManager getKeyManager() {
        return this.f100987A0.getKeyManager();
    }

    public NamespaceResolver getLiveNamespaceResolver() {
        return new C18434a();
    }

    public XQueryFunctionLibrary getLocalFunctionLibrary() {
        return (XQueryFunctionLibrary) this.f101015u.get(this.f101019w);
    }

    public URI getLocationURI() {
        return this.f101000i;
    }

    public String getModuleNamespace() {
        return this.f101002k;
    }

    public Iterator<GlobalVariable> getModuleVariables() {
        return this.f101006n.values().iterator();
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public NamespaceResolver getNamespaceResolver() {
        NamespaceMap emptyMap = NamespaceMap.emptyMap();
        for (Map.Entry<String, String> entry : this.f100998g.getUserDeclaredNamespaces().entrySet()) {
            emptyMap = emptyMap.put(entry.getKey(), entry.getValue());
        }
        for (Map.Entry<String, String> entry2 : this.f101004l.entrySet()) {
            emptyMap = emptyMap.put(entry2.getKey(), entry2.getValue());
        }
        if (!this.f101003k0.isEmpty()) {
            emptyMap = emptyMap.put("", this.f101003k0);
        }
        if (this.f101005m == null) {
            return emptyMap;
        }
        HashSet hashSet = new HashSet(10);
        for (int size = this.f101005m.size() - 1; size >= 0; size--) {
            NamespaceBinding namespaceBinding = this.f101005m.get(size);
            if (!hashSet.contains(namespaceBinding.getPrefix())) {
                hashSet.add(namespaceBinding.getPrefix());
                emptyMap = namespaceBinding.getURI().isEmpty() ? emptyMap.remove(namespaceBinding.getPrefix()) : emptyMap.put(namespaceBinding.getPrefix(), namespaceBinding.getURI());
            }
        }
        return emptyMap;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public OptimizerOptions getOptimizerOptions() {
        return this.f100990D0;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public PackageData getPackageData() {
        return this.f100987A0;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public ItemType getRequiredContextItemType() {
        return this.f101022x0;
    }

    public int getRevalidationMode() {
        return this.f101018v0;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public String getStaticBaseURI() {
        return this.f101001j;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public String getSystemId() {
        URI uri = this.f101000i;
        if (uri == null) {
            return null;
        }
        return uri.toString();
    }

    public QueryModule getTopLevelModule() {
        return this.f100999h;
    }

    public UserFunction getUserDefinedFunction(String str, String str2, int i) {
        return this.f101017v.getUserDefinedFunction(str, str2, i);
    }

    public StaticQueryContext getUserQueryContext() {
        return this.f100998g;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public int getXPathVersion() {
        return this.f100991E0;
    }

    public boolean importsNamespace(String str) {
        Set<String> set = this.f101025z;
        return set != null && set.contains(str);
    }

    public boolean isEmptyLeast() {
        return this.f101014t0;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public boolean isImportedSchema(String str) {
        HashSet<String> hashSet = this.f101009q;
        return hashSet != null && hashSet.contains(str);
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public boolean isInBackwardsCompatibleMode() {
        return false;
    }

    public boolean isInheritNamespaces() {
        return this.f100992J;
    }

    public boolean isMainModule() {
        return this.f100996e;
    }

    public boolean isPreserveBoundarySpace() {
        return this.f101010q0;
    }

    public boolean isPreserveNamespaces() {
        return this.f100993O;
    }

    public boolean isSchemaAware() {
        return this.f101012s.isSchemaAware();
    }

    public boolean isTopLevelModule() {
        return this == this.f100999h;
    }

    public boolean isUpdating() {
        return this.f101020w0;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public void issueWarning(String str, Location location) {
        XmlProcessingIncident asWarning = new XmlProcessingIncident(str).asWarning();
        asWarning.setLocation(location);
        asWarning.setHostLanguage(HostLanguage.XQUERY);
        this.f100998g.getErrorReporter().report(asWarning);
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public XPathContext makeEarlyEvaluationContext() {
        return new EarlyEvaluationContext(getConfiguration());
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public RetainedStaticContext makeRetainedStaticContext() {
        if (!this.f101005m.isEmpty()) {
            return new RetainedStaticContext(this);
        }
        if (this.f100988B0 == null) {
            this.f100988B0 = new RetainedStaticContext(this);
        }
        return this.f100988B0;
    }

    public boolean mayImportModule(String str) {
        if (str.equals(this.f101002k)) {
            return false;
        }
        List<QueryModule> list = this.f101013t;
        if (list == null) {
            return true;
        }
        Iterator<QueryModule> it2 = list.iterator();
        while (it2.hasNext()) {
            if (!it2.next().mayImportModule(str)) {
                return false;
            }
        }
        return true;
    }

    public void optimizeGlobalFunctions() throws XPathException {
        this.f101017v.optimizeGlobalFunctions(this);
    }

    public void reportStaticError(XPathException xPathException) {
        if (xPathException.hasBeenReported()) {
            return;
        }
        reportStaticError(new XmlProcessingException(xPathException));
        xPathException.setHasBeenReported(true);
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public ItemType resolveTypeAlias(StructuredQName structuredQName) {
        return getPackageData().obtainTypeAliasManager().getItemType(structuredQName);
    }

    public void setBaseURI(String str) {
        this.f101001j = str;
    }

    public void setConstructionMode(int i) {
        this.f100994Q = i;
    }

    public void setDefaultCollationName(String str) {
        this.f101016u0 = str;
    }

    public void setDefaultElementNamespace(String str) {
        this.f101003k0 = str;
    }

    public void setDefaultFunctionNamespace(String str) {
        this.f100995Z = str;
    }

    public void setEmptyLeast(boolean z) {
        this.f101014t0 = z;
    }

    public void setExecutable(Executable executable) {
        this.f101012s = executable;
    }

    public void setInheritNamespaces(boolean z) {
        this.f100992J = z;
    }

    public void setIsMainModule(boolean z) {
        this.f100996e = z;
    }

    public void setLocationURI(URI uri) {
        this.f101000i = uri;
        this.f100989C0 = new Loc(this.f101000i.toString(), 1, -1);
    }

    public void setModuleNamespace(String str) {
        this.f101002k = str;
    }

    public void setPackageData(PackageData packageData) {
        this.f100987A0 = packageData;
    }

    public void setPreserveBoundarySpace(boolean z) {
        this.f101010q0 = z;
    }

    public void setPreserveNamespaces(boolean z) {
        this.f100993O = z;
    }

    public void setRevalidationMode(int i) {
        if (i == 1 || i == 2 || i == 4) {
            this.f101018v0 = i;
            return;
        }
        throw new IllegalArgumentException("Invalid mode " + i);
    }

    public void setXPathVersion(int i) {
        this.f100991E0 = i;
    }

    public void typeCheckGlobalVariables(List<GlobalVariable> list) throws XPathException {
        GlobalContextRequirement globalContextRequirement;
        ExpressionVisitor make = ExpressionVisitor.make(this);
        Iterator<GlobalVariable> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().typeCheck(make);
        }
        if (!isMainModule() || (globalContextRequirement = this.f101012s.getGlobalContextRequirement()) == null || globalContextRequirement.getDefaultValue() == null) {
            return;
        }
        globalContextRequirement.setDefaultValue(globalContextRequirement.getDefaultValue().typeCheck(make, getConfiguration().makeContextItemStaticInfo(AnyItemType.getInstance(), true)));
    }

    public void undeclareNamespace() {
        this.f101005m.pop();
    }

    public void reportStaticError(XmlProcessingError xmlProcessingError) {
        this.f100998g.getErrorReporter().report(xmlProcessingError);
        if (xmlProcessingError.getTerminationMessage() != null) {
            throw new XmlProcessingAbort(xmlProcessingError.getTerminationMessage());
        }
    }

    public QueryModule(Configuration configuration, QueryModule queryModule) {
        this.f100997f = configuration;
        this.f101013t = null;
        if (queryModule == null) {
            this.f100999h = this;
        } else {
            this.f100999h = queryModule.f100999h;
            this.f100998g = queryModule.f100998g;
            ArrayList arrayList = new ArrayList(2);
            this.f101013t = arrayList;
            arrayList.add(queryModule);
        }
        m63483b(this.f100998g);
        this.f100987A0 = queryModule.getPackageData();
        this.f101005m = new IndexedStack<>();
        this.f101012s = null;
        this.f100990D0 = queryModule.f100990D0;
    }
}
