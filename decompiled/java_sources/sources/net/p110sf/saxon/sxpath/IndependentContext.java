package net.p110sf.saxon.sxpath;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.LocalVariableReference;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.instruct.Executable;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.parser.OptimizerOptions;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.functions.FunctionLibraryList;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.QNameValue;

/* loaded from: classes11.dex */
public class IndependentContext extends AbstractStaticContext implements XPathStaticContext, NamespaceResolver {
    protected boolean autoDeclare;
    protected Executable executable;
    protected NamespaceResolver externalResolver;
    protected Set<String> importedSchemaNamespaces;
    protected HashMap<String, String> namespaces;
    protected OptimizerOptions optimizerOptions;
    protected boolean parentlessContextItem;
    protected ItemType requiredContextItemType;
    protected RetainedStaticContext retainedStaticContext;
    protected HashMap<StructuredQName, XPathVariable> variables;

    public IndependentContext() {
        this(new Configuration());
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public Expression bindVariable(StructuredQName structuredQName) throws XPathException {
        XPathVariable xPathVariable = this.variables.get(structuredQName);
        if (xPathVariable != null) {
            return new LocalVariableReference(xPathVariable);
        }
        if (this.autoDeclare) {
            return new LocalVariableReference(declareVariable(structuredQName));
        }
        throw new XPathException("Undeclared variable in XPath expression: $" + structuredQName.getClarkName(), "XPST0008");
    }

    public void clearAllNamespaces() {
        this.namespaces.clear();
        declareNamespace("xml", "http://www.w3.org/XML/1998/namespace");
        declareNamespace("", "");
    }

    public void clearNamespaces() {
        this.namespaces.clear();
        declareNamespace("xml", "http://www.w3.org/XML/1998/namespace");
        declareNamespace("xsl", "http://www.w3.org/1999/XSL/Transform");
        declareNamespace("saxon", NamespaceConstant.SAXON);
        declareNamespace("xs", "http://www.w3.org/2001/XMLSchema");
        declareNamespace("", "");
    }

    public void declareNamespace(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("Null prefix supplied to declareNamespace()");
        }
        if (str2 == null) {
            throw new NullPointerException("Null namespace URI supplied to declareNamespace()");
        }
        if ("".equals(str)) {
            setDefaultElementNamespace(str2);
        } else {
            this.namespaces.put(str, str2);
        }
    }

    @Override // net.p110sf.saxon.sxpath.XPathStaticContext
    public XPathVariable declareVariable(QNameValue qNameValue) {
        return declareVariable(qNameValue.getStructuredQName());
    }

    public int getColumnNumber() {
        return -1;
    }

    public Collection<XPathVariable> getDeclaredVariables() {
        return this.variables.values();
    }

    public Executable getExecutable() {
        return this.executable;
    }

    public XPathVariable getExternalVariable(StructuredQName structuredQName) {
        return this.variables.get(structuredQName);
    }

    public Iterable<XPathVariable> getExternalVariables() {
        return this.variables.values();
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public Set<String> getImportedSchemaNamespaces() {
        return this.importedSchemaNamespaces;
    }

    public int getLineNumber() {
        return -1;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public NamespaceResolver getNamespaceResolver() {
        NamespaceResolver namespaceResolver = this.externalResolver;
        return namespaceResolver != null ? namespaceResolver : this;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public OptimizerOptions getOptimizerOptions() {
        return this.optimizerOptions;
    }

    public String getPublicId() {
        return null;
    }

    @Override // net.p110sf.saxon.sxpath.AbstractStaticContext, net.p110sf.saxon.expr.StaticContext
    public ItemType getRequiredContextItemType() {
        return this.requiredContextItemType;
    }

    public int getSlotNumber(QNameValue qNameValue) {
        XPathVariable xPathVariable = this.variables.get(qNameValue.getStructuredQName());
        if (xPathVariable == null) {
            return -1;
        }
        return xPathVariable.getLocalSlotNumber();
    }

    @Override // net.p110sf.saxon.sxpath.XPathStaticContext
    public SlotManager getStackFrameMap() {
        SlotManager makeSlotManager = getConfiguration().makeSlotManager();
        int size = this.variables.size();
        XPathVariable[] xPathVariableArr = new XPathVariable[size];
        for (XPathVariable xPathVariable : this.variables.values()) {
            xPathVariableArr[xPathVariable.getLocalSlotNumber()] = xPathVariable;
        }
        for (int i = 0; i < size; i++) {
            makeSlotManager.allocateSlotNumber(xPathVariableArr[i].getVariableQName());
        }
        return makeSlotManager;
    }

    @Override // net.p110sf.saxon.om.NamespaceResolver
    public String getURIForPrefix(String str, boolean z) {
        NamespaceResolver namespaceResolver = this.externalResolver;
        return namespaceResolver != null ? namespaceResolver.getURIForPrefix(str, z) : str.isEmpty() ? z ? getDefaultElementNamespace() : "" : this.namespaces.get(str);
    }

    public boolean isAllowUndeclaredVariables() {
        return this.autoDeclare;
    }

    @Override // net.p110sf.saxon.sxpath.XPathStaticContext
    public boolean isContextItemParentless() {
        return this.parentlessContextItem;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public boolean isImportedSchema(String str) {
        return this.importedSchemaNamespaces.contains(str);
    }

    @Override // net.p110sf.saxon.om.NamespaceResolver
    public Iterator<String> iteratePrefixes() {
        NamespaceResolver namespaceResolver = this.externalResolver;
        return namespaceResolver != null ? namespaceResolver.iteratePrefixes() : this.namespaces.keySet().iterator();
    }

    @Override // net.p110sf.saxon.sxpath.AbstractStaticContext, net.p110sf.saxon.expr.StaticContext
    public RetainedStaticContext makeRetainedStaticContext() {
        if (this.retainedStaticContext == null) {
            this.retainedStaticContext = new RetainedStaticContext(this);
        }
        return this.retainedStaticContext;
    }

    public void setAllowUndeclaredVariables(boolean z) {
        this.autoDeclare = z;
    }

    public void setContextItemParentless(boolean z) {
        this.parentlessContextItem = z;
    }

    @Override // net.p110sf.saxon.sxpath.AbstractStaticContext, net.p110sf.saxon.sxpath.XPathStaticContext
    public void setDefaultElementNamespace(String str) {
        if (str == null) {
            str = "";
        }
        super.setDefaultElementNamespace(str);
        this.namespaces.put("", str);
    }

    public void setExecutable(Executable executable) {
        this.executable = executable;
    }

    public void setImportedSchemaNamespaces(Set<String> set) {
        this.importedSchemaNamespaces = set;
        if (set.isEmpty()) {
            return;
        }
        setSchemaAware(true);
    }

    @Override // net.p110sf.saxon.sxpath.XPathStaticContext
    public void setNamespaceResolver(NamespaceResolver namespaceResolver) {
        this.externalResolver = namespaceResolver;
    }

    public void setNamespaces(NodeInfo nodeInfo) {
        this.namespaces.clear();
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind == 2 || nodeKind == 3 || nodeKind == 8 || nodeKind == 7 || nodeKind == 13) {
            nodeInfo = nodeInfo.getParent();
        }
        if (nodeInfo == null) {
            return;
        }
        AxisIterator iterateAxis = nodeInfo.iterateAxis(8);
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return;
            }
            if ("".equals(next.getLocalPart())) {
                setDefaultElementNamespace(next.getStringValue());
            } else {
                declareNamespace(next.getLocalPart(), next.getStringValue());
            }
        }
    }

    public void setOptimizerOptions(OptimizerOptions optimizerOptions) {
        this.optimizerOptions = optimizerOptions;
    }

    public void setRequiredContextItemType(ItemType itemType) {
        this.requiredContextItemType = itemType;
    }

    public IndependentContext(Configuration configuration) {
        this.namespaces = new HashMap<>(10);
        this.variables = new HashMap<>(20);
        this.externalResolver = null;
        this.requiredContextItemType = AnyItemType.getInstance();
        this.importedSchemaNamespaces = new HashSet();
        this.autoDeclare = false;
        setConfiguration(configuration);
        clearNamespaces();
        setDefaultFunctionLibrary(31);
        this.usingDefaultFunctionLibrary = true;
        setDefaultCollationName(configuration.getDefaultCollationName());
        setOptimizerOptions(configuration.getOptimizerOptions());
        PackageData packageData = new PackageData(configuration);
        packageData.setHostLanguage(HostLanguage.XPATH, 31);
        packageData.setSchemaAware(false);
        setPackageData(packageData);
    }

    @Override // net.p110sf.saxon.sxpath.XPathStaticContext
    public XPathVariable declareVariable(String str, String str2) {
        return declareVariable(new StructuredQName("", str, str2));
    }

    public XPathVariable declareVariable(StructuredQName structuredQName) {
        XPathVariable xPathVariable = this.variables.get(structuredQName);
        if (xPathVariable != null) {
            return xPathVariable;
        }
        XPathVariable make = XPathVariable.make(structuredQName);
        make.setSlotNumber(this.variables.size());
        this.variables.put(structuredQName, make);
        return make;
    }

    public IndependentContext(IndependentContext independentContext) {
        this(independentContext.getConfiguration());
        setPackageData(independentContext.getPackageData());
        setBaseURI(independentContext.getStaticBaseURI());
        setContainingLocation(independentContext.getContainingLocation());
        setDefaultElementNamespace(independentContext.getDefaultElementNamespace());
        setDefaultFunctionNamespace(independentContext.getDefaultFunctionNamespace());
        setBackwardsCompatibilityMode(independentContext.isInBackwardsCompatibleMode());
        this.namespaces = new HashMap<>(independentContext.namespaces);
        this.variables = new HashMap<>(10);
        FunctionLibraryList functionLibraryList = (FunctionLibraryList) independentContext.getFunctionLibrary();
        if (functionLibraryList != null) {
            setFunctionLibrary((FunctionLibraryList) functionLibraryList.copy());
        }
        setImportedSchemaNamespaces(independentContext.importedSchemaNamespaces);
        this.externalResolver = independentContext.externalResolver;
        this.autoDeclare = independentContext.autoDeclare;
        setXPathLanguageLevel(independentContext.getXPathVersion());
        this.requiredContextItemType = independentContext.requiredContextItemType;
        setExecutable(independentContext.getExecutable());
    }
}
