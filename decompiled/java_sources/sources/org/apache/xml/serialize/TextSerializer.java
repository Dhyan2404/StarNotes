package org.apache.xml.serialize;

import java.io.IOException;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.xml.sax.AttributeList;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/* loaded from: classes13.dex */
public class TextSerializer extends BaseMarkupSerializer {
    public TextSerializer() {
        super(new OutputFormat("text", (String) null, false));
    }

    public void characters(String str, boolean z) throws IOException {
        ElementState content = content();
        content.inCData = false;
        content.doCData = false;
        printText(str, true, true);
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer
    public void comment(String str) {
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer
    public ElementState content() {
        ElementState elementState = getElementState();
        if (!isDocumentState()) {
            if (elementState.empty) {
                elementState.empty = false;
            }
            elementState.afterElement = false;
        }
        return elementState;
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer, org.xml.sax.DocumentHandler
    public void endElement(String str) throws SAXException {
        try {
            endElementIO(str);
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    public void endElementIO(String str) throws IOException {
        getElementState();
        ElementState leaveElementState = leaveElementState();
        leaveElementState.afterElement = true;
        leaveElementState.empty = false;
        if (isDocumentState()) {
            this._printer.flush();
        }
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer
    public String getEntityRef(int i) {
        return null;
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer
    public void processingInstructionIO(String str, String str2) throws IOException {
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer
    public void serializeElement(Element element) throws IOException {
        String tagName = element.getTagName();
        ElementState elementState = getElementState();
        if (isDocumentState() && !this._started) {
            startDocument(tagName);
        }
        boolean z = elementState.preserveSpace;
        if (!element.hasChildNodes()) {
            if (isDocumentState()) {
                return;
            }
            elementState.afterElement = true;
            elementState.empty = false;
            return;
        }
        enterElementState(null, null, tagName, z);
        for (Node firstChild = element.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            serializeNode(firstChild);
        }
        endElementIO(tagName);
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer
    public void serializeNode(Node node) throws IOException {
        short nodeType = node.getNodeType();
        if (nodeType == 1) {
            serializeElement((Element) node);
            return;
        }
        if (nodeType == 9 || nodeType == 11) {
            for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
                serializeNode(firstChild);
            }
            return;
        }
        if (nodeType != 3) {
            if (nodeType != 4 || node.getNodeValue() == null) {
                return;
            }
        } else if (node.getNodeValue() == null) {
            return;
        }
        characters(node.getNodeValue(), true);
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer, org.apache.xml.serialize.Serializer
    public void setOutputFormat(OutputFormat outputFormat) {
        if (outputFormat == null) {
            outputFormat = new OutputFormat("text", (String) null, false);
        }
        super.setOutputFormat(outputFormat);
    }

    public void startDocument(String str) throws IOException {
        this._printer.leaveDTD();
        this._started = true;
        serializePreRoot();
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (str3 != null) {
            str2 = str3;
        }
        startElement(str2, null);
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        try {
            ElementState content = content();
            content.inCData = false;
            content.doCData = false;
            printText(cArr, i, i2, true, true);
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer, org.xml.sax.ext.LexicalHandler
    public void comment(char[] cArr, int i, int i2) {
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        if (str3 != null) {
            str2 = str3;
        }
        endElement(str2);
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer, org.xml.sax.DocumentHandler
    public void startElement(String str, AttributeList attributeList) throws SAXException {
        try {
            ElementState elementState = getElementState();
            if (isDocumentState() && !this._started) {
                startDocument(str);
            }
            enterElementState(null, null, str, elementState.preserveSpace);
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }
}
