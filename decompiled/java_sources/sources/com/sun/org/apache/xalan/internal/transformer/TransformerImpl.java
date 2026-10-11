package com.sun.org.apache.xalan.internal.transformer;

import com.sun.org.apache.xalan.internal.extensions.ExtensionsTable;
import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import com.sun.org.apache.xalan.internal.templates.AVT;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xalan.internal.templates.ElemAttributeSet;
import com.sun.org.apache.xalan.internal.templates.ElemForEach;
import com.sun.org.apache.xalan.internal.templates.ElemSort;
import com.sun.org.apache.xalan.internal.templates.ElemTemplate;
import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xalan.internal.templates.ElemTextLiteral;
import com.sun.org.apache.xalan.internal.templates.ElemVariable;
import com.sun.org.apache.xalan.internal.templates.OutputProperties;
import com.sun.org.apache.xalan.internal.templates.Stylesheet;
import com.sun.org.apache.xalan.internal.templates.StylesheetComposed;
import com.sun.org.apache.xalan.internal.templates.StylesheetRoot;
import com.sun.org.apache.xalan.internal.templates.WhiteSpaceInfo;
import com.sun.org.apache.xalan.internal.templates.XUnresolvedVariable;
import com.sun.org.apache.xalan.internal.trace.GenerateEvent;
import com.sun.org.apache.xalan.internal.trace.TraceManager;
import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.dtm.DTMWSFilter;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
import com.sun.org.apache.xml.internal.serializer.SerializerFactory;
import com.sun.org.apache.xml.internal.serializer.SerializerTrace;
import com.sun.org.apache.xml.internal.serializer.ToHTMLSAXHandler;
import com.sun.org.apache.xml.internal.serializer.ToSAXHandler;
import com.sun.org.apache.xml.internal.serializer.ToTextSAXHandler;
import com.sun.org.apache.xml.internal.serializer.ToTextStream;
import com.sun.org.apache.xml.internal.serializer.ToXMLSAXHandler;
import com.sun.org.apache.xml.internal.utils.BoolStack;
import com.sun.org.apache.xml.internal.utils.DOMBuilder;
import com.sun.org.apache.xml.internal.utils.DOMHelper;
import com.sun.org.apache.xml.internal.utils.DefaultErrorHandler;
import com.sun.org.apache.xml.internal.utils.NodeVector;
import com.sun.org.apache.xml.internal.utils.ObjectPool;
import com.sun.org.apache.xml.internal.utils.ObjectStack;
import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xml.internal.utils.SAXSourceLocator;
import com.sun.org.apache.xml.internal.utils.ThreadControllerWrapper;
import com.sun.org.apache.xml.internal.utils.WrappedRuntimeException;
import com.sun.org.apache.xpath.internal.Arg;
import com.sun.org.apache.xpath.internal.ExtensionsProvider;
import com.sun.org.apache.xpath.internal.NodeSetDTM;
import com.sun.org.apache.xpath.internal.VariableStack;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.axes.SelfIteratorNoPredicate;
import com.sun.org.apache.xpath.internal.functions.FuncExtFunction;
import com.sun.org.apache.xpath.internal.objects.XObject;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Enumeration;
import java.util.NoSuchElementException;
import java.util.Properties;
import java.util.Stack;
import java.util.StringTokenizer;
import java.util.Vector;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.Node;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.SAXParseException;
import org.xml.sax.ext.DeclHandler;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes10.dex */
public class TransformerImpl extends Transformer implements Runnable, DTMWSFilter, ExtensionsProvider, SerializerTrace {
    private int m_doc;
    private boolean m_incremental;
    ContentHandler m_inputContentHandler;
    private MsgMgr m_msgMgr;
    private boolean m_optimizer;
    private OutputProperties m_outputFormat;
    private SerializationHandler m_serializationHandler;
    private boolean m_source_location;
    private StackGuard m_stackGuard;
    private Thread m_transformThread;
    Vector m_userParams;
    private XPathContext m_xcontext;
    private Source m_xmlSource;
    private Boolean m_reentryGuard = new Boolean(true);
    private FileOutputStream m_outputStream = null;
    private boolean m_parserEventsOnMain = true;
    private String m_urlOfSource = null;
    private Result m_outputTarget = null;
    private ContentHandler m_outputContentHandler = null;
    DocumentBuilder m_docBuilder = null;
    private ObjectPool m_textResultHandlerObjectPool = new ObjectPool(ToTextStream.class);
    private ObjectPool m_stringWriterObjectPool = new ObjectPool(StringWriter.class);
    private OutputProperties m_textformat = new OutputProperties("text");
    ObjectStack m_currentTemplateElements = new ObjectStack(4096);
    Stack m_currentMatchTemplates = new Stack();
    NodeVector m_currentMatchedNodes = new NodeVector();
    private StylesheetRoot m_stylesheetRoot = null;
    private boolean m_quietConflictWarnings = true;
    private KeyManager m_keyManager = new KeyManager();
    Stack m_attrSetStack = null;
    CountersTable m_countersTable = null;
    BoolStack m_currentTemplateRuleIsNull = new BoolStack();
    ObjectStack m_currentFuncResult = new ObjectStack();
    private boolean m_debug = false;
    private ErrorListener m_errorHandler = new DefaultErrorHandler(false);
    private TraceManager m_traceManager = new TraceManager(this);
    private Exception m_exceptionThrown = null;
    private boolean m_isTransformDone = false;
    private boolean m_hasBeenReset = false;
    private boolean m_shouldReset = true;
    private Stack m_modes = new Stack();
    private ExtensionsTable m_extensionsTable = null;
    private boolean m_hasTransformThreadErrorCatcher = false;

    public TransformerImpl(StylesheetRoot stylesheetRoot) {
        this.m_optimizer = true;
        this.m_incremental = false;
        this.m_source_location = false;
        this.m_optimizer = stylesheetRoot.getOptimizer();
        this.m_incremental = stylesheetRoot.getIncremental();
        this.m_source_location = stylesheetRoot.getSource_location();
        setStylesheet(stylesheetRoot);
        XPathContext xPathContext = new XPathContext(this);
        xPathContext.setIncremental(this.m_incremental);
        xPathContext.getDTMManager().setIncremental(this.m_incremental);
        xPathContext.setSource_location(this.m_source_location);
        xPathContext.getDTMManager().setSource_location(this.m_source_location);
        if (stylesheetRoot.isSecureProcessing()) {
            xPathContext.setSecureProcessing(true);
        }
        setXPathContext(xPathContext);
        getXPathContext().setNamespaceContext(stylesheetRoot);
        this.m_stackGuard = new StackGuard(this);
    }

    private void fatalError(Throwable th) throws TransformerException {
        if (th instanceof SAXParseException) {
            this.m_errorHandler.fatalError(new TransformerException(th.getMessage(), new SAXSourceLocator((SAXParseException) th)));
        } else {
            this.m_errorHandler.fatalError(new TransformerException(th));
        }
    }

    private void replaceOrPushUserParam(QName qName, XObject xObject) {
        for (int size = this.m_userParams.size() - 1; size >= 0; size--) {
            if (((Arg) this.m_userParams.elementAt(size)).getQName().equals(qName)) {
                this.m_userParams.setElementAt(new Arg(qName, xObject, true), size);
                return;
            }
        }
        this.m_userParams.addElement(new Arg(qName, xObject, true));
    }

    private void resetUserParameters() {
        try {
            Vector vector = this.m_userParams;
            if (vector == null) {
                return;
            }
            for (int size = vector.size() - 1; size >= 0; size--) {
                Arg arg = (Arg) this.m_userParams.elementAt(size);
                QName qName = arg.getQName();
                setParameter(qName.getLocalPart(), qName.getNamespace(), arg.getVal().object());
            }
        } catch (NoSuchElementException unused) {
        }
    }

    public boolean applyTemplateToNode(ElemTemplateElement elemTemplateElement, ElemTemplate elemTemplate, int i) throws TransformerException {
        int i2;
        int i3;
        XPathContext xPathContext;
        short s;
        short s2;
        ElemTemplate templateComposed;
        ElemTemplate elemTemplate2;
        short s3;
        boolean z;
        DTM dtm = this.m_xcontext.getDTM(i);
        short nodeType = dtm.getNodeType(i);
        boolean z2 = elemTemplateElement != null && elemTemplateElement.getXSLToken() == 72;
        if (elemTemplate == null || z2) {
            if (z2) {
                i2 = elemTemplate.getStylesheetComposed().getImportCountComposed() - 1;
                i3 = elemTemplate.getStylesheetComposed().getEndImportCountComposed();
            } else {
                i2 = -1;
                i3 = 0;
            }
            if (z2 && i2 == -1) {
                elemTemplate2 = null;
                s = 3;
                s2 = 2;
            } else {
                XPathContext xPathContext2 = this.m_xcontext;
                try {
                    xPathContext2.pushNamespaceContext(elemTemplateElement);
                    QName mode = getMode();
                    try {
                        if (z2) {
                            xPathContext = xPathContext2;
                            s = 3;
                            templateComposed = this.m_stylesheetRoot.getTemplateComposed(xPathContext2, i, mode, i2, i3, this.m_quietConflictWarnings, dtm);
                            s2 = 2;
                        } else {
                            xPathContext = xPathContext2;
                            s = 3;
                            s2 = 2;
                            templateComposed = this.m_stylesheetRoot.getTemplateComposed(xPathContext, i, mode, this.m_quietConflictWarnings, dtm);
                        }
                        xPathContext.popNamespaceContext();
                        elemTemplate2 = templateComposed;
                    } catch (Throwable th) {
                        th = th;
                        xPathContext.popNamespaceContext();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    xPathContext = xPathContext2;
                }
            }
            if (elemTemplate2 == null) {
                if (nodeType != 1) {
                    if (nodeType == s2 || nodeType == s) {
                        s3 = 4;
                    } else {
                        s3 = 4;
                        if (nodeType != 4) {
                            if (nodeType == 9) {
                                elemTemplate2 = this.m_stylesheetRoot.getDefaultRootRule();
                            } else if (nodeType != 11) {
                                return false;
                            }
                        }
                    }
                    elemTemplate2 = this.m_stylesheetRoot.getDefaultTextRule();
                    z = true;
                } else {
                    s3 = 4;
                }
                elemTemplate2 = this.m_stylesheetRoot.getDefaultRule();
            } else {
                s3 = 4;
            }
            z = false;
        } else {
            elemTemplate2 = elemTemplate;
            s = 3;
            s3 = 4;
            z = false;
            s2 = 2;
        }
        try {
            try {
                pushElemTemplateElement(elemTemplate2);
                this.m_xcontext.pushCurrentNode(i);
                pushPairCurrentMatched(elemTemplate2, i);
                if (!z2) {
                    this.m_xcontext.pushContextNodeList(new NodeSetDTM(i, this.m_xcontext.getDTMManager()));
                }
                if (!z) {
                    if (this.m_debug) {
                        getTraceManager().fireTraceEvent(elemTemplate2);
                    }
                    this.m_xcontext.setSAXLocator(elemTemplate2);
                    this.m_xcontext.getVarStack().link(elemTemplate2.m_frameSize);
                    executeChildTemplates((ElemTemplateElement) elemTemplate2, true);
                    if (this.m_debug) {
                        getTraceManager().fireTraceEndEvent(elemTemplate2);
                    }
                } else if (nodeType == s2) {
                    dtm.dispatchCharactersEvents(i, getResultTreeHandler(), false);
                } else if (nodeType == s || nodeType == s3) {
                    ClonerToResultTree.cloneToResultTree(i, nodeType, dtm, getResultTreeHandler(), false);
                }
                return true;
            } catch (SAXException e) {
                throw new TransformerException(e);
            }
        } finally {
            if (!z) {
                this.m_xcontext.getVarStack().unlink();
            }
            this.m_xcontext.popCurrentNode();
            if (!z2) {
                this.m_xcontext.popContextNodeList();
            }
            popCurrentMatched();
            popElemTemplateElement();
        }
    }

    @Override // javax.xml.transform.Transformer
    public void clearParameters() {
        synchronized (this.m_reentryGuard) {
            this.m_xcontext.setVarStack(new VariableStack());
            this.m_userParams = null;
        }
    }

    public SerializationHandler createSerializationHandler(Result result) throws TransformerException {
        return createSerializationHandler(result, getOutputFormat());
    }

    public boolean currentFuncResultSeen() {
        return (this.m_currentFuncResult.empty() || this.m_currentFuncResult.peek() == null) ? false : true;
    }

    public boolean currentTemplateRuleIsNull() {
        return !this.m_currentTemplateRuleIsNull.isEmpty() && this.m_currentTemplateRuleIsNull.peek();
    }

    @Override // com.sun.org.apache.xpath.internal.ExtensionsProvider
    public boolean elementAvailable(String str, String str2) throws TransformerException {
        return getExtensionsTable().elementAvailable(str, str2);
    }

    public void executeChildTemplates(ElemTemplateElement elemTemplateElement, Node node, QName qName, ContentHandler contentHandler) throws TransformerException {
        XPathContext xPathContext = this.m_xcontext;
        if (qName != null) {
            try {
                pushMode(qName);
            } finally {
                xPathContext.popCurrentNode();
                if (qName != null) {
                    popMode();
                }
            }
        }
        xPathContext.pushCurrentNode(xPathContext.getDTMHandleFromNode(node));
        executeChildTemplates(elemTemplateElement, contentHandler);
    }

    public void executeFromSnapshot(TransformSnapshot transformSnapshot) throws TransformerException {
        ElemTemplate matchedTemplate = getMatchedTemplate();
        int matchedNode = getMatchedNode();
        pushElemTemplateElement(matchedTemplate);
        this.m_xcontext.pushCurrentNode(matchedNode);
        executeChildTemplates((ElemTemplateElement) matchedTemplate, true);
    }

    @Override // com.sun.org.apache.xpath.internal.ExtensionsProvider
    public Object extFunction(String str, String str2, Vector vector, Object obj) throws TransformerException {
        return getExtensionsTable().extFunction(str, str2, vector, obj, getXPathContext().getExpressionContext());
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializerTrace
    public void fireGenerateEvent(int i, char[] cArr, int i2, int i3) {
        this.m_traceManager.fireGenerateEvent(new GenerateEvent(this, i, cArr, i2, i3));
    }

    @Override // com.sun.org.apache.xpath.internal.ExtensionsProvider
    public boolean functionAvailable(String str, String str2) throws TransformerException {
        return getExtensionsTable().functionAvailable(str, str2);
    }

    public String getBaseURLOfSource() {
        return this.m_urlOfSource;
    }

    public ContentHandler getContentHandler() {
        return this.m_outputContentHandler;
    }

    public DTMIterator getContextNodeList() {
        try {
            DTMIterator contextNodeList = this.m_xcontext.getContextNodeList();
            if (contextNodeList == null) {
                return null;
            }
            return contextNodeList.cloneWithReset();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public CountersTable getCountersTable() {
        if (this.m_countersTable == null) {
            this.m_countersTable = new CountersTable();
        }
        return this.m_countersTable;
    }

    public ElemTemplateElement getCurrentElement() {
        if (this.m_currentTemplateElements.size() > 0) {
            return (ElemTemplateElement) this.m_currentTemplateElements.peek();
        }
        return null;
    }

    public int getCurrentNode() {
        return this.m_xcontext.getCurrentNode();
    }

    public ElemTemplate getCurrentTemplate() {
        ElemTemplateElement currentElement = getCurrentElement();
        while (currentElement != null && currentElement.getXSLToken() != 19) {
            currentElement = currentElement.getParentElem();
        }
        return (ElemTemplate) currentElement;
    }

    public ObjectStack getCurrentTemplateElements() {
        return this.m_currentTemplateElements;
    }

    public int getCurrentTemplateElementsCount() {
        return this.m_currentTemplateElements.size();
    }

    public boolean getDebug() {
        return this.m_debug;
    }

    public Vector getElementCallstack() {
        Vector vector = new Vector();
        int size = this.m_currentTemplateElements.size();
        for (int i = 0; i < size; i++) {
            ElemTemplateElement elemTemplateElement = (ElemTemplateElement) this.m_currentTemplateElements.elementAt(i);
            if (elemTemplateElement != null) {
                vector.addElement(elemTemplateElement);
            }
        }
        return vector;
    }

    @Override // javax.xml.transform.Transformer
    public ErrorListener getErrorListener() {
        return this.m_errorHandler;
    }

    public Exception getExceptionThrown() {
        return this.m_exceptionThrown;
    }

    public ExtensionsTable getExtensionsTable() {
        return this.m_extensionsTable;
    }

    public boolean getFeature(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        if ("http://xml.org/trax/features/sax/input".equals(str) || "http://xml.org/trax/features/dom/input".equals(str)) {
            return true;
        }
        throw new SAXNotRecognizedException(str);
    }

    public boolean getIncremental() {
        return this.m_incremental;
    }

    public ContentHandler getInputContentHandler() {
        return getInputContentHandler(false);
    }

    public DeclHandler getInputDeclHandler() {
        ContentHandler contentHandler = this.m_inputContentHandler;
        if (contentHandler instanceof DeclHandler) {
            return (DeclHandler) contentHandler;
        }
        return null;
    }

    public LexicalHandler getInputLexicalHandler() {
        ContentHandler contentHandler = this.m_inputContentHandler;
        if (contentHandler instanceof LexicalHandler) {
            return (LexicalHandler) contentHandler;
        }
        return null;
    }

    public KeyManager getKeyManager() {
        return this.m_keyManager;
    }

    public int getMatchedNode() {
        return this.m_currentMatchedNodes.peepTail();
    }

    public ElemTemplate getMatchedTemplate() {
        return (ElemTemplate) this.m_currentMatchTemplates.peek();
    }

    public QName getMode() {
        if (this.m_modes.isEmpty()) {
            return null;
        }
        return (QName) this.m_modes.peek();
    }

    public MsgMgr getMsgMgr() {
        if (this.m_msgMgr == null) {
            this.m_msgMgr = new MsgMgr(this);
        }
        return this.m_msgMgr;
    }

    public boolean getOptimize() {
        return this.m_optimizer;
    }

    public OutputProperties getOutputFormat() {
        OutputProperties outputProperties = this.m_outputFormat;
        return outputProperties == null ? getStylesheet().getOutputComposed() : outputProperties;
    }

    @Override // javax.xml.transform.Transformer
    public Properties getOutputProperties() {
        return (Properties) getOutputFormat().getProperties().clone();
    }

    @Override // javax.xml.transform.Transformer
    public String getOutputProperty(String str) throws IllegalArgumentException {
        String property = getOutputFormat().getProperty(str);
        if (property != null || OutputProperties.isLegalPropertyKey(str)) {
            return property;
        }
        throw new IllegalArgumentException(XSLMessages.createMessage("ER_OUTPUT_PROPERTY_NOT_RECOGNIZED", new Object[]{str}));
    }

    public String getOutputPropertyNoDefault(String str) throws IllegalArgumentException {
        String str2 = (String) getOutputFormat().getProperties().get(str);
        if (str2 != null || OutputProperties.isLegalPropertyKey(str)) {
            return str2;
        }
        throw new IllegalArgumentException(XSLMessages.createMessage("ER_OUTPUT_PROPERTY_NOT_RECOGNIZED", new Object[]{str}));
    }

    public Result getOutputTarget() {
        return this.m_outputTarget;
    }

    @Override // javax.xml.transform.Transformer
    public Object getParameter(String str) {
        QName qNameFromString;
        Vector vector;
        try {
            qNameFromString = QName.getQNameFromString(str);
            vector = this.m_userParams;
        } catch (NoSuchElementException unused) {
        }
        if (vector == null) {
            return null;
        }
        for (int size = vector.size() - 1; size >= 0; size--) {
            Arg arg = (Arg) this.m_userParams.elementAt(size);
            if (arg.getQName().equals(qNameFromString)) {
                return arg.getVal().object();
            }
        }
        return null;
    }

    public boolean getProperty(String str) {
        return false;
    }

    public boolean getQuietConflictWarnings() {
        return this.m_quietConflictWarnings;
    }

    public int getRecursionLimit() {
        return this.m_stackGuard.getRecursionLimit();
    }

    public SerializationHandler getResultTreeHandler() {
        return this.m_serializationHandler;
    }

    public SerializationHandler getSerializationHandler() {
        return this.m_serializationHandler;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMWSFilter
    public short getShouldStripSpace(int i, DTM dtm) {
        try {
            WhiteSpaceInfo whiteSpaceInfo = this.m_stylesheetRoot.getWhiteSpaceInfo(this.m_xcontext, i, dtm);
            if (whiteSpaceInfo == null) {
                return (short) 3;
            }
            return whiteSpaceInfo.getShouldStripSpace() ? (short) 2 : (short) 1;
        } catch (TransformerException unused) {
            return (short) 3;
        }
    }

    public TransformSnapshot getSnapshot() {
        return new TransformSnapshotImpl(this);
    }

    public boolean getSource_location() {
        return this.m_source_location;
    }

    public StackGuard getStackGuard() {
        return this.m_stackGuard;
    }

    public ObjectPool getStringWriterPool() {
        return this.m_stringWriterObjectPool;
    }

    public final StylesheetRoot getStylesheet() {
        return this.m_stylesheetRoot;
    }

    public Vector getTemplateCallstack() {
        Vector vector = new Vector();
        int size = this.m_currentTemplateElements.size();
        for (int i = 0; i < size; i++) {
            ElemTemplateElement elemTemplateElement = (ElemTemplateElement) this.m_currentTemplateElements.elementAt(i);
            if (elemTemplateElement != null && elemTemplateElement.getXSLToken() != 19) {
                vector.addElement(elemTemplateElement);
            }
        }
        return vector;
    }

    public TraceManager getTraceManager() {
        return this.m_traceManager;
    }

    public Thread getTransformThread() {
        return this.m_transformThread;
    }

    public Transformer getTransformer() {
        return this;
    }

    @Override // javax.xml.transform.Transformer
    public URIResolver getURIResolver() {
        return this.m_xcontext.getSourceTreeManager().getURIResolver();
    }

    public final XPathContext getXPathContext() {
        return this.m_xcontext;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializerTrace
    public boolean hasTraceListeners() {
        return this.m_traceManager.hasTraceListeners();
    }

    public boolean hasTransformThreadErrorCatcher() {
        return this.m_hasTransformThreadErrorCatcher;
    }

    public void init(ToXMLSAXHandler toXMLSAXHandler, Transformer transformer, ContentHandler contentHandler) {
        toXMLSAXHandler.setTransformer(transformer);
        toXMLSAXHandler.setContentHandler(contentHandler);
    }

    public boolean isParserEventsOnMain() {
        return this.m_parserEventsOnMain;
    }

    public boolean isRecursiveAttrSet(ElemAttributeSet elemAttributeSet) {
        if (this.m_attrSetStack == null) {
            this.m_attrSetStack = new Stack();
        }
        return !this.m_attrSetStack.empty() && this.m_attrSetStack.search(elemAttributeSet) > -1;
    }

    public boolean isTransformDone() {
        boolean z;
        synchronized (this) {
            z = this.m_isTransformDone;
        }
        return z;
    }

    public Object popCurrentFuncResult() {
        return this.m_currentFuncResult.pop();
    }

    public void popCurrentMatched() {
        this.m_currentMatchTemplates.pop();
        this.m_currentMatchedNodes.pop();
    }

    public void popCurrentTemplateRuleIsNull() {
        this.m_currentTemplateRuleIsNull.pop();
    }

    public void popElemAttributeSet() {
        this.m_attrSetStack.pop();
    }

    public void popElemTemplateElement() {
        this.m_currentTemplateElements.pop();
    }

    public void popMode() {
        this.m_modes.pop();
    }

    public void postExceptionFromThread(Exception exc) {
        this.m_isTransformDone = true;
        this.m_exceptionThrown = exc;
        synchronized (this) {
            notifyAll();
        }
    }

    public Vector processSortKeys(ElemForEach elemForEach, int i) throws TransformerException {
        boolean z;
        XPathContext xPathContext = this.m_xcontext;
        int sortElemCount = elemForEach.getSortElemCount();
        Vector vector = sortElemCount > 0 ? new Vector() : null;
        int i2 = 0;
        while (i2 < sortElemCount) {
            ElemSort sortElem = elemForEach.getSortElem(i2);
            if (this.m_debug) {
                getTraceManager().fireTraceEvent(sortElem);
            }
            String evaluate = sortElem.getLang() != null ? sortElem.getLang().evaluate(xPathContext, i, elemForEach) : null;
            String evaluate2 = sortElem.getDataType().evaluate(xPathContext, i, elemForEach);
            if (evaluate2.indexOf(":") >= 0) {
                System.out.println("TODO: Need to write the hooks for QNAME sort data type");
            } else if (!evaluate2.equalsIgnoreCase("text") && !evaluate2.equalsIgnoreCase("number")) {
                elemForEach.error("ER_ILLEGAL_ATTRIBUTE_VALUE", new Object[]{Constants.ATTRNAME_DATATYPE, evaluate2});
            }
            boolean z2 = evaluate2.equals("number");
            String evaluate3 = sortElem.getOrder().evaluate(xPathContext, i, elemForEach);
            if (!evaluate3.equalsIgnoreCase(Constants.ATTRVAL_ORDER_ASCENDING) && !evaluate3.equalsIgnoreCase(Constants.ATTRVAL_ORDER_DESCENDING)) {
                elemForEach.error("ER_ILLEGAL_ATTRIBUTE_VALUE", new Object[]{Constants.ATTRNAME_ORDER, evaluate3});
            }
            boolean z3 = evaluate3.equals(Constants.ATTRVAL_ORDER_DESCENDING);
            AVT caseOrder = sortElem.getCaseOrder();
            if (caseOrder != null) {
                String evaluate4 = caseOrder.evaluate(xPathContext, i, elemForEach);
                if (!evaluate4.equalsIgnoreCase(Constants.ATTRVAL_CASEORDER_UPPER) && !evaluate4.equalsIgnoreCase(Constants.ATTRVAL_CASEORDER_LOWER)) {
                    elemForEach.error("ER_ILLEGAL_ATTRIBUTE_VALUE", new Object[]{Constants.ATTRNAME_CASEORDER, evaluate4});
                }
                z = evaluate4.equals(Constants.ATTRVAL_CASEORDER_UPPER);
            } else {
                z = false;
            }
            boolean z4 = z;
            int i3 = i2;
            vector.addElement(new NodeSortKey(this, sortElem.getSelect(), z2, z3, evaluate, z4, elemForEach));
            if (this.m_debug) {
                getTraceManager().fireTraceEndEvent(sortElem);
            }
            i2 = i3 + 1;
        }
        return vector;
    }

    public void pushCurrentFuncResult(Object obj) {
        this.m_currentFuncResult.push(obj);
    }

    public void pushCurrentTemplateRuleIsNull(boolean z) {
        this.m_currentTemplateRuleIsNull.push(z);
    }

    public void pushElemAttributeSet(ElemAttributeSet elemAttributeSet) {
        this.m_attrSetStack.push(elemAttributeSet);
    }

    public void pushElemTemplateElement(ElemTemplateElement elemTemplateElement) {
        this.m_currentTemplateElements.push(elemTemplateElement);
    }

    public void pushGlobalVars(int i) throws TransformerException {
        VariableStack varStack = this.m_xcontext.getVarStack();
        Vector variablesAndParamsComposed = getStylesheet().getVariablesAndParamsComposed();
        int size = variablesAndParamsComposed.size();
        varStack.link(size);
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            XUnresolvedVariable xUnresolvedVariable = new XUnresolvedVariable((ElemVariable) variablesAndParamsComposed.elementAt(size), i, this, varStack.getStackFrame(), 0, true);
            if (varStack.elementAt(size) == null) {
                varStack.setGlobalVariable(size, xUnresolvedVariable);
            }
        }
    }

    public void pushMode(QName qName) {
        this.m_modes.push(qName);
    }

    public void pushPairCurrentMatched(ElemTemplateElement elemTemplateElement, int i) {
        this.m_currentMatchTemplates.push(elemTemplateElement);
        this.m_currentMatchedNodes.push(i);
    }

    @Override // javax.xml.transform.Transformer
    public void reset() {
        if (this.m_hasBeenReset || !this.m_shouldReset) {
            return;
        }
        this.m_hasBeenReset = true;
        FileOutputStream fileOutputStream = this.m_outputStream;
        if (fileOutputStream != null) {
            try {
                fileOutputStream.close();
            } catch (IOException unused) {
            }
        }
        this.m_outputStream = null;
        this.m_countersTable = null;
        this.m_xcontext.reset();
        this.m_xcontext.getVarStack().reset();
        resetUserParameters();
        this.m_currentTemplateElements.removeAllElements();
        this.m_currentMatchTemplates.removeAllElements();
        this.m_currentMatchedNodes.removeAllElements();
        this.m_serializationHandler = null;
        this.m_outputTarget = null;
        this.m_keyManager = new KeyManager();
        this.m_attrSetStack = null;
        this.m_countersTable = null;
        this.m_currentTemplateRuleIsNull = new BoolStack();
        this.m_xmlSource = null;
        this.m_doc = -1;
        this.m_isTransformDone = false;
        this.m_transformThread = null;
        this.m_xcontext.getSourceTreeManager().reset();
    }

    public void resetToStylesheet(TransformSnapshot transformSnapshot) {
        ((TransformSnapshotImpl) transformSnapshot).apply(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        TransformerHandlerImpl transformerHandlerImpl;
        ContentHandler contentHandler;
        this.m_hasBeenReset = false;
        try {
            try {
                try {
                    this.m_isTransformDone = false;
                    transformNode(this.m_doc);
                    this.m_isTransformDone = true;
                    contentHandler = this.m_inputContentHandler;
                } catch (Exception e) {
                    if (this.m_transformThread == null) {
                        throw new RuntimeException(e.getMessage());
                    }
                    postExceptionFromThread(e);
                    this.m_isTransformDone = true;
                    ContentHandler contentHandler2 = this.m_inputContentHandler;
                    if (!(contentHandler2 instanceof TransformerHandlerImpl)) {
                        return;
                    } else {
                        transformerHandlerImpl = (TransformerHandlerImpl) contentHandler2;
                    }
                }
                if (contentHandler instanceof TransformerHandlerImpl) {
                    transformerHandlerImpl = (TransformerHandlerImpl) contentHandler;
                    transformerHandlerImpl.clearCoRoutine();
                }
            } catch (Throwable th) {
                this.m_isTransformDone = true;
                ContentHandler contentHandler3 = this.m_inputContentHandler;
                if (contentHandler3 instanceof TransformerHandlerImpl) {
                    ((TransformerHandlerImpl) contentHandler3).clearCoRoutine();
                }
                throw th;
            }
        } catch (Exception e2) {
            if (this.m_transformThread == null) {
                throw new RuntimeException(e2.getMessage());
            }
            postExceptionFromThread(e2);
        }
    }

    public void runTransformThread(int i) {
        setTransformThread(ThreadControllerWrapper.runThread(this, i));
    }

    public void setBaseURLOfSource(String str) {
        this.m_urlOfSource = str;
    }

    public void setContentHandler(ContentHandler contentHandler) {
        if (contentHandler == null) {
            throw new NullPointerException(XSLMessages.createMessage("ER_NULL_CONTENT_HANDLER", null));
        }
        this.m_outputContentHandler = contentHandler;
        SerializationHandler serializationHandler = this.m_serializationHandler;
        if (serializationHandler != null) {
            serializationHandler.setContentHandler(contentHandler);
            return;
        }
        ToXMLSAXHandler toXMLSAXHandler = new ToXMLSAXHandler();
        toXMLSAXHandler.setContentHandler(contentHandler);
        toXMLSAXHandler.setTransformer(this);
        this.m_serializationHandler = toXMLSAXHandler;
    }

    public void setCurrentElement(ElemTemplateElement elemTemplateElement) {
        this.m_currentTemplateElements.setTop(elemTemplateElement);
    }

    public void setDebug(boolean z) {
        this.m_debug = z;
    }

    @Override // javax.xml.transform.Transformer
    public void setErrorListener(ErrorListener errorListener) throws IllegalArgumentException {
        synchronized (this.m_reentryGuard) {
            try {
                if (errorListener == null) {
                    throw new IllegalArgumentException(XSLMessages.createMessage("ER_NULL_ERROR_HANDLER", null));
                }
                this.m_errorHandler = errorListener;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setExceptionThrown(Exception exc) {
        this.m_exceptionThrown = exc;
    }

    public void setExtensionsTable(StylesheetRoot stylesheetRoot) throws TransformerException {
        try {
            if (stylesheetRoot.getExtensions() != null) {
                this.m_extensionsTable = new ExtensionsTable(stylesheetRoot);
            }
        } catch (TransformerException e) {
            e.printStackTrace();
        }
    }

    public void setIsTransformDone(boolean z) {
        synchronized (this) {
            this.m_isTransformDone = z;
        }
    }

    public void setOutputFormat(OutputProperties outputProperties) {
        this.m_outputFormat = outputProperties;
    }

    @Override // javax.xml.transform.Transformer
    public void setOutputProperties(Properties properties) throws IllegalArgumentException {
        synchronized (this.m_reentryGuard) {
            if (properties != null) {
                String str = (String) properties.get("method");
                if (str != null) {
                    this.m_outputFormat = new OutputProperties(str);
                } else if (this.m_outputFormat == null) {
                    this.m_outputFormat = new OutputProperties();
                }
                this.m_outputFormat.copyFrom(properties);
                this.m_outputFormat.copyFrom(this.m_stylesheetRoot.getOutputProperties());
            } else {
                this.m_outputFormat = null;
            }
        }
    }

    @Override // javax.xml.transform.Transformer
    public void setOutputProperty(String str, String str2) throws IllegalArgumentException {
        synchronized (this.m_reentryGuard) {
            if (this.m_outputFormat == null) {
                this.m_outputFormat = (OutputProperties) getStylesheet().getOutputComposed().clone();
            }
            if (!OutputProperties.isLegalPropertyKey(str)) {
                throw new IllegalArgumentException(XSLMessages.createMessage("ER_OUTPUT_PROPERTY_NOT_RECOGNIZED", new Object[]{str}));
            }
            this.m_outputFormat.setProperty(str, str2);
        }
    }

    public void setOutputTarget(Result result) {
        this.m_outputTarget = result;
    }

    public void setParameter(String str, String str2, Object obj) {
        VariableStack varStack = getXPathContext().getVarStack();
        QName qName = new QName(str2, str);
        XObject create = XObject.create(obj, getXPathContext());
        Vector variablesAndParamsComposed = this.m_stylesheetRoot.getVariablesAndParamsComposed();
        int size = variablesAndParamsComposed.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            ElemVariable elemVariable = (ElemVariable) variablesAndParamsComposed.elementAt(size);
            if (elemVariable.getXSLToken() == 41 && elemVariable.getName().equals(qName)) {
                varStack.setGlobalVariable(size, create);
            }
        }
    }

    public void setParameters(Properties properties) {
        clearParameters();
        Enumeration<?> propertyNames = properties.propertyNames();
        while (propertyNames.hasMoreElements()) {
            String property = properties.getProperty((String) propertyNames.nextElement());
            StringTokenizer stringTokenizer = new StringTokenizer(property, "{}", false);
            try {
                String nextToken = stringTokenizer.nextToken();
                String nextToken2 = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
                if (nextToken2 == null) {
                    setParameter(nextToken, null, properties.getProperty(property));
                } else {
                    setParameter(nextToken2, nextToken, properties.getProperty(property));
                }
            } catch (NoSuchElementException unused) {
            }
        }
    }

    public void setProperty(String str, Object obj) {
    }

    public void setQuietConflictWarnings(boolean z) {
        this.m_quietConflictWarnings = z;
    }

    public void setRecursionLimit(int i) {
        this.m_stackGuard.setRecursionLimit(i);
    }

    public void setSerializationHandler(SerializationHandler serializationHandler) {
        this.m_serializationHandler = serializationHandler;
    }

    public void setShouldReset(boolean z) {
        this.m_shouldReset = z;
    }

    public void setSourceTreeDocForThread(int i) {
        this.m_doc = i;
    }

    public void setStylesheet(StylesheetRoot stylesheetRoot) {
        this.m_stylesheetRoot = stylesheetRoot;
    }

    public void setTransformThread(Thread thread) {
        this.m_transformThread = thread;
    }

    @Override // javax.xml.transform.Transformer
    public void setURIResolver(URIResolver uRIResolver) {
        synchronized (this.m_reentryGuard) {
            this.m_xcontext.getSourceTreeManager().setURIResolver(uRIResolver);
        }
    }

    public void setXMLSource(Source source) {
        this.m_xmlSource = source;
    }

    public void setXPathContext(XPathContext xPathContext) {
        this.m_xcontext = xPathContext;
    }

    public void stopTransformation() {
    }

    public void transform(Source source) throws TransformerException {
        transform(source, true);
    }

    public void transformNode(int i, Result result) throws TransformerException {
        setSerializationHandler(createSerializationHandler(result));
        this.m_outputTarget = result;
        transformNode(i);
    }

    public int transformToGlobalRTF(ElemTemplateElement elemTemplateElement) throws TransformerException {
        return transformToRTF(elemTemplateElement, this.m_xcontext.getGlobalRTFDTM());
    }

    public int transformToRTF(ElemTemplateElement elemTemplateElement) throws TransformerException {
        return transformToRTF(elemTemplateElement, this.m_xcontext.getRTFDTM());
    }

    public String transformToString(ElemTemplateElement elemTemplateElement) throws TransformerException {
        ElemTemplateElement firstChildElem = elemTemplateElement.getFirstChildElem();
        if (firstChildElem == null) {
            return "";
        }
        if (elemTemplateElement.hasTextLitOnly() && this.m_optimizer) {
            return ((ElemTextLiteral) firstChildElem).getNodeValue();
        }
        SerializationHandler serializationHandler = this.m_serializationHandler;
        StringWriter stringWriter = (StringWriter) this.m_stringWriterObjectPool.getInstance();
        ToTextStream toTextStream = (ToTextStream) this.m_textResultHandlerObjectPool.getInstance();
        this.m_serializationHandler = toTextStream;
        if (toTextStream == null) {
            this.m_serializationHandler = (SerializationHandler) SerializerFactory.getSerializer(this.m_textformat.getProperties());
        }
        this.m_serializationHandler.setTransformer(this);
        this.m_serializationHandler.setWriter(stringWriter);
        try {
            try {
                executeChildTemplates(elemTemplateElement, true);
                this.m_serializationHandler.endDocument();
                return stringWriter.toString();
            } catch (SAXException e) {
                throw new TransformerException(e);
            }
        } finally {
            stringWriter.getBuffer().setLength(0);
            try {
                stringWriter.close();
            } catch (Exception unused) {
            }
            this.m_stringWriterObjectPool.freeInstance(stringWriter);
            this.m_serializationHandler.reset();
            this.m_textResultHandlerObjectPool.freeInstance(this.m_serializationHandler);
            this.m_serializationHandler = serializationHandler;
        }
    }

    public void waitTransformThread() throws SAXException {
        Exception exceptionThrown;
        Thread transformThread = getTransformThread();
        if (transformThread != null) {
            try {
                ThreadControllerWrapper.waitThread(transformThread, this);
                if (!hasTransformThreadErrorCatcher() && (exceptionThrown = getExceptionThrown()) != null) {
                    exceptionThrown.printStackTrace();
                    throw new SAXException(exceptionThrown);
                }
                setTransformThread(null);
            } catch (InterruptedException unused) {
            }
        }
    }

    public SerializationHandler createSerializationHandler(Result result, OutputProperties outputProperties) throws TransformerException {
        ToSAXHandler toXMLSAXHandler;
        SerializationHandler serializationHandler;
        short s;
        Document document;
        if (result instanceof DOMResult) {
            DOMResult dOMResult = (DOMResult) result;
            Node node = dOMResult.getNode();
            Node nextSibling = dOMResult.getNextSibling();
            if (node != null) {
                s = node.getNodeType();
                document = 9 == s ? (Document) node : node.getOwnerDocument();
            } else {
                node = DOMHelper.createDocument(this.m_stylesheetRoot.isSecureProcessing());
                short nodeType = node.getNodeType();
                dOMResult.setNode(node);
                s = nodeType;
                document = node;
            }
            DOMBuilder dOMBuilder = 11 == s ? new DOMBuilder(document, (DocumentFragment) node) : new DOMBuilder(document, node);
            if (nextSibling != null) {
                dOMBuilder.setNextSibling(nextSibling);
            }
            serializationHandler = new ToXMLSAXHandler(dOMBuilder, dOMBuilder, outputProperties.getProperty("encoding"));
        } else {
            if (result instanceof SAXResult) {
                ContentHandler handler = ((SAXResult) result).getHandler();
                if (handler != null) {
                    LexicalHandler lexicalHandler = handler instanceof LexicalHandler ? (LexicalHandler) handler : null;
                    String property = outputProperties.getProperty("encoding");
                    String property2 = outputProperties.getProperty("method");
                    if ("html".equals(property2)) {
                        toXMLSAXHandler = new ToHTMLSAXHandler(handler, lexicalHandler, property);
                    } else if ("text".equals(property2)) {
                        toXMLSAXHandler = new ToTextSAXHandler(handler, lexicalHandler, property);
                    } else {
                        toXMLSAXHandler = new ToXMLSAXHandler(handler, lexicalHandler, property);
                        toXMLSAXHandler.setShouldOutputNSAttr(false);
                    }
                    ToSAXHandler toSAXHandler = toXMLSAXHandler;
                    String property3 = outputProperties.getProperty("doctype-public");
                    String property4 = outputProperties.getProperty("doctype-system");
                    if (property4 != null) {
                        toSAXHandler.setDoctypeSystem(property4);
                    }
                    if (property3 != null) {
                        toSAXHandler.setDoctypePublic(property3);
                    }
                    serializationHandler = toSAXHandler;
                    if (handler instanceof TransformerClient) {
                        XalanTransformState xalanTransformState = new XalanTransformState();
                        ((TransformerClient) handler).setTransformState(xalanTransformState);
                        toSAXHandler.setTransformState(xalanTransformState);
                        serializationHandler = toSAXHandler;
                    }
                } else {
                    throw new IllegalArgumentException("handler can not be null for a SAXResult");
                }
            } else if (result instanceof StreamResult) {
                StreamResult streamResult = (StreamResult) result;
                outputProperties.getProperty("method");
                try {
                    SerializationHandler serializationHandler2 = (SerializationHandler) SerializerFactory.getSerializer(outputProperties.getProperties());
                    if (streamResult.getWriter() != null) {
                        serializationHandler2.setWriter(streamResult.getWriter());
                        serializationHandler = serializationHandler2;
                    } else if (streamResult.getOutputStream() != null) {
                        serializationHandler2.setOutputStream(streamResult.getOutputStream());
                        serializationHandler = serializationHandler2;
                    } else if (streamResult.getSystemId() != null) {
                        String systemId = streamResult.getSystemId();
                        if (systemId.startsWith("file:///")) {
                            if (systemId.substring(8).indexOf(":") > 0) {
                                systemId = systemId.substring(8);
                            } else {
                                systemId = systemId.substring(7);
                            }
                        } else if (systemId.startsWith("file:/")) {
                            if (systemId.substring(6).indexOf(":") > 0) {
                                systemId = systemId.substring(6);
                            } else {
                                systemId = systemId.substring(5);
                            }
                        }
                        FileOutputStream fileOutputStream = new FileOutputStream(systemId);
                        this.m_outputStream = fileOutputStream;
                        serializationHandler2.setOutputStream(fileOutputStream);
                        serializationHandler = serializationHandler2;
                    } else {
                        throw new TransformerException(XSLMessages.createMessage("ER_NO_OUTPUT_SPECIFIED", null));
                    }
                } catch (IOException e) {
                    throw new TransformerException(e);
                }
            } else {
                throw new TransformerException(XSLMessages.createMessage("ER_CANNOT_TRANSFORM_TO_RESULT_TYPE", new Object[]{result.getClass().getName()}));
            }
        }
        serializationHandler.setTransformer(this);
        serializationHandler.setSourceLocator(getStylesheet());
        return serializationHandler;
    }

    @Override // com.sun.org.apache.xpath.internal.ExtensionsProvider
    public Object extFunction(FuncExtFunction funcExtFunction, Vector vector) throws TransformerException {
        return getExtensionsTable().extFunction(funcExtFunction, vector, getXPathContext().getExpressionContext());
    }

    public ContentHandler getInputContentHandler(boolean z) {
        if (this.m_inputContentHandler == null) {
            this.m_inputContentHandler = new TransformerHandlerImpl(this, z, this.m_urlOfSource);
        }
        return this.m_inputContentHandler;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00f7 A[Catch: all -> 0x012a, SAXException -> 0x012c, SAXParseException -> 0x0138, WrappedRuntimeException -> 0x0142, DONT_GENERATE, TRY_ENTER, TryCatch #7 {SAXException -> 0x012c, blocks: (B:3:0x0001, B:5:0x000b, B:6:0x0016, B:8:0x001c, B:12:0x0026, B:13:0x002c, B:15:0x0034, B:16:0x0057, B:17:0x0046, B:20:0x0073, B:22:0x0080, B:24:0x0086, B:26:0x008f, B:29:0x00bb, B:61:0x00d2, B:32:0x00e1, B:37:0x00f7, B:38:0x00fa, B:40:0x0100, B:42:0x0104, B:44:0x0108, B:48:0x0112, B:49:0x0117, B:50:0x0118, B:51:0x011a, B:52:0x011b, B:54:0x011f, B:58:0x0126, B:59:0x0129, B:64:0x00db, B:68:0x0098, B:70:0x009c, B:72:0x00a5, B:74:0x00ae, B:76:0x00b2), top: B:2:0x0001, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0100 A[Catch: all -> 0x012a, SAXException -> 0x012c, SAXParseException -> 0x0138, WrappedRuntimeException -> 0x0142, TryCatch #7 {SAXException -> 0x012c, blocks: (B:3:0x0001, B:5:0x000b, B:6:0x0016, B:8:0x001c, B:12:0x0026, B:13:0x002c, B:15:0x0034, B:16:0x0057, B:17:0x0046, B:20:0x0073, B:22:0x0080, B:24:0x0086, B:26:0x008f, B:29:0x00bb, B:61:0x00d2, B:32:0x00e1, B:37:0x00f7, B:38:0x00fa, B:40:0x0100, B:42:0x0104, B:44:0x0108, B:48:0x0112, B:49:0x0117, B:50:0x0118, B:51:0x011a, B:52:0x011b, B:54:0x011f, B:58:0x0126, B:59:0x0129, B:64:0x00db, B:68:0x0098, B:70:0x009c, B:72:0x00a5, B:74:0x00ae, B:76:0x00b2), top: B:2:0x0001, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x011b A[Catch: all -> 0x012a, SAXException -> 0x012c, SAXParseException -> 0x0138, WrappedRuntimeException -> 0x0142, TryCatch #7 {SAXException -> 0x012c, blocks: (B:3:0x0001, B:5:0x000b, B:6:0x0016, B:8:0x001c, B:12:0x0026, B:13:0x002c, B:15:0x0034, B:16:0x0057, B:17:0x0046, B:20:0x0073, B:22:0x0080, B:24:0x0086, B:26:0x008f, B:29:0x00bb, B:61:0x00d2, B:32:0x00e1, B:37:0x00f7, B:38:0x00fa, B:40:0x0100, B:42:0x0104, B:44:0x0108, B:48:0x0112, B:49:0x0117, B:50:0x0118, B:51:0x011a, B:52:0x011b, B:54:0x011f, B:58:0x0126, B:59:0x0129, B:64:0x00db, B:68:0x0098, B:70:0x009c, B:72:0x00a5, B:74:0x00ae, B:76:0x00b2), top: B:2:0x0001, outer: #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void transform(javax.xml.transform.Source r10, boolean r11) throws javax.xml.transform.TransformerException {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.transformer.TransformerImpl.transform(javax.xml.transform.Source, boolean):void");
    }

    private int transformToRTF(ElemTemplateElement elemTemplateElement, DTM dtm) throws TransformerException {
        ContentHandler contentHandler = dtm.getContentHandler();
        SerializationHandler serializationHandler = this.m_serializationHandler;
        ToXMLSAXHandler toXMLSAXHandler = new ToXMLSAXHandler();
        toXMLSAXHandler.setContentHandler(contentHandler);
        toXMLSAXHandler.setTransformer(this);
        this.m_serializationHandler = toXMLSAXHandler;
        try {
            try {
                toXMLSAXHandler.startDocument();
                toXMLSAXHandler.flushPending();
                try {
                    executeChildTemplates(elemTemplateElement, true);
                    toXMLSAXHandler.flushPending();
                    return dtm.getDocument();
                } finally {
                    toXMLSAXHandler.endDocument();
                }
            } catch (SAXException e) {
                throw new TransformerException(e);
            }
        } finally {
            this.m_serializationHandler = serializationHandler;
        }
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializerTrace
    public void fireGenerateEvent(int i, String str, Attributes attributes) {
        this.m_traceManager.fireGenerateEvent(new GenerateEvent(this, i, str, attributes));
    }

    public void runTransformThread() {
        ThreadControllerWrapper.runThread(this, -1);
    }

    public static void runTransformThread(Runnable runnable) {
        ThreadControllerWrapper.runThread(runnable, -1);
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializerTrace
    public void fireGenerateEvent(int i, String str, String str2) {
        this.m_traceManager.fireGenerateEvent(new GenerateEvent(this, i, str, str2));
    }

    public void transformNode(int i) throws TransformerException {
        setExtensionsTable(getStylesheet());
        synchronized (this.m_serializationHandler) {
            try {
                this.m_hasBeenReset = false;
                XPathContext xPathContext = getXPathContext();
                xPathContext.getDTM(i);
                try {
                    pushGlobalVars(i);
                    StylesheetRoot stylesheet = getStylesheet();
                    int globalImportCount = stylesheet.getGlobalImportCount();
                    for (int i2 = 0; i2 < globalImportCount; i2++) {
                        StylesheetComposed globalImport = stylesheet.getGlobalImport(i2);
                        int includeCountComposed = globalImport.getIncludeCountComposed();
                        for (int i3 = -1; i3 < includeCountComposed; i3++) {
                            Stylesheet includeComposed = globalImport.getIncludeComposed(i3);
                            includeComposed.runtimeInit(this);
                            for (ElemTemplateElement firstChildElem = includeComposed.getFirstChildElem(); firstChildElem != null; firstChildElem = firstChildElem.getNextSiblingElem()) {
                                firstChildElem.runtimeInit(this);
                            }
                        }
                    }
                    SelfIteratorNoPredicate selfIteratorNoPredicate = new SelfIteratorNoPredicate();
                    selfIteratorNoPredicate.setRoot(i, xPathContext);
                    xPathContext.pushContextNodeList(selfIteratorNoPredicate);
                } catch (Exception e) {
                    e = e;
                    while (e instanceof WrappedRuntimeException) {
                        Exception exception = ((WrappedRuntimeException) e).getException();
                        if (exception != null) {
                            e = exception;
                        }
                    }
                    SerializationHandler serializationHandler = this.m_serializationHandler;
                    if (serializationHandler != null) {
                        try {
                            if (e instanceof SAXParseException) {
                                serializationHandler.fatalError((SAXParseException) e);
                            } else if (e instanceof TransformerException) {
                                TransformerException transformerException = (TransformerException) e;
                                this.m_serializationHandler.fatalError(new SAXParseException(transformerException.getMessage(), new SAXSourceLocator(transformerException.getLocator()), transformerException));
                            } else {
                                serializationHandler.fatalError(new SAXParseException(e.getMessage(), new SAXSourceLocator(), e));
                            }
                        } catch (Exception unused) {
                        }
                    }
                    if (e instanceof TransformerException) {
                        this.m_errorHandler.fatalError((TransformerException) e);
                    } else if (e instanceof SAXParseException) {
                        this.m_errorHandler.fatalError(new TransformerException(e.getMessage(), new SAXSourceLocator((SAXParseException) e), e));
                    } else {
                        this.m_errorHandler.fatalError(new TransformerException(e));
                    }
                }
                try {
                    applyTemplateToNode(null, null, i);
                    xPathContext.popContextNodeList();
                    SerializationHandler serializationHandler2 = this.m_serializationHandler;
                    if (serializationHandler2 != null) {
                        serializationHandler2.endDocument();
                    }
                } catch (Throwable th) {
                    xPathContext.popContextNodeList();
                    throw th;
                }
            } finally {
                reset();
            }
        }
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializerTrace
    public void fireGenerateEvent(int i, String str) {
        this.m_traceManager.fireGenerateEvent(new GenerateEvent(this, i, str));
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializerTrace
    public void fireGenerateEvent(int i) {
        this.m_traceManager.fireGenerateEvent(new GenerateEvent(this, i));
    }

    public void executeChildTemplates(ElemTemplateElement elemTemplateElement, boolean z) throws TransformerException {
        ElemTemplateElement firstChildElem = elemTemplateElement.getFirstChildElem();
        if (firstChildElem == null) {
            return;
        }
        if (elemTemplateElement.hasTextLitOnly() && this.m_optimizer) {
            char[] chars = ((ElemTextLiteral) firstChildElem).getChars();
            try {
                try {
                    pushElemTemplateElement(firstChildElem);
                    this.m_serializationHandler.characters(chars, 0, chars.length);
                    return;
                } finally {
                    popElemTemplateElement();
                }
            } catch (SAXException e) {
                throw new TransformerException(e);
            }
        }
        XPathContext xPathContext = this.m_xcontext;
        xPathContext.pushSAXLocatorNull();
        int size = this.m_currentTemplateElements.size();
        this.m_currentTemplateElements.push(null);
        while (firstChildElem != null) {
            if (!z) {
                try {
                    try {
                        if (firstChildElem.getXSLToken() == 48) {
                            firstChildElem = firstChildElem.getNextSiblingElem();
                        }
                    } finally {
                        this.m_currentTemplateElements.pop();
                        xPathContext.popSAXLocator();
                    }
                } catch (RuntimeException e2) {
                    TransformerException transformerException = new TransformerException(e2);
                    transformerException.setLocator(firstChildElem);
                    throw transformerException;
                }
            }
            xPathContext.setSAXLocator(firstChildElem);
            this.m_currentTemplateElements.setElementAt(firstChildElem, size);
            firstChildElem.execute(this);
            firstChildElem = firstChildElem.getNextSiblingElem();
        }
    }

    @Override // javax.xml.transform.Transformer
    public void setParameter(String str, Object obj) {
        if (obj != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, "{}", false);
            try {
                String nextToken = stringTokenizer.nextToken();
                String nextToken2 = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
                if (this.m_userParams == null) {
                    this.m_userParams = new Vector();
                }
                if (nextToken2 == null) {
                    replaceOrPushUserParam(new QName(nextToken), XObject.create(obj, getXPathContext()));
                    setParameter(nextToken, null, obj);
                    return;
                } else {
                    replaceOrPushUserParam(new QName(nextToken, nextToken2), XObject.create(obj, getXPathContext()));
                    setParameter(nextToken2, nextToken, obj);
                    return;
                }
            } catch (NoSuchElementException unused) {
                return;
            }
        }
        throw new IllegalArgumentException(XSLMessages.createMessage(XSLTErrorResources.ER_INVALID_SET_PARAM_VALUE, new Object[]{str}));
    }

    public void executeChildTemplates(ElemTemplateElement elemTemplateElement, ContentHandler contentHandler) throws TransformerException {
        SerializationHandler serializationHandler = getSerializationHandler();
        try {
            try {
                serializationHandler.flushPending();
                ToXMLSAXHandler toXMLSAXHandler = new ToXMLSAXHandler(contentHandler, contentHandler instanceof LexicalHandler ? (LexicalHandler) contentHandler : null, serializationHandler.getEncoding());
                this.m_serializationHandler = toXMLSAXHandler;
                toXMLSAXHandler.setTransformer(this);
                executeChildTemplates(elemTemplateElement, true);
            } catch (TransformerException e) {
                throw e;
            } catch (SAXException e2) {
                throw new TransformerException(e2);
            }
        } finally {
            this.m_serializationHandler = serializationHandler;
        }
    }

    @Override // javax.xml.transform.Transformer
    public void transform(Source source, Result result) throws TransformerException {
        transform(source, result, true);
    }

    public void transform(Source source, Result result, boolean z) throws TransformerException {
        synchronized (this.m_reentryGuard) {
            setSerializationHandler(createSerializationHandler(result));
            this.m_outputTarget = result;
            transform(source, z);
        }
    }
}
