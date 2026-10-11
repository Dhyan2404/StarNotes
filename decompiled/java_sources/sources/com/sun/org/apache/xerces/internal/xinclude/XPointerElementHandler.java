package com.sun.org.apache.xerces.internal.xinclude;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xerces.internal.impl.Constants;
import com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
import com.sun.org.apache.xerces.internal.impl.dtd.DTDGrammar;
import com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings;
import com.sun.org.apache.xerces.internal.xni.Augmentations;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.XMLAttributes;
import com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
import com.sun.org.apache.xerces.internal.xni.XMLLocator;
import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import com.sun.org.apache.xerces.internal.xni.XMLString;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription;
import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
import com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
import java.util.Enumeration;
import java.util.Stack;
import java.util.StringTokenizer;

/* loaded from: classes10.dex */
public class XPointerElementHandler implements XPointerSchema {
    protected static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    protected static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String GRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";
    private static final int INITIAL_SIZE = 8;
    int fCurrentToken;
    protected DTDGrammar fDTDGrammar;
    protected XMLLocator fDocLocation;
    protected XMLDocumentHandler fDocumentHandler;
    protected XMLDocumentSource fDocumentSource;
    protected XMLEntityResolver fEntityResolver;
    protected XMLErrorReporter fErrorReporter;
    protected XMLGrammarDescription fGrammarDesc;
    protected XMLGrammarPool fGrammarPool;
    protected XIncludeNamespaceSupport fNamespaceContext;
    protected XIncludeHandler fParentXIncludeHandler;
    protected StringBuffer fPointer;
    String fSchemaName;
    String fSchemaPointer;
    protected ParserConfigurationSettings fSettings;
    boolean fSubResourceIdentified;
    boolean includeElement;
    private static final String[] RECOGNIZED_FEATURES = new String[0];
    private static final Boolean[] FEATURE_DEFAULTS = new Boolean[0];
    protected static final String XPOINTER_SCHEMA = "http://apache.org/xml/properties/xpointer-schema";
    private static final String[] RECOGNIZED_PROPERTIES = {"http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/grammar-pool", "http://apache.org/xml/properties/internal/entity-resolver", XPOINTER_SCHEMA};
    private static final Object[] PROPERTY_DEFAULTS = {null, null, null, null};
    private int elemCount = 0;
    private boolean[] fSawInclude = new boolean[8];
    private boolean[] fSawFallback = new boolean[8];
    private int[] fState = new int[8];
    QName foundElement = null;
    boolean skip = false;
    Stack fPointerToken = new Stack();
    int fCurrentTokenint = 0;
    String fCurrentTokenString = null;
    int fCurrentTokenType = 0;
    Stack ftempCurrentElement = new Stack();
    int fElementCount = 0;
    private int fDepth = 0;
    private int fRootDepth = 0;

    public XPointerElementHandler() {
        this.fSawFallback[0] = false;
        this.fSawInclude[0] = false;
        this.fSchemaName = "element";
    }

    private boolean isIdAttribute(XMLAttributes xMLAttributes, Augmentations augmentations, int i) {
        Object item = augmentations.getItem(Constants.ID_ATTRIBUTE);
        return item instanceof Boolean ? ((Boolean) item).booleanValue() : "ID".equals(xMLAttributes.getType(i));
    }

    private void setErrorReporter(XMLErrorReporter xMLErrorReporter) {
        this.fErrorReporter = xMLErrorReporter;
        if (xMLErrorReporter != null) {
            xMLErrorReporter.putMessageFormatter("http://www.w3.org/TR/xinclude", new XIncludeMessageFormatter());
        }
    }

    public void addQName(QName qName) {
        this.ftempCurrentElement.push(new QName(qName));
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || !this.includeElement) {
            return;
        }
        xMLDocumentHandler.characters(xMLString, augmentations);
    }

    public boolean checkIntegerToken(QName qName) {
        if (!this.skip) {
            int i = this.fElementCount + 1;
            this.fElementCount = i;
            if (this.fCurrentTokenint == i) {
                if (hasMoreToken()) {
                    this.fElementCount = 0;
                    this.fCurrentTokenType = 0;
                    return true;
                }
                this.foundElement = qName;
                this.includeElement = true;
                this.fCurrentTokenType = 0;
                this.fElementCount = 0;
                this.fSubResourceIdentified = true;
                return true;
            }
            addQName(qName);
            this.skip = true;
        }
        return false;
    }

    public boolean checkStringToken(QName qName, XMLAttributes xMLAttributes) {
        QName qName2 = new QName();
        int length = xMLAttributes.getLength();
        for (int i = 0; i < length; i++) {
            Augmentations augmentations = xMLAttributes.getAugmentations(i);
            xMLAttributes.getName(i, qName2);
            String type = xMLAttributes.getType(i);
            String value = xMLAttributes.getValue(i);
            if (type != null && value != null && isIdAttribute(xMLAttributes, augmentations, i) && value.equals(this.fCurrentTokenString)) {
                if (hasMoreToken()) {
                    this.fCurrentTokenType = 0;
                    this.fCurrentTokenString = null;
                    return true;
                }
                this.foundElement = qName;
                this.includeElement = true;
                this.fCurrentTokenType = 0;
                this.fCurrentTokenString = null;
                this.fSubResourceIdentified = true;
                return true;
            }
        }
        return false;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || !this.includeElement) {
            return;
        }
        xMLDocumentHandler.comment(xMLString, augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void doctypeDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || !this.includeElement) {
            return;
        }
        xMLDocumentHandler.emptyElement(qName, xMLAttributes, augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endCDATA(Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || !this.includeElement) {
            return;
        }
        xMLDocumentHandler.endCDATA(augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endDocument(Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        if (!this.includeElement || this.foundElement == null) {
            if (this.ftempCurrentElement.empty() || !((QName) this.ftempCurrentElement.peek()).equals(qName)) {
                return;
            }
            this.ftempCurrentElement.pop();
            this.skip = false;
            return;
        }
        int i = this.elemCount;
        if (i > 0) {
            this.elemCount = i - 1;
        }
        this.fDocumentHandler.endElement(qName, augmentations);
        if (this.elemCount == 0) {
            this.includeElement = false;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endGeneralEntity(String str, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.endGeneralEntity(str, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource
    public XMLDocumentHandler getDocumentHandler() {
        return this.fDocumentHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public XMLDocumentSource getDocumentSource() {
        return this.fDocumentSource;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = RECOGNIZED_FEATURES;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return FEATURE_DEFAULTS[i];
            }
            i++;
        }
    }

    public boolean getNextToken() {
        if (this.fPointerToken.isEmpty()) {
            return false;
        }
        Object pop = this.fPointerToken.pop();
        if (pop instanceof Integer) {
            this.fCurrentTokenint = ((Integer) pop).intValue();
            this.fCurrentTokenType = 1;
        } else {
            this.fCurrentTokenString = ((String) pop).toString();
            this.fCurrentTokenType = 2;
        }
        return true;
    }

    @Override // com.sun.org.apache.xerces.internal.xinclude.XPointerSchema
    public Object getParent() {
        return this.fParentXIncludeHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = RECOGNIZED_PROPERTIES;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return PROPERTY_DEFAULTS[i];
            }
            i++;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return RECOGNIZED_FEATURES;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return RECOGNIZED_PROPERTIES;
    }

    public void getTokens() {
        String str = this.fSchemaPointer;
        this.fSchemaPointer = str.substring(str.indexOf(MotionUtils.f31761c) + 1, this.fSchemaPointer.length());
        StringTokenizer stringTokenizer = new StringTokenizer(this.fSchemaPointer, "/");
        Stack stack = new Stack();
        if (this.fPointerToken == null) {
            this.fPointerToken = new Stack();
        }
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            try {
                stack.push(Integer.valueOf(nextToken));
            } catch (NumberFormatException unused) {
                stack.push(nextToken);
            }
        }
        while (!stack.empty()) {
            this.fPointerToken.push(stack.pop());
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xinclude.XPointerSchema
    public String getXPointerSchemaPointer() {
        return this.fSchemaPointer;
    }

    @Override // com.sun.org.apache.xerces.internal.xinclude.XPointerSchema
    public String getXpointerSchemaName() {
        return this.fSchemaName;
    }

    public boolean hasMoreToken() {
        return !this.fPointerToken.isEmpty();
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || !this.includeElement) {
            return;
        }
        xMLDocumentHandler.ignorableWhitespace(xMLString, augmentations);
    }

    public boolean isRootDocument() {
        return this.fParentXIncludeHandler == null;
    }

    @Override // com.sun.org.apache.xerces.internal.xinclude.XPointerSchema
    public boolean isSubResourceIndentified() {
        return this.fSubResourceIdentified;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || !this.includeElement) {
            return;
        }
        xMLDocumentHandler.processingInstruction(str, xMLString, augmentations);
    }

    public void reportFatalError(String str) {
        reportFatalError(str, null);
    }

    @Override // com.sun.org.apache.xerces.internal.xinclude.XPointerSchema
    public void reset() {
        this.elemCount = 0;
        this.fPointerToken = null;
        this.fCurrentTokenint = 0;
        this.fCurrentTokenString = null;
        this.fCurrentTokenType = 0;
        this.fElementCount = 0;
        this.fCurrentToken = 0;
        this.includeElement = false;
        this.foundElement = null;
        this.skip = false;
        this.fSubResourceIdentified = false;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource
    public void setDocumentHandler(XMLDocumentHandler xMLDocumentHandler) {
        this.fDocumentHandler = xMLDocumentHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void setDocumentSource(XMLDocumentSource xMLDocumentSource) {
        this.fDocumentSource = xMLDocumentSource;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
        ParserConfigurationSettings parserConfigurationSettings = this.fSettings;
        if (parserConfigurationSettings != null) {
            parserConfigurationSettings.setFeature(str, z);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xinclude.XPointerSchema
    public void setParent(Object obj) {
        this.fParentXIncludeHandler = (XIncludeHandler) obj;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        if (str.equals("http://apache.org/xml/properties/internal/error-reporter")) {
            setErrorReporter((XMLErrorReporter) obj);
        }
        if (str.equals("http://apache.org/xml/properties/internal/grammar-pool")) {
            this.fGrammarPool = (XMLGrammarPool) obj;
        }
        if (str.equals("http://apache.org/xml/properties/internal/entity-resolver")) {
            this.fEntityResolver = (XMLEntityResolver) obj;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xinclude.XPointerSchema
    public void setXPointerSchemaName(String str) {
        this.fSchemaName = str;
    }

    @Override // com.sun.org.apache.xerces.internal.xinclude.XPointerSchema
    public void setXPointerSchemaPointer(String str) {
        this.fSchemaPointer = str;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || !this.includeElement) {
            return;
        }
        xMLDocumentHandler.startCDATA(augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
        getTokens();
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        if (this.fCurrentTokenType == 0) {
            getNextToken();
        }
        int i = this.fCurrentTokenType;
        if ((i == 1 ? checkIntegerToken(qName) : i == 2 ? checkStringToken(qName, xMLAttributes) : false) && hasMoreToken()) {
            getNextToken();
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || !this.includeElement) {
            return;
        }
        this.elemCount++;
        xMLDocumentHandler.startElement(qName, xMLAttributes, augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startGeneralEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || !this.includeElement) {
            return;
        }
        xMLDocumentHandler.startGeneralEntity(str, xMLResourceIdentifier, str2, augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void textDecl(String str, String str2, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || !this.includeElement) {
            return;
        }
        xMLDocumentHandler.textDecl(str, str2, augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
    }

    public void reportFatalError(String str, Object[] objArr) {
        XMLErrorReporter xMLErrorReporter = this.fErrorReporter;
        if (xMLErrorReporter != null) {
            xMLErrorReporter.reportError(this.fDocLocation, "http://www.w3.org/TR/xinclude", str, objArr, (short) 2);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XNIException {
        this.fNamespaceContext = null;
        this.elemCount = 0;
        this.fDepth = 0;
        this.fRootDepth = 0;
        this.fPointerToken = null;
        this.fCurrentTokenint = 0;
        this.fCurrentTokenString = null;
        this.fCurrentTokenType = 0;
        this.foundElement = null;
        this.includeElement = false;
        this.skip = false;
        this.fSubResourceIdentified = false;
        try {
            setErrorReporter((XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter"));
        } catch (XMLConfigurationException unused) {
            this.fErrorReporter = null;
        }
        try {
            this.fGrammarPool = (XMLGrammarPool) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/grammar-pool");
        } catch (XMLConfigurationException unused2) {
            this.fGrammarPool = null;
        }
        try {
            this.fEntityResolver = (XMLEntityResolver) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/entity-resolver");
        } catch (XMLConfigurationException unused3) {
            this.fEntityResolver = null;
        }
        this.fSettings = new ParserConfigurationSettings();
        Enumeration xercesFeatures = Constants.getXercesFeatures();
        while (xercesFeatures.hasMoreElements()) {
            String str = (String) xercesFeatures.nextElement();
            this.fSettings.addRecognizedFeatures(new String[]{str});
            try {
                this.fSettings.setFeature(str, xMLComponentManager.getFeature(str));
            } catch (XMLConfigurationException unused4) {
            }
        }
    }
}
