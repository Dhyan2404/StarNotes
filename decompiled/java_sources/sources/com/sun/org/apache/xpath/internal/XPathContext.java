package com.sun.org.apache.xpath.internal;

import com.sun.org.apache.xalan.internal.extensions.ExpressionContext;
import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.DTMFilter;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.dtm.DTMManager;
import com.sun.org.apache.xml.internal.dtm.DTMWSFilter;
import com.sun.org.apache.xml.internal.dtm.ref.DTMNodeIterator;
import com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2RTFDTM;
import com.sun.org.apache.xml.internal.utils.DefaultErrorHandler;
import com.sun.org.apache.xml.internal.utils.IntStack;
import com.sun.org.apache.xml.internal.utils.NodeVector;
import com.sun.org.apache.xml.internal.utils.ObjectStack;
import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xml.internal.utils.SAXSourceLocator;
import com.sun.org.apache.xpath.internal.axes.OneStepIteratorForward;
import com.sun.org.apache.xpath.internal.axes.SubContextList;
import com.sun.org.apache.xpath.internal.objects.DTMXRTreeFrag;
import com.sun.org.apache.xpath.internal.objects.XMLStringFactoryImpl;
import com.sun.org.apache.xpath.internal.objects.XObject;
import com.sun.org.apache.xpath.internal.objects.XString;
import com.sun.org.apache.xpath.internal.res.XPATHMessages;
import java.lang.reflect.Method;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Stack;
import java.util.Vector;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.Source;
import javax.xml.transform.SourceLocator;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import org.w3c.dom.Node;
import org.w3c.dom.traversal.NodeIterator;
import org.xml.sax.XMLReader;

/* loaded from: classes10.dex */
public class XPathContext extends DTMManager {
    public static final int RECURSIONLIMIT = 4096;
    private ErrorListener m_defaultErrorListener;
    private ErrorListener m_errorListener;
    private Object m_owner;
    private Method m_ownerGetErrorListener;
    public XMLReader m_primaryReader;
    private URIResolver m_uriResolver;
    IntStack m_last_pushed_rtfdtm = new IntStack();
    private Vector m_rtfdtm_stack = null;
    private int m_which_rtfdtm = -1;
    private SAX2RTFDTM m_global_rtfdtm = null;
    private HashMap m_DTMXRTreeFrags = null;
    private boolean m_isSecureProcessing = false;
    protected DTMManager m_dtmManager = DTMManager.newInstance(XMLStringFactoryImpl.getFactory());
    ObjectStack m_saxLocations = new ObjectStack(4096);
    private VariableStack m_variableStacks = new VariableStack();
    private SourceTreeManager m_sourceTreeManager = new SourceTreeManager();
    private Stack m_contextNodeLists = new Stack();
    private IntStack m_currentNodes = new IntStack(4096);
    private NodeVector m_iteratorRoots = new NodeVector();
    private NodeVector m_predicateRoots = new NodeVector();
    private IntStack m_currentExpressionNodes = new IntStack(4096);
    private IntStack m_predicatePos = new IntStack();
    private ObjectStack m_prefixResolvers = new ObjectStack(4096);
    private Stack m_axesIteratorStack = new Stack();
    XPathExpressionContext expressionContext = new XPathExpressionContext();

    /* loaded from: classes10.dex */
    public class XPathExpressionContext implements ExpressionContext {
        public XPathExpressionContext() {
        }

        @Override // com.sun.org.apache.xalan.internal.extensions.ExpressionContext
        public Node getContextNode() {
            int currentNode = XPathContext.this.getCurrentNode();
            return XPathContext.this.getDTM(currentNode).getNode(currentNode);
        }

        @Override // com.sun.org.apache.xalan.internal.extensions.ExpressionContext
        public NodeIterator getContextNodes() {
            return new DTMNodeIterator(XPathContext.this.getContextNodeList());
        }

        public DTMManager getDTMManager() {
            return XPathContext.this.m_dtmManager;
        }

        @Override // com.sun.org.apache.xalan.internal.extensions.ExpressionContext
        public ErrorListener getErrorListener() {
            return XPathContext.this.getErrorListener();
        }

        @Override // com.sun.org.apache.xalan.internal.extensions.ExpressionContext
        public final XObject getVariableOrParam(QName qName) throws TransformerException {
            return XPathContext.this.m_variableStacks.getVariableOrParam(XPathContext.this, qName);
        }

        @Override // com.sun.org.apache.xalan.internal.extensions.ExpressionContext
        public XPathContext getXPathContext() {
            return XPathContext.this;
        }

        @Override // com.sun.org.apache.xalan.internal.extensions.ExpressionContext
        public double toNumber(Node node) {
            int dTMHandleFromNode = XPathContext.this.getDTMHandleFromNode(node);
            return ((XString) XPathContext.this.getDTM(dTMHandleFromNode).getStringValue(dTMHandleFromNode)).num();
        }

        @Override // com.sun.org.apache.xalan.internal.extensions.ExpressionContext
        public String toString(Node node) {
            int dTMHandleFromNode = XPathContext.this.getDTMHandleFromNode(node);
            return XPathContext.this.getDTM(dTMHandleFromNode).getStringValue(dTMHandleFromNode).toString();
        }
    }

    public XPathContext() {
        this.m_prefixResolvers.push(null);
        this.m_currentNodes.push(-1);
        this.m_currentExpressionNodes.push(-1);
        this.m_saxLocations.push(null);
    }

    private void assertion(boolean z, String str) throws TransformerException {
        ErrorListener errorListener;
        if (z || (errorListener = getErrorListener()) == null) {
            return;
        }
        errorListener.fatalError(new TransformerException(XSLMessages.createMessage("ER_INCORRECT_PROGRAMMER_ASSERTION", new Object[]{str}), (SAXSourceLocator) getSAXLocator()));
    }

    private final void releaseDTMXRTreeFrags() {
        HashMap hashMap = this.m_DTMXRTreeFrags;
        if (hashMap == null) {
            return;
        }
        Iterator it2 = hashMap.values().iterator();
        while (it2.hasNext()) {
            ((DTMXRTreeFrag) it2.next()).destruct();
            it2.remove();
        }
        this.m_DTMXRTreeFrags = null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMManager
    public DTMIterator createDTMIterator(Object obj, int i) {
        return this.m_dtmManager.createDTMIterator(obj, i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMManager
    public DTM createDocumentFragment() {
        return this.m_dtmManager.createDocumentFragment();
    }

    public Stack getAxesIteratorStackStacks() {
        return this.m_axesIteratorStack;
    }

    public final int getContextNode() {
        return getCurrentNode();
    }

    public final DTMIterator getContextNodeList() {
        if (this.m_contextNodeLists.size() > 0) {
            return (DTMIterator) this.m_contextNodeLists.peek();
        }
        return null;
    }

    public Stack getContextNodeListsStack() {
        return this.m_contextNodeLists;
    }

    public final DTMIterator getContextNodes() {
        try {
            DTMIterator contextNodeList = getContextNodeList();
            if (contextNodeList != null) {
                return contextNodeList.cloneWithReset();
            }
        } catch (CloneNotSupportedException unused) {
        }
        return null;
    }

    public final int getCurrentExpressionNode() {
        return this.m_currentExpressionNodes.peek();
    }

    public IntStack getCurrentExpressionNodeStack() {
        return this.m_currentExpressionNodes;
    }

    public final int getCurrentNode() {
        return this.m_currentNodes.peek();
    }

    public SubContextList getCurrentNodeList() {
        if (this.m_axesIteratorStack.isEmpty()) {
            return null;
        }
        return (SubContextList) this.m_axesIteratorStack.elementAt(0);
    }

    public IntStack getCurrentNodeStack() {
        return this.m_currentNodes;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMManager
    public DTM getDTM(Source source, boolean z, DTMWSFilter dTMWSFilter, boolean z2, boolean z3) {
        return this.m_dtmManager.getDTM(source, z, dTMWSFilter, z2, z3);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMManager
    public int getDTMHandleFromNode(Node node) {
        return this.m_dtmManager.getDTMHandleFromNode(node);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMManager
    public int getDTMIdentity(DTM dtm) {
        return this.m_dtmManager.getDTMIdentity(dtm);
    }

    public DTMManager getDTMManager() {
        return this.m_dtmManager;
    }

    public DTMXRTreeFrag getDTMXRTreeFrag(int i) {
        if (this.m_DTMXRTreeFrags == null) {
            this.m_DTMXRTreeFrags = new HashMap();
        }
        if (this.m_DTMXRTreeFrags.containsKey(new Integer(i))) {
            return (DTMXRTreeFrag) this.m_DTMXRTreeFrags.get(new Integer(i));
        }
        DTMXRTreeFrag dTMXRTreeFrag = new DTMXRTreeFrag(i, this);
        this.m_DTMXRTreeFrags.put(new Integer(i), dTMXRTreeFrag);
        return dTMXRTreeFrag;
    }

    public final ErrorListener getErrorListener() {
        ErrorListener errorListener = this.m_errorListener;
        if (errorListener != null) {
            return errorListener;
        }
        ErrorListener errorListener2 = null;
        try {
            Method method = this.m_ownerGetErrorListener;
            if (method != null) {
                errorListener2 = (ErrorListener) method.invoke(this.m_owner, new Object[0]);
            }
        } catch (Exception unused) {
        }
        if (errorListener2 != null) {
            return errorListener2;
        }
        if (this.m_defaultErrorListener == null) {
            this.m_defaultErrorListener = new DefaultErrorHandler();
        }
        return this.m_defaultErrorListener;
    }

    public ExpressionContext getExpressionContext() {
        return this.expressionContext;
    }

    public DTM getGlobalRTFDTM() {
        SAX2RTFDTM sax2rtfdtm = this.m_global_rtfdtm;
        if (sax2rtfdtm == null || sax2rtfdtm.isTreeIncomplete()) {
            this.m_global_rtfdtm = (SAX2RTFDTM) this.m_dtmManager.getDTM(null, true, null, false, false);
        }
        return this.m_global_rtfdtm;
    }

    public final int getIteratorRoot() {
        return this.m_iteratorRoots.peepOrNull();
    }

    public final PrefixResolver getNamespaceContext() {
        return (PrefixResolver) this.m_prefixResolvers.peek();
    }

    public Object getOwnerObject() {
        return this.m_owner;
    }

    public final int getPredicatePos() {
        return this.m_predicatePos.peek();
    }

    public final int getPredicateRoot() {
        return this.m_predicateRoots.peepOrNull();
    }

    public final XMLReader getPrimaryReader() {
        return this.m_primaryReader;
    }

    public DTM getRTFDTM() {
        Vector vector = this.m_rtfdtm_stack;
        if (vector == null) {
            this.m_rtfdtm_stack = new Vector();
            SAX2RTFDTM sax2rtfdtm = (SAX2RTFDTM) this.m_dtmManager.getDTM(null, true, null, false, false);
            this.m_rtfdtm_stack.addElement(sax2rtfdtm);
            this.m_which_rtfdtm++;
            return sax2rtfdtm;
        }
        int i = this.m_which_rtfdtm;
        if (i < 0) {
            int i2 = i + 1;
            this.m_which_rtfdtm = i2;
            return (SAX2RTFDTM) vector.elementAt(i2);
        }
        SAX2RTFDTM sax2rtfdtm2 = (SAX2RTFDTM) vector.elementAt(i);
        if (!sax2rtfdtm2.isTreeIncomplete()) {
            return sax2rtfdtm2;
        }
        int i3 = this.m_which_rtfdtm + 1;
        this.m_which_rtfdtm = i3;
        if (i3 < this.m_rtfdtm_stack.size()) {
            return (SAX2RTFDTM) this.m_rtfdtm_stack.elementAt(this.m_which_rtfdtm);
        }
        SAX2RTFDTM sax2rtfdtm3 = (SAX2RTFDTM) this.m_dtmManager.getDTM(null, true, null, false, false);
        this.m_rtfdtm_stack.addElement(sax2rtfdtm3);
        return sax2rtfdtm3;
    }

    public SourceLocator getSAXLocator() {
        return (SourceLocator) this.m_saxLocations.peek();
    }

    public final SourceTreeManager getSourceTreeManager() {
        return this.m_sourceTreeManager;
    }

    public SubContextList getSubContextList() {
        if (this.m_axesIteratorStack.isEmpty()) {
            return null;
        }
        return (SubContextList) this.m_axesIteratorStack.peek();
    }

    public final URIResolver getURIResolver() {
        return this.m_uriResolver;
    }

    public final VariableStack getVarStack() {
        return this.m_variableStacks;
    }

    public boolean isSecureProcessing() {
        return this.m_isSecureProcessing;
    }

    public final void popContextNodeList() {
        if (this.m_contextNodeLists.isEmpty()) {
            System.err.println("Warning: popContextNodeList when stack is empty!");
        } else {
            this.m_contextNodeLists.pop();
        }
    }

    public final void popCurrentExpressionNode() {
        this.m_currentExpressionNodes.quickPop(1);
    }

    public final void popCurrentNode() {
        this.m_currentNodes.quickPop(1);
    }

    public final void popCurrentNodeAndExpression() {
        this.m_currentNodes.quickPop(1);
        this.m_currentExpressionNodes.quickPop(1);
    }

    public final void popExpressionState() {
        this.m_currentNodes.quickPop(1);
        this.m_currentExpressionNodes.quickPop(1);
        this.m_prefixResolvers.pop();
    }

    public final void popIteratorRoot() {
        this.m_iteratorRoots.popQuick();
    }

    public final void popNamespaceContext() {
        this.m_prefixResolvers.pop();
    }

    public final void popPredicatePos() {
        this.m_predicatePos.pop();
    }

    public final void popPredicateRoot() {
        this.m_predicateRoots.popQuick();
    }

    public void popRTFContext() {
        int pop = this.m_last_pushed_rtfdtm.pop();
        Vector vector = this.m_rtfdtm_stack;
        if (vector == null) {
            return;
        }
        if (this.m_which_rtfdtm == pop) {
            if (pop >= 0) {
                ((SAX2RTFDTM) vector.elementAt(pop)).popRewindMark();
            }
        } else {
            while (true) {
                int i = this.m_which_rtfdtm;
                if (i == pop) {
                    return;
                }
                ((SAX2RTFDTM) this.m_rtfdtm_stack.elementAt(i)).popRewindMark();
                this.m_which_rtfdtm--;
            }
        }
    }

    public void popSAXLocator() {
        this.m_saxLocations.pop();
    }

    public final void popSubContextList() {
        this.m_axesIteratorStack.pop();
    }

    public final void pushContextNodeList(DTMIterator dTMIterator) {
        this.m_contextNodeLists.push(dTMIterator);
    }

    public final void pushCurrentExpressionNode(int i) {
        this.m_currentExpressionNodes.push(i);
    }

    public final void pushCurrentNode(int i) {
        this.m_currentNodes.push(i);
    }

    public final void pushCurrentNodeAndExpression(int i, int i2) {
        this.m_currentNodes.push(i);
        this.m_currentExpressionNodes.push(i);
    }

    public final void pushExpressionState(int i, int i2, PrefixResolver prefixResolver) {
        this.m_currentNodes.push(i);
        this.m_currentExpressionNodes.push(i);
        this.m_prefixResolvers.push(prefixResolver);
    }

    public final void pushIteratorRoot(int i) {
        this.m_iteratorRoots.push(i);
    }

    public final void pushNamespaceContext(PrefixResolver prefixResolver) {
        this.m_prefixResolvers.push(prefixResolver);
    }

    public final void pushNamespaceContextNull() {
        this.m_prefixResolvers.push(null);
    }

    public final void pushPredicatePos(int i) {
        this.m_predicatePos.push(i);
    }

    public final void pushPredicateRoot(int i) {
        this.m_predicateRoots.push(i);
    }

    public void pushRTFContext() {
        this.m_last_pushed_rtfdtm.push(this.m_which_rtfdtm);
        if (this.m_rtfdtm_stack != null) {
            ((SAX2RTFDTM) getRTFDTM()).pushRewindMark();
        }
    }

    public void pushSAXLocator(SourceLocator sourceLocator) {
        this.m_saxLocations.push(sourceLocator);
    }

    public void pushSAXLocatorNull() {
        this.m_saxLocations.push(null);
    }

    public final void pushSubContextList(SubContextList subContextList) {
        this.m_axesIteratorStack.push(subContextList);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMManager
    public boolean release(DTM dtm, boolean z) {
        Vector vector = this.m_rtfdtm_stack;
        if (vector == null || !vector.contains(dtm)) {
            return this.m_dtmManager.release(dtm, z);
        }
        return false;
    }

    public void reset() {
        releaseDTMXRTreeFrags();
        Vector vector = this.m_rtfdtm_stack;
        if (vector != null) {
            Enumeration elements = vector.elements();
            while (elements.hasMoreElements()) {
                this.m_dtmManager.release((DTM) elements.nextElement(), true);
            }
        }
        this.m_rtfdtm_stack = null;
        this.m_which_rtfdtm = -1;
        SAX2RTFDTM sax2rtfdtm = this.m_global_rtfdtm;
        if (sax2rtfdtm != null) {
            this.m_dtmManager.release(sax2rtfdtm, true);
        }
        this.m_global_rtfdtm = null;
        this.m_dtmManager = DTMManager.newInstance(XMLStringFactoryImpl.getFactory());
        this.m_saxLocations.removeAllElements();
        this.m_axesIteratorStack.removeAllElements();
        this.m_contextNodeLists.removeAllElements();
        this.m_currentExpressionNodes.removeAllElements();
        this.m_currentNodes.removeAllElements();
        this.m_iteratorRoots.RemoveAllNoClear();
        this.m_predicatePos.removeAllElements();
        this.m_predicateRoots.RemoveAllNoClear();
        this.m_prefixResolvers.removeAllElements();
        this.m_prefixResolvers.push(null);
        this.m_currentNodes.push(-1);
        this.m_currentExpressionNodes.push(-1);
        this.m_saxLocations.push(null);
    }

    public void setAxesIteratorStackStacks(Stack stack) {
        this.m_axesIteratorStack = stack;
    }

    public void setContextNodeListsStack(Stack stack) {
        this.m_contextNodeLists = stack;
    }

    public void setCurrentExpressionNodeStack(IntStack intStack) {
        this.m_currentExpressionNodes = intStack;
    }

    public void setCurrentNodeStack(IntStack intStack) {
        this.m_currentNodes = intStack;
    }

    public void setErrorListener(ErrorListener errorListener) throws IllegalArgumentException {
        if (errorListener == null) {
            throw new IllegalArgumentException(XPATHMessages.createXPATHMessage("ER_NULL_ERROR_HANDLER", null));
        }
        this.m_errorListener = errorListener;
    }

    public final void setNamespaceContext(PrefixResolver prefixResolver) {
        this.m_prefixResolvers.setTop(prefixResolver);
    }

    public void setPrimaryReader(XMLReader xMLReader) {
        this.m_primaryReader = xMLReader;
    }

    public void setSAXLocator(SourceLocator sourceLocator) {
        this.m_saxLocations.setTop(sourceLocator);
    }

    public void setSecureProcessing(boolean z) {
        this.m_isSecureProcessing = z;
    }

    public void setSourceTreeManager(SourceTreeManager sourceTreeManager) {
        this.m_sourceTreeManager = sourceTreeManager;
    }

    public void setURIResolver(URIResolver uRIResolver) {
        this.m_uriResolver = uRIResolver;
    }

    public final void setVarStack(VariableStack variableStack) {
        this.m_variableStacks = variableStack;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMManager
    public DTMIterator createDTMIterator(String str, PrefixResolver prefixResolver) {
        return this.m_dtmManager.createDTMIterator(str, prefixResolver);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMManager
    public DTM getDTM(int i) {
        return this.m_dtmManager.getDTM(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMManager
    public DTMIterator createDTMIterator(int i, DTMFilter dTMFilter, boolean z) {
        return this.m_dtmManager.createDTMIterator(i, dTMFilter, z);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMManager
    public DTMIterator createDTMIterator(int i) {
        OneStepIteratorForward oneStepIteratorForward = new OneStepIteratorForward(13);
        oneStepIteratorForward.setRoot(i, this);
        return oneStepIteratorForward;
    }

    public XPathContext(Object obj) {
        this.m_owner = obj;
        try {
            this.m_ownerGetErrorListener = obj.getClass().getMethod("getErrorListener", new Class[0]);
        } catch (NoSuchMethodException unused) {
        }
        this.m_prefixResolvers.push(null);
        this.m_currentNodes.push(-1);
        this.m_currentExpressionNodes.push(-1);
        this.m_saxLocations.push(null);
    }
}
