package org.apache.poi.xwpf.usermodel;

import java.util.ArrayList;
import java.util.List;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackagePart;

/* loaded from: classes13.dex */
public abstract class XWPFAbstractFootnotesEndnotes extends POIXMLDocumentPart {
    protected XWPFDocument document;
    private FootnoteEndnoteIdManager idManager;
    protected List<XWPFAbstractFootnoteEndnote> listFootnote;

    public XWPFAbstractFootnotesEndnotes(OPCPackage oPCPackage) {
        super(oPCPackage);
        this.listFootnote = new ArrayList();
    }

    public XWPFAbstractFootnoteEndnote getFootnoteById(int i) {
        for (XWPFAbstractFootnoteEndnote xWPFAbstractFootnoteEndnote : this.listFootnote) {
            if (xWPFAbstractFootnoteEndnote.getCTFtnEdn().getId().intValue() == i) {
                return xWPFAbstractFootnoteEndnote;
            }
        }
        return null;
    }

    public FootnoteEndnoteIdManager getIdManager() {
        return this.idManager;
    }

    public XWPFDocument getXWPFDocument() {
        XWPFDocument xWPFDocument = this.document;
        return xWPFDocument != null ? xWPFDocument : (XWPFDocument) getParent();
    }

    public void setIdManager(FootnoteEndnoteIdManager footnoteEndnoteIdManager) {
        this.idManager = footnoteEndnoteIdManager;
    }

    public void setXWPFDocument(XWPFDocument xWPFDocument) {
        this.document = xWPFDocument;
    }

    public XWPFAbstractFootnotesEndnotes(OPCPackage oPCPackage, String str) {
        super(oPCPackage, str);
        this.listFootnote = new ArrayList();
    }

    public XWPFAbstractFootnotesEndnotes() {
        this.listFootnote = new ArrayList();
    }

    public XWPFAbstractFootnotesEndnotes(PackagePart packagePart) {
        super(packagePart);
        this.listFootnote = new ArrayList();
    }

    public XWPFAbstractFootnotesEndnotes(POIXMLDocumentPart pOIXMLDocumentPart, PackagePart packagePart) {
        super(pOIXMLDocumentPart, packagePart);
        this.listFootnote = new ArrayList();
    }
}
