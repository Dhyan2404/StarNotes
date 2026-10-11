package net.p110sf.saxon.expr.instruct;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.functions.FunctionLibraryList;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.query.QueryModule;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.serialize.CharacterMapIndex;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;

/* loaded from: classes11.dex */
public class Executable {

    /* renamed from: a */
    public Configuration f99699a;

    /* renamed from: b */
    public PackageData f99700b;

    /* renamed from: d */
    public Properties f99702d;

    /* renamed from: e */
    public CharacterMapIndex f99703e;

    /* renamed from: f */
    public HashMap<String, List<QueryModule>> f99704f;

    /* renamed from: g */
    public HashSet<String> f99705g;

    /* renamed from: h */
    public FunctionLibraryList f99706h;

    /* renamed from: c */
    public final List<PackageData> f99701c = new ArrayList();

    /* renamed from: i */
    public HostLanguage f99707i = HostLanguage.XSLT;

    /* renamed from: j */
    public final Map<StructuredQName, GlobalParam> f99708j = new HashMap();

    /* renamed from: k */
    public HashMap<StructuredQName, Properties> f99709k = null;

    /* renamed from: l */
    public boolean f99710l = false;
    protected boolean schemaAware = false;

    /* renamed from: m */
    public GlobalContextRequirement f99711m = null;

    public Executable(Configuration configuration) {
        setConfiguration(configuration);
    }

    public void addPackage(PackageData packageData) {
        this.f99701c.add(packageData);
    }

    public void addQueryLibraryModule(QueryModule queryModule) {
        if (this.f99704f == null) {
            this.f99704f = new HashMap<>(5);
        }
        String moduleNamespace = queryModule.getModuleNamespace();
        List<QueryModule> list = this.f99704f.get(moduleNamespace);
        if (list == null) {
            ArrayList arrayList = new ArrayList(5);
            arrayList.add(queryModule);
            this.f99704f.put(moduleNamespace, arrayList);
        } else {
            if (list.contains(queryModule)) {
                return;
            }
            list.add(queryModule);
        }
    }

    public void addQueryLocationHintProcessed(String str) {
        if (this.f99705g == null) {
            this.f99705g = new HashSet<>();
        }
        this.f99705g.add(str);
    }

    public Item checkInitialContextItem(Item item, XPathContext xPathContext) throws XPathException {
        GlobalContextRequirement globalContextRequirement = this.f99711m;
        if (globalContextRequirement == null) {
            return item;
        }
        if (item != null && globalContextRequirement.isAbsentFocus()) {
            throw new XPathException("The global context item is required to be absent", "XPDY0002");
        }
        TypeHierarchy typeHierarchy = this.f99699a.getTypeHierarchy();
        if (item != null) {
            for (ItemType itemType : this.f99711m.getRequiredItemTypes()) {
                if (!itemType.matches(item, this.f99699a.getTypeHierarchy())) {
                    throw new XPathException(new RoleDiagnostic(20, "supplied global context item", 0).composeErrorMessage(itemType, item, typeHierarchy), getHostLanguage() == HostLanguage.XSLT ? "XTTE0590" : "XPTY0004");
                }
            }
        } else {
            if (!this.f99711m.isMayBeOmitted()) {
                throw new XPathException("A global context item is required, but none has been supplied", "XTDE3086");
            }
            if (this.f99711m.getDefaultValue() != null) {
                try {
                    item = this.f99711m.getDefaultValue().evaluateItem(xPathContext);
                    if (item == null) {
                        throw new XPathException("The context item cannot be initialized to an empty sequence", "XPTY0004");
                    }
                    for (ItemType itemType2 : this.f99711m.getRequiredItemTypes()) {
                        if (!itemType2.matches(item, typeHierarchy)) {
                            throw new XPathException(new RoleDiagnostic(20, "defaulted global context item", 0).composeErrorMessage(itemType2, item, typeHierarchy), "XPTY0004");
                        }
                    }
                } catch (XPathException e) {
                    if ("XPDY0002".equals(e.getErrorCodeLocalPart()) && !e.getMessage().contains("last()") && !e.getMessage().contains("position()")) {
                        e.setErrorCode("XQDY0054");
                    }
                    throw e;
                }
            }
        }
        return item;
    }

    public void checkSuppliedParameters(GlobalParameterSet globalParameterSet) throws XPathException {
    }

    public boolean createsSecondaryResult() {
        return this.f99710l;
    }

    public void explainGlobalVariables(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("globalVariables");
        Iterator<PackageData> it2 = getPackages().iterator();
        while (it2.hasNext()) {
            Iterator<GlobalVariable> it3 = it2.next().getGlobalVariableList().iterator();
            while (it3.hasNext()) {
                it3.next().export(expressionPresenter);
            }
        }
        expressionPresenter.endElement();
    }

    public void fixupQueryModules(QueryModule queryModule) throws XPathException {
        queryModule.bindUnboundVariables();
        HashMap<String, List<QueryModule>> hashMap = this.f99704f;
        if (hashMap != null) {
            Iterator<List<QueryModule>> it2 = hashMap.values().iterator();
            while (it2.hasNext()) {
                Iterator<QueryModule> it3 = it2.next().iterator();
                while (it3.hasNext()) {
                    it3.next().bindUnboundVariables();
                }
            }
        }
        List<GlobalVariable> fixupGlobalVariables = queryModule.fixupGlobalVariables(queryModule.getGlobalStackFrameMap());
        queryModule.bindUnboundFunctionCalls();
        HashMap<String, List<QueryModule>> hashMap2 = this.f99704f;
        if (hashMap2 != null) {
            Iterator<List<QueryModule>> it4 = hashMap2.values().iterator();
            while (it4.hasNext()) {
                Iterator<QueryModule> it5 = it4.next().iterator();
                while (it5.hasNext()) {
                    it5.next().bindUnboundFunctionCalls();
                }
            }
        }
        queryModule.checkForCircularities(fixupGlobalVariables, queryModule.getGlobalFunctionLibrary());
        queryModule.fixupGlobalFunctions();
        queryModule.typeCheckGlobalVariables(fixupGlobalVariables);
        queryModule.optimizeGlobalFunctions();
    }

    public CharacterMapIndex getCharacterMapIndex() {
        if (this.f99703e == null) {
            this.f99703e = new CharacterMapIndex();
        }
        return this.f99703e;
    }

    public Configuration getConfiguration() {
        return this.f99699a;
    }

    public FunctionLibraryList getFunctionLibrary() {
        return this.f99706h;
    }

    public GlobalContextRequirement getGlobalContextRequirement() {
        return this.f99711m;
    }

    public GlobalParam getGlobalParameter(StructuredQName structuredQName) {
        return this.f99708j.get(structuredQName);
    }

    public Map<StructuredQName, GlobalParam> getGlobalParameters() {
        return this.f99708j;
    }

    public HostLanguage getHostLanguage() {
        return this.f99707i;
    }

    public Properties getOutputProperties() {
        return new Properties(this.f99702d);
    }

    public Iterable<PackageData> getPackages() {
        return this.f99701c;
    }

    public SerializationProperties getPrimarySerializationProperties() {
        if (this.f99702d == null) {
            this.f99702d = new Properties();
        }
        return new SerializationProperties(this.f99702d, getCharacterMapIndex());
    }

    public List<QueryModule> getQueryLibraryModules(String str) {
        HashMap<String, List<QueryModule>> hashMap = this.f99704f;
        if (hashMap == null) {
            return null;
        }
        return hashMap.get(str);
    }

    public QueryModule getQueryModuleWithSystemId(String str, QueryModule queryModule) {
        if (str.equals(queryModule.getSystemId())) {
            return queryModule;
        }
        for (QueryModule queryModule2 : getQueryLibraryModules()) {
            String systemId = queryModule2.getSystemId();
            if (systemId != null && systemId.equals(str)) {
                return queryModule2;
            }
        }
        return null;
    }

    public PackageData getTopLevelPackage() {
        return this.f99700b;
    }

    public boolean isQueryLocationHintProcessed(String str) {
        HashSet<String> hashSet = this.f99705g;
        return hashSet != null && hashSet.contains(str);
    }

    public boolean isSchemaAware() {
        return this.schemaAware;
    }

    public void registerGlobalParameter(GlobalParam globalParam) {
        this.f99708j.put(globalParam.getVariableQName(), globalParam);
    }

    public void setCharacterMapIndex(CharacterMapIndex characterMapIndex) {
        this.f99703e = characterMapIndex;
    }

    public void setConfiguration(Configuration configuration) {
        this.f99699a = configuration;
    }

    public void setCreatesSecondaryResult(boolean z) {
        this.f99710l = z;
    }

    public void setDefaultOutputProperties(Properties properties) {
        this.f99702d = properties;
    }

    public void setFunctionLibrary(FunctionLibraryList functionLibraryList) {
        this.f99706h = functionLibraryList;
    }

    public void setGlobalContextRequirement(GlobalContextRequirement globalContextRequirement) {
        this.f99711m = globalContextRequirement;
    }

    public void setHostLanguage(HostLanguage hostLanguage) {
        this.f99707i = hostLanguage;
    }

    public void setOutputProperties(StructuredQName structuredQName, Properties properties) {
        if (this.f99709k == null) {
            this.f99709k = new HashMap<>(5);
        }
        this.f99709k.put(structuredQName, properties);
    }

    public void setSchemaAware(boolean z) {
        this.schemaAware = z;
    }

    public void setTopLevelPackage(PackageData packageData) {
        this.f99700b = packageData;
    }

    public Properties getOutputProperties(StructuredQName structuredQName) {
        HashMap<StructuredQName, Properties> hashMap = this.f99709k;
        if (hashMap == null) {
            return null;
        }
        return hashMap.get(structuredQName);
    }

    public List<QueryModule> getQueryLibraryModules() {
        if (this.f99704f == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<List<QueryModule>> it2 = this.f99704f.values().iterator();
        while (it2.hasNext()) {
            arrayList.addAll(it2.next());
        }
        return arrayList;
    }
}
