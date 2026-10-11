package com.sun.org.apache.xalan.internal.transformer;

import com.sun.org.apache.xalan.internal.templates.KeyDeclaration;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xml.internal.utils.WrappedRuntimeException;
import com.sun.org.apache.xml.internal.utils.XMLString;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XNodeSet;
import com.sun.org.apache.xpath.internal.objects.XObject;
import java.util.Hashtable;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class KeyTable {
    private int m_docKey;
    private Vector m_keyDeclarations;
    private XNodeSet m_keyNodes;
    private Hashtable m_refsTable = null;

    public KeyTable(int i, PrefixResolver prefixResolver, QName qName, Vector vector, XPathContext xPathContext) throws TransformerException {
        this.m_docKey = i;
        this.m_keyDeclarations = vector;
        XNodeSet xNodeSet = new XNodeSet(new KeyIterator(qName, vector));
        this.m_keyNodes = xNodeSet;
        xNodeSet.allowDetachToRelease(false);
        this.m_keyNodes.setRoot(i, xPathContext);
    }

    private void addValueInRefsTable(XPathContext xPathContext, XMLString xMLString, int i) {
        XNodeSet xNodeSet = (XNodeSet) this.m_refsTable.get(xMLString);
        if (xNodeSet == null) {
            XNodeSet xNodeSet2 = new XNodeSet(i, xPathContext.getDTMManager());
            xNodeSet2.nextNode();
            this.m_refsTable.put(xMLString, xNodeSet2);
        } else if (xNodeSet.getCurrentNode() != i) {
            xNodeSet.mutableNodeset().addNode(i);
            xNodeSet.nextNode();
        }
    }

    private Vector getKeyDeclarations() {
        int size = this.m_keyDeclarations.size();
        Vector vector = new Vector(size);
        for (int i = 0; i < size; i++) {
            KeyDeclaration keyDeclaration = (KeyDeclaration) this.m_keyDeclarations.elementAt(i);
            if (keyDeclaration.getName().equals(getKeyTableName())) {
                vector.add(keyDeclaration);
            }
        }
        return vector;
    }

    private Hashtable getRefsTable() {
        if (this.m_refsTable == null) {
            this.m_refsTable = new Hashtable(89);
            KeyIterator keyIterator = (KeyIterator) this.m_keyNodes.getContainedIter();
            XPathContext xPathContext = keyIterator.getXPathContext();
            Vector keyDeclarations = getKeyDeclarations();
            int size = keyDeclarations.size();
            this.m_keyNodes.reset();
            while (true) {
                int nextNode = this.m_keyNodes.nextNode();
                if (-1 == nextNode) {
                    break;
                }
                for (int i = 0; i < size; i++) {
                    try {
                        XObject execute = ((KeyDeclaration) keyDeclarations.elementAt(i)).getUse().execute(xPathContext, nextNode, keyIterator.getPrefixResolver());
                        if (execute.getType() == 4) {
                            DTMIterator iterRaw = ((XNodeSet) execute).iterRaw();
                            while (true) {
                                int nextNode2 = iterRaw.nextNode();
                                if (-1 == nextNode2) {
                                    break;
                                }
                                addValueInRefsTable(xPathContext, xPathContext.getDTM(nextNode2).getStringValue(nextNode2), nextNode);
                            }
                        } else {
                            addValueInRefsTable(xPathContext, execute.xstr(), nextNode);
                        }
                    } catch (TransformerException e) {
                        throw new WrappedRuntimeException(e);
                    }
                }
            }
        }
        return this.m_refsTable;
    }

    public int getDocKey() {
        return this.m_docKey;
    }

    public KeyIterator getKeyIterator() {
        return (KeyIterator) this.m_keyNodes.getContainedIter();
    }

    public QName getKeyTableName() {
        return getKeyIterator().getName();
    }

    public XNodeSet getNodeSetDTMByKey(QName qName, XMLString xMLString) {
        XNodeSet xNodeSet = (XNodeSet) getRefsTable().get(xMLString);
        if (xNodeSet != null) {
            try {
                xNodeSet = (XNodeSet) xNodeSet.cloneWithReset();
            } catch (CloneNotSupportedException unused) {
                xNodeSet = null;
            }
        }
        if (xNodeSet != null) {
            return xNodeSet;
        }
        XNodeSet xNodeSet2 = new XNodeSet(((KeyIterator) this.m_keyNodes.getContainedIter()).getXPathContext().getDTMManager()) { // from class: com.sun.org.apache.xalan.internal.transformer.KeyTable.1
            @Override // com.sun.org.apache.xpath.internal.axes.NodeSequence, com.sun.org.apache.xml.internal.dtm.DTMIterator
            public void setRoot(int i, Object obj) {
            }
        };
        xNodeSet2.reset();
        return xNodeSet2;
    }
}
