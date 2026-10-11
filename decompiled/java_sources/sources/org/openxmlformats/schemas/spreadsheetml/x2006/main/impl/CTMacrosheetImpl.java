package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.onyx.android.sdk.data.common.data.template.TemplateResourceConstant;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCols;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConditionalFormatting;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomProperties;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomSheetViews;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataConsolidate;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDrawing;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDrawingHF;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHeaderFooter;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTLegacyDrawing;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleObjects;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageBreak;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageSetup;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPhoneticPr;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPrintOptions;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetBackgroundPicture;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetData;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetDimension;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetFormatPr;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetPr;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetProtection;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetViews;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSortState;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTMacrosheetImpl;

/* loaded from: classes15.dex */
public class CTMacrosheetImpl extends XmlComplexContentImpl implements CTMacrosheet {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "sheetPr"), new QName(XSSFRelation.NS_SPREADSHEETML, TypedValues.Custom.S_DIMENSION), new QName(XSSFRelation.NS_SPREADSHEETML, "sheetViews"), new QName(XSSFRelation.NS_SPREADSHEETML, "sheetFormatPr"), new QName(XSSFRelation.NS_SPREADSHEETML, "cols"), new QName(XSSFRelation.NS_SPREADSHEETML, "sheetData"), new QName(XSSFRelation.NS_SPREADSHEETML, "sheetProtection"), new QName(XSSFRelation.NS_SPREADSHEETML, "autoFilter"), new QName(XSSFRelation.NS_SPREADSHEETML, "sortState"), new QName(XSSFRelation.NS_SPREADSHEETML, "dataConsolidate"), new QName(XSSFRelation.NS_SPREADSHEETML, "customSheetViews"), new QName(XSSFRelation.NS_SPREADSHEETML, "phoneticPr"), new QName(XSSFRelation.NS_SPREADSHEETML, "conditionalFormatting"), new QName(XSSFRelation.NS_SPREADSHEETML, "printOptions"), new QName(XSSFRelation.NS_SPREADSHEETML, "pageMargins"), new QName(XSSFRelation.NS_SPREADSHEETML, "pageSetup"), new QName(XSSFRelation.NS_SPREADSHEETML, "headerFooter"), new QName(XSSFRelation.NS_SPREADSHEETML, "rowBreaks"), new QName(XSSFRelation.NS_SPREADSHEETML, "colBreaks"), new QName(XSSFRelation.NS_SPREADSHEETML, "customProperties"), new QName(XSSFRelation.NS_SPREADSHEETML, "drawing"), new QName(XSSFRelation.NS_SPREADSHEETML, "legacyDrawing"), new QName(XSSFRelation.NS_SPREADSHEETML, "legacyDrawingHF"), new QName(XSSFRelation.NS_SPREADSHEETML, "drawingHF"), new QName(XSSFRelation.NS_SPREADSHEETML, TemplateResourceConstant.TYPE_PICTURE), new QName(XSSFRelation.NS_SPREADSHEETML, "oleObjects"), new QName(XSSFRelation.NS_SPREADSHEETML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTMacrosheetImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTAutoFilter addNewAutoFilter() {
        CTAutoFilter cTAutoFilter;
        synchronized (monitor()) {
            check_orphaned();
            cTAutoFilter = (CTAutoFilter) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTAutoFilter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTPageBreak addNewColBreaks() {
        CTPageBreak cTPageBreak;
        synchronized (monitor()) {
            check_orphaned();
            cTPageBreak = (CTPageBreak) get_store().add_element_user(PROPERTY_QNAME[18]);
        }
        return cTPageBreak;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTCols addNewCols() {
        CTCols cTCols;
        synchronized (monitor()) {
            check_orphaned();
            cTCols = (CTCols) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTCols;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTConditionalFormatting addNewConditionalFormatting() {
        CTConditionalFormatting cTConditionalFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTConditionalFormatting = (CTConditionalFormatting) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTConditionalFormatting;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTCustomProperties addNewCustomProperties() {
        CTCustomProperties cTCustomProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomProperties = (CTCustomProperties) get_store().add_element_user(PROPERTY_QNAME[19]);
        }
        return cTCustomProperties;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTCustomSheetViews addNewCustomSheetViews() {
        CTCustomSheetViews cTCustomSheetViews;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomSheetViews = (CTCustomSheetViews) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTCustomSheetViews;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTDataConsolidate addNewDataConsolidate() {
        CTDataConsolidate cTDataConsolidate;
        synchronized (monitor()) {
            check_orphaned();
            cTDataConsolidate = (CTDataConsolidate) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTDataConsolidate;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTSheetDimension addNewDimension() {
        CTSheetDimension cTSheetDimension;
        synchronized (monitor()) {
            check_orphaned();
            cTSheetDimension = (CTSheetDimension) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTSheetDimension;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTDrawing addNewDrawing() {
        CTDrawing cTDrawing;
        synchronized (monitor()) {
            check_orphaned();
            cTDrawing = (CTDrawing) get_store().add_element_user(PROPERTY_QNAME[20]);
        }
        return cTDrawing;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTDrawingHF addNewDrawingHF() {
        CTDrawingHF cTDrawingHF;
        synchronized (monitor()) {
            check_orphaned();
            cTDrawingHF = (CTDrawingHF) get_store().add_element_user(PROPERTY_QNAME[23]);
        }
        return cTDrawingHF;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[26]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTHeaderFooter addNewHeaderFooter() {
        CTHeaderFooter cTHeaderFooter;
        synchronized (monitor()) {
            check_orphaned();
            cTHeaderFooter = (CTHeaderFooter) get_store().add_element_user(PROPERTY_QNAME[16]);
        }
        return cTHeaderFooter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTLegacyDrawing addNewLegacyDrawing() {
        CTLegacyDrawing cTLegacyDrawing;
        synchronized (monitor()) {
            check_orphaned();
            cTLegacyDrawing = (CTLegacyDrawing) get_store().add_element_user(PROPERTY_QNAME[21]);
        }
        return cTLegacyDrawing;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTLegacyDrawing addNewLegacyDrawingHF() {
        CTLegacyDrawing cTLegacyDrawing;
        synchronized (monitor()) {
            check_orphaned();
            cTLegacyDrawing = (CTLegacyDrawing) get_store().add_element_user(PROPERTY_QNAME[22]);
        }
        return cTLegacyDrawing;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTOleObjects addNewOleObjects() {
        CTOleObjects cTOleObjects;
        synchronized (monitor()) {
            check_orphaned();
            cTOleObjects = (CTOleObjects) get_store().add_element_user(PROPERTY_QNAME[25]);
        }
        return cTOleObjects;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTPageMargins addNewPageMargins() {
        CTPageMargins cTPageMargins;
        synchronized (monitor()) {
            check_orphaned();
            cTPageMargins = (CTPageMargins) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return cTPageMargins;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTPageSetup addNewPageSetup() {
        CTPageSetup cTPageSetup;
        synchronized (monitor()) {
            check_orphaned();
            cTPageSetup = (CTPageSetup) get_store().add_element_user(PROPERTY_QNAME[15]);
        }
        return cTPageSetup;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTPhoneticPr addNewPhoneticPr() {
        CTPhoneticPr cTPhoneticPr;
        synchronized (monitor()) {
            check_orphaned();
            cTPhoneticPr = (CTPhoneticPr) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTPhoneticPr;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTSheetBackgroundPicture addNewPicture() {
        CTSheetBackgroundPicture cTSheetBackgroundPicture;
        synchronized (monitor()) {
            check_orphaned();
            cTSheetBackgroundPicture = (CTSheetBackgroundPicture) get_store().add_element_user(PROPERTY_QNAME[24]);
        }
        return cTSheetBackgroundPicture;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTPrintOptions addNewPrintOptions() {
        CTPrintOptions cTPrintOptions;
        synchronized (monitor()) {
            check_orphaned();
            cTPrintOptions = (CTPrintOptions) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTPrintOptions;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTPageBreak addNewRowBreaks() {
        CTPageBreak cTPageBreak;
        synchronized (monitor()) {
            check_orphaned();
            cTPageBreak = (CTPageBreak) get_store().add_element_user(PROPERTY_QNAME[17]);
        }
        return cTPageBreak;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTSheetData addNewSheetData() {
        CTSheetData cTSheetData;
        synchronized (monitor()) {
            check_orphaned();
            cTSheetData = (CTSheetData) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTSheetData;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTSheetFormatPr addNewSheetFormatPr() {
        CTSheetFormatPr cTSheetFormatPr;
        synchronized (monitor()) {
            check_orphaned();
            cTSheetFormatPr = (CTSheetFormatPr) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTSheetFormatPr;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTSheetPr addNewSheetPr() {
        CTSheetPr cTSheetPr;
        synchronized (monitor()) {
            check_orphaned();
            cTSheetPr = (CTSheetPr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSheetPr;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTSheetProtection addNewSheetProtection() {
        CTSheetProtection cTSheetProtection;
        synchronized (monitor()) {
            check_orphaned();
            cTSheetProtection = (CTSheetProtection) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTSheetProtection;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTSheetViews addNewSheetViews() {
        CTSheetViews cTSheetViews;
        synchronized (monitor()) {
            check_orphaned();
            cTSheetViews = (CTSheetViews) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTSheetViews;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTSortState addNewSortState() {
        CTSortState cTSortState;
        synchronized (monitor()) {
            check_orphaned();
            cTSortState = (CTSortState) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTSortState;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTAutoFilter getAutoFilter() {
        CTAutoFilter cTAutoFilter;
        synchronized (monitor()) {
            check_orphaned();
            cTAutoFilter = (CTAutoFilter) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (cTAutoFilter == null) {
                cTAutoFilter = null;
            }
        }
        return cTAutoFilter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTPageBreak getColBreaks() {
        CTPageBreak cTPageBreak;
        synchronized (monitor()) {
            check_orphaned();
            cTPageBreak = (CTPageBreak) get_store().find_element_user(PROPERTY_QNAME[18], 0);
            if (cTPageBreak == null) {
                cTPageBreak = null;
            }
        }
        return cTPageBreak;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTCols[] getColsArray() {
        return (CTCols[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTCols[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public List<CTCols> getColsList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gk5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMacrosheetImpl.this.getColsArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hk5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTMacrosheetImpl.this.setColsArray(((Integer) obj).intValue(), (CTCols) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ik5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMacrosheetImpl.this.insertNewCols(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jk5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTMacrosheetImpl.this.removeCols(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.kk5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTMacrosheetImpl.this.sizeOfColsArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTConditionalFormatting[] getConditionalFormattingArray() {
        return (CTConditionalFormatting[]) getXmlObjectArray(PROPERTY_QNAME[12], new CTConditionalFormatting[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public List<CTConditionalFormatting> getConditionalFormattingList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bk5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMacrosheetImpl.this.getConditionalFormattingArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ck5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTMacrosheetImpl.this.setConditionalFormattingArray(((Integer) obj).intValue(), (CTConditionalFormatting) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dk5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMacrosheetImpl.this.insertNewConditionalFormatting(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ek5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTMacrosheetImpl.this.removeConditionalFormatting(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fk5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTMacrosheetImpl.this.sizeOfConditionalFormattingArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTCustomProperties getCustomProperties() {
        CTCustomProperties cTCustomProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomProperties = (CTCustomProperties) get_store().find_element_user(PROPERTY_QNAME[19], 0);
            if (cTCustomProperties == null) {
                cTCustomProperties = null;
            }
        }
        return cTCustomProperties;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTCustomSheetViews getCustomSheetViews() {
        CTCustomSheetViews cTCustomSheetViews;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomSheetViews = (CTCustomSheetViews) get_store().find_element_user(PROPERTY_QNAME[10], 0);
            if (cTCustomSheetViews == null) {
                cTCustomSheetViews = null;
            }
        }
        return cTCustomSheetViews;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTDataConsolidate getDataConsolidate() {
        CTDataConsolidate cTDataConsolidate;
        synchronized (monitor()) {
            check_orphaned();
            cTDataConsolidate = (CTDataConsolidate) get_store().find_element_user(PROPERTY_QNAME[9], 0);
            if (cTDataConsolidate == null) {
                cTDataConsolidate = null;
            }
        }
        return cTDataConsolidate;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTSheetDimension getDimension() {
        CTSheetDimension cTSheetDimension;
        synchronized (monitor()) {
            check_orphaned();
            cTSheetDimension = (CTSheetDimension) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTSheetDimension == null) {
                cTSheetDimension = null;
            }
        }
        return cTSheetDimension;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTDrawing getDrawing() {
        CTDrawing cTDrawing;
        synchronized (monitor()) {
            check_orphaned();
            cTDrawing = (CTDrawing) get_store().find_element_user(PROPERTY_QNAME[20], 0);
            if (cTDrawing == null) {
                cTDrawing = null;
            }
        }
        return cTDrawing;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTDrawingHF getDrawingHF() {
        CTDrawingHF cTDrawingHF;
        synchronized (monitor()) {
            check_orphaned();
            cTDrawingHF = (CTDrawingHF) get_store().find_element_user(PROPERTY_QNAME[23], 0);
            if (cTDrawingHF == null) {
                cTDrawingHF = null;
            }
        }
        return cTDrawingHF;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[26], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTHeaderFooter getHeaderFooter() {
        CTHeaderFooter cTHeaderFooter;
        synchronized (monitor()) {
            check_orphaned();
            cTHeaderFooter = (CTHeaderFooter) get_store().find_element_user(PROPERTY_QNAME[16], 0);
            if (cTHeaderFooter == null) {
                cTHeaderFooter = null;
            }
        }
        return cTHeaderFooter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTLegacyDrawing getLegacyDrawing() {
        CTLegacyDrawing cTLegacyDrawing;
        synchronized (monitor()) {
            check_orphaned();
            cTLegacyDrawing = (CTLegacyDrawing) get_store().find_element_user(PROPERTY_QNAME[21], 0);
            if (cTLegacyDrawing == null) {
                cTLegacyDrawing = null;
            }
        }
        return cTLegacyDrawing;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTLegacyDrawing getLegacyDrawingHF() {
        CTLegacyDrawing cTLegacyDrawing;
        synchronized (monitor()) {
            check_orphaned();
            cTLegacyDrawing = (CTLegacyDrawing) get_store().find_element_user(PROPERTY_QNAME[22], 0);
            if (cTLegacyDrawing == null) {
                cTLegacyDrawing = null;
            }
        }
        return cTLegacyDrawing;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTOleObjects getOleObjects() {
        CTOleObjects cTOleObjects;
        synchronized (monitor()) {
            check_orphaned();
            cTOleObjects = (CTOleObjects) get_store().find_element_user(PROPERTY_QNAME[25], 0);
            if (cTOleObjects == null) {
                cTOleObjects = null;
            }
        }
        return cTOleObjects;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTPageMargins getPageMargins() {
        CTPageMargins cTPageMargins;
        synchronized (monitor()) {
            check_orphaned();
            cTPageMargins = (CTPageMargins) get_store().find_element_user(PROPERTY_QNAME[14], 0);
            if (cTPageMargins == null) {
                cTPageMargins = null;
            }
        }
        return cTPageMargins;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTPageSetup getPageSetup() {
        CTPageSetup cTPageSetup;
        synchronized (monitor()) {
            check_orphaned();
            cTPageSetup = (CTPageSetup) get_store().find_element_user(PROPERTY_QNAME[15], 0);
            if (cTPageSetup == null) {
                cTPageSetup = null;
            }
        }
        return cTPageSetup;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTPhoneticPr getPhoneticPr() {
        CTPhoneticPr cTPhoneticPr;
        synchronized (monitor()) {
            check_orphaned();
            cTPhoneticPr = (CTPhoneticPr) get_store().find_element_user(PROPERTY_QNAME[11], 0);
            if (cTPhoneticPr == null) {
                cTPhoneticPr = null;
            }
        }
        return cTPhoneticPr;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTSheetBackgroundPicture getPicture() {
        CTSheetBackgroundPicture cTSheetBackgroundPicture;
        synchronized (monitor()) {
            check_orphaned();
            cTSheetBackgroundPicture = (CTSheetBackgroundPicture) get_store().find_element_user(PROPERTY_QNAME[24], 0);
            if (cTSheetBackgroundPicture == null) {
                cTSheetBackgroundPicture = null;
            }
        }
        return cTSheetBackgroundPicture;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTPrintOptions getPrintOptions() {
        CTPrintOptions cTPrintOptions;
        synchronized (monitor()) {
            check_orphaned();
            cTPrintOptions = (CTPrintOptions) get_store().find_element_user(PROPERTY_QNAME[13], 0);
            if (cTPrintOptions == null) {
                cTPrintOptions = null;
            }
        }
        return cTPrintOptions;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTPageBreak getRowBreaks() {
        CTPageBreak cTPageBreak;
        synchronized (monitor()) {
            check_orphaned();
            cTPageBreak = (CTPageBreak) get_store().find_element_user(PROPERTY_QNAME[17], 0);
            if (cTPageBreak == null) {
                cTPageBreak = null;
            }
        }
        return cTPageBreak;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTSheetData getSheetData() {
        CTSheetData cTSheetData;
        synchronized (monitor()) {
            check_orphaned();
            cTSheetData = (CTSheetData) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTSheetData == null) {
                cTSheetData = null;
            }
        }
        return cTSheetData;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTSheetFormatPr getSheetFormatPr() {
        CTSheetFormatPr cTSheetFormatPr;
        synchronized (monitor()) {
            check_orphaned();
            cTSheetFormatPr = (CTSheetFormatPr) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTSheetFormatPr == null) {
                cTSheetFormatPr = null;
            }
        }
        return cTSheetFormatPr;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTSheetPr getSheetPr() {
        CTSheetPr cTSheetPr;
        synchronized (monitor()) {
            check_orphaned();
            cTSheetPr = (CTSheetPr) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTSheetPr == null) {
                cTSheetPr = null;
            }
        }
        return cTSheetPr;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTSheetProtection getSheetProtection() {
        CTSheetProtection cTSheetProtection;
        synchronized (monitor()) {
            check_orphaned();
            cTSheetProtection = (CTSheetProtection) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTSheetProtection == null) {
                cTSheetProtection = null;
            }
        }
        return cTSheetProtection;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTSheetViews getSheetViews() {
        CTSheetViews cTSheetViews;
        synchronized (monitor()) {
            check_orphaned();
            cTSheetViews = (CTSheetViews) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTSheetViews == null) {
                cTSheetViews = null;
            }
        }
        return cTSheetViews;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTSortState getSortState() {
        CTSortState cTSortState;
        synchronized (monitor()) {
            check_orphaned();
            cTSortState = (CTSortState) get_store().find_element_user(PROPERTY_QNAME[8], 0);
            if (cTSortState == null) {
                cTSortState = null;
            }
        }
        return cTSortState;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTCols insertNewCols(int i) {
        CTCols cTCols;
        synchronized (monitor()) {
            check_orphaned();
            cTCols = (CTCols) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTCols;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTConditionalFormatting insertNewConditionalFormatting(int i) {
        CTConditionalFormatting cTConditionalFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTConditionalFormatting = (CTConditionalFormatting) get_store().insert_element_user(PROPERTY_QNAME[12], i);
        }
        return cTConditionalFormatting;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetAutoFilter() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetColBreaks() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[18]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetCustomProperties() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[19]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetCustomSheetViews() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[10]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetDataConsolidate() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[9]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetDimension() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetDrawing() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[20]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetDrawingHF() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[23]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[26]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetHeaderFooter() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[16]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetLegacyDrawing() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[21]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetLegacyDrawingHF() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[22]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetOleObjects() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[25]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetPageMargins() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[14]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetPageSetup() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[15]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetPhoneticPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[11]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetPicture() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[24]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetPrintOptions() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[13]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetRowBreaks() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[17]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetSheetFormatPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetSheetPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetSheetProtection() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetSheetViews() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public boolean isSetSortState() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void removeCols(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void removeConditionalFormatting(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setAutoFilter(CTAutoFilter cTAutoFilter) {
        generatedSetterHelperImpl(cTAutoFilter, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setColBreaks(CTPageBreak cTPageBreak) {
        generatedSetterHelperImpl(cTPageBreak, PROPERTY_QNAME[18], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setColsArray(CTCols[] cTColsArr) {
        check_orphaned();
        arraySetterHelper(cTColsArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setConditionalFormattingArray(CTConditionalFormatting[] cTConditionalFormattingArr) {
        check_orphaned();
        arraySetterHelper(cTConditionalFormattingArr, PROPERTY_QNAME[12]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setCustomProperties(CTCustomProperties cTCustomProperties) {
        generatedSetterHelperImpl(cTCustomProperties, PROPERTY_QNAME[19], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setCustomSheetViews(CTCustomSheetViews cTCustomSheetViews) {
        generatedSetterHelperImpl(cTCustomSheetViews, PROPERTY_QNAME[10], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setDataConsolidate(CTDataConsolidate cTDataConsolidate) {
        generatedSetterHelperImpl(cTDataConsolidate, PROPERTY_QNAME[9], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setDimension(CTSheetDimension cTSheetDimension) {
        generatedSetterHelperImpl(cTSheetDimension, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setDrawing(CTDrawing cTDrawing) {
        generatedSetterHelperImpl(cTDrawing, PROPERTY_QNAME[20], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setDrawingHF(CTDrawingHF cTDrawingHF) {
        generatedSetterHelperImpl(cTDrawingHF, PROPERTY_QNAME[23], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[26], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setHeaderFooter(CTHeaderFooter cTHeaderFooter) {
        generatedSetterHelperImpl(cTHeaderFooter, PROPERTY_QNAME[16], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setLegacyDrawing(CTLegacyDrawing cTLegacyDrawing) {
        generatedSetterHelperImpl(cTLegacyDrawing, PROPERTY_QNAME[21], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setLegacyDrawingHF(CTLegacyDrawing cTLegacyDrawing) {
        generatedSetterHelperImpl(cTLegacyDrawing, PROPERTY_QNAME[22], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setOleObjects(CTOleObjects cTOleObjects) {
        generatedSetterHelperImpl(cTOleObjects, PROPERTY_QNAME[25], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setPageMargins(CTPageMargins cTPageMargins) {
        generatedSetterHelperImpl(cTPageMargins, PROPERTY_QNAME[14], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setPageSetup(CTPageSetup cTPageSetup) {
        generatedSetterHelperImpl(cTPageSetup, PROPERTY_QNAME[15], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setPhoneticPr(CTPhoneticPr cTPhoneticPr) {
        generatedSetterHelperImpl(cTPhoneticPr, PROPERTY_QNAME[11], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setPicture(CTSheetBackgroundPicture cTSheetBackgroundPicture) {
        generatedSetterHelperImpl(cTSheetBackgroundPicture, PROPERTY_QNAME[24], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setPrintOptions(CTPrintOptions cTPrintOptions) {
        generatedSetterHelperImpl(cTPrintOptions, PROPERTY_QNAME[13], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setRowBreaks(CTPageBreak cTPageBreak) {
        generatedSetterHelperImpl(cTPageBreak, PROPERTY_QNAME[17], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setSheetData(CTSheetData cTSheetData) {
        generatedSetterHelperImpl(cTSheetData, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setSheetFormatPr(CTSheetFormatPr cTSheetFormatPr) {
        generatedSetterHelperImpl(cTSheetFormatPr, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setSheetPr(CTSheetPr cTSheetPr) {
        generatedSetterHelperImpl(cTSheetPr, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setSheetProtection(CTSheetProtection cTSheetProtection) {
        generatedSetterHelperImpl(cTSheetProtection, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setSheetViews(CTSheetViews cTSheetViews) {
        generatedSetterHelperImpl(cTSheetViews, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setSortState(CTSortState cTSortState) {
        generatedSetterHelperImpl(cTSortState, PROPERTY_QNAME[8], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public int sizeOfColsArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public int sizeOfConditionalFormattingArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetAutoFilter() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetColBreaks() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[18], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetCustomProperties() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[19], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetCustomSheetViews() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetDataConsolidate() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetDimension() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetDrawing() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[20], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetDrawingHF() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[23], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[26], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetHeaderFooter() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[16], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetLegacyDrawing() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[21], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetLegacyDrawingHF() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[22], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetOleObjects() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[25], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetPageMargins() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetPageSetup() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetPhoneticPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetPicture() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[24], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetPrintOptions() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetRowBreaks() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[17], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetSheetFormatPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetSheetPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetSheetProtection() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetSheetViews() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void unsetSortState() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTCols getColsArray(int i) {
        CTCols cTCols;
        synchronized (monitor()) {
            check_orphaned();
            cTCols = (CTCols) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTCols == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCols;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public CTConditionalFormatting getConditionalFormattingArray(int i) {
        CTConditionalFormatting cTConditionalFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTConditionalFormatting = (CTConditionalFormatting) get_store().find_element_user(PROPERTY_QNAME[12], i);
            if (cTConditionalFormatting == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTConditionalFormatting;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setColsArray(int i, CTCols cTCols) {
        generatedSetterHelperImpl(cTCols, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMacrosheet
    public void setConditionalFormattingArray(int i, CTConditionalFormatting cTConditionalFormatting) {
        generatedSetterHelperImpl(cTConditionalFormatting, PROPERTY_QNAME[12], i, (short) 2);
    }
}
