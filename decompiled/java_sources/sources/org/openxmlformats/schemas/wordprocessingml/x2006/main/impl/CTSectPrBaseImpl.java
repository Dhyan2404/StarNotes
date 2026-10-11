package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColumns;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocGrid;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnProps;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTLineNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageBorders;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageMar;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageSz;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPaperSource;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRel;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTextDirection;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTVerticalJc;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STLongHexNumber;

/* loaded from: classes16.dex */
public class CTSectPrBaseImpl extends XmlComplexContentImpl implements CTSectPrBase {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "footnotePr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "endnotePr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "type"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "pgSz"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "pgMar"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "paperSrc"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "pgBorders"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "lnNumType"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "pgNumType"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "cols"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "formProt"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "vAlign"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "noEndnote"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "titlePg"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "textDirection"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "bidi"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "rtlGutter"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "docGrid"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "printerSettings"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "rsidRPr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "rsidDel"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "rsidR"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "rsidSect")};
    private static final long serialVersionUID = 1;

    public CTSectPrBaseImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTOnOff addNewBidi() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[15]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTColumns addNewCols() {
        CTColumns cTColumns;
        synchronized (monitor()) {
            check_orphaned();
            cTColumns = (CTColumns) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTColumns;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTDocGrid addNewDocGrid() {
        CTDocGrid cTDocGrid;
        synchronized (monitor()) {
            check_orphaned();
            cTDocGrid = (CTDocGrid) get_store().add_element_user(PROPERTY_QNAME[17]);
        }
        return cTDocGrid;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTEdnProps addNewEndnotePr() {
        CTEdnProps cTEdnProps;
        synchronized (monitor()) {
            check_orphaned();
            cTEdnProps = (CTEdnProps) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTEdnProps;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTFtnProps addNewFootnotePr() {
        CTFtnProps cTFtnProps;
        synchronized (monitor()) {
            check_orphaned();
            cTFtnProps = (CTFtnProps) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTFtnProps;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTOnOff addNewFormProt() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTLineNumber addNewLnNumType() {
        CTLineNumber cTLineNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTLineNumber = (CTLineNumber) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTLineNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTOnOff addNewNoEndnote() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTPaperSource addNewPaperSrc() {
        CTPaperSource cTPaperSource;
        synchronized (monitor()) {
            check_orphaned();
            cTPaperSource = (CTPaperSource) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTPaperSource;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTPageBorders addNewPgBorders() {
        CTPageBorders cTPageBorders;
        synchronized (monitor()) {
            check_orphaned();
            cTPageBorders = (CTPageBorders) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTPageBorders;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTPageMar addNewPgMar() {
        CTPageMar cTPageMar;
        synchronized (monitor()) {
            check_orphaned();
            cTPageMar = (CTPageMar) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTPageMar;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTPageNumber addNewPgNumType() {
        CTPageNumber cTPageNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTPageNumber = (CTPageNumber) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTPageNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTPageSz addNewPgSz() {
        CTPageSz cTPageSz;
        synchronized (monitor()) {
            check_orphaned();
            cTPageSz = (CTPageSz) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTPageSz;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTRel addNewPrinterSettings() {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().add_element_user(PROPERTY_QNAME[18]);
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTOnOff addNewRtlGutter() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[16]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTTextDirection addNewTextDirection() {
        CTTextDirection cTTextDirection;
        synchronized (monitor()) {
            check_orphaned();
            cTTextDirection = (CTTextDirection) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return cTTextDirection;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTOnOff addNewTitlePg() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTSectType addNewType() {
        CTSectType cTSectType;
        synchronized (monitor()) {
            check_orphaned();
            cTSectType = (CTSectType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTSectType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTVerticalJc addNewVAlign() {
        CTVerticalJc cTVerticalJc;
        synchronized (monitor()) {
            check_orphaned();
            cTVerticalJc = (CTVerticalJc) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTVerticalJc;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTOnOff getBidi() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[15], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTColumns getCols() {
        CTColumns cTColumns;
        synchronized (monitor()) {
            check_orphaned();
            cTColumns = (CTColumns) get_store().find_element_user(PROPERTY_QNAME[9], 0);
            if (cTColumns == null) {
                cTColumns = null;
            }
        }
        return cTColumns;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTDocGrid getDocGrid() {
        CTDocGrid cTDocGrid;
        synchronized (monitor()) {
            check_orphaned();
            cTDocGrid = (CTDocGrid) get_store().find_element_user(PROPERTY_QNAME[17], 0);
            if (cTDocGrid == null) {
                cTDocGrid = null;
            }
        }
        return cTDocGrid;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTEdnProps getEndnotePr() {
        CTEdnProps cTEdnProps;
        synchronized (monitor()) {
            check_orphaned();
            cTEdnProps = (CTEdnProps) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTEdnProps == null) {
                cTEdnProps = null;
            }
        }
        return cTEdnProps;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTFtnProps getFootnotePr() {
        CTFtnProps cTFtnProps;
        synchronized (monitor()) {
            check_orphaned();
            cTFtnProps = (CTFtnProps) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTFtnProps == null) {
                cTFtnProps = null;
            }
        }
        return cTFtnProps;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTOnOff getFormProt() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[10], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTLineNumber getLnNumType() {
        CTLineNumber cTLineNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTLineNumber = (CTLineNumber) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (cTLineNumber == null) {
                cTLineNumber = null;
            }
        }
        return cTLineNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTOnOff getNoEndnote() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[12], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTPaperSource getPaperSrc() {
        CTPaperSource cTPaperSource;
        synchronized (monitor()) {
            check_orphaned();
            cTPaperSource = (CTPaperSource) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTPaperSource == null) {
                cTPaperSource = null;
            }
        }
        return cTPaperSource;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTPageBorders getPgBorders() {
        CTPageBorders cTPageBorders;
        synchronized (monitor()) {
            check_orphaned();
            cTPageBorders = (CTPageBorders) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTPageBorders == null) {
                cTPageBorders = null;
            }
        }
        return cTPageBorders;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTPageMar getPgMar() {
        CTPageMar cTPageMar;
        synchronized (monitor()) {
            check_orphaned();
            cTPageMar = (CTPageMar) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTPageMar == null) {
                cTPageMar = null;
            }
        }
        return cTPageMar;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTPageNumber getPgNumType() {
        CTPageNumber cTPageNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTPageNumber = (CTPageNumber) get_store().find_element_user(PROPERTY_QNAME[8], 0);
            if (cTPageNumber == null) {
                cTPageNumber = null;
            }
        }
        return cTPageNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTPageSz getPgSz() {
        CTPageSz cTPageSz;
        synchronized (monitor()) {
            check_orphaned();
            cTPageSz = (CTPageSz) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTPageSz == null) {
                cTPageSz = null;
            }
        }
        return cTPageSz;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTRel getPrinterSettings() {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().find_element_user(PROPERTY_QNAME[18], 0);
            if (cTRel == null) {
                cTRel = null;
            }
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public byte[] getRsidDel() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[20]);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public byte[] getRsidR() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[21]);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public byte[] getRsidRPr() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[19]);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public byte[] getRsidSect() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[22]);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTOnOff getRtlGutter() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[16], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTTextDirection getTextDirection() {
        CTTextDirection cTTextDirection;
        synchronized (monitor()) {
            check_orphaned();
            cTTextDirection = (CTTextDirection) get_store().find_element_user(PROPERTY_QNAME[14], 0);
            if (cTTextDirection == null) {
                cTTextDirection = null;
            }
        }
        return cTTextDirection;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTOnOff getTitlePg() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[13], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTSectType getType() {
        CTSectType cTSectType;
        synchronized (monitor()) {
            check_orphaned();
            cTSectType = (CTSectType) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTSectType == null) {
                cTSectType = null;
            }
        }
        return cTSectType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public CTVerticalJc getVAlign() {
        CTVerticalJc cTVerticalJc;
        synchronized (monitor()) {
            check_orphaned();
            cTVerticalJc = (CTVerticalJc) get_store().find_element_user(PROPERTY_QNAME[11], 0);
            if (cTVerticalJc == null) {
                cTVerticalJc = null;
            }
        }
        return cTVerticalJc;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetBidi() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[15]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetCols() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[9]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetDocGrid() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[17]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetEndnotePr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetFootnotePr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetFormProt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[10]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetLnNumType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetNoEndnote() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[12]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetPaperSrc() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetPgBorders() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetPgMar() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetPgNumType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetPgSz() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetPrinterSettings() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[18]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetRsidDel() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[20]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetRsidR() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[21]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetRsidRPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[19]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetRsidSect() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[22]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetRtlGutter() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[16]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetTextDirection() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[14]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetTitlePg() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[13]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public boolean isSetVAlign() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[11]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setBidi(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[15], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setCols(CTColumns cTColumns) {
        generatedSetterHelperImpl(cTColumns, PROPERTY_QNAME[9], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setDocGrid(CTDocGrid cTDocGrid) {
        generatedSetterHelperImpl(cTDocGrid, PROPERTY_QNAME[17], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setEndnotePr(CTEdnProps cTEdnProps) {
        generatedSetterHelperImpl(cTEdnProps, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setFootnotePr(CTFtnProps cTFtnProps) {
        generatedSetterHelperImpl(cTFtnProps, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setFormProt(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[10], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setLnNumType(CTLineNumber cTLineNumber) {
        generatedSetterHelperImpl(cTLineNumber, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setNoEndnote(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[12], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setPaperSrc(CTPaperSource cTPaperSource) {
        generatedSetterHelperImpl(cTPaperSource, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setPgBorders(CTPageBorders cTPageBorders) {
        generatedSetterHelperImpl(cTPageBorders, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setPgMar(CTPageMar cTPageMar) {
        generatedSetterHelperImpl(cTPageMar, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setPgNumType(CTPageNumber cTPageNumber) {
        generatedSetterHelperImpl(cTPageNumber, PROPERTY_QNAME[8], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setPgSz(CTPageSz cTPageSz) {
        generatedSetterHelperImpl(cTPageSz, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setPrinterSettings(CTRel cTRel) {
        generatedSetterHelperImpl(cTRel, PROPERTY_QNAME[18], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setRsidDel(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[20]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[20]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setRsidR(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[21]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[21]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setRsidRPr(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[19]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[19]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setRsidSect(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[22]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[22]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setRtlGutter(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[16], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setTextDirection(CTTextDirection cTTextDirection) {
        generatedSetterHelperImpl(cTTextDirection, PROPERTY_QNAME[14], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setTitlePg(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[13], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setType(CTSectType cTSectType) {
        generatedSetterHelperImpl(cTSectType, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void setVAlign(CTVerticalJc cTVerticalJc) {
        generatedSetterHelperImpl(cTVerticalJc, PROPERTY_QNAME[11], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetBidi() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetCols() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetDocGrid() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[17], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetEndnotePr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetFootnotePr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetFormProt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetLnNumType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetNoEndnote() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetPaperSrc() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetPgBorders() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetPgMar() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetPgNumType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetPgSz() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetPrinterSettings() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[18], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetRsidDel() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[20]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetRsidR() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[21]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetRsidRPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[19]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetRsidSect() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[22]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetRtlGutter() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[16], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetTextDirection() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetTitlePg() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void unsetVAlign() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public STLongHexNumber xgetRsidDel() {
        STLongHexNumber sTLongHexNumber;
        synchronized (monitor()) {
            check_orphaned();
            sTLongHexNumber = (STLongHexNumber) get_store().find_attribute_user(PROPERTY_QNAME[20]);
        }
        return sTLongHexNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public STLongHexNumber xgetRsidR() {
        STLongHexNumber sTLongHexNumber;
        synchronized (monitor()) {
            check_orphaned();
            sTLongHexNumber = (STLongHexNumber) get_store().find_attribute_user(PROPERTY_QNAME[21]);
        }
        return sTLongHexNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public STLongHexNumber xgetRsidRPr() {
        STLongHexNumber sTLongHexNumber;
        synchronized (monitor()) {
            check_orphaned();
            sTLongHexNumber = (STLongHexNumber) get_store().find_attribute_user(PROPERTY_QNAME[19]);
        }
        return sTLongHexNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public STLongHexNumber xgetRsidSect() {
        STLongHexNumber sTLongHexNumber;
        synchronized (monitor()) {
            check_orphaned();
            sTLongHexNumber = (STLongHexNumber) get_store().find_attribute_user(PROPERTY_QNAME[22]);
        }
        return sTLongHexNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void xsetRsidDel(STLongHexNumber sTLongHexNumber) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STLongHexNumber sTLongHexNumber2 = (STLongHexNumber) typeStore.find_attribute_user(qNameArr[20]);
            if (sTLongHexNumber2 == null) {
                sTLongHexNumber2 = (STLongHexNumber) get_store().add_attribute_user(qNameArr[20]);
            }
            sTLongHexNumber2.set(sTLongHexNumber);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void xsetRsidR(STLongHexNumber sTLongHexNumber) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STLongHexNumber sTLongHexNumber2 = (STLongHexNumber) typeStore.find_attribute_user(qNameArr[21]);
            if (sTLongHexNumber2 == null) {
                sTLongHexNumber2 = (STLongHexNumber) get_store().add_attribute_user(qNameArr[21]);
            }
            sTLongHexNumber2.set(sTLongHexNumber);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void xsetRsidRPr(STLongHexNumber sTLongHexNumber) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STLongHexNumber sTLongHexNumber2 = (STLongHexNumber) typeStore.find_attribute_user(qNameArr[19]);
            if (sTLongHexNumber2 == null) {
                sTLongHexNumber2 = (STLongHexNumber) get_store().add_attribute_user(qNameArr[19]);
            }
            sTLongHexNumber2.set(sTLongHexNumber);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase
    public void xsetRsidSect(STLongHexNumber sTLongHexNumber) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STLongHexNumber sTLongHexNumber2 = (STLongHexNumber) typeStore.find_attribute_user(qNameArr[22]);
            if (sTLongHexNumber2 == null) {
                sTLongHexNumber2 = (STLongHexNumber) get_store().add_attribute_user(qNameArr[22]);
            }
            sTLongHexNumber2.set(sTLongHexNumber);
        }
    }
}
