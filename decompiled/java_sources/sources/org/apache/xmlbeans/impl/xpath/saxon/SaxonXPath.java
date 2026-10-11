package org.apache.xmlbeans.impl.xpath.saxon;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.dom.DOMSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.dom.DOMNodeWrapper;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.sxpath.IndependentContext;
import net.p110sf.saxon.sxpath.XPathDynamicContext;
import net.p110sf.saxon.sxpath.XPathEvaluator;
import net.p110sf.saxon.sxpath.XPathExpression;
import net.p110sf.saxon.sxpath.XPathVariable;
import net.p110sf.saxon.value.DateTimeValue;
import net.p110sf.saxon.value.GDateValue;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.impl.store.Cur;
import org.apache.xmlbeans.impl.xpath.Path;
import org.apache.xmlbeans.impl.xpath.XPath;
import org.apache.xmlbeans.impl.xpath.XPathEngine;
import org.w3c.dom.Node;

/* loaded from: classes13.dex */
public class SaxonXPath implements Path {
    private String contextVar;
    private String defaultNS;
    private final Map<String, String> namespaceMap;
    private String path;

    public SaxonXPath(String str, String str2, Map<String, String> map) {
        HashMap hashMap = new HashMap();
        this.namespaceMap = hashMap;
        this.path = str;
        this.contextVar = str2;
        this.defaultNS = map.get(XPath._DEFAULT_ELT_NS);
        hashMap.putAll(map);
        hashMap.remove(XPath._DEFAULT_ELT_NS);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r1 = r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.w3c.dom.Node getUnderlyingNode(net.p110sf.saxon.tree.wrapper.VirtualNode r1) {
        /*
        L0:
            boolean r0 = r1 instanceof net.p110sf.saxon.tree.wrapper.VirtualNode
            if (r0 == 0) goto Lb
            net.sf.saxon.tree.wrapper.VirtualNode r1 = (net.p110sf.saxon.tree.wrapper.VirtualNode) r1
            java.lang.Object r1 = r1.getUnderlyingNode()
            goto L0
        Lb:
            org.w3c.dom.Node r1 = (org.w3c.dom.Node) r1
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.xpath.saxon.SaxonXPath.getUnderlyingNode(net.sf.saxon.tree.wrapper.VirtualNode):org.w3c.dom.Node");
    }

    @Override // org.apache.xmlbeans.impl.xpath.Path
    public XPathEngine execute(Cur cur, XmlOptions xmlOptions) {
        return new SaxonXPathEngine(this, cur);
    }

    public List selectNodes(Object obj) {
        try {
            Node node = (Node) obj;
            Configuration configuration = new Configuration();
            final IndependentContext independentContext = new IndependentContext(configuration);
            String str = this.defaultNS;
            if (str != null) {
                independentContext.setDefaultElementNamespace(str);
            }
            this.namespaceMap.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.c1m
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj2, Object obj3) {
                    IndependentContext.this.declareNamespace((String) obj2, (String) obj3);
                }
            });
            NodeInfo unravel = configuration.unravel(new DOMSource(node));
            XPathEvaluator xPathEvaluator = new XPathEvaluator(configuration);
            xPathEvaluator.setStaticContext(independentContext);
            XPathVariable declareVariable = independentContext.declareVariable("", this.contextVar);
            XPathExpression createExpression = xPathEvaluator.createExpression(this.path);
            XPathDynamicContext createDynamicContext = createExpression.createDynamicContext(null);
            createDynamicContext.setContextItem(unravel);
            createDynamicContext.setVariable(declareVariable, unravel);
            List<Item> evaluate = createExpression.evaluate(createDynamicContext);
            ArrayList arrayList = new ArrayList(evaluate.size());
            for (Item item : evaluate) {
                if (item instanceof DOMNodeWrapper) {
                    arrayList.add(getUnderlyingNode((DOMNodeWrapper) item));
                } else if (item instanceof NodeInfo) {
                    arrayList.add(item.getStringValue());
                } else if (item instanceof GDateValue) {
                    arrayList.add(item);
                } else if (item instanceof DateTimeValue) {
                    arrayList.add(item);
                } else {
                    arrayList.add(SequenceTool.convertToJava(item));
                }
            }
            return arrayList;
        } catch (TransformerException e) {
            throw new RuntimeException(e);
        }
    }

    public List selectPath(Object obj) {
        return selectNodes(obj);
    }
}
