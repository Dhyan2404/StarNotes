package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.extensions.ExpressionVisitor;
import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xalan.internal.templates.ElemForEach;
import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xalan.internal.templates.FuncDocument;
import com.sun.org.apache.xalan.internal.templates.FuncFormatNumb;
import com.sun.org.apache.xalan.internal.templates.Stylesheet;
import com.sun.org.apache.xalan.internal.templates.StylesheetRoot;
import com.sun.org.apache.xml.internal.utils.BoolStack;
import com.sun.org.apache.xml.internal.utils.NamespaceSupport2;
import com.sun.org.apache.xml.internal.utils.NodeConsumer;
import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import com.sun.org.apache.xml.internal.utils.SAXSourceLocator;
import com.sun.org.apache.xml.internal.utils.XMLCharacterRecognizer;
import com.sun.org.apache.xpath.internal.XPath;
import com.sun.org.apache.xpath.internal.compiler.FunctionTable;
import java.util.EmptyStackException;
import java.util.Stack;
import java.util.Vector;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.Templates;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.sax.TemplatesHandler;
import org.w3c.dom.Node;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.DefaultHandler;
import org.xml.sax.helpers.NamespaceSupport;

/* loaded from: classes10.dex */
public class StylesheetHandler extends DefaultHandler implements TemplatesHandler, PrefixResolver, NodeConsumer {
    public static final int STYPE_IMPORT = 3;
    public static final int STYPE_INCLUDE = 2;
    public static final int STYPE_ROOT = 1;
    private String m_fragmentIDString;
    private boolean m_incremental;
    Stylesheet m_lastPoppedStylesheet;
    private boolean m_optimize;
    private Node m_originatingNode;
    private boolean m_source_location;
    private TransformerFactoryImpl m_stylesheetProcessor;
    StylesheetRoot m_stylesheetRoot;
    private FunctionTable m_funcTable = new FunctionTable();
    private int m_stylesheetLevel = -1;
    private boolean m_parsingComplete = false;
    private Vector m_prefixMappings = new Vector();
    private boolean m_shouldProcess = true;
    private int m_elementID = 0;
    private int m_fragmentID = 0;
    private int m_stylesheetType = 1;
    private Stack m_stylesheets = new Stack();
    private Stack m_processors = new Stack();
    private XSLTSchema m_schema = new XSLTSchema();
    private Stack m_elems = new Stack();
    private int m_docOrderCount = 0;
    Stack m_baseIdentifiers = new Stack();
    private Stack m_stylesheetLocatorStack = new Stack();
    private Stack m_importStack = new Stack();
    private boolean warnedAboutOldXSLTNamespace = false;
    Stack m_nsSupportStack = new Stack();
    private BoolStack m_spacePreserveStack = new BoolStack();

    public StylesheetHandler(TransformerFactoryImpl transformerFactoryImpl) throws TransformerConfigurationException {
        this.m_optimize = true;
        this.m_incremental = false;
        this.m_source_location = false;
        this.m_funcTable.installFunction("document", FuncDocument.class);
        this.m_funcTable.installFunction("format-number", FuncFormatNumb.class);
        this.m_optimize = ((Boolean) transformerFactoryImpl.getAttribute(TransformerFactoryImpl.FEATURE_OPTIMIZE)).booleanValue();
        this.m_incremental = ((Boolean) transformerFactoryImpl.getAttribute(TransformerFactoryImpl.FEATURE_INCREMENTAL)).booleanValue();
        this.m_source_location = ((Boolean) transformerFactoryImpl.getAttribute("http://xml.apache.org/xalan/properties/source-location")).booleanValue();
        init(transformerFactoryImpl);
    }

    private void assertion(boolean z, String str) throws RuntimeException {
        if (!z) {
            throw new RuntimeException(str);
        }
    }

    private void checkForFragmentID(Attributes attributes) {
        if (this.m_shouldProcess || attributes == null || this.m_fragmentIDString == null) {
            return;
        }
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            if (attributes.getQName(i).equals("id") && attributes.getValue(i).equalsIgnoreCase(this.m_fragmentIDString)) {
                this.m_shouldProcess = true;
                this.m_fragmentID = this.m_elementID;
            }
        }
    }

    private void flushCharacters() throws SAXException {
        XSLTElementProcessor currentProcessor = getCurrentProcessor();
        if (currentProcessor != null) {
            currentProcessor.startNonText(this);
        }
    }

    private double getElemVersion() {
        ElemTemplateElement elemTemplateElement = getElemTemplateElement();
        double d = -1.0d;
        while (true) {
            if ((d == -1.0d || d == 1.0d) && elemTemplateElement != null) {
                try {
                    d = Double.valueOf(elemTemplateElement.getXmlVersion()).doubleValue();
                } catch (Exception unused) {
                    d = -1.0d;
                }
                elemTemplateElement = elemTemplateElement.getParentElem();
            }
        }
        if (d == -1.0d) {
            return 1.0d;
        }
        return d;
    }

    private boolean stackContains(Stack stack, String str) {
        int size = stack.size();
        for (int i = 0; i < size; i++) {
            if (((String) stack.elementAt(i)).equals(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        if (this.m_shouldProcess) {
            XSLTElementProcessor currentProcessor = getCurrentProcessor();
            XSLTElementDef elemDef = currentProcessor.getElemDef();
            if (elemDef.getType() != 2) {
                currentProcessor = elemDef.getProcessorFor(null, "text()");
            }
            if (currentProcessor != null) {
                currentProcessor.characters(this, cArr, i, i2);
            } else {
                if (XMLCharacterRecognizer.isWhiteSpace(cArr, i, i2)) {
                    return;
                }
                error(XSLMessages.createMessage("ER_NONWHITESPACE_NOT_ALLOWED_IN_POSITION", null), null);
            }
        }
    }

    public XPath createMatchPatternXPath(String str, ElemTemplateElement elemTemplateElement) throws TransformerException {
        XPath xPath = new XPath(str, elemTemplateElement, this, 1, this.m_stylesheetProcessor.getErrorListener(), this.m_funcTable);
        xPath.callVisitors(xPath, new ExpressionVisitor(getStylesheetRoot()));
        return xPath;
    }

    public XPath createXPath(String str, ElemTemplateElement elemTemplateElement) throws TransformerException {
        XPath xPath = new XPath(str, elemTemplateElement, this, 0, this.m_stylesheetProcessor.getErrorListener(), this.m_funcTable);
        xPath.callVisitors(xPath, new ExpressionVisitor(getStylesheetRoot()));
        return xPath;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        try {
            if (getStylesheetRoot() == null) {
                throw new TransformerException(XSLMessages.createMessage("ER_NO_STYLESHEETROOT", null));
            }
            if (this.m_stylesheetLevel == 0) {
                getStylesheetRoot().recompose();
            }
            XSLTElementProcessor currentProcessor = getCurrentProcessor();
            if (currentProcessor != null) {
                currentProcessor.startNonText(this);
            }
            boolean z = true;
            this.m_stylesheetLevel--;
            popSpaceHandling();
            if (this.m_stylesheetLevel >= 0) {
                z = false;
            }
            this.m_parsingComplete = z;
        } catch (TransformerException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        int i = this.m_elementID - 1;
        this.m_elementID = i;
        if (this.m_shouldProcess) {
            if (i + 1 == this.m_fragmentID) {
                this.m_shouldProcess = false;
            }
            flushCharacters();
            popSpaceHandling();
            getCurrentProcessor().endElement(this, str, str2, str3);
            popProcessor();
            getNamespaceSupport().popContext();
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) throws SAXException {
    }

    public void error(String str, Exception exc) throws SAXException {
        TransformerException transformerException;
        SAXSourceLocator locator = getLocator();
        ErrorListener errorListener = this.m_stylesheetProcessor.getErrorListener();
        if (!(exc instanceof TransformerException)) {
            transformerException = exc == null ? new TransformerException(str, locator) : new TransformerException(str, locator, exc);
        } else {
            transformerException = (TransformerException) exc;
        }
        if (errorListener != null) {
            try {
                errorListener.error(transformerException);
                return;
            } catch (TransformerException e) {
                throw new SAXException(e);
            }
        }
        throw new SAXException(transformerException);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ErrorHandler
    public void fatalError(SAXParseException sAXParseException) throws SAXException {
        String message = sAXParseException.getMessage();
        SAXSourceLocator locator = getLocator();
        try {
            this.m_stylesheetProcessor.getErrorListener().fatalError(new TransformerException(message, locator));
        } catch (TransformerException e) {
            throw new SAXException(e);
        }
    }

    @Override // com.sun.org.apache.xml.internal.utils.PrefixResolver
    public String getBaseIdentifier() {
        String str = (String) (this.m_baseIdentifiers.isEmpty() ? null : this.m_baseIdentifiers.peek());
        if (str != null) {
            return str;
        }
        SAXSourceLocator locator = getLocator();
        return locator == null ? "" : locator.getSystemId();
    }

    public XSLTElementProcessor getCurrentProcessor() {
        return (XSLTElementProcessor) this.m_processors.peek();
    }

    public ElemTemplateElement getElemTemplateElement() {
        try {
            return (ElemTemplateElement) this.m_elems.peek();
        } catch (EmptyStackException unused) {
            return null;
        }
    }

    public boolean getIncremental() {
        return this.m_incremental;
    }

    public Stylesheet getLastPoppedStylesheet() {
        return this.m_lastPoppedStylesheet;
    }

    public SAXSourceLocator getLocator() {
        if (!this.m_stylesheetLocatorStack.isEmpty()) {
            return (SAXSourceLocator) this.m_stylesheetLocatorStack.peek();
        }
        SAXSourceLocator sAXSourceLocator = new SAXSourceLocator();
        sAXSourceLocator.setSystemId(getStylesheetProcessor().getDOMsystemID());
        return sAXSourceLocator;
    }

    @Override // com.sun.org.apache.xml.internal.utils.PrefixResolver
    public String getNamespaceForPrefix(String str) {
        return getNamespaceSupport().getURI(str);
    }

    public NamespaceSupport getNamespaceSupport() {
        return (NamespaceSupport) this.m_nsSupportStack.peek();
    }

    public boolean getOptimize() {
        return this.m_optimize;
    }

    public Node getOriginatingNode() {
        return this.m_originatingNode;
    }

    public XSLTElementProcessor getProcessorFor(String str, String str2, String str3) throws SAXException {
        XSLTElementProcessor currentProcessor = getCurrentProcessor();
        XSLTElementDef elemDef = currentProcessor.getElemDef();
        XSLTElementProcessor processorFor = elemDef.getProcessorFor(str, str2);
        if (processorFor == null && !(currentProcessor instanceof ProcessorStylesheetDoc) && (getStylesheet() == null || Double.valueOf(getStylesheet().getVersion()).doubleValue() > 1.0d || ((!str.equals("http://www.w3.org/1999/XSL/Transform") && (currentProcessor instanceof ProcessorStylesheetElement)) || getElemVersion() > 1.0d))) {
            processorFor = elemDef.getProcessorForUnknown(str, str2);
        }
        if (processorFor == null) {
            error(XSLMessages.createMessage("ER_NOT_ALLOWED_IN_POSITION", new Object[]{str3}), null);
        }
        return processorFor;
    }

    public XSLTSchema getSchema() {
        return this.m_schema;
    }

    public boolean getSource_location() {
        return this.m_source_location;
    }

    public Stylesheet getStylesheet() {
        if (this.m_stylesheets.size() == 0) {
            return null;
        }
        return (Stylesheet) this.m_stylesheets.peek();
    }

    public TransformerFactoryImpl getStylesheetProcessor() {
        return this.m_stylesheetProcessor;
    }

    public StylesheetRoot getStylesheetRoot() {
        StylesheetRoot stylesheetRoot = this.m_stylesheetRoot;
        if (stylesheetRoot != null) {
            stylesheetRoot.setOptimizer(this.m_optimize);
            this.m_stylesheetRoot.setIncremental(this.m_incremental);
            this.m_stylesheetRoot.setSource_location(this.m_source_location);
        }
        return this.m_stylesheetRoot;
    }

    public int getStylesheetType() {
        return this.m_stylesheetType;
    }

    @Override // javax.xml.transform.sax.TemplatesHandler
    public String getSystemId() {
        return getBaseIdentifier();
    }

    @Override // javax.xml.transform.sax.TemplatesHandler
    public Templates getTemplates() {
        return getStylesheetRoot();
    }

    @Override // com.sun.org.apache.xml.internal.utils.PrefixResolver
    public boolean handlesNullPrefixes() {
        return false;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
        if (this.m_shouldProcess) {
            getCurrentProcessor().ignorableWhitespace(this, cArr, i, i2);
        }
    }

    public boolean importStackContains(String str) {
        return stackContains(this.m_importStack, str);
    }

    public void init(TransformerFactoryImpl transformerFactoryImpl) {
        this.m_stylesheetProcessor = transformerFactoryImpl;
        this.m_processors.push(this.m_schema.getElementProcessor());
        pushNewNamespaceSupport();
    }

    public boolean isSpacePreserve() {
        return this.m_spacePreserveStack.peek();
    }

    public boolean isStylesheetParsingComplete() {
        return this.m_parsingComplete;
    }

    public int nextUid() {
        int i = this.m_docOrderCount;
        this.m_docOrderCount = i + 1;
        return i;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.DTDHandler
    public void notationDecl(String str, String str2, String str3) {
        getCurrentProcessor().notationDecl(this, str, str2, str3);
    }

    public String popBaseIndentifier() {
        return (String) this.m_baseIdentifiers.pop();
    }

    public ElemTemplateElement popElemTemplateElement() {
        return (ElemTemplateElement) this.m_elems.pop();
    }

    public String popImportURL() {
        return (String) this.m_importStack.pop();
    }

    public void popNamespaceSupport() {
        this.m_nsSupportStack.pop();
    }

    public XSLTElementProcessor popProcessor() {
        return (XSLTElementProcessor) this.m_processors.pop();
    }

    public void popSpaceHandling() {
        this.m_spacePreserveStack.pop();
    }

    public Stylesheet popStylesheet() {
        if (!this.m_stylesheetLocatorStack.isEmpty()) {
            this.m_stylesheetLocatorStack.pop();
        }
        if (!this.m_stylesheets.isEmpty()) {
            this.m_lastPoppedStylesheet = (Stylesheet) this.m_stylesheets.pop();
        }
        return this.m_lastPoppedStylesheet;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
        String str3;
        String str4;
        if (this.m_shouldProcess) {
            int indexOf = str.indexOf(58);
            if (indexOf >= 0) {
                str3 = getNamespaceForPrefix(str.substring(0, indexOf));
                str4 = str.substring(indexOf + 1);
            } else {
                str3 = "";
                str4 = str;
            }
            try {
                if ("xalan-doc-cache-off".equals(str) || "xalan:doc-cache-off".equals(str) || ("doc-cache-off".equals(str4) && str3.equals("com.sun.org.apache.xalan.internal.xslt.extensions.Redirect"))) {
                    if (!(this.m_elems.peek() instanceof ElemForEach)) {
                        throw new TransformerException("xalan:doc-cache-off not allowed here!", getLocator());
                    }
                    ((ElemForEach) this.m_elems.peek()).m_doc_cache_off = true;
                }
            } catch (Exception unused) {
            }
            flushCharacters();
            getCurrentProcessor().processingInstruction(this, str, str2);
        }
    }

    public void pushBaseIndentifier(String str) {
        if (str != null) {
            int indexOf = str.indexOf(35);
            if (indexOf > -1) {
                this.m_fragmentIDString = str.substring(indexOf + 1);
                this.m_shouldProcess = false;
            } else {
                this.m_shouldProcess = true;
            }
        } else {
            this.m_shouldProcess = true;
        }
        this.m_baseIdentifiers.push(str);
    }

    public void pushElemTemplateElement(ElemTemplateElement elemTemplateElement) {
        if (elemTemplateElement.getUid() == -1) {
            elemTemplateElement.setUid(nextUid());
        }
        this.m_elems.push(elemTemplateElement);
    }

    public void pushImportURL(String str) {
        this.m_importStack.push(str);
    }

    public void pushNewNamespaceSupport() {
        this.m_nsSupportStack.push(new NamespaceSupport2());
    }

    public void pushProcessor(XSLTElementProcessor xSLTElementProcessor) {
        this.m_processors.push(xSLTElementProcessor);
    }

    public void pushSpaceHandling(boolean z) throws SAXParseException {
        this.m_spacePreserveStack.push(z);
    }

    public void pushStylesheet(Stylesheet stylesheet) {
        if (this.m_stylesheets.size() == 0) {
            this.m_stylesheetRoot = (StylesheetRoot) stylesheet;
        }
        this.m_stylesheets.push(stylesheet);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.EntityResolver
    public InputSource resolveEntity(String str, String str2) throws SAXException {
        return getCurrentProcessor().resolveEntity(this, str, str2);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        this.m_stylesheetLocatorStack.push(new SAXSourceLocator(locator));
    }

    @Override // com.sun.org.apache.xml.internal.utils.NodeConsumer
    public void setOriginatingNode(Node node) {
        this.m_originatingNode = node;
    }

    public void setStylesheetType(int i) {
        this.m_stylesheetType = i;
    }

    @Override // javax.xml.transform.sax.TemplatesHandler
    public void setSystemId(String str) {
        pushBaseIndentifier(str);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void skippedEntity(String str) throws SAXException {
        if (this.m_shouldProcess) {
            getCurrentProcessor().skippedEntity(this, str);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        this.m_stylesheetLevel++;
        pushSpaceHandling(false);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        NamespaceSupport namespaceSupport = getNamespaceSupport();
        namespaceSupport.pushContext();
        int size = this.m_prefixMappings.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            namespaceSupport.declarePrefix((String) this.m_prefixMappings.elementAt(i), (String) this.m_prefixMappings.elementAt(i2));
            i = i2 + 1;
        }
        this.m_prefixMappings.removeAllElements();
        this.m_elementID++;
        checkForFragmentID(attributes);
        if (this.m_shouldProcess) {
            flushCharacters();
            pushSpaceHandling(attributes);
            XSLTElementProcessor processorFor = getProcessorFor(str, str2, str3);
            if (processorFor != null) {
                pushProcessor(processorFor);
                processorFor.startElement(this, str, str2, str3, attributes);
            } else {
                this.m_shouldProcess = false;
                popSpaceHandling();
            }
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) throws SAXException {
        this.m_prefixMappings.addElement(str);
        this.m_prefixMappings.addElement(str2);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.DTDHandler
    public void unparsedEntityDecl(String str, String str2, String str3, String str4) {
        getCurrentProcessor().unparsedEntityDecl(this, str, str2, str3, str4);
    }

    public void warn(String str, Object[] objArr) throws SAXException {
        String createWarning = XSLMessages.createWarning(str, objArr);
        SAXSourceLocator locator = getLocator();
        ErrorListener errorListener = this.m_stylesheetProcessor.getErrorListener();
        if (errorListener != null) {
            try {
                errorListener.warning(new TransformerException(createWarning, locator));
            } catch (TransformerException e) {
                throw new SAXException(e);
            }
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ErrorHandler
    public void warning(SAXParseException sAXParseException) throws SAXException {
        String message = sAXParseException.getMessage();
        SAXSourceLocator locator = getLocator();
        try {
            this.m_stylesheetProcessor.getErrorListener().warning(new TransformerException(message, locator));
        } catch (TransformerException e) {
            throw new SAXException(e);
        }
    }

    @Override // com.sun.org.apache.xml.internal.utils.PrefixResolver
    public String getNamespaceForPrefix(String str, Node node) {
        assertion(true, "can't process a context node in StylesheetHandler!");
        return null;
    }

    public void pushSpaceHandling(Attributes attributes) throws SAXParseException {
        String value = attributes.getValue(Constants.ATTRNAME_XMLSPACE);
        if (value == null) {
            BoolStack boolStack = this.m_spacePreserveStack;
            boolStack.push(boolStack.peekOrFalse());
            return;
        }
        if (value.equals("preserve")) {
            this.m_spacePreserveStack.push(true);
            return;
        }
        if (value.equals("default")) {
            this.m_spacePreserveStack.push(false);
            return;
        }
        SAXSourceLocator locator = getLocator();
        try {
            this.m_stylesheetProcessor.getErrorListener().error(new TransformerException(XSLMessages.createMessage("ER_ILLEGAL_XMLSPACE_VALUE", null), locator));
            BoolStack boolStack2 = this.m_spacePreserveStack;
            boolStack2.push(boolStack2.peek());
        } catch (TransformerException e) {
            throw new SAXParseException(e.getMessage(), locator, e);
        }
    }

    public void error(String str, Object[] objArr, Exception exc) throws SAXException {
        error(XSLMessages.createMessage(str, objArr), exc);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ErrorHandler
    public void error(SAXParseException sAXParseException) throws SAXException {
        String message = sAXParseException.getMessage();
        SAXSourceLocator locator = getLocator();
        try {
            this.m_stylesheetProcessor.getErrorListener().error(new TransformerException(message, locator));
        } catch (TransformerException e) {
            throw new SAXException(e);
        }
    }
}
