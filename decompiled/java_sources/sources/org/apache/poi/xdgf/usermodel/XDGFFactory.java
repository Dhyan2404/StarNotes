package org.apache.poi.xdgf.usermodel;

import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLFactory;
import org.apache.poi.ooxml.POIXMLRelation;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.xdgf.xml.XDGFXMLDocumentPart;

/* loaded from: classes13.dex */
public class XDGFFactory extends POIXMLFactory {
    private final XDGFDocument document;

    public XDGFFactory(XDGFDocument xDGFDocument) {
        this.document = xDGFDocument;
    }

    @Override // org.apache.poi.ooxml.POIXMLFactory
    public POIXMLDocumentPart createDocumentPart(POIXMLDocumentPart pOIXMLDocumentPart, PackagePart packagePart) {
        POIXMLDocumentPart createDocumentPart = super.createDocumentPart(pOIXMLDocumentPart, packagePart);
        if (createDocumentPart instanceof XDGFXMLDocumentPart) {
            ((XDGFXMLDocumentPart) createDocumentPart).setDocument(this.document);
        }
        return createDocumentPart;
    }

    @Override // org.apache.poi.ooxml.POIXMLFactory
    public POIXMLRelation getDescriptor(String str) {
        return XDGFRelation.getInstance(str);
    }

    @Override // org.apache.poi.ooxml.POIXMLFactory
    public POIXMLDocumentPart newDocumentPart(POIXMLRelation pOIXMLRelation) {
        POIXMLDocumentPart newDocumentPart = super.newDocumentPart(pOIXMLRelation);
        if (newDocumentPart instanceof XDGFXMLDocumentPart) {
            ((XDGFXMLDocumentPart) newDocumentPart).setDocument(this.document);
        }
        return newDocumentPart;
    }
}
