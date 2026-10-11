package org.apache.poi.xwpf.usermodel;

import java.io.Closeable;
import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Spliterator;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.util.Internal;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRow;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTc;

/* loaded from: classes13.dex */
public abstract class XWPFAbstractFootnoteEndnote implements Iterable<XWPFParagraph>, IBody, Closeable {
    protected CTFtnEdn ctFtnEdn;
    protected XWPFDocument document;
    protected XWPFAbstractFootnotesEndnotes footnotes;
    private final List<XWPFParagraph> paragraphs = new ArrayList();
    private final List<XWPFTable> tables = new ArrayList();
    private final List<XWPFPictureData> pictures = new ArrayList();
    private final List<IBodyElement> bodyElements = new ArrayList();

    public XWPFAbstractFootnoteEndnote() {
    }

    private boolean isCursorInFtn(XmlCursor xmlCursor) {
        XmlCursor newCursor = xmlCursor.newCursor();
        try {
            newCursor.toParent();
            boolean z = newCursor.getObject() == this.ctFtnEdn;
            newCursor.close();
            return z;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public XWPFParagraph addNewParagraph(CTP ctp) {
        CTP addNewP = this.ctFtnEdn.addNewP();
        addNewP.set(ctp);
        XWPFParagraph xWPFParagraph = new XWPFParagraph(addNewP, this);
        this.paragraphs.add(xWPFParagraph);
        return xWPFParagraph;
    }

    public XWPFTable addNewTbl(CTTbl cTTbl) {
        CTTbl addNewTbl = this.ctFtnEdn.addNewTbl();
        addNewTbl.set(cTTbl);
        XWPFTable xWPFTable = new XWPFTable(addNewTbl, this);
        this.tables.add(xWPFTable);
        return xWPFTable;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        XmlBeanUtils.freeMemory(this.ctFtnEdn);
        this.ctFtnEdn = null;
        Iterator<IBodyElement> it2 = this.bodyElements.iterator();
        while (it2.hasNext()) {
            XmlBeanUtils.close(it2.next());
        }
        this.bodyElements.clear();
        this.paragraphs.clear();
        this.pictures.clear();
    }

    public XWPFParagraph createParagraph() {
        XWPFParagraph xWPFParagraph = new XWPFParagraph(this.ctFtnEdn.addNewP(), this);
        this.paragraphs.add(xWPFParagraph);
        this.bodyElements.add(xWPFParagraph);
        if (xWPFParagraph.equals(getParagraphs().get(0))) {
            ensureFootnoteRef(xWPFParagraph);
        }
        return xWPFParagraph;
    }

    public XWPFTable createTable() {
        XWPFTable xWPFTable = new XWPFTable(this.ctFtnEdn.addNewTbl(), this);
        if (this.bodyElements.isEmpty()) {
            ensureFootnoteRef(createParagraph());
        }
        this.bodyElements.add(xWPFTable);
        this.tables.add(xWPFTable);
        return xWPFTable;
    }

    public abstract void ensureFootnoteRef(XWPFParagraph xWPFParagraph);

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public List<IBodyElement> getBodyElements() {
        return this.bodyElements;
    }

    public CTFtnEdn getCTFtnEdn() {
        return this.ctFtnEdn;
    }

    public BigInteger getId() {
        return this.ctFtnEdn.getId();
    }

    public POIXMLDocumentPart getOwner() {
        return this.footnotes;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFParagraph getParagraph(CTP ctp) {
        for (XWPFParagraph xWPFParagraph : this.paragraphs) {
            if (xWPFParagraph.getCTP().equals(ctp)) {
                return xWPFParagraph;
            }
        }
        return null;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFParagraph getParagraphArray(int i) {
        if (i < 0 || i >= this.paragraphs.size()) {
            return null;
        }
        return this.paragraphs.get(i);
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public List<XWPFParagraph> getParagraphs() {
        return this.paragraphs;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public POIXMLDocumentPart getPart() {
        return this.footnotes;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public BodyType getPartType() {
        return BodyType.FOOTNOTE;
    }

    public List<XWPFPictureData> getPictures() {
        return this.pictures;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFTable getTable(CTTbl cTTbl) {
        XWPFTable next;
        Iterator<XWPFTable> it2 = this.tables.iterator();
        while (it2.hasNext() && (next = it2.next()) != null) {
            if (next.getCTTbl().equals(cTTbl)) {
                return next;
            }
        }
        return null;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFTable getTableArray(int i) {
        if (i < 0 || i >= this.tables.size()) {
            return null;
        }
        return this.tables.get(i);
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFTableCell getTableCell(CTTc cTTc) {
        XWPFTable table;
        XWPFTableRow row;
        XmlCursor newCursor = cTTc.newCursor();
        try {
            newCursor.toParent();
            XmlObject object = newCursor.getObject();
            if (!(object instanceof CTRow)) {
                newCursor.close();
                return null;
            }
            CTRow cTRow = (CTRow) object;
            newCursor.toParent();
            XmlObject object2 = newCursor.getObject();
            newCursor.close();
            if (!(object2 instanceof CTTbl) || (table = getTable((CTTbl) object2)) == null || (row = table.getRow(cTRow)) == null) {
                return null;
            }
            return row.getTableCell(cTTc);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public List<XWPFTable> getTables() {
        return this.tables;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFDocument getXWPFDocument() {
        return this.document;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFParagraph insertNewParagraph(XmlCursor xmlCursor) {
        boolean z;
        XmlObject xmlObject = null;
        if (!isCursorInFtn(xmlCursor)) {
            return null;
        }
        xmlCursor.beginElement("p", CTP.type.getName().getNamespaceURI());
        xmlCursor.toParent();
        CTP ctp = (CTP) xmlCursor.getObject();
        XWPFParagraph xWPFParagraph = new XWPFParagraph(ctp, this);
        while (true) {
            z = xmlObject instanceof CTP;
            if (z || !xmlCursor.toPrevSibling()) {
                break;
            }
            xmlObject = xmlCursor.getObject();
        }
        int i = 0;
        if (!z || xmlObject == ctp) {
            this.paragraphs.add(0, xWPFParagraph);
        } else {
            this.paragraphs.add(this.paragraphs.indexOf(getParagraph((CTP) xmlObject)) + 1, xWPFParagraph);
        }
        XmlCursor newCursor = ctp.newCursor();
        try {
            xmlCursor.toCursor(newCursor);
            if (newCursor != null) {
                newCursor.close();
            }
            while (xmlCursor.toPrevSibling()) {
                XmlObject object = xmlCursor.getObject();
                if ((object instanceof CTP) || (object instanceof CTTbl)) {
                    i++;
                }
            }
            this.bodyElements.add(i, xWPFParagraph);
            newCursor = ctp.newCursor();
            try {
                xmlCursor.toCursor(newCursor);
                xmlCursor.toEndToken();
                if (newCursor != null) {
                    newCursor.close();
                }
                return xWPFParagraph;
            } finally {
            }
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFTable insertNewTbl(XmlCursor xmlCursor) {
        boolean z;
        XmlObject xmlObject = null;
        if (!isCursorInFtn(xmlCursor)) {
            return null;
        }
        xmlCursor.beginElement("tbl", CTTbl.type.getName().getNamespaceURI());
        xmlCursor.toParent();
        CTTbl cTTbl = (CTTbl) xmlCursor.getObject();
        XWPFTable xWPFTable = new XWPFTable(cTTbl, this);
        xmlCursor.removeXmlContents();
        while (true) {
            z = xmlObject instanceof CTTbl;
            if (z || !xmlCursor.toPrevSibling()) {
                break;
            }
            xmlObject = xmlCursor.getObject();
        }
        int i = 0;
        if (z) {
            this.tables.add(this.tables.indexOf(getTable((CTTbl) xmlObject)) + 1, xWPFTable);
        } else {
            this.tables.add(0, xWPFTable);
        }
        XmlCursor newCursor = cTTbl.newCursor();
        while (newCursor.toPrevSibling()) {
            try {
                XmlObject object = newCursor.getObject();
                if ((object instanceof CTP) || (object instanceof CTTbl)) {
                    i++;
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                }
            }
        }
        this.bodyElements.add(i, xWPFTable);
        newCursor.close();
        newCursor = cTTbl.newCursor();
        try {
            xmlCursor.toCursor(newCursor);
            xmlCursor.toEndToken();
            if (newCursor != null) {
                newCursor.close();
            }
            return xWPFTable;
        } finally {
        }
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public void insertTable(int i, XWPFTable xWPFTable) {
        this.bodyElements.add(i, xWPFTable);
        Iterator<CTTbl> it2 = this.ctFtnEdn.getTblList().iterator();
        int i2 = 0;
        while (it2.hasNext() && it2.next() != xWPFTable.getCTTbl()) {
            i2++;
        }
        this.tables.add(i2, xWPFTable);
    }

    @Override // java.lang.Iterable
    public Iterator<XWPFParagraph> iterator() {
        return this.paragraphs.iterator();
    }

    public void readDocument() {
        if (XmlBeanUtils.parseDocument()) {
            XmlCursor newCursor = this.ctFtnEdn.newCursor();
            try {
                newCursor.selectPath("./*");
                while (newCursor.toNextSelection()) {
                    XmlObject object = newCursor.getObject();
                    if (object instanceof CTP) {
                        XWPFParagraph xWPFParagraph = new XWPFParagraph((CTP) object, this);
                        this.bodyElements.add(xWPFParagraph);
                        this.paragraphs.add(xWPFParagraph);
                    } else if (object instanceof CTTbl) {
                        XWPFTable xWPFTable = new XWPFTable((CTTbl) object, this);
                        this.bodyElements.add(xWPFTable);
                        this.tables.add(xWPFTable);
                    } else if (object instanceof CTSdtBlock) {
                        this.bodyElements.add(new XWPFSDT((CTSdtBlock) object, this));
                    }
                }
                newCursor.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (newCursor != null) {
                        try {
                            newCursor.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }
    }

    public void setCTFtnEdn(CTFtnEdn cTFtnEdn) {
        this.ctFtnEdn = cTFtnEdn;
    }

    @Override // java.lang.Iterable
    public Spliterator<XWPFParagraph> spliterator() {
        return this.paragraphs.spliterator();
    }

    @Internal
    public XWPFAbstractFootnoteEndnote(XWPFDocument xWPFDocument, CTFtnEdn cTFtnEdn) {
        this.ctFtnEdn = cTFtnEdn;
        this.document = xWPFDocument;
        readDocument();
    }

    public XWPFTable createTable(int i, int i2) {
        XWPFTable xWPFTable = new XWPFTable(this.ctFtnEdn.addNewTbl(), this, i, i2);
        this.bodyElements.add(xWPFTable);
        this.tables.add(xWPFTable);
        return xWPFTable;
    }

    @Internal
    public XWPFAbstractFootnoteEndnote(CTFtnEdn cTFtnEdn, XWPFAbstractFootnotesEndnotes xWPFAbstractFootnotesEndnotes) {
        this.footnotes = xWPFAbstractFootnotesEndnotes;
        this.ctFtnEdn = cTFtnEdn;
        this.document = xWPFAbstractFootnotesEndnotes.getXWPFDocument();
        readDocument();
    }
}
