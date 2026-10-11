package net.p110sf.saxon.dom;

import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.dom.DOMSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.JPConverter;
import net.p110sf.saxon.expr.PJConverter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.ActiveSource;
import net.p110sf.saxon.lib.ExternalObjectModel;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.SequenceExtent;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes11.dex */
public class DOMEnvelope implements ExternalObjectModel {

    /* renamed from: a */
    public static final DOMEnvelope f98872a = new DOMEnvelope();

    /* renamed from: net.sf.saxon.dom.DOMEnvelope$a */
    /* loaded from: classes11.dex */
    public class C18261a extends PJConverter {
        public C18261a() {
        }

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            return DOMObjectModel.convertXPathValueToObject(sequence, cls);
        }
    }

    /* renamed from: net.sf.saxon.dom.DOMEnvelope$b */
    /* loaded from: classes11.dex */
    public class C18262b extends PJConverter {
        public C18262b() {
        }

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            return DOMObjectModel.convertXPathValueToObject(sequence, cls);
        }
    }

    /* renamed from: net.sf.saxon.dom.DOMEnvelope$c */
    /* loaded from: classes11.dex */
    public class C18263c extends JPConverter {
        public C18263c() {
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) {
            return DOMEnvelope.this.m62457b(obj);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return AnyNodeTest.getInstance();
        }
    }

    public static DOMEnvelope getInstance() {
        return f98872a;
    }

    /* renamed from: b */
    public final GroundedValue m62457b(Object obj) {
        if (!(obj instanceof NodeList)) {
            if (obj instanceof NodeOverNodeInfo) {
                return ((NodeOverNodeInfo) obj).getUnderlyingNodeInfo();
            }
            return null;
        }
        NodeList nodeList = (NodeList) obj;
        int length = nodeList.getLength();
        if (length == 0) {
            return null;
        }
        NodeInfo[] nodeInfoArr = new NodeInfo[length];
        for (int i = 0; i < length; i++) {
            if (!(nodeList.item(i) instanceof NodeOverNodeInfo)) {
                return null;
            }
            nodeInfoArr[i] = ((NodeOverNodeInfo) nodeList.item(i)).getUnderlyingNodeInfo();
        }
        return new SequenceExtent.C18571Of(nodeInfoArr);
    }

    @Override // net.p110sf.saxon.lib.ExternalObjectModel
    public ActiveSource getActiveSource(Source source) {
        if (!(source instanceof DOMSource)) {
            return null;
        }
        Node node = ((DOMSource) source).getNode();
        if (node instanceof NodeOverNodeInfo) {
            return ((NodeOverNodeInfo) node).getUnderlyingNodeInfo().asActiveSource();
        }
        return null;
    }

    @Override // net.p110sf.saxon.lib.ExternalObjectModel
    public Receiver getDocumentBuilder(Result result) {
        return null;
    }

    @Override // net.p110sf.saxon.lib.ExternalObjectModel
    public String getDocumentClassName() {
        return "org.w3c.dom.Document";
    }

    @Override // net.p110sf.saxon.lib.ExternalObjectModel
    public String getIdentifyingURI() {
        return "http://java.sun.com/jaxp/xpath/dom";
    }

    @Override // net.p110sf.saxon.lib.ExternalObjectModel
    public JPConverter getJPConverter(Class cls, Configuration configuration) {
        if (NodeOverNodeInfo.class.isAssignableFrom(cls)) {
            return new C18263c();
        }
        return null;
    }

    @Override // net.p110sf.saxon.lib.ExternalObjectModel
    public PJConverter getNodeListCreator(Object obj) {
        return null;
    }

    @Override // net.p110sf.saxon.lib.ExternalObjectModel
    public PJConverter getPJConverter(Class<?> cls) {
        if (NodeOverNodeInfo.class.isAssignableFrom(cls)) {
            return new C18261a();
        }
        if (NodeList.class.isAssignableFrom(cls)) {
            return new C18262b();
        }
        return null;
    }

    public boolean isRecognizedNode(Object obj) {
        return obj instanceof NodeOverNodeInfo;
    }

    public boolean isRecognizedNodeClass(Class cls) {
        return NodeOverNodeInfo.class.isAssignableFrom(cls);
    }

    @Override // net.p110sf.saxon.lib.ExternalObjectModel
    public NodeInfo unravel(Source source, Configuration configuration) {
        if (!(source instanceof DOMSource)) {
            return null;
        }
        Node node = ((DOMSource) source).getNode();
        if (node instanceof NodeOverNodeInfo) {
            return ((NodeOverNodeInfo) node).getUnderlyingNodeInfo();
        }
        return null;
    }
}
