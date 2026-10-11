package net.p110sf.saxon.dom;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.functions.ResolveURI;
import net.p110sf.saxon.om.GenericTreeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.tree.iter.AxisIterator;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.Entity;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

/* loaded from: classes11.dex */
public class DocumentWrapper extends GenericTreeInfo {
    public final Node docNode;
    protected boolean domLevel3;

    /* renamed from: j */
    public Map<String, NodeInfo> f98917j;

    public DocumentWrapper(Node node, String str, Configuration configuration) {
        super(configuration);
        this.f98917j = null;
        if (node.getNodeType() != 9 && node.getNodeType() != 11) {
            throw new IllegalArgumentException("Node must be a DOM Document or DocumentFragment");
        }
        if (configuration.getExternalObjectModel(node.getClass()) != null) {
            this.domLevel3 = true;
            this.docNode = node;
            setRootNode(wrap(node));
            setSystemId(str);
            return;
        }
        throw new IllegalArgumentException("Node class " + node.getClass().getName() + " is not recognized in this Saxon configuration");
    }

    public int getDOMLevel() {
        return this.domLevel3 ? 3 : 2;
    }

    @Override // net.p110sf.saxon.om.GenericTreeInfo, net.p110sf.saxon.om.TreeInfo
    public String[] getUnparsedEntity(String str) {
        String baseURI;
        synchronized (this.docNode) {
            Node node = ((DOMNodeWrapper) getRootNode()).node;
            if (!(node instanceof Document)) {
                return null;
            }
            DocumentType doctype = ((Document) node).getDoctype();
            if (doctype == null) {
                return null;
            }
            NamedNodeMap entities = doctype.getEntities();
            if (entities == null) {
                return null;
            }
            Entity entity = (Entity) entities.getNamedItem(str);
            if (entity != null && entity.getNotationName() != null) {
                String systemId = entity.getSystemId();
                try {
                    if (!new URI(systemId).isAbsolute() && (baseURI = getRootNode().getBaseURI()) != null) {
                        systemId = ResolveURI.makeAbsolute(systemId, baseURI).toString();
                    }
                } catch (URISyntaxException unused) {
                }
                return new String[]{systemId, entity.getPublicId()};
            }
            return null;
        }
    }

    @Override // net.p110sf.saxon.om.GenericTreeInfo, net.p110sf.saxon.om.TreeInfo
    public Iterator<String> getUnparsedEntityNames() {
        synchronized (this.docNode) {
            Node node = ((DOMNodeWrapper) getRootNode()).node;
            if (!(node instanceof Document)) {
                return null;
            }
            DocumentType doctype = ((Document) node).getDoctype();
            if (doctype == null) {
                return Collections.emptyList().iterator();
            }
            NamedNodeMap entities = doctype.getEntities();
            if (entities == null) {
                return Collections.emptyList().iterator();
            }
            ArrayList arrayList = new ArrayList(entities.getLength());
            for (int i = 0; i < entities.getLength(); i++) {
                Entity entity = (Entity) entities.item(i);
                if (entity.getNotationName() != null) {
                    arrayList.add(entity.getLocalName());
                }
            }
            return arrayList.iterator();
        }
    }

    @Override // net.p110sf.saxon.om.GenericTreeInfo, net.p110sf.saxon.om.TreeInfo
    public NodeInfo selectID(String str, boolean z) {
        Element elementById;
        synchronized (this.docNode) {
            Node node = ((DOMNodeWrapper) getRootNode()).node;
            if ((node instanceof Document) && (elementById = ((Document) node).getElementById(str)) != null) {
                return wrap(elementById);
            }
            Map<String, NodeInfo> map = this.f98917j;
            if (map != null) {
                return map.get(str);
            }
            this.f98917j = new HashMap();
            AxisIterator iterateAxis = getRootNode().iterateAxis(4, NodeKindTest.ELEMENT);
            while (true) {
                NodeInfo next = iterateAxis.next();
                if (next == null) {
                    return this.f98917j.get(str);
                }
                String attributeValue = next.getAttributeValue("http://www.w3.org/XML/1998/namespace", "id");
                if (attributeValue != null) {
                    this.f98917j.put(attributeValue, next);
                }
            }
        }
    }

    public void setDOMLevel(int i) {
        if (i != 2 && i != 3) {
            throw new IllegalArgumentException("DOM Level must be 2 or 3");
        }
        this.domLevel3 = i == 3;
    }

    public DOMNodeWrapper wrap(Node node) {
        return DOMNodeWrapper.makeWrapper(node, this);
    }
}
