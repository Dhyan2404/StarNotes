package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import com.onyx.android.sdk.data.common.data.FileTypeConstant;
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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionAutoFormatting;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionCellChange;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionComment;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionConflict;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionCustomView;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionDefinedName;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionFormatting;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionInsertSheet;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionQueryTableField;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionSheetRename;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTRevisionsImpl;

/* loaded from: classes15.dex */
public class CTRevisionsImpl extends XmlComplexContentImpl implements CTRevisions {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "rrc"), new QName(XSSFRelation.NS_SPREADSHEETML, FileTypeConstant.RM), new QName(XSSFRelation.NS_SPREADSHEETML, "rcv"), new QName(XSSFRelation.NS_SPREADSHEETML, "rsnm"), new QName(XSSFRelation.NS_SPREADSHEETML, "ris"), new QName(XSSFRelation.NS_SPREADSHEETML, "rcc"), new QName(XSSFRelation.NS_SPREADSHEETML, "rfmt"), new QName(XSSFRelation.NS_SPREADSHEETML, "raf"), new QName(XSSFRelation.NS_SPREADSHEETML, "rdn"), new QName(XSSFRelation.NS_SPREADSHEETML, "rcmt"), new QName(XSSFRelation.NS_SPREADSHEETML, "rqt"), new QName(XSSFRelation.NS_SPREADSHEETML, "rcft")};
    private static final long serialVersionUID = 1;

    public CTRevisionsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionAutoFormatting addNewRaf() {
        CTRevisionAutoFormatting cTRevisionAutoFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionAutoFormatting = (CTRevisionAutoFormatting) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTRevisionAutoFormatting;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionCellChange addNewRcc() {
        CTRevisionCellChange cTRevisionCellChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionCellChange = (CTRevisionCellChange) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTRevisionCellChange;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionConflict addNewRcft() {
        CTRevisionConflict cTRevisionConflict;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionConflict = (CTRevisionConflict) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTRevisionConflict;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionComment addNewRcmt() {
        CTRevisionComment cTRevisionComment;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionComment = (CTRevisionComment) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTRevisionComment;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionCustomView addNewRcv() {
        CTRevisionCustomView cTRevisionCustomView;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionCustomView = (CTRevisionCustomView) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTRevisionCustomView;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionDefinedName addNewRdn() {
        CTRevisionDefinedName cTRevisionDefinedName;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionDefinedName = (CTRevisionDefinedName) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTRevisionDefinedName;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionFormatting addNewRfmt() {
        CTRevisionFormatting cTRevisionFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionFormatting = (CTRevisionFormatting) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTRevisionFormatting;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionInsertSheet addNewRis() {
        CTRevisionInsertSheet cTRevisionInsertSheet;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionInsertSheet = (CTRevisionInsertSheet) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTRevisionInsertSheet;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionMove addNewRm() {
        CTRevisionMove cTRevisionMove;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionMove = (CTRevisionMove) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTRevisionMove;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionQueryTableField addNewRqt() {
        CTRevisionQueryTableField cTRevisionQueryTableField;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionQueryTableField = (CTRevisionQueryTableField) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTRevisionQueryTableField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionRowColumn addNewRrc() {
        CTRevisionRowColumn cTRevisionRowColumn;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionRowColumn = (CTRevisionRowColumn) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRevisionRowColumn;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionSheetRename addNewRsnm() {
        CTRevisionSheetRename cTRevisionSheetRename;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionSheetRename = (CTRevisionSheetRename) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTRevisionSheetRename;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionAutoFormatting[] getRafArray() {
        return (CTRevisionAutoFormatting[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTRevisionAutoFormatting[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public List<CTRevisionAutoFormatting> getRafList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.kt8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.getRafArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.lt8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRevisionsImpl.this.setRafArray(((Integer) obj).intValue(), (CTRevisionAutoFormatting) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.mt8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.insertNewRaf(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.nt8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRevisionsImpl.this.removeRaf(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ot8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRevisionsImpl.this.sizeOfRafArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionCellChange[] getRccArray() {
        return (CTRevisionCellChange[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTRevisionCellChange[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public List<CTRevisionCellChange> getRccList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lu8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.getRccArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mu8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRevisionsImpl.this.setRccArray(((Integer) obj).intValue(), (CTRevisionCellChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nu8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.insertNewRcc(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ou8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRevisionsImpl.this.removeRcc(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pu8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRevisionsImpl.this.sizeOfRccArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionConflict[] getRcftArray() {
        return (CTRevisionConflict[]) getXmlObjectArray(PROPERTY_QNAME[11], new CTRevisionConflict[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public List<CTRevisionConflict> getRcftList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gu8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.getRcftArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hu8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRevisionsImpl.this.setRcftArray(((Integer) obj).intValue(), (CTRevisionConflict) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.iu8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.insertNewRcft(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ju8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRevisionsImpl.this.removeRcft(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ku8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRevisionsImpl.this.sizeOfRcftArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionComment[] getRcmtArray() {
        return (CTRevisionComment[]) getXmlObjectArray(PROPERTY_QNAME[9], new CTRevisionComment[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public List<CTRevisionComment> getRcmtList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mv8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.getRcmtArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nv8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRevisionsImpl.this.setRcmtArray(((Integer) obj).intValue(), (CTRevisionComment) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ov8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.insertNewRcmt(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pv8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRevisionsImpl.this.removeRcmt(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qv8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRevisionsImpl.this.sizeOfRcmtArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionCustomView[] getRcvArray() {
        return (CTRevisionCustomView[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTRevisionCustomView[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public List<CTRevisionCustomView> getRcvList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.cv8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.getRcvArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dv8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRevisionsImpl.this.setRcvArray(((Integer) obj).intValue(), (CTRevisionCustomView) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ev8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.insertNewRcv(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fv8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRevisionsImpl.this.removeRcv(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.gv8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRevisionsImpl.this.sizeOfRcvArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionDefinedName[] getRdnArray() {
        return (CTRevisionDefinedName[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTRevisionDefinedName[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public List<CTRevisionDefinedName> getRdnList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hv8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.getRdnArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.iv8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRevisionsImpl.this.setRdnArray(((Integer) obj).intValue(), (CTRevisionDefinedName) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jv8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.insertNewRdn(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kv8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRevisionsImpl.this.removeRdn(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lv8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRevisionsImpl.this.sizeOfRdnArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionFormatting[] getRfmtArray() {
        return (CTRevisionFormatting[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTRevisionFormatting[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public List<CTRevisionFormatting> getRfmtList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wu8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.getRfmtArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xu8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRevisionsImpl.this.setRfmtArray(((Integer) obj).intValue(), (CTRevisionFormatting) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.yu8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.insertNewRfmt(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zu8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRevisionsImpl.this.removeRfmt(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.av8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRevisionsImpl.this.sizeOfRfmtArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionInsertSheet[] getRisArray() {
        return (CTRevisionInsertSheet[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTRevisionInsertSheet[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public List<CTRevisionInsertSheet> getRisList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jt8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.getRisArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ut8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRevisionsImpl.this.setRisArray(((Integer) obj).intValue(), (CTRevisionInsertSheet) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fu8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.insertNewRis(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qu8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRevisionsImpl.this.removeRis(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.bv8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRevisionsImpl.this.sizeOfRisArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionMove[] getRmArray() {
        return (CTRevisionMove[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTRevisionMove[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public List<CTRevisionMove> getRmList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.pt8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.getRmArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qt8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRevisionsImpl.this.setRmArray(((Integer) obj).intValue(), (CTRevisionMove) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rt8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.insertNewRm(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.st8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRevisionsImpl.this.removeRm(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.tt8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRevisionsImpl.this.sizeOfRmArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionQueryTableField[] getRqtArray() {
        return (CTRevisionQueryTableField[]) getXmlObjectArray(PROPERTY_QNAME[10], new CTRevisionQueryTableField[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public List<CTRevisionQueryTableField> getRqtList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ru8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.getRqtArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.su8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRevisionsImpl.this.setRqtArray(((Integer) obj).intValue(), (CTRevisionQueryTableField) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.tu8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.insertNewRqt(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.uu8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRevisionsImpl.this.removeRqt(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vu8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRevisionsImpl.this.sizeOfRqtArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionRowColumn[] getRrcArray() {
        return (CTRevisionRowColumn[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTRevisionRowColumn[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public List<CTRevisionRowColumn> getRrcList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vt8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.getRrcArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wt8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRevisionsImpl.this.setRrcArray(((Integer) obj).intValue(), (CTRevisionRowColumn) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xt8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.insertNewRrc(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.yt8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRevisionsImpl.this.removeRrc(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zt8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRevisionsImpl.this.sizeOfRrcArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionSheetRename[] getRsnmArray() {
        return (CTRevisionSheetRename[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTRevisionSheetRename[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public List<CTRevisionSheetRename> getRsnmList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.au8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.getRsnmArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bu8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRevisionsImpl.this.setRsnmArray(((Integer) obj).intValue(), (CTRevisionSheetRename) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.cu8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionsImpl.this.insertNewRsnm(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.du8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRevisionsImpl.this.removeRsnm(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.eu8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRevisionsImpl.this.sizeOfRsnmArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionAutoFormatting insertNewRaf(int i) {
        CTRevisionAutoFormatting cTRevisionAutoFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionAutoFormatting = (CTRevisionAutoFormatting) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTRevisionAutoFormatting;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionCellChange insertNewRcc(int i) {
        CTRevisionCellChange cTRevisionCellChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionCellChange = (CTRevisionCellChange) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTRevisionCellChange;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionConflict insertNewRcft(int i) {
        CTRevisionConflict cTRevisionConflict;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionConflict = (CTRevisionConflict) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return cTRevisionConflict;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionComment insertNewRcmt(int i) {
        CTRevisionComment cTRevisionComment;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionComment = (CTRevisionComment) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return cTRevisionComment;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionCustomView insertNewRcv(int i) {
        CTRevisionCustomView cTRevisionCustomView;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionCustomView = (CTRevisionCustomView) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTRevisionCustomView;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionDefinedName insertNewRdn(int i) {
        CTRevisionDefinedName cTRevisionDefinedName;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionDefinedName = (CTRevisionDefinedName) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTRevisionDefinedName;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionFormatting insertNewRfmt(int i) {
        CTRevisionFormatting cTRevisionFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionFormatting = (CTRevisionFormatting) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTRevisionFormatting;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionInsertSheet insertNewRis(int i) {
        CTRevisionInsertSheet cTRevisionInsertSheet;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionInsertSheet = (CTRevisionInsertSheet) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTRevisionInsertSheet;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionMove insertNewRm(int i) {
        CTRevisionMove cTRevisionMove;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionMove = (CTRevisionMove) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTRevisionMove;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionQueryTableField insertNewRqt(int i) {
        CTRevisionQueryTableField cTRevisionQueryTableField;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionQueryTableField = (CTRevisionQueryTableField) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return cTRevisionQueryTableField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionRowColumn insertNewRrc(int i) {
        CTRevisionRowColumn cTRevisionRowColumn;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionRowColumn = (CTRevisionRowColumn) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTRevisionRowColumn;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionSheetRename insertNewRsnm(int i) {
        CTRevisionSheetRename cTRevisionSheetRename;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionSheetRename = (CTRevisionSheetRename) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTRevisionSheetRename;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void removeRaf(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void removeRcc(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void removeRcft(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void removeRcmt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void removeRcv(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void removeRdn(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void removeRfmt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void removeRis(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void removeRm(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void removeRqt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void removeRrc(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void removeRsnm(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRafArray(CTRevisionAutoFormatting[] cTRevisionAutoFormattingArr) {
        check_orphaned();
        arraySetterHelper(cTRevisionAutoFormattingArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRccArray(CTRevisionCellChange[] cTRevisionCellChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRevisionCellChangeArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRcftArray(CTRevisionConflict[] cTRevisionConflictArr) {
        check_orphaned();
        arraySetterHelper(cTRevisionConflictArr, PROPERTY_QNAME[11]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRcmtArray(CTRevisionComment[] cTRevisionCommentArr) {
        check_orphaned();
        arraySetterHelper(cTRevisionCommentArr, PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRcvArray(CTRevisionCustomView[] cTRevisionCustomViewArr) {
        check_orphaned();
        arraySetterHelper(cTRevisionCustomViewArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRdnArray(CTRevisionDefinedName[] cTRevisionDefinedNameArr) {
        check_orphaned();
        arraySetterHelper(cTRevisionDefinedNameArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRfmtArray(CTRevisionFormatting[] cTRevisionFormattingArr) {
        check_orphaned();
        arraySetterHelper(cTRevisionFormattingArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRisArray(CTRevisionInsertSheet[] cTRevisionInsertSheetArr) {
        check_orphaned();
        arraySetterHelper(cTRevisionInsertSheetArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRmArray(CTRevisionMove[] cTRevisionMoveArr) {
        check_orphaned();
        arraySetterHelper(cTRevisionMoveArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRqtArray(CTRevisionQueryTableField[] cTRevisionQueryTableFieldArr) {
        check_orphaned();
        arraySetterHelper(cTRevisionQueryTableFieldArr, PROPERTY_QNAME[10]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRrcArray(CTRevisionRowColumn[] cTRevisionRowColumnArr) {
        check_orphaned();
        arraySetterHelper(cTRevisionRowColumnArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRsnmArray(CTRevisionSheetRename[] cTRevisionSheetRenameArr) {
        check_orphaned();
        arraySetterHelper(cTRevisionSheetRenameArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public int sizeOfRafArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public int sizeOfRccArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public int sizeOfRcftArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public int sizeOfRcmtArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public int sizeOfRcvArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public int sizeOfRdnArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public int sizeOfRfmtArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public int sizeOfRisArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public int sizeOfRmArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public int sizeOfRqtArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public int sizeOfRrcArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public int sizeOfRsnmArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionAutoFormatting getRafArray(int i) {
        CTRevisionAutoFormatting cTRevisionAutoFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionAutoFormatting = (CTRevisionAutoFormatting) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTRevisionAutoFormatting == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRevisionAutoFormatting;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionCellChange getRccArray(int i) {
        CTRevisionCellChange cTRevisionCellChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionCellChange = (CTRevisionCellChange) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTRevisionCellChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRevisionCellChange;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionConflict getRcftArray(int i) {
        CTRevisionConflict cTRevisionConflict;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionConflict = (CTRevisionConflict) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (cTRevisionConflict == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRevisionConflict;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionComment getRcmtArray(int i) {
        CTRevisionComment cTRevisionComment;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionComment = (CTRevisionComment) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (cTRevisionComment == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRevisionComment;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionCustomView getRcvArray(int i) {
        CTRevisionCustomView cTRevisionCustomView;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionCustomView = (CTRevisionCustomView) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTRevisionCustomView == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRevisionCustomView;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionDefinedName getRdnArray(int i) {
        CTRevisionDefinedName cTRevisionDefinedName;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionDefinedName = (CTRevisionDefinedName) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (cTRevisionDefinedName == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRevisionDefinedName;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionFormatting getRfmtArray(int i) {
        CTRevisionFormatting cTRevisionFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionFormatting = (CTRevisionFormatting) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTRevisionFormatting == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRevisionFormatting;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionInsertSheet getRisArray(int i) {
        CTRevisionInsertSheet cTRevisionInsertSheet;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionInsertSheet = (CTRevisionInsertSheet) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTRevisionInsertSheet == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRevisionInsertSheet;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionMove getRmArray(int i) {
        CTRevisionMove cTRevisionMove;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionMove = (CTRevisionMove) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTRevisionMove == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRevisionMove;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionQueryTableField getRqtArray(int i) {
        CTRevisionQueryTableField cTRevisionQueryTableField;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionQueryTableField = (CTRevisionQueryTableField) get_store().find_element_user(PROPERTY_QNAME[10], i);
            if (cTRevisionQueryTableField == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRevisionQueryTableField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionRowColumn getRrcArray(int i) {
        CTRevisionRowColumn cTRevisionRowColumn;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionRowColumn = (CTRevisionRowColumn) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTRevisionRowColumn == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRevisionRowColumn;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public CTRevisionSheetRename getRsnmArray(int i) {
        CTRevisionSheetRename cTRevisionSheetRename;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionSheetRename = (CTRevisionSheetRename) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTRevisionSheetRename == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRevisionSheetRename;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRafArray(int i, CTRevisionAutoFormatting cTRevisionAutoFormatting) {
        generatedSetterHelperImpl(cTRevisionAutoFormatting, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRccArray(int i, CTRevisionCellChange cTRevisionCellChange) {
        generatedSetterHelperImpl(cTRevisionCellChange, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRcftArray(int i, CTRevisionConflict cTRevisionConflict) {
        generatedSetterHelperImpl(cTRevisionConflict, PROPERTY_QNAME[11], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRcmtArray(int i, CTRevisionComment cTRevisionComment) {
        generatedSetterHelperImpl(cTRevisionComment, PROPERTY_QNAME[9], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRcvArray(int i, CTRevisionCustomView cTRevisionCustomView) {
        generatedSetterHelperImpl(cTRevisionCustomView, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRdnArray(int i, CTRevisionDefinedName cTRevisionDefinedName) {
        generatedSetterHelperImpl(cTRevisionDefinedName, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRfmtArray(int i, CTRevisionFormatting cTRevisionFormatting) {
        generatedSetterHelperImpl(cTRevisionFormatting, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRisArray(int i, CTRevisionInsertSheet cTRevisionInsertSheet) {
        generatedSetterHelperImpl(cTRevisionInsertSheet, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRmArray(int i, CTRevisionMove cTRevisionMove) {
        generatedSetterHelperImpl(cTRevisionMove, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRqtArray(int i, CTRevisionQueryTableField cTRevisionQueryTableField) {
        generatedSetterHelperImpl(cTRevisionQueryTableField, PROPERTY_QNAME[10], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRrcArray(int i, CTRevisionRowColumn cTRevisionRowColumn) {
        generatedSetterHelperImpl(cTRevisionRowColumn, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions
    public void setRsnmArray(int i, CTRevisionSheetRename cTRevisionSheetRename) {
        generatedSetterHelperImpl(cTRevisionSheetRename, PROPERTY_QNAME[3], i, (short) 2);
    }
}
