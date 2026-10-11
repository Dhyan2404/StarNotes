package org.apache.poi.xwpf.usermodel;

import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTComment;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRow;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTc;

/* loaded from: classes13.dex */
public class XWPFComment implements IBody, Closeable {
    protected XWPFComments comments;
    protected CTComment ctComment;
    protected XWPFDocument document;
    private List<XWPFParagraph> paragraphs = new ArrayList();
    private List<XWPFTable> tables = new ArrayList();
    private List<IBodyElement> bodyElements = new ArrayList();

    public XWPFComment(CTComment cTComment, XWPFComments xWPFComments) {
        this.comments = xWPFComments;
        this.ctComment = cTComment;
        this.document = xWPFComments.getXWPFDocument();
        readDocument();
    }

    private boolean isCursorInCmt(XmlCursor xmlCursor) {
        XmlCursor newCursor = xmlCursor.newCursor();
        try {
            newCursor.toParent();
            boolean z = newCursor.getObject() == this.ctComment;
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

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        XmlBeanUtils.freeMemory(this.ctComment);
        Iterator<IBodyElement> it2 = this.bodyElements.iterator();
        while (it2.hasNext()) {
            XmlBeanUtils.close(it2.next());
        }
        Iterator<XWPFTable> it3 = this.tables.iterator();
        while (it3.hasNext()) {
            XmlBeanUtils.close(it3.next());
        }
        this.bodyElements.clear();
        this.paragraphs.clear();
        this.tables.clear();
        this.ctComment = null;
        this.document = null;
        this.comments = null;
    }

    public XWPFParagraph createParagraph() {
        XWPFParagraph xWPFParagraph = new XWPFParagraph(this.ctComment.addNewP(), this);
        this.paragraphs.add(xWPFParagraph);
        this.bodyElements.add(xWPFParagraph);
        return xWPFParagraph;
    }

    public XWPFTable createTable(int i, int i2) {
        XWPFTable xWPFTable = new XWPFTable(this.ctComment.addNewTbl(), this, i, i2);
        this.tables.add(xWPFTable);
        this.bodyElements.add(xWPFTable);
        return xWPFTable;
    }

    public String getAuthor() {
        return this.ctComment.getAuthor();
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public List<IBodyElement> getBodyElements() {
        return Collections.unmodifiableList(this.bodyElements);
    }

    public XWPFComments getComments() {
        return this.comments;
    }

    public CTComment getCtComment() {
        return this.ctComment;
    }

    public Calendar getDate() {
        return this.ctComment.getDate();
    }

    public String getId() {
        return this.ctComment.getId().toString();
    }

    public String getInitials() {
        return this.ctComment.getInitials();
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
        return Collections.unmodifiableList(this.paragraphs);
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public POIXMLDocumentPart getPart() {
        return this.comments;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public BodyType getPartType() {
        return BodyType.COMMENT;
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
            if ((object2 instanceof CTTbl) && (table = getTable((CTTbl) object2)) != null) {
                return table.getRow(cTRow).getTableCell(cTTc);
            }
            return null;
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
        return Collections.unmodifiableList(this.tables);
    }

    public String getText() {
        StringBuilder sb = new StringBuilder();
        for (XWPFParagraph xWPFParagraph : this.paragraphs) {
            if (sb.length() > 0) {
                sb.append("\n");
            }
            sb.append(xWPFParagraph.getText());
        }
        return sb.toString();
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFDocument getXWPFDocument() {
        return this.document;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFParagraph insertNewParagraph(XmlCursor xmlCursor) {
        boolean z;
        XmlObject xmlObject = null;
        if (!isCursorInCmt(xmlCursor)) {
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
        if (!isCursorInCmt(xmlCursor)) {
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
        newCursor.close();
        this.bodyElements.add(i, xWPFTable);
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
        Iterator<CTTbl> it2 = this.ctComment.getTblList().iterator();
        int i2 = 0;
        while (it2.hasNext() && it2.next() != xWPFTable.getCTTbl()) {
            i2++;
        }
        this.tables.add(i2, xWPFTable);
    }

    public void readDocument() {
        if (XmlBeanUtils.parseDocument()) {
            XmlCursor newCursor = this.ctComment.newCursor();
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

    public void removeParagraph(XWPFParagraph xWPFParagraph) {
        if (this.paragraphs.contains(xWPFParagraph)) {
            XmlCursor newCursor = xWPFParagraph.getCTP().newCursor();
            try {
                newCursor.removeXml();
                newCursor.close();
                this.paragraphs.remove(xWPFParagraph);
                this.bodyElements.remove(xWPFParagraph);
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

    public void removeTable(XWPFTable xWPFTable) {
        if (this.tables.contains(xWPFTable)) {
            XmlCursor newCursor = xWPFTable.getCTTbl().newCursor();
            try {
                newCursor.removeXml();
                newCursor.close();
                this.tables.remove(xWPFTable);
                this.bodyElements.remove(xWPFTable);
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

    public void setAuthor(String str) {
        this.ctComment.setAuthor(str);
    }

    public void setDate(Calendar calendar) {
        this.ctComment.setDate(calendar);
    }

    public void setInitials(String str) {
        this.ctComment.setInitials(str);
    }
}
