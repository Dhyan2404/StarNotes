package org.apache.poi.convert.xwpf;

import org.apache.poi.convert.AbstractWordConverter;
import org.apache.poi.convert.xwpf.handler.XWPFContext;
import org.apache.poi.convert.xwpf.handler.XWPFDocumentHandler;
import org.apache.poi.ooxml.POIXMLDocument;
import org.apache.poi.picture.PicturesManager;
import org.apache.poi.xwpf.usermodel.XWPFDocument;

/* loaded from: classes12.dex */
public class XWPFWordToHtmlConverter extends AbstractWordConverter {
    private XWPFContext context;
    private XWPFDocument document;
    private XWPFDocumentHandler documentHandler;

    public XWPFWordToHtmlConverter(XWPFDocument xWPFDocument) {
        this.document = xWPFDocument;
        this.metaData.readProperties((POIXMLDocument) xWPFDocument);
        XWPFContext xWPFContext = new XWPFContext(xWPFDocument, this.documentFacade);
        this.context = xWPFContext;
        XWPFDocumentHandler xWPFDocumentHandler = new XWPFDocumentHandler(xWPFContext);
        this.documentHandler = xWPFDocumentHandler;
        xWPFDocumentHandler.setDocumentParaSize(this.documentParaSize);
    }

    @Override // org.apache.poi.convert.AbstractWordConverter
    public void closeImpl() {
        this.documentHandler.close();
    }

    @Override // org.apache.poi.convert.WordConverter
    public void convert() {
        this.documentHandler.handleDocument();
        this.documentList.addAll(this.documentHandler.getDocumentList());
        reconstructDocumentLink();
        addHtmlDocumentStyle(this.documentFacade.buildStylesheet());
    }

    @Override // org.apache.poi.convert.AbstractConverter, org.apache.poi.convert.WordConverter
    public void setAbort(boolean z) {
        super.setAbort(z);
        this.documentHandler.setAbort(z);
    }

    @Override // org.apache.poi.convert.AbstractConverter, org.apache.poi.convert.WordConverter
    public void setDocumentParaSize(int i) {
        super.setDocumentParaSize(i);
        this.documentHandler.setDocumentParaSize(i);
    }

    @Override // org.apache.poi.convert.AbstractConverter, org.apache.poi.convert.WordConverter
    public void setPicturesManager(PicturesManager<?> picturesManager) {
        super.setPicturesManager(picturesManager);
        this.context.setPicturesManager(picturesManager);
    }
}
