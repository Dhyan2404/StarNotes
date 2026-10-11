package com.sun.org.apache.xalan.internal.lib;

import com.sun.org.apache.xalan.internal.extensions.XSLProcessorContext;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xalan.internal.templates.ElemExtensionCall;
import com.sun.org.apache.xalan.internal.templates.ElemLiteralResult;
import com.sun.org.apache.xml.internal.serializer.Serializer;
import com.sun.org.apache.xml.internal.serializer.SerializerFactory;
import com.sun.org.apache.xml.internal.utils.SystemIDResolver;
import com.sun.org.apache.xpath.internal.XPathContext;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Vector;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.sax.SAXTransformerFactory;
import javax.xml.transform.sax.TransformerHandler;
import javax.xml.transform.stream.StreamSource;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

/* loaded from: classes10.dex */
public class PipeDocument {
    public void pipeDocument(XSLProcessorContext xSLProcessorContext, ElemExtensionCall elemExtensionCall) throws TransformerException, TransformerConfigurationException, SAXException, IOException, FileNotFoundException {
        SAXTransformerFactory sAXTransformerFactory = (SAXTransformerFactory) TransformerFactory.newInstance();
        String absoluteURI = SystemIDResolver.getAbsoluteURI(elemExtensionCall.getAttribute("source", xSLProcessorContext.getContextNode(), xSLProcessorContext.getTransformer()), xSLProcessorContext.getTransformer().getBaseURLOfSource());
        String attribute = elemExtensionCall.getAttribute("target", xSLProcessorContext.getContextNode(), xSLProcessorContext.getTransformer());
        XPathContext xPathContext = xSLProcessorContext.getTransformer().getXPathContext();
        int dTMHandleFromNode = xPathContext.getDTMHandleFromNode(xSLProcessorContext.getContextNode());
        String systemId = elemExtensionCall.getSystemId();
        if (elemExtensionCall.hasChildNodes()) {
            NodeList childNodes = elemExtensionCall.getChildNodes();
            Vector vector = new Vector(childNodes.getLength());
            for (int i = 0; i < childNodes.getLength(); i++) {
                Node item = childNodes.item(i);
                short s = 1;
                if (item.getNodeType() == 1 && ((Element) item).getTagName().equals(Constants.ELEMNAME_STYLESHEET_STRING) && (item instanceof ElemLiteralResult)) {
                    TransformerHandler newTransformerHandler = sAXTransformerFactory.newTransformerHandler(sAXTransformerFactory.newTemplates(new StreamSource(SystemIDResolver.getAbsoluteURI(((ElemLiteralResult) item).getLiteralResultAttribute("href").evaluate(xPathContext, dTMHandleFromNode, elemExtensionCall), systemId))));
                    Transformer transformer = newTransformerHandler.getTransformer();
                    vector.addElement(newTransformerHandler);
                    NodeList childNodes2 = item.getChildNodes();
                    int i2 = 0;
                    while (i2 < childNodes2.getLength()) {
                        Node item2 = childNodes2.item(i2);
                        if (item2.getNodeType() == s && ((Element) item2).getTagName().equals(Constants.ELEMNAME_PARAMVARIABLE_STRING) && (item2 instanceof ElemLiteralResult)) {
                            ElemLiteralResult elemLiteralResult = (ElemLiteralResult) item2;
                            transformer.setParameter(elemLiteralResult.getLiteralResultAttribute("name").evaluate(xPathContext, dTMHandleFromNode, elemExtensionCall), elemLiteralResult.getLiteralResultAttribute("value").evaluate(xPathContext, dTMHandleFromNode, elemExtensionCall));
                        }
                        i2++;
                        s = 1;
                    }
                }
            }
            usePipe(vector, absoluteURI, attribute);
        }
    }

    public void usePipe(Vector vector, String str, String str2) throws TransformerException, TransformerConfigurationException, FileNotFoundException, IOException, SAXException, SAXNotRecognizedException {
        XMLReader createXMLReader = XMLReaderFactory.createXMLReader();
        TransformerHandler transformerHandler = (TransformerHandler) vector.firstElement();
        createXMLReader.setContentHandler(transformerHandler);
        createXMLReader.setProperty("http://xml.org/sax/properties/lexical-handler", transformerHandler);
        for (int i = 1; i < vector.size(); i++) {
            ((TransformerHandler) vector.elementAt(i - 1)).setResult(new SAXResult((TransformerHandler) vector.elementAt(i)));
        }
        TransformerHandler transformerHandler2 = (TransformerHandler) vector.lastElement();
        Serializer serializer = SerializerFactory.getSerializer(transformerHandler2.getTransformer().getOutputProperties());
        FileOutputStream fileOutputStream = new FileOutputStream(str2);
        try {
            serializer.setOutputStream(fileOutputStream);
            transformerHandler2.setResult(new SAXResult(serializer.asContentHandler()));
            createXMLReader.parse(str);
        } finally {
            fileOutputStream.close();
        }
    }
}
