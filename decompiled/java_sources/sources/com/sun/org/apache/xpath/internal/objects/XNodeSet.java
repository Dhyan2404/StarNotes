package com.sun.org.apache.xpath.internal.objects;

import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.dtm.DTMManager;
import com.sun.org.apache.xml.internal.dtm.ref.DTMNodeIterator;
import com.sun.org.apache.xml.internal.dtm.ref.DTMNodeList;
import com.sun.org.apache.xml.internal.utils.FastStringBuffer;
import com.sun.org.apache.xml.internal.utils.WrappedRuntimeException;
import com.sun.org.apache.xml.internal.utils.XMLString;
import com.sun.org.apache.xpath.internal.NodeSetDTM;
import com.sun.org.apache.xpath.internal.axes.NodeSequence;
import java.util.Vector;
import javax.xml.transform.TransformerException;
import org.w3c.dom.NodeList;
import org.w3c.dom.traversal.NodeIterator;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class XNodeSet extends NodeSequence {
    static final long serialVersionUID = 1916026368035639667L;
    static final LessThanComparator S_LT = new LessThanComparator();
    static final LessThanOrEqualComparator S_LTE = new LessThanOrEqualComparator();
    static final GreaterThanComparator S_GT = new GreaterThanComparator();
    static final GreaterThanOrEqualComparator S_GTE = new GreaterThanOrEqualComparator();
    static final EqualComparator S_EQ = new EqualComparator();
    static final NotEqualComparator S_NEQ = new NotEqualComparator();

    public XNodeSet() {
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public void appendToFsb(FastStringBuffer fastStringBuffer) {
        ((XString) xstr()).appendToFsb(fastStringBuffer);
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public boolean bool() {
        return item(0) != -1;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public boolean boolWithSideEffects() {
        return nextNode() != -1;
    }

    public boolean compare(XObject xObject, Comparator comparator) throws TransformerException {
        int type = xObject.getType();
        boolean z = true;
        if (4 != type) {
            if (1 == type) {
                return comparator.compareNumbers(bool() ? 1.0d : 0.0d, xObject.num());
            }
            if (2 == type) {
                DTMIterator iterRaw = iterRaw();
                double num = xObject.num();
                while (true) {
                    int nextNode = iterRaw.nextNode();
                    if (-1 == nextNode) {
                        z = false;
                        break;
                    }
                    if (comparator.compareNumbers(getNumberFromNode(nextNode), num)) {
                        break;
                    }
                }
                iterRaw.reset();
            } else if (5 == type) {
                XMLString xstr = xObject.xstr();
                DTMIterator iterRaw2 = iterRaw();
                while (true) {
                    int nextNode2 = iterRaw2.nextNode();
                    if (-1 == nextNode2) {
                        z = false;
                        break;
                    }
                    if (comparator.compareStrings(getStringFromNode(nextNode2), xstr)) {
                        break;
                    }
                }
                iterRaw2.reset();
            } else {
                if (3 != type) {
                    return comparator.compareNumbers(num(), xObject.num());
                }
                XMLString xstr2 = xObject.xstr();
                DTMIterator iterRaw3 = iterRaw();
                while (true) {
                    int nextNode3 = iterRaw3.nextNode();
                    if (-1 == nextNode3) {
                        z = false;
                        break;
                    }
                    if (comparator.compareStrings(getStringFromNode(nextNode3), xstr2)) {
                        break;
                    }
                }
                iterRaw3.reset();
            }
            return z;
        }
        DTMIterator iterRaw4 = iterRaw();
        DTMIterator iterRaw5 = ((XNodeSet) xObject).iterRaw();
        Vector vector = null;
        boolean z2 = false;
        while (true) {
            int nextNode4 = iterRaw4.nextNode();
            if (-1 == nextNode4) {
                iterRaw4.reset();
                iterRaw5.reset();
                return z2;
            }
            XMLString stringFromNode = getStringFromNode(nextNode4);
            if (vector == null) {
                while (true) {
                    int nextNode5 = iterRaw5.nextNode();
                    if (-1 != nextNode5) {
                        XMLString stringFromNode2 = getStringFromNode(nextNode5);
                        if (comparator.compareStrings(stringFromNode, stringFromNode2)) {
                            break;
                        }
                        if (vector == null) {
                            vector = new Vector();
                        }
                        vector.addElement(stringFromNode2);
                    }
                }
            } else {
                int size = vector.size();
                for (int i = 0; i < size; i++) {
                    if (comparator.compareStrings(stringFromNode, (XMLString) vector.elementAt(i))) {
                        z2 = true;
                        break;
                    }
                }
            }
        }
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public void dispatchCharactersEvents(ContentHandler contentHandler) throws SAXException {
        int item = item(0);
        if (item != -1) {
            this.m_dtmMgr.getDTM(item).dispatchCharactersEvents(item, contentHandler, false);
        }
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public boolean equals(XObject xObject) {
        try {
            return compare(xObject, S_EQ);
        } catch (TransformerException e) {
            throw new WrappedRuntimeException(e);
        }
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public XObject getFresh() {
        try {
            return hasCache() ? (XObject) cloneWithReset() : this;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public double getNumberFromNode(int i) {
        return this.m_dtmMgr.getDTM(i).getStringValue(i).toDouble();
    }

    public XMLString getStringFromNode(int i) {
        return -1 != i ? this.m_dtmMgr.getDTM(i).getStringValue(i) : XString.EMPTYSTRING;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public int getType() {
        return 4;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public String getTypeString() {
        return "#NODESET";
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public boolean greaterThan(XObject xObject) throws TransformerException {
        return compare(xObject, S_GT);
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public boolean greaterThanOrEqual(XObject xObject) throws TransformerException {
        return compare(xObject, S_GTE);
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public DTMIterator iter() {
        try {
            return hasCache() ? cloneWithReset() : this;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public DTMIterator iterRaw() {
        return this;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public boolean lessThan(XObject xObject) throws TransformerException {
        return compare(xObject, S_LT);
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public boolean lessThanOrEqual(XObject xObject) throws TransformerException {
        return compare(xObject, S_LTE);
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public NodeSetDTM mutableNodeset() {
        Object obj = this.m_obj;
        if (obj instanceof NodeSetDTM) {
            return (NodeSetDTM) obj;
        }
        NodeSetDTM nodeSetDTM = new NodeSetDTM(iter());
        this.m_obj = nodeSetDTM;
        setCurrentPos(0);
        return nodeSetDTM;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public NodeList nodelist() throws TransformerException {
        DTMNodeList dTMNodeList = new DTMNodeList(this);
        SetVector(((XNodeSet) dTMNodeList.getDTMIterator()).getVector());
        return dTMNodeList;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public NodeIterator nodeset() throws TransformerException {
        return new DTMNodeIterator(iter());
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public boolean notEquals(XObject xObject) throws TransformerException {
        return compare(xObject, S_NEQ);
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public double num() {
        int item = item(0);
        if (item != -1) {
            return getNumberFromNode(item);
        }
        return Double.NaN;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public double numWithSideEffects() {
        int nextNode = nextNode();
        if (nextNode != -1) {
            return getNumberFromNode(nextNode);
        }
        return Double.NaN;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public Object object() {
        Object obj = this.m_obj;
        return obj == null ? this : obj;
    }

    public void release(DTMIterator dTMIterator) {
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public String str() {
        int item = item(0);
        return item != -1 ? getStringFromNode(item).toString() : "";
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public XMLString xstr() {
        int item = item(0);
        return item != -1 ? getStringFromNode(item) : XString.EMPTYSTRING;
    }

    public XNodeSet(DTMIterator dTMIterator) {
        if (dTMIterator instanceof XNodeSet) {
            XNodeSet xNodeSet = (XNodeSet) dTMIterator;
            setIter(xNodeSet.m_iter);
            this.m_dtmMgr = xNodeSet.m_dtmMgr;
            this.m_last = xNodeSet.m_last;
            if (!xNodeSet.hasCache()) {
                xNodeSet.setShouldCacheNodes(true);
            }
            this.m_obj = xNodeSet.m_obj;
            return;
        }
        setIter(dTMIterator);
    }

    public XNodeSet(XNodeSet xNodeSet) {
        setIter(xNodeSet.m_iter);
        this.m_dtmMgr = xNodeSet.m_dtmMgr;
        this.m_last = xNodeSet.m_last;
        if (!xNodeSet.hasCache()) {
            xNodeSet.setShouldCacheNodes(true);
        }
        this.m_obj = xNodeSet.m_obj;
    }

    public XNodeSet(DTMManager dTMManager) {
        this(-1, dTMManager);
    }

    public XNodeSet(int i, DTMManager dTMManager) {
        super(new NodeSetDTM(dTMManager));
        this.m_dtmMgr = dTMManager;
        if (-1 != i) {
            ((NodeSetDTM) this.m_obj).addNode(i);
            this.m_last = 1;
        } else {
            this.m_last = 0;
        }
    }
}
