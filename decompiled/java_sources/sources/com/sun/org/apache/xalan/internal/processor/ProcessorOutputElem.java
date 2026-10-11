package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xalan.internal.templates.OutputProperties;
import com.sun.org.apache.xml.internal.serializer.OutputPropertiesFactory;
import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xml.internal.utils.SystemIDResolver;
import java.util.Vector;
import javax.xml.transform.TransformerException;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class ProcessorOutputElem extends XSLTElementProcessor {
    static final long serialVersionUID = 3513742319582547590L;
    private OutputProperties m_outputProperties;

    public void addLiteralResultAttribute(String str, String str2, String str3, String str4) {
        this.m_outputProperties.setProperty(new QName(str, str2), str4);
    }

    public void setCdataSectionElements(Vector vector) {
        this.m_outputProperties.setQNameProperties("cdata-section-elements", vector);
    }

    public void setDoctypePublic(String str) {
        this.m_outputProperties.setProperty("doctype-public", str);
    }

    public void setDoctypeSystem(String str) {
        this.m_outputProperties.setProperty("doctype-system", str);
    }

    public void setEncoding(String str) {
        this.m_outputProperties.setProperty("encoding", str);
    }

    public void setForeignAttr(String str, String str2, String str3, String str4) {
        this.m_outputProperties.setProperty(new QName(str, str2), str4);
    }

    public void setIndent(boolean z) {
        this.m_outputProperties.setBooleanProperty("indent", z);
    }

    public void setMediaType(String str) {
        this.m_outputProperties.setProperty("media-type", str);
    }

    public void setMethod(QName qName) {
        this.m_outputProperties.setQNameProperty("method", qName);
    }

    public void setOmitXmlDeclaration(boolean z) {
        this.m_outputProperties.setBooleanProperty("omit-xml-declaration", z);
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode
    public void setStandalone(boolean z) {
        this.m_outputProperties.setBooleanProperty("standalone", z);
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode
    public void setVersion(String str) {
        this.m_outputProperties.setProperty("version", str);
    }

    @Override // com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void startElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3, Attributes attributes) throws SAXException {
        OutputProperties outputProperties = new OutputProperties();
        this.m_outputProperties = outputProperties;
        outputProperties.setDOMBackPointer(stylesheetHandler.getOriginatingNode());
        this.m_outputProperties.setLocaterInfo(stylesheetHandler.getLocator());
        this.m_outputProperties.setUid(stylesheetHandler.nextUid());
        setPropertiesFromAttributes(stylesheetHandler, str3, attributes, this);
        String str4 = (String) this.m_outputProperties.getProperties().get(OutputPropertiesFactory.S_KEY_ENTITIES);
        if (str4 != null) {
            try {
                this.m_outputProperties.getProperties().put(OutputPropertiesFactory.S_KEY_ENTITIES, SystemIDResolver.getAbsoluteURI(str4, stylesheetHandler.getBaseIdentifier()));
            } catch (TransformerException e) {
                stylesheetHandler.error(e.getMessage(), e);
            }
        }
        stylesheetHandler.getStylesheet().setOutput(this.m_outputProperties);
        stylesheetHandler.getElemTemplateElement().appendChild((ElemTemplateElement) this.m_outputProperties);
        this.m_outputProperties = null;
    }
}
