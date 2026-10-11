package net.p110sf.saxon.dom;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Transform;
import net.p110sf.saxon.trans.XPathException;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* loaded from: classes11.dex */
public class DOMTransform extends Transform {
    public static void main(String[] strArr) {
        new DOMTransform().doTransform(strArr);
    }

    @Override // net.p110sf.saxon.Transform
    public List<Source> preprocess(List<Source> list) throws XPathException {
        try {
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<Source> it2 = list.iterator();
            while (it2.hasNext()) {
                StreamSource streamSource = (StreamSource) it2.next();
                InputSource inputSource = new InputSource(streamSource.getSystemId());
                DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
                newInstance.setNamespaceAware(true);
                arrayList.add(new DocumentWrapper(newInstance.newDocumentBuilder().parse(inputSource), streamSource.getSystemId(), getConfiguration()).getRootNode().asActiveSource());
            }
            return arrayList;
        } catch (IOException | ParserConfigurationException | SAXException e) {
            throw new XPathException(e);
        }
    }
}
