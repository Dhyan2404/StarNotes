package org.apache.poi.xslf.model;

import javax.xml.namespace.QName;
import javax.xml.stream.XMLStreamReader;
import org.apache.poi.ooxml.util.XPathHelper;
import org.apache.poi.xslf.model.TextBodyPropertyFetcher;
import org.apache.poi.xslf.usermodel.XSLFShape;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextBodyProperties;

/* loaded from: classes13.dex */
public abstract class TextBodyPropertyFetcher<T> extends PropertyFetcher<T> {
    private static final QName[] TX_BODY = {new QName(XSSFRelation.NS_PRESENTATIONML, "txBody")};
    private static final QName[] BODY_PR = {new QName(XSSFRelation.NS_DRAWINGML, "bodyPr")};

    /* JADX INFO: Access modifiers changed from: private */
    public static CTTextBodyProperties parse(XMLStreamReader xMLStreamReader) throws XmlException {
        CTTextBody parse = CTTextBody.Factory.parse(xMLStreamReader);
        if (parse != null) {
            return parse.getBodyPr();
        }
        return null;
    }

    @Override // org.apache.poi.xslf.model.PropertyFetcher
    public boolean fetch(XSLFShape xSLFShape) {
        try {
            CTTextBodyProperties cTTextBodyProperties = (CTTextBodyProperties) XPathHelper.selectProperty(xSLFShape.getXmlObject(), CTTextBodyProperties.class, new XSLFShape.ReparseFactory() { // from class: com.sunia.HTREnginev2.nbn
                @Override // org.apache.poi.xslf.usermodel.XSLFShape.ReparseFactory
                public final XmlObject parse(XMLStreamReader xMLStreamReader) {
                    CTTextBodyProperties parse;
                    parse = TextBodyPropertyFetcher.parse(xMLStreamReader);
                    return parse;
                }
            }, TX_BODY, BODY_PR);
            if (cTTextBodyProperties != null) {
                return fetch(cTTextBodyProperties);
            }
            return false;
        } catch (XmlException unused) {
            return false;
        }
    }

    public abstract boolean fetch(CTTextBodyProperties cTTextBodyProperties);
}
