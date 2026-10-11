package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.ss.util.CellUtil;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCnf;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHeight;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTJcTable;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTTrPrBaseImpl;

/* loaded from: classes16.dex */
public class CTTrPrBaseImpl extends XmlComplexContentImpl implements CTTrPrBase {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "cnfStyle"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "divId"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "gridBefore"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "gridAfter"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "wBefore"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "wAfter"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "cantSplit"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "trHeight"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "tblHeader"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "tblCellSpacing"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "jc"), new QName(XSSFRelation.NS_WORDPROCESSINGML, CellUtil.HIDDEN)};
    private static final long serialVersionUID = 1;

    public CTTrPrBaseImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTOnOff addNewCantSplit() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTCnf addNewCnfStyle() {
        CTCnf cTCnf;
        synchronized (monitor()) {
            check_orphaned();
            cTCnf = (CTCnf) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCnf;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTDecimalNumber addNewDivId() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTDecimalNumber addNewGridAfter() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTDecimalNumber addNewGridBefore() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTOnOff addNewHidden() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTJcTable addNewJc() {
        CTJcTable cTJcTable;
        synchronized (monitor()) {
            check_orphaned();
            cTJcTable = (CTJcTable) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTJcTable;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTTblWidth addNewTblCellSpacing() {
        CTTblWidth cTTblWidth;
        synchronized (monitor()) {
            check_orphaned();
            cTTblWidth = (CTTblWidth) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTTblWidth;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTOnOff addNewTblHeader() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTHeight addNewTrHeight() {
        CTHeight cTHeight;
        synchronized (monitor()) {
            check_orphaned();
            cTHeight = (CTHeight) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTHeight;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTTblWidth addNewWAfter() {
        CTTblWidth cTTblWidth;
        synchronized (monitor()) {
            check_orphaned();
            cTTblWidth = (CTTblWidth) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTTblWidth;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTTblWidth addNewWBefore() {
        CTTblWidth cTTblWidth;
        synchronized (monitor()) {
            check_orphaned();
            cTTblWidth = (CTTblWidth) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTTblWidth;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTOnOff[] getCantSplitArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public List<CTOnOff> getCantSplitList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qwc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.getCantSplitArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rwc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTrPrBaseImpl.this.setCantSplitArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.swc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.insertNewCantSplit(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.twc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTrPrBaseImpl.this.removeCantSplit(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.uwc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTrPrBaseImpl.this.sizeOfCantSplitArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTCnf[] getCnfStyleArray() {
        return (CTCnf[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCnf[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public List<CTCnf> getCnfStyleList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dvc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.getCnfStyleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ovc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTrPrBaseImpl.this.setCnfStyleArray(((Integer) obj).intValue(), (CTCnf) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zvc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.insertNewCnfStyle(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kwc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTrPrBaseImpl.this.removeCnfStyle(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vwc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTrPrBaseImpl.this.sizeOfCnfStyleArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTDecimalNumber[] getDivIdArray() {
        return (CTDecimalNumber[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTDecimalNumber[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public List<CTDecimalNumber> getDivIdList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wwc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.getDivIdArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xwc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTrPrBaseImpl.this.setDivIdArray(((Integer) obj).intValue(), (CTDecimalNumber) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ywc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.insertNewDivId(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zwc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTrPrBaseImpl.this.removeDivId(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.axc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTrPrBaseImpl.this.sizeOfDivIdArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTDecimalNumber[] getGridAfterArray() {
        return (CTDecimalNumber[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTDecimalNumber[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public List<CTDecimalNumber> getGridAfterList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.pvc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.getGridAfterArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qvc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTrPrBaseImpl.this.setGridAfterArray(((Integer) obj).intValue(), (CTDecimalNumber) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rvc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.insertNewGridAfter(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.svc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTrPrBaseImpl.this.removeGridAfter(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.tvc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTrPrBaseImpl.this.sizeOfGridAfterArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTDecimalNumber[] getGridBeforeArray() {
        return (CTDecimalNumber[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTDecimalNumber[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public List<CTDecimalNumber> getGridBeforeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gxc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.getGridBeforeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hxc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTrPrBaseImpl.this.setGridBeforeArray(((Integer) obj).intValue(), (CTDecimalNumber) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ixc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.insertNewGridBefore(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jxc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTrPrBaseImpl.this.removeGridBefore(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.kxc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTrPrBaseImpl.this.sizeOfGridBeforeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTOnOff[] getHiddenArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[11], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public List<CTOnOff> getHiddenList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.awc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.getHiddenArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bwc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTrPrBaseImpl.this.setHiddenArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.cwc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.insertNewHidden(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.dwc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTrPrBaseImpl.this.removeHidden(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ewc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTrPrBaseImpl.this.sizeOfHiddenArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTJcTable[] getJcArray() {
        return (CTJcTable[]) getXmlObjectArray(PROPERTY_QNAME[10], new CTJcTable[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public List<CTJcTable> getJcList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.uvc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.getJcArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vvc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTrPrBaseImpl.this.setJcArray(((Integer) obj).intValue(), (CTJcTable) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wvc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.insertNewJc(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xvc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTrPrBaseImpl.this.removeJc(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yvc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTrPrBaseImpl.this.sizeOfJcArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTTblWidth[] getTblCellSpacingArray() {
        return (CTTblWidth[]) getXmlObjectArray(PROPERTY_QNAME[9], new CTTblWidth[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public List<CTTblWidth> getTblCellSpacingList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.evc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.getTblCellSpacingArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fvc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTrPrBaseImpl.this.setTblCellSpacingArray(((Integer) obj).intValue(), (CTTblWidth) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gvc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.insertNewTblCellSpacing(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hvc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTrPrBaseImpl.this.removeTblCellSpacing(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ivc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTrPrBaseImpl.this.sizeOfTblCellSpacingArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTOnOff[] getTblHeaderArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public List<CTOnOff> getTblHeaderList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lwc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.getTblHeaderArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mwc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTrPrBaseImpl.this.setTblHeaderArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nwc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.insertNewTblHeader(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.owc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTrPrBaseImpl.this.removeTblHeader(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pwc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTrPrBaseImpl.this.sizeOfTblHeaderArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTHeight[] getTrHeightArray() {
        return (CTHeight[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTHeight[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public List<CTHeight> getTrHeightList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fwc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.getTrHeightArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gwc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTrPrBaseImpl.this.setTrHeightArray(((Integer) obj).intValue(), (CTHeight) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hwc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.insertNewTrHeight(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.iwc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTrPrBaseImpl.this.removeTrHeight(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.jwc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTrPrBaseImpl.this.sizeOfTrHeightArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTTblWidth[] getWAfterArray() {
        return (CTTblWidth[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTTblWidth[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public List<CTTblWidth> getWAfterList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jvc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.getWAfterArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kvc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTrPrBaseImpl.this.setWAfterArray(((Integer) obj).intValue(), (CTTblWidth) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lvc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.insertNewWAfter(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.mvc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTrPrBaseImpl.this.removeWAfter(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.nvc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTrPrBaseImpl.this.sizeOfWAfterArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTTblWidth[] getWBeforeArray() {
        return (CTTblWidth[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTTblWidth[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public List<CTTblWidth> getWBeforeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bxc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.getWBeforeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cxc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTrPrBaseImpl.this.setWBeforeArray(((Integer) obj).intValue(), (CTTblWidth) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dxc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTrPrBaseImpl.this.insertNewWBefore(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.exc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTrPrBaseImpl.this.removeWBefore(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fxc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTrPrBaseImpl.this.sizeOfWBeforeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTOnOff insertNewCantSplit(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTCnf insertNewCnfStyle(int i) {
        CTCnf cTCnf;
        synchronized (monitor()) {
            check_orphaned();
            cTCnf = (CTCnf) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCnf;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTDecimalNumber insertNewDivId(int i) {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTDecimalNumber insertNewGridAfter(int i) {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTDecimalNumber insertNewGridBefore(int i) {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTOnOff insertNewHidden(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTJcTable insertNewJc(int i) {
        CTJcTable cTJcTable;
        synchronized (monitor()) {
            check_orphaned();
            cTJcTable = (CTJcTable) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return cTJcTable;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTTblWidth insertNewTblCellSpacing(int i) {
        CTTblWidth cTTblWidth;
        synchronized (monitor()) {
            check_orphaned();
            cTTblWidth = (CTTblWidth) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return cTTblWidth;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTOnOff insertNewTblHeader(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTHeight insertNewTrHeight(int i) {
        CTHeight cTHeight;
        synchronized (monitor()) {
            check_orphaned();
            cTHeight = (CTHeight) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTHeight;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTTblWidth insertNewWAfter(int i) {
        CTTblWidth cTTblWidth;
        synchronized (monitor()) {
            check_orphaned();
            cTTblWidth = (CTTblWidth) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTTblWidth;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTTblWidth insertNewWBefore(int i) {
        CTTblWidth cTTblWidth;
        synchronized (monitor()) {
            check_orphaned();
            cTTblWidth = (CTTblWidth) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTTblWidth;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void removeCantSplit(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void removeCnfStyle(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void removeDivId(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void removeGridAfter(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void removeGridBefore(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void removeHidden(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void removeJc(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void removeTblCellSpacing(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void removeTblHeader(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void removeTrHeight(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void removeWAfter(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void removeWBefore(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setCantSplitArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setCnfStyleArray(CTCnf[] cTCnfArr) {
        check_orphaned();
        arraySetterHelper(cTCnfArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setDivIdArray(CTDecimalNumber[] cTDecimalNumberArr) {
        check_orphaned();
        arraySetterHelper(cTDecimalNumberArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setGridAfterArray(CTDecimalNumber[] cTDecimalNumberArr) {
        check_orphaned();
        arraySetterHelper(cTDecimalNumberArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setGridBeforeArray(CTDecimalNumber[] cTDecimalNumberArr) {
        check_orphaned();
        arraySetterHelper(cTDecimalNumberArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setHiddenArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[11]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setJcArray(CTJcTable[] cTJcTableArr) {
        check_orphaned();
        arraySetterHelper(cTJcTableArr, PROPERTY_QNAME[10]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setTblCellSpacingArray(CTTblWidth[] cTTblWidthArr) {
        check_orphaned();
        arraySetterHelper(cTTblWidthArr, PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setTblHeaderArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setTrHeightArray(CTHeight[] cTHeightArr) {
        check_orphaned();
        arraySetterHelper(cTHeightArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setWAfterArray(CTTblWidth[] cTTblWidthArr) {
        check_orphaned();
        arraySetterHelper(cTTblWidthArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setWBeforeArray(CTTblWidth[] cTTblWidthArr) {
        check_orphaned();
        arraySetterHelper(cTTblWidthArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public int sizeOfCantSplitArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public int sizeOfCnfStyleArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public int sizeOfDivIdArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public int sizeOfGridAfterArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public int sizeOfGridBeforeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public int sizeOfHiddenArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public int sizeOfJcArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public int sizeOfTblCellSpacingArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public int sizeOfTblHeaderArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public int sizeOfTrHeightArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public int sizeOfWAfterArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public int sizeOfWBeforeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTOnOff getCantSplitArray(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTOnOff == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTCnf getCnfStyleArray(int i) {
        CTCnf cTCnf;
        synchronized (monitor()) {
            check_orphaned();
            cTCnf = (CTCnf) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCnf == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCnf;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTDecimalNumber getDivIdArray(int i) {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTDecimalNumber == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTDecimalNumber getGridAfterArray(int i) {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTDecimalNumber == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTDecimalNumber getGridBeforeArray(int i) {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTDecimalNumber == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTOnOff getHiddenArray(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (cTOnOff == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTJcTable getJcArray(int i) {
        CTJcTable cTJcTable;
        synchronized (monitor()) {
            check_orphaned();
            cTJcTable = (CTJcTable) get_store().find_element_user(PROPERTY_QNAME[10], i);
            if (cTJcTable == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTJcTable;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTTblWidth getTblCellSpacingArray(int i) {
        CTTblWidth cTTblWidth;
        synchronized (monitor()) {
            check_orphaned();
            cTTblWidth = (CTTblWidth) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (cTTblWidth == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTblWidth;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTOnOff getTblHeaderArray(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (cTOnOff == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTHeight getTrHeightArray(int i) {
        CTHeight cTHeight;
        synchronized (monitor()) {
            check_orphaned();
            cTHeight = (CTHeight) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTHeight == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTHeight;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTTblWidth getWAfterArray(int i) {
        CTTblWidth cTTblWidth;
        synchronized (monitor()) {
            check_orphaned();
            cTTblWidth = (CTTblWidth) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTTblWidth == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTblWidth;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public CTTblWidth getWBeforeArray(int i) {
        CTTblWidth cTTblWidth;
        synchronized (monitor()) {
            check_orphaned();
            cTTblWidth = (CTTblWidth) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTTblWidth == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTblWidth;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setCantSplitArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setCnfStyleArray(int i, CTCnf cTCnf) {
        generatedSetterHelperImpl(cTCnf, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setDivIdArray(int i, CTDecimalNumber cTDecimalNumber) {
        generatedSetterHelperImpl(cTDecimalNumber, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setGridAfterArray(int i, CTDecimalNumber cTDecimalNumber) {
        generatedSetterHelperImpl(cTDecimalNumber, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setGridBeforeArray(int i, CTDecimalNumber cTDecimalNumber) {
        generatedSetterHelperImpl(cTDecimalNumber, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setHiddenArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[11], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setJcArray(int i, CTJcTable cTJcTable) {
        generatedSetterHelperImpl(cTJcTable, PROPERTY_QNAME[10], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setTblCellSpacingArray(int i, CTTblWidth cTTblWidth) {
        generatedSetterHelperImpl(cTTblWidth, PROPERTY_QNAME[9], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setTblHeaderArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setTrHeightArray(int i, CTHeight cTHeight) {
        generatedSetterHelperImpl(cTHeight, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setWAfterArray(int i, CTTblWidth cTTblWidth) {
        generatedSetterHelperImpl(cTTblWidth, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase
    public void setWBeforeArray(int i, CTTblWidth cTTblWidth) {
        generatedSetterHelperImpl(cTTblWidth, PROPERTY_QNAME[4], i, (short) 2);
    }
}
