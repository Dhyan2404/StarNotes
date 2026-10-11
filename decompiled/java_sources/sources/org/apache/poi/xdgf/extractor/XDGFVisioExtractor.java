package org.apache.poi.xdgf.extractor;

import java.io.IOException;
import java.util.Iterator;
import org.apache.poi.ooxml.extractor.POIXMLTextExtractor;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.xdgf.usermodel.XDGFPage;
import org.apache.poi.xdgf.usermodel.XmlVisioDocument;
import org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor;

/* loaded from: classes13.dex */
public class XDGFVisioExtractor implements POIXMLTextExtractor {
    private boolean doCloseFilesystem;
    protected final XmlVisioDocument document;

    public XDGFVisioExtractor(XmlVisioDocument xmlVisioDocument) {
        this.doCloseFilesystem = true;
        this.document = xmlVisioDocument;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public String getText() {
        ShapeTextVisitor shapeTextVisitor = new ShapeTextVisitor();
        Iterator<XDGFPage> it2 = this.document.getPages().iterator();
        while (it2.hasNext()) {
            it2.next().getContent().visitShapes(shapeTextVisitor);
        }
        return shapeTextVisitor.getText();
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public boolean isCloseFilesystem() {
        return this.doCloseFilesystem;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public void setCloseFilesystem(boolean z) {
        this.doCloseFilesystem = z;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public XmlVisioDocument getFilesystem() {
        return this.document;
    }

    @Override // org.apache.poi.ooxml.extractor.POIXMLTextExtractor, org.apache.poi.extractor.POITextExtractor
    public XmlVisioDocument getDocument() {
        return this.document;
    }

    public XDGFVisioExtractor(OPCPackage oPCPackage) throws IOException {
        this(new XmlVisioDocument(oPCPackage));
    }
}
