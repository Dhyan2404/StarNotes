package org.apache.poi.xwpf.usermodel;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.common.usermodel.PictureType;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.POIXMLRelation;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHdrFtr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRow;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTc;

/* loaded from: classes13.dex */
public abstract class XWPFHeaderFooter extends POIXMLDocumentPart implements IBody, Closeable {
    List<IBodyElement> bodyElements;
    XWPFDocument document;
    CTHdrFtr headerFooter;
    List<XWPFParagraph> paragraphs;
    List<XWPFPictureData> pictures;
    List<XWPFTable> tables;

    public XWPFHeaderFooter(XWPFDocument xWPFDocument, CTHdrFtr cTHdrFtr) {
        this.paragraphs = new ArrayList();
        this.tables = new ArrayList();
        this.pictures = new ArrayList();
        this.bodyElements = new ArrayList();
        xWPFDocument.getClass();
        this.document = xWPFDocument;
        this.headerFooter = cTHdrFtr;
        readHdrFtr();
    }

    private boolean isCursorInHdrF(XmlCursor xmlCursor) {
        XmlCursor newCursor = xmlCursor.newCursor();
        try {
            newCursor.toParent();
            boolean z = newCursor.getObject() == this.headerFooter;
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

    @Internal
    public CTHdrFtr _getHdrFtr() {
        return this.headerFooter;
    }

    public String addPictureData(byte[] bArr, int i) throws InvalidFormatException {
        return addPictureData(bArr, PictureType.findByOoxmlId(i));
    }

    public void clearHeaderFooter() {
        XmlCursor newCursor = this.headerFooter.newCursor();
        try {
            newCursor.removeXmlContents();
            newCursor.close();
            this.paragraphs.clear();
            this.tables.clear();
            this.bodyElements.clear();
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
        XmlBeanUtils.freeMemory(this.headerFooter);
        this.headerFooter = null;
        Iterator<IBodyElement> it2 = this.bodyElements.iterator();
        while (it2.hasNext()) {
            XmlBeanUtils.close(it2.next());
        }
        this.bodyElements.clear();
        this.paragraphs.clear();
        this.pictures.clear();
    }

    public XWPFParagraph createParagraph() {
        XWPFParagraph xWPFParagraph = new XWPFParagraph(this.headerFooter.addNewP(), this);
        this.paragraphs.add(xWPFParagraph);
        this.bodyElements.add(xWPFParagraph);
        return xWPFParagraph;
    }

    public XWPFTable createTable(int i, int i2) {
        XWPFTable xWPFTable = new XWPFTable(this.headerFooter.addNewTbl(), this, i, i2);
        this.tables.add(xWPFTable);
        this.bodyElements.add(xWPFTable);
        return xWPFTable;
    }

    public List<XWPFPictureData> getAllPackagePictures() {
        return this.document.getAllPackagePictures();
    }

    public List<XWPFPictureData> getAllPictures() {
        return Collections.unmodifiableList(this.pictures);
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public List<IBodyElement> getBodyElements() {
        return Collections.unmodifiableList(this.bodyElements);
    }

    public List<XWPFParagraph> getListParagraph() {
        return this.paragraphs;
    }

    public POIXMLDocumentPart getOwner() {
        return this;
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
        return this;
    }

    public XWPFPictureData getPictureDataByID(String str) {
        POIXMLDocumentPart relationById = getRelationById(str);
        if (relationById instanceof XWPFPictureData) {
            return (XWPFPictureData) relationById;
        }
        return null;
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
    public List<XWPFTable> getTables() throws ArrayIndexOutOfBoundsException {
        return Collections.unmodifiableList(this.tables);
    }

    public String getText() {
        String text;
        StringBuilder sb = new StringBuilder(64);
        for (XWPFParagraph xWPFParagraph : this.paragraphs) {
            if (!xWPFParagraph.isEmpty() && (text = xWPFParagraph.getText()) != null && text.length() > 0) {
                sb.append(text);
                sb.append('\n');
            }
        }
        Iterator<XWPFTable> it2 = this.tables.iterator();
        while (it2.hasNext()) {
            String text2 = it2.next().getText();
            if (text2 != null && text2.length() > 0) {
                sb.append(text2);
                sb.append('\n');
            }
        }
        for (IBodyElement iBodyElement : getBodyElements()) {
            if (iBodyElement instanceof XWPFSDT) {
                sb.append(((XWPFSDT) iBodyElement).getContent().getText());
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFDocument getXWPFDocument() {
        XWPFDocument xWPFDocument = this.document;
        return xWPFDocument != null ? xWPFDocument : (XWPFDocument) getParent();
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFParagraph insertNewParagraph(XmlCursor xmlCursor) {
        boolean z;
        XmlObject xmlObject = null;
        if (!isCursorInHdrF(xmlCursor)) {
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
        if (!isCursorInHdrF(xmlCursor)) {
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
        CTTbl[] tblArray = this.headerFooter.getTblArray();
        int length = tblArray.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length && tblArray[i3] != xWPFTable.getCTTbl(); i3++) {
            i2++;
        }
        this.tables.add(i2, xWPFTable);
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void onDocumentRead() throws IOException {
        for (POIXMLDocumentPart pOIXMLDocumentPart : getRelations()) {
            if (pOIXMLDocumentPart instanceof XWPFPictureData) {
                XWPFPictureData xWPFPictureData = (XWPFPictureData) pOIXMLDocumentPart;
                this.pictures.add(xWPFPictureData);
                this.document.registerPackagePictureData(xWPFPictureData);
            }
        }
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void prepareForCommit() {
        if (this.bodyElements.isEmpty()) {
            createParagraph();
        }
        Iterator<XWPFTable> it2 = this.tables.iterator();
        while (it2.hasNext()) {
            Iterator<XWPFTableRow> it3 = it2.next().tableRows.iterator();
            while (it3.hasNext()) {
                for (XWPFTableCell xWPFTableCell : it3.next().getTableCells()) {
                    if (xWPFTableCell.getBodyElements().isEmpty()) {
                        xWPFTableCell.addParagraph();
                    }
                }
            }
        }
        super.prepareForCommit();
    }

    public void readHdrFtr() {
        this.bodyElements = new ArrayList();
        this.paragraphs = new ArrayList();
        this.tables = new ArrayList();
        XmlCursor newCursor = this.headerFooter.newCursor();
        try {
            newCursor.selectPath("./*");
            while (newCursor.toNextSelection()) {
                XmlObject object = newCursor.getObject();
                if (object instanceof CTP) {
                    XWPFParagraph xWPFParagraph = new XWPFParagraph((CTP) object, this);
                    this.paragraphs.add(xWPFParagraph);
                    this.bodyElements.add(xWPFParagraph);
                }
                if (object instanceof CTTbl) {
                    XWPFTable xWPFTable = new XWPFTable((CTTbl) object, this);
                    this.tables.add(xWPFTable);
                    this.bodyElements.add(xWPFTable);
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

    public void setHeaderFooter(CTHdrFtr cTHdrFtr) {
        this.headerFooter = cTHdrFtr;
        readHdrFtr();
    }

    public void setXWPFDocument(XWPFDocument xWPFDocument) {
        this.document = xWPFDocument;
    }

    public String addPictureData(byte[] bArr, PictureType pictureType) throws InvalidFormatException {
        if (pictureType != null) {
            XWPFPictureData findPackagePictureData = this.document.findPackagePictureData(bArr);
            POIXMLRelation pOIXMLRelation = XWPFPictureData.RELATIONS[pictureType.ooxmlId];
            if (findPackagePictureData == null) {
                XWPFPictureData xWPFPictureData = (XWPFPictureData) createRelationship(pOIXMLRelation, XWPFFactory.getInstance(), this.document.getNextPicNameNumber(pictureType));
                try {
                    OutputStream outputStream = xWPFPictureData.getPackagePart().getOutputStream();
                    try {
                        outputStream.write(bArr);
                        outputStream.close();
                        this.document.registerPackagePictureData(xWPFPictureData);
                        this.pictures.add(xWPFPictureData);
                        return getRelationId(xWPFPictureData);
                    } finally {
                    }
                } catch (IOException e) {
                    throw new POIXMLException(e);
                }
            } else {
                if (!getRelations().contains(findPackagePictureData)) {
                    POIXMLDocumentPart.RelationPart addRelation = addRelation(null, XWPFRelation.IMAGES, findPackagePictureData);
                    this.pictures.add(findPackagePictureData);
                    return addRelation.getRelationship().getId();
                }
                return getRelationId(findPackagePictureData);
            }
        } else {
            throw new InvalidFormatException("pictureType is not supported");
        }
    }

    public XWPFHeaderFooter() {
        this.paragraphs = new ArrayList();
        this.tables = new ArrayList();
        this.pictures = new ArrayList();
        this.bodyElements = new ArrayList();
        this.headerFooter = CTHdrFtr.Factory.newInstance();
        readHdrFtr();
    }

    public XWPFHeaderFooter(POIXMLDocumentPart pOIXMLDocumentPart, PackagePart packagePart) {
        super(pOIXMLDocumentPart, packagePart);
        this.paragraphs = new ArrayList();
        this.tables = new ArrayList();
        this.pictures = new ArrayList();
        this.bodyElements = new ArrayList();
        XWPFDocument xWPFDocument = (XWPFDocument) getParent();
        this.document = xWPFDocument;
        xWPFDocument.getClass();
    }

    public String addPictureData(InputStream inputStream, int i) throws InvalidFormatException, IOException {
        return addPictureData(IOUtils.toByteArrayWithMaxLength(inputStream, XWPFPictureData.getMaxImageSize()), i);
    }

    public String addPictureData(InputStream inputStream, PictureType pictureType) throws InvalidFormatException, IOException {
        return addPictureData(IOUtils.toByteArrayWithMaxLength(inputStream, XWPFPictureData.getMaxImageSize()), pictureType);
    }
}
