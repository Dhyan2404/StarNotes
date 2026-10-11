package com.sun.org.apache.xml.internal.dtm.ref.sax2dtm;

import com.sun.org.apache.xml.internal.dtm.DTMManager;
import com.sun.org.apache.xml.internal.dtm.DTMWSFilter;
import com.sun.org.apache.xml.internal.utils.IntStack;
import com.sun.org.apache.xml.internal.utils.IntVector;
import com.sun.org.apache.xml.internal.utils.SuballocatedIntVector;
import com.sun.org.apache.xml.internal.utils.XMLStringFactory;
import java.util.Vector;
import javax.xml.transform.Source;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class SAX2RTFDTM extends SAX2DTM {
    private static final boolean DEBUG = false;
    private int m_currentDocumentNode;
    int m_emptyCharsCount;
    int m_emptyDataCount;
    int m_emptyDataQNCount;
    int m_emptyNSDeclSetCount;
    int m_emptyNSDeclSetElemsCount;
    int m_emptyNodeCount;
    IntStack mark_char_size;
    IntStack mark_data_size;
    IntStack mark_doq_size;
    IntStack mark_nsdeclelem_size;
    IntStack mark_nsdeclset_size;
    IntStack mark_size;

    public SAX2RTFDTM(DTMManager dTMManager, Source source, int i, DTMWSFilter dTMWSFilter, XMLStringFactory xMLStringFactory, boolean z) {
        super(dTMManager, source, i, dTMWSFilter, xMLStringFactory, z);
        this.m_currentDocumentNode = -1;
        this.mark_size = new IntStack();
        this.mark_data_size = new IntStack();
        this.mark_char_size = new IntStack();
        this.mark_doq_size = new IntStack();
        this.mark_nsdeclset_size = new IntStack();
        this.mark_nsdeclelem_size = new IntStack();
        this.m_useSourceLocationProperty = false;
        this.m_sourceSystemId = null;
        this.m_sourceLine = this.m_useSourceLocationProperty ? new IntVector() : null;
        this.m_sourceColumn = this.m_useSourceLocationProperty ? new IntVector() : null;
        this.m_emptyNodeCount = this.m_size;
        Vector vector = this.m_namespaceDeclSets;
        this.m_emptyNSDeclSetCount = vector == null ? 0 : vector.size();
        SuballocatedIntVector suballocatedIntVector = this.m_namespaceDeclSetElements;
        this.m_emptyNSDeclSetElemsCount = suballocatedIntVector != null ? suballocatedIntVector.size() : 0;
        this.m_emptyDataCount = this.m_data.size();
        this.m_emptyCharsCount = this.m_chars.size();
        this.m_emptyDataQNCount = this.m_dataOrQName.size();
    }

    public int _documentRoot(int i) {
        if (i == -1) {
            return -1;
        }
        int _parent = _parent(i);
        while (true) {
            int i2 = _parent;
            int i3 = i;
            i = i2;
            if (i == -1) {
                return i3;
            }
            _parent = _parent(i);
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM, org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        charactersFlush();
        this.m_nextsib.setElementAt(-1, this.m_currentDocumentNode);
        if (this.m_firstch.elementAt(this.m_currentDocumentNode) == -2) {
            this.m_firstch.setElementAt(-1, this.m_currentDocumentNode);
        }
        int i = this.m_previous;
        if (-1 != i) {
            this.m_nextsib.setElementAt(-1, i);
        }
        this.m_parents = null;
        this.m_prefixMappings = null;
        this.m_contextIndexes = null;
        this.m_currentDocumentNode = -1;
        this.m_endDocumentOccured = true;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public int getDocument() {
        return makeNodeHandle(this.m_currentDocumentNode);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public int getDocumentRoot(int i) {
        int makeNodeIdentity = makeNodeIdentity(i);
        while (makeNodeIdentity != -1) {
            if (_type(makeNodeIdentity) == 9) {
                return makeNodeHandle(makeNodeIdentity);
            }
            makeNodeIdentity = _parent(makeNodeIdentity);
        }
        return -1;
    }

    public boolean isTreeIncomplete() {
        return !this.m_endDocumentOccured;
    }

    public boolean popRewindMark() {
        boolean empty = this.mark_size.empty();
        int pop = empty ? this.m_emptyNodeCount : this.mark_size.pop();
        this.m_size = pop;
        this.m_exptype.setSize(pop);
        this.m_firstch.setSize(this.m_size);
        this.m_nextsib.setSize(this.m_size);
        this.m_prevsib.setSize(this.m_size);
        this.m_parent.setSize(this.m_size);
        this.m_elemIndexes = null;
        int pop2 = empty ? this.m_emptyNSDeclSetCount : this.mark_nsdeclset_size.pop();
        Vector vector = this.m_namespaceDeclSets;
        if (vector != null) {
            vector.setSize(pop2);
        }
        int pop3 = empty ? this.m_emptyNSDeclSetElemsCount : this.mark_nsdeclelem_size.pop();
        SuballocatedIntVector suballocatedIntVector = this.m_namespaceDeclSetElements;
        if (suballocatedIntVector != null) {
            suballocatedIntVector.setSize(pop3);
        }
        this.m_data.setSize(empty ? this.m_emptyDataCount : this.mark_data_size.pop());
        this.m_chars.setLength(empty ? this.m_emptyCharsCount : this.mark_char_size.pop());
        this.m_dataOrQName.setSize(empty ? this.m_emptyDataQNCount : this.mark_doq_size.pop());
        return this.m_size == 0;
    }

    public void pushRewindMark() {
        if (this.m_indexing || this.m_elemIndexes != null) {
            throw new NullPointerException("Coding error; Don't try to mark/rewind an indexed DTM");
        }
        this.mark_size.push(this.m_size);
        IntStack intStack = this.mark_nsdeclset_size;
        Vector vector = this.m_namespaceDeclSets;
        intStack.push(vector == null ? 0 : vector.size());
        IntStack intStack2 = this.mark_nsdeclelem_size;
        SuballocatedIntVector suballocatedIntVector = this.m_namespaceDeclSetElements;
        intStack2.push(suballocatedIntVector != null ? suballocatedIntVector.size() : 0);
        this.mark_data_size.push(this.m_data.size());
        this.mark_char_size.push(this.m_chars.size());
        this.mark_doq_size.push(this.m_dataOrQName.size());
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM, org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        this.m_endDocumentOccured = false;
        this.m_prefixMappings = new Vector();
        this.m_contextIndexes = new IntStack();
        this.m_parents = new IntStack();
        this.m_currentDocumentNode = this.m_size;
        super.startDocument();
    }
}
