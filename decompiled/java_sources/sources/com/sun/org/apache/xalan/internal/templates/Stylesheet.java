package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xml.internal.utils.StringVector;
import com.sun.org.apache.xml.internal.utils.SystemIDResolver;
import com.sun.org.apache.xml.internal.utils.WrappedRuntimeException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Stack;
import java.util.Vector;
import javax.xml.transform.SourceLocator;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class Stylesheet extends ElemTemplateElement implements Serializable {
    public static final String STYLESHEET_EXT = ".lxc";
    static final long serialVersionUID = 2085337282743043776L;
    Stack m_DecimalFormatDeclarations;
    private StringVector m_ExcludeResultPrefixs;
    private StringVector m_ExtensionElementURIs;
    private String m_Id;
    private Hashtable m_NonXslTopLevel;
    private String m_Version;
    private String m_XmlnsXsl;
    private Vector m_attributeSets;
    private Vector m_imports;
    private Vector m_includes;
    private Vector m_keyDeclarations;
    private Vector m_output;
    private Vector m_prefix_aliases;
    private String m_publicId;
    private Stylesheet m_stylesheetParent;
    private StylesheetRoot m_stylesheetRoot;
    private String m_systemId;
    private Vector m_templates;
    private Vector m_topLevelVariables;
    private Vector m_whitespacePreservingElements;
    private Vector m_whitespaceStrippingElements;
    private boolean m_isCompatibleMode = false;
    private String m_href = null;

    public Stylesheet(Stylesheet stylesheet) {
        if (stylesheet != null) {
            this.m_stylesheetParent = stylesheet;
            this.m_stylesheetRoot = stylesheet.getStylesheetRoot();
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, TransformerException {
        try {
            objectInputStream.defaultReadObject();
        } catch (ClassNotFoundException e) {
            throw new TransformerException(e);
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public boolean accept(XSLTVisitor xSLTVisitor) {
        return xSLTVisitor.visitStylesheet(this);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void callChildVisitors(XSLTVisitor xSLTVisitor, boolean z) {
        int importCount = getImportCount();
        for (int i = 0; i < importCount; i++) {
            getImport(i).callVisitors(xSLTVisitor);
        }
        int includeCount = getIncludeCount();
        for (int i2 = 0; i2 < includeCount; i2++) {
            getInclude(i2).callVisitors(xSLTVisitor);
        }
        int outputCount = getOutputCount();
        for (int i3 = 0; i3 < outputCount; i3++) {
            xSLTVisitor.visitTopLevelInstruction(getOutput(i3));
        }
        int attributeSetCount = getAttributeSetCount();
        for (int i4 = 0; i4 < attributeSetCount; i4++) {
            ElemAttributeSet attributeSet = getAttributeSet(i4);
            if (xSLTVisitor.visitTopLevelInstruction(attributeSet)) {
                attributeSet.callChildVisitors(xSLTVisitor);
            }
        }
        int decimalFormatCount = getDecimalFormatCount();
        for (int i5 = 0; i5 < decimalFormatCount; i5++) {
            xSLTVisitor.visitTopLevelInstruction(getDecimalFormat(i5));
        }
        int keyCount = getKeyCount();
        for (int i6 = 0; i6 < keyCount; i6++) {
            xSLTVisitor.visitTopLevelInstruction(getKey(i6));
        }
        int namespaceAliasCount = getNamespaceAliasCount();
        for (int i7 = 0; i7 < namespaceAliasCount; i7++) {
            xSLTVisitor.visitTopLevelInstruction(getNamespaceAlias(i7));
        }
        int templateCount = getTemplateCount();
        for (int i8 = 0; i8 < templateCount; i8++) {
            try {
                ElemTemplate template = getTemplate(i8);
                if (xSLTVisitor.visitTopLevelInstruction(template)) {
                    template.callChildVisitors(xSLTVisitor);
                }
            } catch (TransformerException e) {
                throw new WrappedRuntimeException(e);
            }
        }
        int variableOrParamCount = getVariableOrParamCount();
        for (int i9 = 0; i9 < variableOrParamCount; i9++) {
            ElemVariable variableOrParam = getVariableOrParam(i9);
            if (xSLTVisitor.visitTopLevelVariableOrParamDecl(variableOrParam)) {
                variableOrParam.callChildVisitors(xSLTVisitor);
            }
        }
        int stripSpaceCount = getStripSpaceCount();
        for (int i10 = 0; i10 < stripSpaceCount; i10++) {
            xSLTVisitor.visitTopLevelInstruction(getStripSpace(i10));
        }
        int preserveSpaceCount = getPreserveSpaceCount();
        for (int i11 = 0; i11 < preserveSpaceCount; i11++) {
            xSLTVisitor.visitTopLevelInstruction(getPreserveSpace(i11));
        }
        Hashtable hashtable = this.m_NonXslTopLevel;
        if (hashtable != null) {
            Enumeration elements = hashtable.elements();
            while (elements.hasMoreElements()) {
                ElemTemplateElement elemTemplateElement = (ElemTemplateElement) elements.nextElement();
                if (xSLTVisitor.visitTopLevelInstruction(elemTemplateElement)) {
                    elemTemplateElement.callChildVisitors(xSLTVisitor);
                }
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public boolean containsExcludeResultPrefix(String str, String str2) {
        if (this.m_ExcludeResultPrefixs != null && str2 != null) {
            for (int i = 0; i < this.m_ExcludeResultPrefixs.size(); i++) {
                if (str2.equals(getNamespaceForPrefix(this.m_ExcludeResultPrefixs.elementAt(i)))) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean containsExtensionElementURI(String str) {
        StringVector stringVector = this.m_ExtensionElementURIs;
        if (stringVector == null) {
            return false;
        }
        return stringVector.contains(str);
    }

    public ElemAttributeSet getAttributeSet(int i) throws ArrayIndexOutOfBoundsException {
        Vector vector = this.m_attributeSets;
        if (vector != null) {
            return (ElemAttributeSet) vector.elementAt(i);
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int getAttributeSetCount() {
        Vector vector = this.m_attributeSets;
        if (vector != null) {
            return vector.size();
        }
        return 0;
    }

    public boolean getCompatibleMode() {
        return this.m_isCompatibleMode;
    }

    public DecimalFormatProperties getDecimalFormat(QName qName) {
        if (this.m_DecimalFormatDeclarations == null) {
            return null;
        }
        for (int decimalFormatCount = getDecimalFormatCount() - 1; decimalFormatCount >= 0; decimalFormatCount++) {
            DecimalFormatProperties decimalFormat = getDecimalFormat(decimalFormatCount);
            if (decimalFormat.getName().equals(qName)) {
                return decimalFormat;
            }
        }
        return null;
    }

    public int getDecimalFormatCount() {
        Stack stack = this.m_DecimalFormatDeclarations;
        if (stack != null) {
            return stack.size();
        }
        return 0;
    }

    public String getExcludeResultPrefix(int i) throws ArrayIndexOutOfBoundsException {
        StringVector stringVector = this.m_ExcludeResultPrefixs;
        if (stringVector != null) {
            return stringVector.elementAt(i);
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int getExcludeResultPrefixCount() {
        StringVector stringVector = this.m_ExcludeResultPrefixs;
        if (stringVector != null) {
            return stringVector.size();
        }
        return 0;
    }

    public String getExtensionElementPrefix(int i) throws ArrayIndexOutOfBoundsException {
        StringVector stringVector = this.m_ExtensionElementURIs;
        if (stringVector != null) {
            return stringVector.elementAt(i);
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int getExtensionElementPrefixCount() {
        StringVector stringVector = this.m_ExtensionElementURIs;
        if (stringVector != null) {
            return stringVector.size();
        }
        return 0;
    }

    public String getHref() {
        return this.m_href;
    }

    public String getId() {
        return this.m_Id;
    }

    public StylesheetComposed getImport(int i) throws ArrayIndexOutOfBoundsException {
        Vector vector = this.m_imports;
        if (vector != null) {
            return (StylesheetComposed) vector.elementAt(i);
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int getImportCount() {
        Vector vector = this.m_imports;
        if (vector != null) {
            return vector.size();
        }
        return 0;
    }

    public Stylesheet getInclude(int i) throws ArrayIndexOutOfBoundsException {
        Vector vector = this.m_includes;
        if (vector != null) {
            return (Stylesheet) vector.elementAt(i);
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int getIncludeCount() {
        Vector vector = this.m_includes;
        if (vector != null) {
            return vector.size();
        }
        return 0;
    }

    public KeyDeclaration getKey(int i) throws ArrayIndexOutOfBoundsException {
        Vector vector = this.m_keyDeclarations;
        if (vector != null) {
            return (KeyDeclaration) vector.elementAt(i);
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int getKeyCount() {
        Vector vector = this.m_keyDeclarations;
        if (vector != null) {
            return vector.size();
        }
        return 0;
    }

    public NamespaceAlias getNamespaceAlias(int i) throws ArrayIndexOutOfBoundsException {
        Vector vector = this.m_prefix_aliases;
        if (vector != null) {
            return (NamespaceAlias) vector.elementAt(i);
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int getNamespaceAliasCount() {
        Vector vector = this.m_prefix_aliases;
        if (vector != null) {
            return vector.size();
        }
        return 0;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return Constants.ELEMNAME_STYLESHEET_STRING;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public short getNodeType() {
        return (short) 9;
    }

    public Object getNonXslTopLevel(QName qName) {
        Hashtable hashtable = this.m_NonXslTopLevel;
        if (hashtable != null) {
            return hashtable.get(qName);
        }
        return null;
    }

    public OutputProperties getOutput(int i) throws ArrayIndexOutOfBoundsException {
        Vector vector = this.m_output;
        if (vector != null) {
            return (OutputProperties) vector.elementAt(i);
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int getOutputCount() {
        Vector vector = this.m_output;
        if (vector != null) {
            return vector.size();
        }
        return 0;
    }

    public ElemParam getParam(QName qName) {
        if (this.m_topLevelVariables == null) {
            return null;
        }
        int variableOrParamCount = getVariableOrParamCount();
        for (int i = 0; i < variableOrParamCount; i++) {
            ElemVariable variableOrParam = getVariableOrParam(i);
            if (variableOrParam.getXSLToken() == 41 && variableOrParam.getName().equals(qName)) {
                return (ElemParam) variableOrParam;
            }
        }
        return null;
    }

    public WhiteSpaceInfo getPreserveSpace(int i) throws ArrayIndexOutOfBoundsException {
        Vector vector = this.m_whitespacePreservingElements;
        if (vector != null) {
            return (WhiteSpaceInfo) vector.elementAt(i);
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int getPreserveSpaceCount() {
        Vector vector = this.m_whitespacePreservingElements;
        if (vector != null) {
            return vector.size();
        }
        return 0;
    }

    public WhiteSpaceInfo getStripSpace(int i) throws ArrayIndexOutOfBoundsException {
        Vector vector = this.m_whitespaceStrippingElements;
        if (vector != null) {
            return (WhiteSpaceInfo) vector.elementAt(i);
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int getStripSpaceCount() {
        Vector vector = this.m_whitespaceStrippingElements;
        if (vector != null) {
            return vector.size();
        }
        return 0;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public Stylesheet getStylesheet() {
        return this;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public StylesheetComposed getStylesheetComposed() {
        while (!this.isAggregatedType()) {
            this = this.getStylesheetParent();
        }
        return (StylesheetComposed) this;
    }

    public Stylesheet getStylesheetParent() {
        return this.m_stylesheetParent;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public StylesheetRoot getStylesheetRoot() {
        return this.m_stylesheetRoot;
    }

    public ElemTemplate getTemplate(int i) throws TransformerException {
        Vector vector = this.m_templates;
        if (vector != null) {
            return (ElemTemplate) vector.elementAt(i);
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int getTemplateCount() {
        Vector vector = this.m_templates;
        if (vector != null) {
            return vector.size();
        }
        return 0;
    }

    public ElemVariable getVariable(QName qName) {
        if (this.m_topLevelVariables == null) {
            return null;
        }
        int variableOrParamCount = getVariableOrParamCount();
        for (int i = 0; i < variableOrParamCount; i++) {
            ElemVariable variableOrParam = getVariableOrParam(i);
            if (variableOrParam.getXSLToken() == 73 && variableOrParam.getName().equals(qName)) {
                return variableOrParam;
            }
        }
        return null;
    }

    public ElemVariable getVariableOrParam(QName qName) {
        if (this.m_topLevelVariables == null) {
            return null;
        }
        int variableOrParamCount = getVariableOrParamCount();
        for (int i = 0; i < variableOrParamCount; i++) {
            ElemVariable variableOrParam = getVariableOrParam(i);
            if (variableOrParam.getName().equals(qName)) {
                return variableOrParam;
            }
        }
        return null;
    }

    public int getVariableOrParamCount() {
        Vector vector = this.m_topLevelVariables;
        if (vector != null) {
            return vector.size();
        }
        return 0;
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode
    public String getVersion() {
        return this.m_Version;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 25;
    }

    public String getXmlnsXsl() {
        return this.m_XmlnsXsl;
    }

    public boolean isAggregatedType() {
        return false;
    }

    public boolean isRoot() {
        return false;
    }

    public void replaceTemplate(ElemTemplate elemTemplate, int i) throws TransformerException {
        Vector vector = this.m_templates;
        if (vector == null) {
            throw new ArrayIndexOutOfBoundsException();
        }
        replaceChild((ElemTemplateElement) elemTemplate, (ElemTemplateElement) vector.elementAt(i));
        this.m_templates.setElementAt(elemTemplate, i);
        elemTemplate.setStylesheet(this);
    }

    public void setAttributeSet(ElemAttributeSet elemAttributeSet) {
        if (this.m_attributeSets == null) {
            this.m_attributeSets = new Vector();
        }
        this.m_attributeSets.addElement(elemAttributeSet);
    }

    public void setDecimalFormat(DecimalFormatProperties decimalFormatProperties) {
        if (this.m_DecimalFormatDeclarations == null) {
            this.m_DecimalFormatDeclarations = new Stack();
        }
        this.m_DecimalFormatDeclarations.push(decimalFormatProperties);
    }

    public void setExcludeResultPrefixes(StringVector stringVector) {
        this.m_ExcludeResultPrefixs = stringVector;
    }

    public void setExtensionElementPrefixes(StringVector stringVector) {
        this.m_ExtensionElementURIs = stringVector;
    }

    public void setHref(String str) {
        this.m_href = str;
    }

    public void setId(String str) {
        this.m_Id = str;
    }

    public void setImport(StylesheetComposed stylesheetComposed) {
        if (this.m_imports == null) {
            this.m_imports = new Vector();
        }
        this.m_imports.addElement(stylesheetComposed);
    }

    public void setInclude(Stylesheet stylesheet) {
        if (this.m_includes == null) {
            this.m_includes = new Vector();
        }
        this.m_includes.addElement(stylesheet);
    }

    public void setKey(KeyDeclaration keyDeclaration) {
        if (this.m_keyDeclarations == null) {
            this.m_keyDeclarations = new Vector();
        }
        this.m_keyDeclarations.addElement(keyDeclaration);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void setLocaterInfo(SourceLocator sourceLocator) {
        if (sourceLocator != null) {
            this.m_publicId = sourceLocator.getPublicId();
            String systemId = sourceLocator.getSystemId();
            this.m_systemId = systemId;
            if (systemId != null) {
                try {
                    this.m_href = SystemIDResolver.getAbsoluteURI(systemId, null);
                } catch (TransformerException unused) {
                }
            }
            super.setLocaterInfo(sourceLocator);
        }
    }

    public void setNamespaceAlias(NamespaceAlias namespaceAlias) {
        if (this.m_prefix_aliases == null) {
            this.m_prefix_aliases = new Vector();
        }
        this.m_prefix_aliases.addElement(namespaceAlias);
    }

    public void setNonXslTopLevel(QName qName, Object obj) {
        if (this.m_NonXslTopLevel == null) {
            this.m_NonXslTopLevel = new Hashtable();
        }
        this.m_NonXslTopLevel.put(qName, obj);
    }

    public void setOutput(OutputProperties outputProperties) {
        if (this.m_output == null) {
            this.m_output = new Vector();
        }
        this.m_output.addElement(outputProperties);
    }

    public void setParam(ElemParam elemParam) {
        setVariable(elemParam);
    }

    public void setPreserveSpaces(WhiteSpaceInfo whiteSpaceInfo) {
        if (this.m_whitespacePreservingElements == null) {
            this.m_whitespacePreservingElements = new Vector();
        }
        this.m_whitespacePreservingElements.addElement(whiteSpaceInfo);
    }

    public void setStripSpaces(WhiteSpaceInfo whiteSpaceInfo) {
        if (this.m_whitespaceStrippingElements == null) {
            this.m_whitespaceStrippingElements = new Vector();
        }
        this.m_whitespaceStrippingElements.addElement(whiteSpaceInfo);
    }

    public void setStylesheetParent(Stylesheet stylesheet) {
        this.m_stylesheetParent = stylesheet;
    }

    public void setStylesheetRoot(StylesheetRoot stylesheetRoot) {
        this.m_stylesheetRoot = stylesheetRoot;
    }

    public void setTemplate(ElemTemplate elemTemplate) {
        if (this.m_templates == null) {
            this.m_templates = new Vector();
        }
        this.m_templates.addElement(elemTemplate);
        elemTemplate.setStylesheet(this);
    }

    public void setVariable(ElemVariable elemVariable) {
        if (this.m_topLevelVariables == null) {
            this.m_topLevelVariables = new Vector();
        }
        this.m_topLevelVariables.addElement(elemVariable);
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode
    public void setVersion(String str) {
        this.m_Version = str;
        this.m_isCompatibleMode = Double.valueOf(str).doubleValue() > 1.0d;
    }

    public void setXmlnsXsl(String str) {
        this.m_XmlnsXsl = str;
    }

    public DecimalFormatProperties getDecimalFormat(int i) throws ArrayIndexOutOfBoundsException {
        Stack stack = this.m_DecimalFormatDeclarations;
        if (stack != null) {
            return (DecimalFormatProperties) stack.elementAt(i);
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public ElemVariable getVariableOrParam(int i) throws ArrayIndexOutOfBoundsException {
        Vector vector = this.m_topLevelVariables;
        if (vector != null) {
            return (ElemVariable) vector.elementAt(i);
        }
        throw new ArrayIndexOutOfBoundsException();
    }
}
