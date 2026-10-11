package com.sun.org.apache.xalan.internal.transformer;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.templates.KeyDeclaration;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xml.internal.utils.WrappedRuntimeException;
import com.sun.org.apache.xml.internal.utils.XMLString;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.axes.ChildTestIterator;
import com.sun.org.apache.xpath.internal.objects.XNodeSet;
import com.sun.org.apache.xpath.internal.objects.XObject;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class KeyRefIterator extends ChildTestIterator {
    static final long serialVersionUID = 3837456451659435102L;
    protected Vector m_keyDeclarations;
    DTMIterator m_keysNodes;
    protected QName m_name;
    protected XMLString m_ref;

    public KeyRefIterator(QName qName, XMLString xMLString, Vector vector, DTMIterator dTMIterator) {
        super(null);
        this.m_name = qName;
        this.m_ref = xMLString;
        this.m_keyDeclarations = vector;
        this.m_keysNodes = dTMIterator;
        setWhatToShow(-1);
    }

    public short filterNode(int i) {
        Vector vector = this.m_keyDeclarations;
        QName qName = this.m_name;
        KeyIterator keyIterator = (KeyIterator) ((XNodeSet) this.m_keysNodes).getContainedIter();
        XPathContext xPathContext = keyIterator.getXPathContext();
        if (xPathContext == null) {
            assertion(false, "xctxt can not be null here!");
        }
        try {
            XMLString xMLString = this.m_ref;
            int size = vector.size();
            boolean z = false;
            for (int i2 = 0; i2 < size; i2++) {
                KeyDeclaration keyDeclaration = (KeyDeclaration) vector.elementAt(i2);
                if (keyDeclaration.getName().equals(qName)) {
                    XObject execute = keyDeclaration.getUse().execute(xPathContext, i, keyIterator.getPrefixResolver());
                    if (execute.getType() == 4) {
                        DTMIterator iterRaw = ((XNodeSet) execute).iterRaw();
                        while (true) {
                            int nextNode = iterRaw.nextNode();
                            if (-1 == nextNode) {
                                break;
                            }
                            XMLString stringValue = getDTM(nextNode).getStringValue(nextNode);
                            if (stringValue != null && xMLString.equals(stringValue)) {
                                return (short) 1;
                            }
                        }
                    } else if (xMLString.equals(execute.xstr())) {
                        return (short) 1;
                    }
                    z = true;
                }
            }
            if (z) {
                return (short) 2;
            }
            throw new RuntimeException(XSLMessages.createMessage("ER_NO_XSLKEY_DECLARATION", new Object[]{qName.getLocalName()}));
        } catch (TransformerException e) {
            throw new WrappedRuntimeException(e);
        }
    }

    @Override // com.sun.org.apache.xpath.internal.axes.ChildTestIterator, com.sun.org.apache.xpath.internal.axes.BasicTestIterator
    public int getNextNode() {
        int nextNode;
        do {
            nextNode = this.m_keysNodes.nextNode();
            if (-1 == nextNode) {
                break;
            }
        } while (1 != filterNode(nextNode));
        this.m_lastFetched = nextNode;
        return nextNode;
    }
}
