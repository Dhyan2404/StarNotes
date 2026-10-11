package com.sun.org.apache.xpath.internal.axes;

import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.DTMFilter;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.dtm.DTMManager;
import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import com.sun.org.apache.xpath.internal.ExpressionOwner;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.XPathVisitor;
import com.sun.org.apache.xpath.internal.compiler.Compiler;
import com.sun.org.apache.xpath.internal.objects.XNodeSet;
import com.sun.org.apache.xpath.internal.objects.XObject;
import com.sun.org.apache.xpath.internal.res.XPATHMessages;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import javax.xml.transform.TransformerException;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public abstract class LocPathIterator extends PredicatedNodeTest implements Cloneable, DTMIterator, Serializable, PathComponent {
    static final long serialVersionUID = -4602476357268405754L;
    protected boolean m_allowDetach;
    protected transient DTM m_cdtm;
    protected transient IteratorPool m_clones;
    protected transient int m_context;
    protected transient int m_currentContextNode;
    protected transient XPathContext m_execContext;
    private boolean m_isTopLevel;
    public transient int m_lastFetched;
    protected transient int m_length;
    protected transient int m_pos;
    private PrefixResolver m_prefixResolver;
    transient int m_stackFrame;

    public LocPathIterator() {
        this.m_allowDetach = true;
        this.m_clones = new IteratorPool(this);
        this.m_stackFrame = -1;
        this.m_isTopLevel = false;
        this.m_lastFetched = -1;
        this.m_context = -1;
        this.m_currentContextNode = -1;
        this.m_pos = 0;
        this.m_length = -1;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, TransformerException {
        try {
            objectInputStream.defaultReadObject();
            this.m_clones = new IteratorPool(this);
        } catch (ClassNotFoundException e) {
            throw new TransformerException(e);
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void allowDetachToRelease(boolean z) {
        this.m_allowDetach = z;
    }

    @Override // com.sun.org.apache.xpath.internal.Expression
    public DTMIterator asIterator(XPathContext xPathContext, int i) throws TransformerException {
        XNodeSet xNodeSet = new XNodeSet((LocPathIterator) this.m_clones.getInstance());
        xNodeSet.setRoot(i, xPathContext);
        return xNodeSet;
    }

    @Override // com.sun.org.apache.xpath.internal.Expression
    public int asNode(XPathContext xPathContext) throws TransformerException {
        DTMIterator iteratorPool = this.m_clones.getInstance();
        iteratorPool.setRoot(xPathContext.getCurrentNode(), xPathContext);
        int nextNode = iteratorPool.nextNode();
        iteratorPool.detach();
        return nextNode;
    }

    @Override // com.sun.org.apache.xpath.internal.Expression
    public boolean bool(XPathContext xPathContext) throws TransformerException {
        return asNode(xPathContext) != -1;
    }

    @Override // com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.XPathVisitable
    public void callVisitors(ExpressionOwner expressionOwner, XPathVisitor xPathVisitor) {
        if (xPathVisitor.visitLocationPath(expressionOwner, this)) {
            xPathVisitor.visitStep(expressionOwner, this);
            callPredicateVisitors(xPathVisitor);
        }
    }

    public DTMIterator cloneWithReset() throws CloneNotSupportedException {
        LocPathIterator locPathIterator = (LocPathIterator) this.m_clones.getInstanceOrThrow();
        locPathIterator.m_execContext = this.m_execContext;
        locPathIterator.m_cdtm = this.m_cdtm;
        locPathIterator.m_context = this.m_context;
        locPathIterator.m_currentContextNode = this.m_currentContextNode;
        locPathIterator.m_stackFrame = this.m_stackFrame;
        return locPathIterator;
    }

    public void detach() {
        if (this.m_allowDetach) {
            this.m_execContext = null;
            this.m_cdtm = null;
            this.m_length = -1;
            this.m_pos = 0;
            this.m_lastFetched = -1;
            this.m_context = -1;
            this.m_currentContextNode = -1;
            this.m_clones.freeInstance(this);
        }
    }

    @Override // com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.Expression
    public XObject execute(XPathContext xPathContext) throws TransformerException {
        XNodeSet xNodeSet = new XNodeSet((LocPathIterator) this.m_clones.getInstance());
        xNodeSet.setRoot(xPathContext.getCurrentNode(), xPathContext);
        return xNodeSet;
    }

    @Override // com.sun.org.apache.xpath.internal.Expression
    public void executeCharsToContentHandler(XPathContext xPathContext, ContentHandler contentHandler) throws TransformerException, SAXException {
        LocPathIterator locPathIterator = (LocPathIterator) this.m_clones.getInstance();
        locPathIterator.setRoot(xPathContext.getCurrentNode(), xPathContext);
        int nextNode = locPathIterator.nextNode();
        DTM dtm = locPathIterator.getDTM(nextNode);
        locPathIterator.detach();
        if (nextNode != -1) {
            dtm.dispatchCharactersEvents(nextNode, contentHandler, false);
        }
    }

    public int getAnalysisBits() {
        return WalkerFactory.getAnalysisBitFromAxes(getAxis());
    }

    public int getAxis() {
        return -1;
    }

    public final int getContext() {
        return this.m_context;
    }

    public final int getCurrentContextNode() {
        return this.m_currentContextNode;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int getCurrentNode() {
        return this.m_lastFetched;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public final int getCurrentPos() {
        return this.m_pos;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public DTM getDTM(int i) {
        return this.m_execContext.getDTM(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public DTMManager getDTMManager() {
        return this.m_execContext.getDTMManager();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public boolean getExpandEntityReferences() {
        return true;
    }

    public DTMFilter getFilter() {
        return null;
    }

    public final boolean getFoundLast() {
        return this.m_foundLast;
    }

    public boolean getIsTopLevel() {
        return this.m_isTopLevel;
    }

    @Override // com.sun.org.apache.xpath.internal.axes.PredicatedNodeTest, com.sun.org.apache.xpath.internal.axes.SubContextList
    public int getLastPos(XPathContext xPathContext) {
        return getLength();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int getLength() {
        boolean z = this == this.m_execContext.getSubContextList();
        int predicateCount = getPredicateCount();
        int i = this.m_length;
        if (-1 != i && z && this.m_predicateIndex < 1) {
            return i;
        }
        if (this.m_foundLast) {
            return this.m_pos;
        }
        int proximityPosition = this.m_predicateIndex >= 0 ? getProximityPosition() : this.m_pos;
        try {
            LocPathIterator locPathIterator = (LocPathIterator) clone();
            if (predicateCount > 0 && z) {
                locPathIterator.m_predCount = this.m_predicateIndex;
            }
            while (-1 != locPathIterator.nextNode()) {
                proximityPosition++;
            }
            if (z && this.m_predicateIndex < 1) {
                this.m_length = proximityPosition;
            }
            return proximityPosition;
        } catch (CloneNotSupportedException unused) {
            return -1;
        }
    }

    public final PrefixResolver getPrefixResolver() {
        if (this.m_prefixResolver == null) {
            this.m_prefixResolver = (PrefixResolver) getExpressionOwner();
        }
        return this.m_prefixResolver;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int getRoot() {
        return this.m_context;
    }

    @Override // com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int getWhatToShow() {
        return -17;
    }

    public final XPathContext getXPathContext() {
        return this.m_execContext;
    }

    public void incrementCurrentPos() {
        this.m_pos++;
    }

    public boolean isDocOrdered() {
        return true;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public boolean isFresh() {
        return this.m_pos == 0;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public boolean isMutable() {
        return false;
    }

    @Override // com.sun.org.apache.xpath.internal.Expression
    public boolean isNodesetExpr() {
        return true;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int item(int i) {
        assertion(false, "item(int index) not supported by this iterator!");
        return 0;
    }

    public abstract int nextNode();

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public int previousNode() {
        throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NODESETDTM_CANNOT_ITERATE", null));
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void reset() {
        assertion(false, "This iterator can not reset!");
    }

    public int returnNextNode(int i) {
        if (-1 != i) {
            this.m_pos++;
        }
        this.m_lastFetched = i;
        if (-1 == i) {
            this.m_foundLast = true;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0014, code lost:
    
        if ((-1) == nextNode()) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x001b, code lost:
    
        if ((-1) == nextNode()) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0021, code lost:
    
        if (getCurrentPos() < r3) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x000e, code lost:
    
        if ((-1) == r3) goto L10;
     */
    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void runTo(int r3) {
        /*
            r2 = this;
            boolean r0 = r2.m_foundLast
            if (r0 != 0) goto L23
            if (r3 < 0) goto Ld
            int r0 = r2.getCurrentPos()
            if (r3 > r0) goto Ld
            goto L23
        Ld:
            r0 = -1
            if (r0 != r3) goto L17
        L10:
            int r3 = r2.nextNode()
            if (r0 == r3) goto L23
            goto L10
        L17:
            int r1 = r2.nextNode()
            if (r0 == r1) goto L23
            int r1 = r2.getCurrentPos()
            if (r1 < r3) goto L17
        L23:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xpath.internal.axes.LocPathIterator.runTo(int):void");
    }

    public final void setCurrentContextNode(int i) {
        this.m_currentContextNode = i;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void setCurrentPos(int i) {
        assertion(false, "setCurrentPos not supported by this iterator!");
    }

    public void setEnvironment(Object obj) {
    }

    public void setIsTopLevel(boolean z) {
        this.m_isTopLevel = z;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void setItem(int i, int i2) {
        assertion(false, "setItem not supported by this iterator!");
    }

    public void setNextPosition(int i) {
        assertion(false, "setNextPosition not supported in this iterator!");
    }

    public void setRoot(int i, Object obj) {
        this.m_context = i;
        XPathContext xPathContext = (XPathContext) obj;
        this.m_execContext = xPathContext;
        this.m_cdtm = xPathContext.getDTM(i);
        this.m_currentContextNode = i;
        if (this.m_prefixResolver == null) {
            this.m_prefixResolver = xPathContext.getNamespaceContext();
        }
        this.m_lastFetched = -1;
        this.m_foundLast = false;
        this.m_pos = 0;
        this.m_length = -1;
        if (this.m_isTopLevel) {
            this.m_stackFrame = xPathContext.getVarStack().getStackFrame();
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void setShouldCacheNodes(boolean z) {
        assertion(false, "setShouldCacheNodes not supported by this iterater!");
    }

    public int size() {
        assertion(false, "size() not supported by this iterator!");
        return 0;
    }

    public LocPathIterator(PrefixResolver prefixResolver) {
        this.m_allowDetach = true;
        this.m_clones = new IteratorPool(this);
        this.m_stackFrame = -1;
        this.m_isTopLevel = false;
        this.m_lastFetched = -1;
        this.m_context = -1;
        this.m_currentContextNode = -1;
        this.m_pos = 0;
        this.m_length = -1;
        setLocPathIterator(this);
        this.m_prefixResolver = prefixResolver;
    }

    public LocPathIterator(Compiler compiler, int i, int i2) throws TransformerException {
        this(compiler, i, i2, true);
    }

    public LocPathIterator(Compiler compiler, int i, int i2, boolean z) throws TransformerException {
        this.m_allowDetach = true;
        this.m_clones = new IteratorPool(this);
        this.m_stackFrame = -1;
        this.m_isTopLevel = false;
        this.m_lastFetched = -1;
        this.m_context = -1;
        this.m_currentContextNode = -1;
        this.m_pos = 0;
        this.m_length = -1;
        setLocPathIterator(this);
    }
}
