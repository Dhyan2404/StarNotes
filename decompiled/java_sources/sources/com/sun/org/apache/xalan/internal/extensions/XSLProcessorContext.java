package com.sun.org.apache.xalan.internal.extensions;

import com.sun.org.apache.xalan.internal.serialize.SerializerUtils;
import com.sun.org.apache.xalan.internal.templates.Stylesheet;
import com.sun.org.apache.xalan.internal.transformer.ClonerToResultTree;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xpath.internal.NodeSetDTM;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.axes.DescendantIterator;
import com.sun.org.apache.xpath.internal.axes.OneStepIterator;
import com.sun.org.apache.xpath.internal.objects.XBoolean;
import com.sun.org.apache.xpath.internal.objects.XNodeSet;
import com.sun.org.apache.xpath.internal.objects.XNumber;
import com.sun.org.apache.xpath.internal.objects.XObject;
import com.sun.org.apache.xpath.internal.objects.XRTreeFrag;
import com.sun.org.apache.xpath.internal.objects.XString;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;
import javax.xml.transform.TransformerException;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.Node;
import org.w3c.dom.traversal.NodeIterator;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class XSLProcessorContext {
    private QName mode;
    private int sourceNode;
    private DTM sourceTree;
    private Stylesheet stylesheetTree;
    private TransformerImpl transformer;

    public XSLProcessorContext(TransformerImpl transformerImpl, Stylesheet stylesheet) {
        this.transformer = transformerImpl;
        this.stylesheetTree = stylesheet;
        XPathContext xPathContext = transformerImpl.getXPathContext();
        this.mode = transformerImpl.getMode();
        int currentNode = xPathContext.getCurrentNode();
        this.sourceNode = currentNode;
        this.sourceTree = xPathContext.getDTM(currentNode);
    }

    public Node getContextNode() {
        return this.sourceTree.getNode(this.sourceNode);
    }

    public QName getMode() {
        return this.mode;
    }

    public Node getSourceTree() {
        DTM dtm = this.sourceTree;
        return dtm.getNode(dtm.getDocumentRoot(this.sourceNode));
    }

    public Stylesheet getStylesheet() {
        return this.stylesheetTree;
    }

    public TransformerImpl getTransformer() {
        return this.transformer;
    }

    public void outputToResultTree(Stylesheet stylesheet, Object obj) throws TransformerException, MalformedURLException, FileNotFoundException, IOException {
        XObject xString;
        XObject xNodeSet;
        XObject xNodeSet2;
        try {
            SerializationHandler resultTreeHandler = this.transformer.getResultTreeHandler();
            XPathContext xPathContext = this.transformer.getXPathContext();
            if (obj instanceof XObject) {
                xNodeSet2 = (XObject) obj;
            } else {
                if (obj instanceof String) {
                    xString = new XString((String) obj);
                } else if (obj instanceof Boolean) {
                    xString = new XBoolean(((Boolean) obj).booleanValue());
                } else if (obj instanceof Double) {
                    xString = new XNumber(((Double) obj).doubleValue());
                } else {
                    if (obj instanceof DocumentFragment) {
                        xNodeSet = new XRTreeFrag(xPathContext.getDTMHandleFromNode((DocumentFragment) obj), xPathContext);
                    } else if (obj instanceof DTM) {
                        DescendantIterator descendantIterator = new DescendantIterator();
                        descendantIterator.setRoot(((DTM) obj).getDocument(), xPathContext);
                        xNodeSet2 = new XNodeSet(descendantIterator);
                    } else if (obj instanceof DTMAxisIterator) {
                        xNodeSet2 = new XNodeSet(new OneStepIterator((DTMAxisIterator) obj, -1));
                    } else if (obj instanceof DTMIterator) {
                        xString = new XNodeSet((DTMIterator) obj);
                    } else if (obj instanceof NodeIterator) {
                        xNodeSet = new XNodeSet(new NodeSetDTM((NodeIterator) obj, xPathContext));
                    } else if (obj instanceof Node) {
                        xNodeSet = new XNodeSet(xPathContext.getDTMHandleFromNode((Node) obj), xPathContext.getDTMManager());
                    } else {
                        xString = new XString(obj.toString());
                    }
                    xNodeSet2 = xNodeSet;
                }
                xNodeSet2 = xString;
            }
            int type = xNodeSet2.getType();
            if (type == 1 || type == 2 || type == 3) {
                String str = xNodeSet2.str();
                resultTreeHandler.characters(str.toCharArray(), 0, str.length());
                return;
            }
            if (type != 4) {
                if (type != 5) {
                    return;
                }
                SerializerUtils.outputResultTreeFragment(resultTreeHandler, xNodeSet2, this.transformer.getXPathContext());
                return;
            }
            DTMIterator iter = xNodeSet2.iter();
            while (true) {
                int nextNode = iter.nextNode();
                if (-1 == nextNode) {
                    return;
                }
                DTM dtm = iter.getDTM(nextNode);
                int i = nextNode;
                while (-1 != i) {
                    resultTreeHandler.flushPending();
                    ClonerToResultTree.cloneToResultTree(i, dtm.getNodeType(i), dtm, resultTreeHandler, true);
                    int firstChild = dtm.getFirstChild(i);
                    while (-1 == firstChild) {
                        if (1 == dtm.getNodeType(i)) {
                            resultTreeHandler.endElement("", "", dtm.getNodeName(i));
                        }
                        if (nextNode == i) {
                            break;
                        }
                        firstChild = dtm.getNextSibling(i);
                        if (-1 == firstChild && nextNode == (i = dtm.getParent(i))) {
                            if (1 == dtm.getNodeType(i)) {
                                resultTreeHandler.endElement("", "", dtm.getNodeName(i));
                            }
                            i = -1;
                        }
                    }
                    i = firstChild;
                }
            }
        } catch (SAXException e) {
            throw new TransformerException(e);
        }
    }
}
