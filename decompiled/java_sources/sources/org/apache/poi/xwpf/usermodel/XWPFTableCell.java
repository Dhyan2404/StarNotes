package org.apache.poi.xwpf.usermodel;

import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Units;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRow;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTShd;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTc;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTcPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTVerticalJc;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STShd;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STVerticalJc;

/* loaded from: classes13.dex */
public class XWPFTableCell implements IBody, ICell, Closeable {
    private static final EnumMap<XWPFVertAlign, STVerticalJc.Enum> alignMap;
    private static final HashMap<Integer, XWPFVertAlign> stVertAlignTypeMap;
    protected List<IBodyElement> bodyElements;
    private CTTc ctTc;
    protected List<XWPFParagraph> paragraphs;
    protected IBody part;
    private final XWPFTableRow tableRow;
    protected List<XWPFTable> tables;

    /* loaded from: classes13.dex */
    public enum XWPFVertAlign {
        TOP,
        CENTER,
        BOTH,
        BOTTOM
    }

    static {
        EnumMap<XWPFVertAlign, STVerticalJc.Enum> enumMap = new EnumMap<>((Class<XWPFVertAlign>) XWPFVertAlign.class);
        alignMap = enumMap;
        XWPFVertAlign xWPFVertAlign = XWPFVertAlign.TOP;
        enumMap.put((EnumMap<XWPFVertAlign, STVerticalJc.Enum>) xWPFVertAlign, (XWPFVertAlign) STVerticalJc.TOP);
        XWPFVertAlign xWPFVertAlign2 = XWPFVertAlign.CENTER;
        enumMap.put((EnumMap<XWPFVertAlign, STVerticalJc.Enum>) xWPFVertAlign2, (XWPFVertAlign) STVerticalJc.CENTER);
        XWPFVertAlign xWPFVertAlign3 = XWPFVertAlign.BOTH;
        enumMap.put((EnumMap<XWPFVertAlign, STVerticalJc.Enum>) xWPFVertAlign3, (XWPFVertAlign) STVerticalJc.BOTH);
        XWPFVertAlign xWPFVertAlign4 = XWPFVertAlign.BOTTOM;
        enumMap.put((EnumMap<XWPFVertAlign, STVerticalJc.Enum>) xWPFVertAlign4, (XWPFVertAlign) STVerticalJc.BOTTOM);
        HashMap<Integer, XWPFVertAlign> hashMap = new HashMap<>();
        stVertAlignTypeMap = hashMap;
        hashMap.put(1, xWPFVertAlign);
        hashMap.put(2, xWPFVertAlign2);
        hashMap.put(3, xWPFVertAlign3);
        hashMap.put(4, xWPFVertAlign4);
    }

    public XWPFTableCell(CTTc cTTc, XWPFTableRow xWPFTableRow, IBody iBody) {
        this.ctTc = cTTc;
        this.part = iBody;
        this.tableRow = xWPFTableRow;
        readDocument();
    }

    private void appendBodyElementText(StringBuilder sb, IBodyElement iBodyElement, boolean z) {
        if (iBodyElement instanceof XWPFParagraph) {
            sb.append(((XWPFParagraph) iBodyElement).getText());
            if (z) {
                return;
            }
            sb.append('\t');
            return;
        }
        if (!(iBodyElement instanceof XWPFTable)) {
            if (iBodyElement instanceof XWPFSDT) {
                sb.append(((XWPFSDT) iBodyElement).getContent().getText());
                if (z) {
                    return;
                }
                sb.append('\t');
                return;
            }
            return;
        }
        Iterator<XWPFTableRow> it2 = ((XWPFTable) iBodyElement).getRows().iterator();
        while (it2.hasNext()) {
            Iterator<XWPFTableCell> it3 = it2.next().getTableCells().iterator();
            while (it3.hasNext()) {
                List<IBodyElement> bodyElements = it3.next().getBodyElements();
                for (int i = 0; i < bodyElements.size(); i++) {
                    boolean z2 = true;
                    if (i != bodyElements.size() - 1) {
                        z2 = false;
                    }
                    appendBodyElementText(sb, bodyElements.get(i), z2);
                }
            }
        }
        if (z) {
            return;
        }
        sb.append('\n');
    }

    private CTTblWidth getTcWidth() {
        CTTcPr tcPr = getTcPr();
        return tcPr.isSetTcW() ? tcPr.getTcW() : tcPr.addNewTcW();
    }

    private boolean isCursorInTableCell(XmlCursor xmlCursor) {
        XmlCursor newCursor = xmlCursor.newCursor();
        try {
            newCursor.toParent();
            boolean z = newCursor.getObject() == this.ctTc;
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

    public XWPFParagraph addParagraph() {
        XWPFParagraph xWPFParagraph = new XWPFParagraph(this.ctTc.addNewP(), this);
        addParagraph(xWPFParagraph);
        return xWPFParagraph;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        XmlBeanUtils.freeMemory(this.ctTc);
        this.ctTc = null;
        List<IBodyElement> list = this.bodyElements;
        if (list != null) {
            Iterator<IBodyElement> it2 = list.iterator();
            while (it2.hasNext()) {
                XmlBeanUtils.close(it2.next());
            }
            this.bodyElements.clear();
        }
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public List<IBodyElement> getBodyElements() {
        return Collections.unmodifiableList(this.bodyElements);
    }

    @Internal
    public CTTc getCTTc() {
        return this.ctTc;
    }

    public String getColor() {
        CTShd shd;
        CTTcPr tcPr = this.ctTc.getTcPr();
        if (tcPr == null || (shd = tcPr.getShd()) == null || !shd.isSetFill()) {
            return null;
        }
        return shd.xgetFill().getStringValue();
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFParagraph getParagraph(CTP ctp) {
        for (XWPFParagraph xWPFParagraph : this.paragraphs) {
            if (ctp.equals(xWPFParagraph.getCTP())) {
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
        return this.tableRow.getTable().getPart();
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public BodyType getPartType() {
        return BodyType.TABLECELL;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFTable getTable(CTTbl cTTbl) {
        for (int i = 0; i < this.tables.size(); i++) {
            if (getTables().get(i).getCTTbl() == cTTbl) {
                return getTables().get(i);
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

    public XWPFTableRow getTableRow() {
        return this.tableRow;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public List<XWPFTable> getTables() {
        return Collections.unmodifiableList(this.tables);
    }

    public CTTcPr getTcPr() {
        boolean isSetTcPr = this.ctTc.isSetTcPr();
        CTTc cTTc = this.ctTc;
        return isSetTcPr ? cTTc.getTcPr() : cTTc.addNewTcPr();
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

    public String getTextRecursively() {
        StringBuilder sb = new StringBuilder(64);
        for (int i = 0; i < this.bodyElements.size(); i++) {
            boolean z = true;
            if (i != this.bodyElements.size() - 1) {
                z = false;
            }
            appendBodyElementText(sb, this.bodyElements.get(i), z);
        }
        return sb.toString();
    }

    public XWPFVertAlign getVerticalAlignment() {
        CTVerticalJc vAlign;
        CTTcPr tcPr = this.ctTc.getTcPr();
        if (tcPr == null || (vAlign = tcPr.getVAlign()) == null) {
            return null;
        }
        return stVertAlignTypeMap.get(Integer.valueOf(vAlign.getVal().intValue()));
    }

    public int getWidth() {
        return (int) Units.toDXA(POIXMLUnits.parseLength(getTcWidth().xgetW()));
    }

    public double getWidthDecimal() {
        return XWPFTable.getWidthDecimal(getTcWidth());
    }

    public TableWidthType getWidthType() {
        return XWPFTable.getWidthType(getTcWidth());
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFDocument getXWPFDocument() {
        return this.part.getXWPFDocument();
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFParagraph insertNewParagraph(XmlCursor xmlCursor) {
        boolean z;
        XmlObject xmlObject = null;
        if (!isCursorInTableCell(xmlCursor)) {
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
                if (newCursor != null) {
                    newCursor.close();
                }
                xmlCursor.toEndToken();
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
        if (!isCursorInTableCell(xmlCursor)) {
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
        Iterator<CTTbl> it2 = this.ctTc.getTblList().iterator();
        int i2 = 0;
        while (it2.hasNext() && it2.next() != xWPFTable.getCTTbl()) {
            i2++;
        }
        this.tables.add(i2, xWPFTable);
    }

    public void readDocument() {
        if (XmlBeanUtils.parseDocument()) {
            this.bodyElements = new ArrayList();
            this.paragraphs = new ArrayList();
            this.tables = new ArrayList();
            XmlCursor newCursor = this.ctTc.newCursor();
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
                    if (object instanceof CTSdtBlock) {
                        this.bodyElements.add(new XWPFSDT((CTSdtBlock) object, this));
                    }
                    if (object instanceof CTSdtRun) {
                        this.bodyElements.add(new XWPFSDT((CTSdtRun) object, this));
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

    public void removeParagraph(int i) {
        XWPFParagraph xWPFParagraph = this.paragraphs.get(i);
        this.paragraphs.remove(i);
        this.ctTc.removeP(i);
        this.bodyElements.remove(xWPFParagraph);
    }

    public void removeTable(int i) {
        XWPFTable xWPFTable = this.tables.get(i);
        this.tables.remove(i);
        this.ctTc.removeTbl(i);
        this.bodyElements.remove(xWPFTable);
    }

    public void setColor(String str) {
        CTTcPr tcPr = getTcPr();
        CTShd shd = tcPr.isSetShd() ? tcPr.getShd() : tcPr.addNewShd();
        shd.setColor("auto");
        shd.setVal(STShd.CLEAR);
        shd.setFill(str);
    }

    public void setParagraph(XWPFParagraph xWPFParagraph) {
        if (this.ctTc.sizeOfPArray() == 0) {
            this.ctTc.addNewP();
        }
        this.ctTc.setPArray(0, xWPFParagraph.getCTP());
    }

    public void setText(String str) {
        (this.paragraphs.isEmpty() ? addParagraph() : this.paragraphs.get(0)).createRun().setText(str);
    }

    public void setVerticalAlignment(XWPFVertAlign xWPFVertAlign) {
        getTcPr().addNewVAlign().setVal(alignMap.get(xWPFVertAlign));
    }

    public void setWidth(String str) {
        XWPFTable.setWidthValue(str, getTcWidth());
    }

    public void setWidthType(TableWidthType tableWidthType) {
        XWPFTable.setWidthType(tableWidthType, getTcWidth());
    }

    public void addParagraph(XWPFParagraph xWPFParagraph) {
        this.paragraphs.add(xWPFParagraph);
        this.bodyElements.add(xWPFParagraph);
    }
}
