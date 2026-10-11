package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespacesManager;
import com.sun.org.apache.xalan.internal.processor.XSLTSchema;
import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.ref.ExpandedNameTable;
import com.sun.org.apache.xml.internal.utils.IntStack;
import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xpath.internal.XPath;
import com.sun.org.apache.xpath.internal.XPathContext;
import java.io.Serializable;
import java.text.DecimalFormatSymbols;
import java.util.Hashtable;
import java.util.Properties;
import java.util.Vector;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.Templates;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class StylesheetRoot extends StylesheetComposed implements Serializable, Templates {
    static final long serialVersionUID = 3875353123529147855L;
    private Hashtable m_attrSets;
    private Hashtable m_availElems;
    private transient ComposeState m_composeState;
    private Hashtable m_decimalFormatSymbols;
    private ElemTemplate m_defaultRootRule;
    private ElemTemplate m_defaultRule;
    private ElemTemplate m_defaultTextRule;
    private transient ExtensionNamespacesManager m_extNsMgr;
    private String m_extensionHandlerClass;
    private StylesheetComposed[] m_globalImportList;
    private boolean m_incremental;
    private boolean m_isSecureProcessing;
    private Vector m_keyDecls;
    private Hashtable m_namespaceAliasComposed;
    private boolean m_optimizer;
    private boolean m_outputMethodSet;
    private OutputProperties m_outputProperties;
    XPath m_selectDefault;
    private boolean m_source_location;
    private ElemTemplate m_startRule;
    private TemplateList m_templateList;
    private Vector m_variables;
    private TemplateList m_whiteSpaceInfoList;

    /* loaded from: classes10.dex */
    public class ComposeState {
        private int m_maxStackFrameSize;
        private ExpandedNameTable m_ent = new ExpandedNameTable();
        private Vector m_variableNames = new Vector();
        IntStack m_marks = new IntStack();

        public ComposeState() {
            int size = StylesheetRoot.this.m_variables.size();
            for (int i = 0; i < size; i++) {
                this.m_variableNames.addElement(((ElemVariable) StylesheetRoot.this.m_variables.elementAt(i)).getName());
            }
        }

        public int addVariableName(QName qName) {
            int size = this.m_variableNames.size();
            this.m_variableNames.addElement(qName);
            int size2 = this.m_variableNames.size() - getGlobalsSize();
            int i = this.m_maxStackFrameSize;
            if (size2 > i) {
                this.m_maxStackFrameSize = i + 1;
            }
            return size;
        }

        public int getCurrentStackFrameSize() {
            return this.m_variableNames.size();
        }

        public int getFrameSize() {
            return this.m_maxStackFrameSize;
        }

        public int getGlobalsSize() {
            return StylesheetRoot.this.m_variables.size();
        }

        public int getQNameID(QName qName) {
            return this.m_ent.getExpandedTypeID(qName.getNamespace(), qName.getLocalName(), 1);
        }

        public Vector getVariableNames() {
            return this.m_variableNames;
        }

        public void popStackMark() {
            setCurrentStackFrameSize(this.m_marks.pop());
        }

        public void pushStackMark() {
            this.m_marks.push(getCurrentStackFrameSize());
        }

        public void resetStackFrameSize() {
            this.m_maxStackFrameSize = 0;
        }

        public void setCurrentStackFrameSize(int i) {
            this.m_variableNames.setSize(i);
        }
    }

    public StylesheetRoot(ErrorListener errorListener) throws TransformerConfigurationException {
        super(null);
        this.m_optimizer = true;
        this.m_incremental = false;
        this.m_source_location = false;
        this.m_isSecureProcessing = false;
        this.m_extNsMgr = null;
        this.m_outputMethodSet = false;
        this.m_extensionHandlerClass = "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerExsltFunction";
        setStylesheetRoot(this);
        try {
            this.m_selectDefault = new XPath("node()", this, this, 0, errorListener);
            initDefaultRule(errorListener);
        } catch (TransformerException e) {
            throw new TransformerConfigurationException(XSLMessages.createMessage("ER_CANNOT_INIT_DEFAULT_TEMPLATES", null), e);
        }
    }

    private void QuickSort2(Vector vector, int i, int i2) {
        if (i2 > i) {
            ElemTemplateElement elemTemplateElement = (ElemTemplateElement) vector.elementAt((i + i2) / 2);
            int i3 = i;
            int i4 = i2;
            while (i3 <= i4) {
                while (i3 < i2 && ((ElemTemplateElement) vector.elementAt(i3)).compareTo(elemTemplateElement) < 0) {
                    i3++;
                }
                while (i4 > i && ((ElemTemplateElement) vector.elementAt(i4)).compareTo(elemTemplateElement) > 0) {
                    i4--;
                }
                if (i3 <= i4) {
                    ElemTemplateElement elemTemplateElement2 = (ElemTemplateElement) vector.elementAt(i3);
                    vector.setElementAt(vector.elementAt(i4), i3);
                    vector.setElementAt(elemTemplateElement2, i4);
                    i3++;
                    i4--;
                }
            }
            if (i < i4) {
                QuickSort2(vector, i, i4);
            }
            if (i3 < i2) {
                QuickSort2(vector, i3, i2);
            }
        }
    }

    private void clearComposeState() {
        this.m_composeState = null;
    }

    private void initDefaultRule(ErrorListener errorListener) throws TransformerException {
        ElemTemplate elemTemplate = new ElemTemplate();
        this.m_defaultRule = elemTemplate;
        elemTemplate.setStylesheet(this);
        this.m_defaultRule.setMatch(new XPath("*", this, this, 1, errorListener));
        ElemApplyTemplates elemApplyTemplates = new ElemApplyTemplates();
        elemApplyTemplates.setIsDefaultTemplate(true);
        elemApplyTemplates.setSelect(this.m_selectDefault);
        this.m_defaultRule.appendChild((ElemTemplateElement) elemApplyTemplates);
        this.m_startRule = this.m_defaultRule;
        ElemTemplate elemTemplate2 = new ElemTemplate();
        this.m_defaultTextRule = elemTemplate2;
        elemTemplate2.setStylesheet(this);
        this.m_defaultTextRule.setMatch(new XPath("text() | @*", this, this, 1, errorListener));
        ElemValueOf elemValueOf = new ElemValueOf();
        this.m_defaultTextRule.appendChild((ElemTemplateElement) elemValueOf);
        elemValueOf.setSelect(new XPath(".", this, this, 0, errorListener));
        ElemTemplate elemTemplate3 = new ElemTemplate();
        this.m_defaultRootRule = elemTemplate3;
        elemTemplate3.setStylesheet(this);
        this.m_defaultRootRule.setMatch(new XPath("/", this, this, 1, errorListener));
        ElemApplyTemplates elemApplyTemplates2 = new ElemApplyTemplates();
        elemApplyTemplates2.setIsDefaultTemplate(true);
        this.m_defaultRootRule.appendChild((ElemTemplateElement) elemApplyTemplates2);
        elemApplyTemplates2.setSelect(this.m_selectDefault);
    }

    public void addImports(Stylesheet stylesheet, boolean z, Vector vector) {
        int importCount = stylesheet.getImportCount();
        if (importCount > 0) {
            for (int i = 0; i < importCount; i++) {
                addImports(stylesheet.getImport(i), true, vector);
            }
        }
        int includeCount = stylesheet.getIncludeCount();
        if (includeCount > 0) {
            for (int i2 = 0; i2 < includeCount; i2++) {
                addImports(stylesheet.getInclude(i2), false, vector);
            }
        }
        if (z) {
            vector.addElement(stylesheet);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xpath.internal.WhitespaceStrippingElementMatcher
    public boolean canStripWhiteSpace() {
        return this.m_whiteSpaceInfoList != null;
    }

    public void composeTemplates(ElemTemplateElement elemTemplateElement) throws TransformerException {
        elemTemplateElement.compose(this);
        for (ElemTemplateElement firstChildElem = elemTemplateElement.getFirstChildElem(); firstChildElem != null; firstChildElem = firstChildElem.getNextSiblingElem()) {
            composeTemplates(firstChildElem);
        }
        elemTemplateElement.endCompose(this);
    }

    public Vector getAttributeSetComposed(QName qName) throws ArrayIndexOutOfBoundsException {
        return (Vector) this.m_attrSets.get(qName);
    }

    public Hashtable getAvailableElements() {
        return this.m_availElems;
    }

    public ComposeState getComposeState() {
        return this.m_composeState;
    }

    public DecimalFormatSymbols getDecimalFormatComposed(QName qName) {
        return (DecimalFormatSymbols) this.m_decimalFormatSymbols.get(qName);
    }

    public Properties getDefaultOutputProps() {
        return this.m_outputProperties.getProperties();
    }

    public final ElemTemplate getDefaultRootRule() {
        return this.m_defaultRootRule;
    }

    public final ElemTemplate getDefaultRule() {
        return this.m_defaultRule;
    }

    public final ElemTemplate getDefaultTextRule() {
        return this.m_defaultTextRule;
    }

    public String getExtensionHandlerClass() {
        return this.m_extensionHandlerClass;
    }

    public ExtensionNamespacesManager getExtensionNamespacesManager() {
        if (this.m_extNsMgr == null) {
            this.m_extNsMgr = new ExtensionNamespacesManager();
        }
        return this.m_extNsMgr;
    }

    public Vector getExtensions() {
        ExtensionNamespacesManager extensionNamespacesManager = this.m_extNsMgr;
        if (extensionNamespacesManager != null) {
            return extensionNamespacesManager.getExtensions();
        }
        return null;
    }

    public StylesheetComposed getGlobalImport(int i) {
        return this.m_globalImportList[i];
    }

    public int getGlobalImportCount() {
        StylesheetComposed[] stylesheetComposedArr = this.m_globalImportList;
        if (stylesheetComposedArr != null) {
            return stylesheetComposedArr.length;
        }
        return 1;
    }

    public int getImportNumber(StylesheetComposed stylesheetComposed) {
        if (this == stylesheetComposed) {
            return 0;
        }
        int globalImportCount = getGlobalImportCount();
        for (int i = 0; i < globalImportCount; i++) {
            if (stylesheetComposed == getGlobalImport(i)) {
                return i;
            }
        }
        return -1;
    }

    public boolean getIncremental() {
        return this.m_incremental;
    }

    public Vector getKeysComposed() {
        return this.m_keyDecls;
    }

    public NamespaceAlias getNamespaceAliasComposed(String str) {
        Hashtable hashtable = this.m_namespaceAliasComposed;
        return (NamespaceAlias) (hashtable == null ? null : hashtable.get(str));
    }

    public boolean getOptimizer() {
        return this.m_optimizer;
    }

    public OutputProperties getOutputComposed() {
        return this.m_outputProperties;
    }

    @Override // javax.xml.transform.Templates
    public Properties getOutputProperties() {
        return (Properties) getDefaultOutputProps().clone();
    }

    public boolean getSource_location() {
        return this.m_source_location;
    }

    public final ElemTemplate getStartRule() {
        return this.m_startRule;
    }

    public ElemTemplate getTemplateComposed(XPathContext xPathContext, int i, QName qName, boolean z, DTM dtm) throws TransformerException {
        return this.m_templateList.getTemplate(xPathContext, i, qName, z, dtm);
    }

    public final TemplateList getTemplateListComposed() {
        return this.m_templateList;
    }

    public ElemVariable getVariableOrParamComposed(QName qName) {
        Vector vector = this.m_variables;
        if (vector == null) {
            return null;
        }
        int size = vector.size();
        for (int i = 0; i < size; i++) {
            ElemVariable elemVariable = (ElemVariable) this.m_variables.elementAt(i);
            if (elemVariable.getName().equals(qName)) {
                return elemVariable;
            }
        }
        return null;
    }

    public Vector getVariablesAndParamsComposed() {
        return this.m_variables;
    }

    public WhiteSpaceInfo getWhiteSpaceInfo(XPathContext xPathContext, int i, DTM dtm) throws TransformerException {
        TemplateList templateList = this.m_whiteSpaceInfoList;
        if (templateList != null) {
            return (WhiteSpaceInfo) templateList.getTemplate(xPathContext, i, null, false, dtm);
        }
        return null;
    }

    public void initComposeState() {
        this.m_composeState = new ComposeState();
    }

    public boolean isOutputMethodSet() {
        return this.m_outputMethodSet;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.Stylesheet
    public boolean isRoot() {
        return true;
    }

    public boolean isSecureProcessing() {
        return this.m_isSecureProcessing;
    }

    @Override // javax.xml.transform.Templates
    public Transformer newTransformer() {
        return new TransformerImpl(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void recompose() throws TransformerException {
        Vector vector = new Vector();
        if (this.m_globalImportList == null) {
            Vector vector2 = new Vector();
            addImports(this, true, vector2);
            this.m_globalImportList = new StylesheetComposed[vector2.size()];
            int size = vector2.size() - 1;
            int i = 0;
            while (i < vector2.size()) {
                this.m_globalImportList[size] = (StylesheetComposed) vector2.elementAt(i);
                StylesheetComposed stylesheetComposed = this.m_globalImportList[size];
                stylesheetComposed.recomposeIncludes(stylesheetComposed);
                this.m_globalImportList[size].recomposeImports();
                i++;
                size--;
            }
        }
        int globalImportCount = getGlobalImportCount();
        for (int i2 = 0; i2 < globalImportCount; i2++) {
            getGlobalImport(i2).recompose(vector);
        }
        QuickSort2(vector, 0, vector.size() - 1);
        this.m_outputProperties = new OutputProperties("");
        this.m_attrSets = new Hashtable();
        this.m_decimalFormatSymbols = new Hashtable();
        this.m_keyDecls = new Vector();
        this.m_namespaceAliasComposed = new Hashtable();
        this.m_templateList = new TemplateList();
        this.m_variables = new Vector();
        for (int size2 = vector.size() - 1; size2 >= 0; size2--) {
            ((ElemTemplateElement) vector.elementAt(size2)).recompose(this);
        }
        initComposeState();
        this.m_templateList.compose(this);
        this.m_outputProperties.compose(this);
        this.m_outputProperties.endCompose(this);
        int globalImportCount2 = getGlobalImportCount();
        for (int i3 = 0; i3 < globalImportCount2; i3++) {
            StylesheetComposed globalImport = getGlobalImport(i3);
            int includeCountComposed = globalImport.getIncludeCountComposed();
            for (int i4 = -1; i4 < includeCountComposed; i4++) {
                composeTemplates(globalImport.getIncludeComposed(i4));
            }
        }
        ExtensionNamespacesManager extensionNamespacesManager = this.m_extNsMgr;
        if (extensionNamespacesManager != null) {
            extensionNamespacesManager.registerUnregisteredNamespaces();
        }
        clearComposeState();
    }

    public void recomposeAttributeSets(ElemAttributeSet elemAttributeSet) {
        Vector vector = (Vector) this.m_attrSets.get(elemAttributeSet.getName());
        if (vector == null) {
            vector = new Vector();
            this.m_attrSets.put(elemAttributeSet.getName(), vector);
        }
        vector.addElement(elemAttributeSet);
    }

    public void recomposeDecimalFormats(DecimalFormatProperties decimalFormatProperties) {
        DecimalFormatSymbols decimalFormatSymbols = (DecimalFormatSymbols) this.m_decimalFormatSymbols.get(decimalFormatProperties.getName());
        if (decimalFormatSymbols == null) {
            this.m_decimalFormatSymbols.put(decimalFormatProperties.getName(), decimalFormatProperties.getDecimalFormatSymbols());
        } else {
            if (decimalFormatProperties.getDecimalFormatSymbols().equals(decimalFormatSymbols)) {
                return;
            }
            error(decimalFormatProperties.getName().equals(new QName("")) ? XSLMessages.createWarning("WG_ONE_DEFAULT_XSLDECIMALFORMAT_ALLOWED", new Object[0]) : XSLMessages.createWarning("WG_XSLDECIMALFORMAT_NAMES_MUST_BE_UNIQUE", new Object[]{decimalFormatProperties.getName()}));
        }
    }

    public void recomposeKeys(KeyDeclaration keyDeclaration) {
        this.m_keyDecls.addElement(keyDeclaration);
    }

    public void recomposeNamespaceAliases(NamespaceAlias namespaceAlias) {
        this.m_namespaceAliasComposed.put(namespaceAlias.getStylesheetNamespace(), namespaceAlias);
    }

    public void recomposeOutput(OutputProperties outputProperties) throws TransformerException {
        this.m_outputProperties.copyFrom(outputProperties);
    }

    public void recomposeTemplates(ElemTemplate elemTemplate) {
        this.m_templateList.setTemplate(elemTemplate);
    }

    public void recomposeVariables(ElemVariable elemVariable) {
        if (getVariableOrParamComposed(elemVariable.getName()) == null) {
            elemVariable.setIsTopLevel(true);
            elemVariable.setIndex(this.m_variables.size());
            this.m_variables.addElement(elemVariable);
        }
    }

    public void recomposeWhiteSpaceInfo(WhiteSpaceInfo whiteSpaceInfo) {
        if (this.m_whiteSpaceInfoList == null) {
            this.m_whiteSpaceInfoList = new TemplateList();
        }
        this.m_whiteSpaceInfoList.setTemplate(whiteSpaceInfo);
    }

    public String setExtensionHandlerClass(String str) {
        String str2 = this.m_extensionHandlerClass;
        this.m_extensionHandlerClass = str;
        return str2;
    }

    public void setIncremental(boolean z) {
        this.m_incremental = z;
    }

    public void setOptimizer(boolean z) {
        this.m_optimizer = z;
    }

    public void setSecureProcessing(boolean z) {
        this.m_isSecureProcessing = z;
    }

    public void setSource_location(boolean z) {
        this.m_source_location = z;
    }

    public final void setTemplateListComposed(TemplateList templateList) {
        this.m_templateList = templateList;
    }

    public boolean shouldCheckWhitespace() {
        return this.m_whiteSpaceInfoList != null;
    }

    public boolean shouldStripWhiteSpace(XPathContext xPathContext, int i) throws TransformerException {
        if (this.m_whiteSpaceInfoList == null) {
            return false;
        }
        while (-1 != i) {
            DTM dtm = xPathContext.getDTM(i);
            WhiteSpaceInfo whiteSpaceInfo = (WhiteSpaceInfo) this.m_whiteSpaceInfoList.getTemplate(xPathContext, i, null, false, dtm);
            if (whiteSpaceInfo != null) {
                return whiteSpaceInfo.getShouldStripSpace();
            }
            i = dtm.getParent(i);
            if (-1 == i || 1 != dtm.getNodeType(i)) {
                i = -1;
            }
        }
        return false;
    }

    public ElemTemplate getTemplateComposed(XPathContext xPathContext, int i, QName qName, int i2, int i3, boolean z, DTM dtm) throws TransformerException {
        return this.m_templateList.getTemplate(xPathContext, i, qName, i2, i3, z, dtm);
    }

    public ElemTemplate getTemplateComposed(QName qName) {
        return this.m_templateList.getTemplate(qName);
    }

    public StylesheetRoot(XSLTSchema xSLTSchema, ErrorListener errorListener) throws TransformerConfigurationException {
        this(errorListener);
        this.m_availElems = xSLTSchema.getElemsAvailable();
    }
}
