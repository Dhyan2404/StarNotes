package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.openxml4j.opc.ContentTypes;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTR;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTRPR;
import org.openxmlformats.schemas.officeDocument.x2006.math.impl.CTRImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEmpty;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFldChar;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdnRef;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMarkup;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTObject;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPTab;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRel;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRuby;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSym;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTText;

/* loaded from: classes14.dex */
public class CTRImpl extends XmlComplexContentImpl implements CTR {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "rPr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "rPr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "br"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "t"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "contentPart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "delText"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "instrText"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "delInstrText"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "noBreakHyphen"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "softHyphen"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "dayShort"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "monthShort"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "yearShort"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "dayLong"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "monthLong"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "yearLong"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "annotationRef"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "footnoteRef"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "endnoteRef"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "separator"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "continuationSeparator"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "sym"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "pgNum"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "cr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "tab"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "object"), new QName(XSSFRelation.NS_WORDPROCESSINGML, ContentTypes.EXTENSION_PICT), new QName(XSSFRelation.NS_WORDPROCESSINGML, "fldChar"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "ruby"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "footnoteReference"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "endnoteReference"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "commentReference"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "drawing"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "ptab"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "lastRenderedPageBreak"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "t")};
    private static final long serialVersionUID = 1;

    public CTRImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty addNewAnnotationRef() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[16]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTBr addNewBr() {
        CTBr cTBr;
        synchronized (monitor()) {
            check_orphaned();
            cTBr = (CTBr) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTBr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTMarkup addNewCommentReference() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[31]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTRel addNewContentPart() {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty addNewContinuationSeparator() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[20]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty addNewCr() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[23]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty addNewDayLong() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty addNewDayShort() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTText addNewDelInstrText() {
        CTText cTText;
        synchronized (monitor()) {
            check_orphaned();
            cTText = (CTText) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTText;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTText addNewDelText() {
        CTText cTText;
        synchronized (monitor()) {
            check_orphaned();
            cTText = (CTText) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTText;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTDrawing addNewDrawing() {
        CTDrawing cTDrawing;
        synchronized (monitor()) {
            check_orphaned();
            cTDrawing = (CTDrawing) get_store().add_element_user(PROPERTY_QNAME[32]);
        }
        return cTDrawing;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty addNewEndnoteRef() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[18]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTFtnEdnRef addNewEndnoteReference() {
        CTFtnEdnRef cTFtnEdnRef;
        synchronized (monitor()) {
            check_orphaned();
            cTFtnEdnRef = (CTFtnEdnRef) get_store().add_element_user(PROPERTY_QNAME[30]);
        }
        return cTFtnEdnRef;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTFldChar addNewFldChar() {
        CTFldChar cTFldChar;
        synchronized (monitor()) {
            check_orphaned();
            cTFldChar = (CTFldChar) get_store().add_element_user(PROPERTY_QNAME[27]);
        }
        return cTFldChar;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty addNewFootnoteRef() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[17]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTFtnEdnRef addNewFootnoteReference() {
        CTFtnEdnRef cTFtnEdnRef;
        synchronized (monitor()) {
            check_orphaned();
            cTFtnEdnRef = (CTFtnEdnRef) get_store().add_element_user(PROPERTY_QNAME[29]);
        }
        return cTFtnEdnRef;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTText addNewInstrText() {
        CTText cTText;
        synchronized (monitor()) {
            check_orphaned();
            cTText = (CTText) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTText;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty addNewLastRenderedPageBreak() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[34]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty addNewMonthLong() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty addNewMonthShort() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty addNewNoBreakHyphen() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTObject addNewObject() {
        CTObject cTObject;
        synchronized (monitor()) {
            check_orphaned();
            cTObject = (CTObject) get_store().add_element_user(PROPERTY_QNAME[25]);
        }
        return cTObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty addNewPgNum() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[22]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTPicture addNewPict() {
        CTPicture cTPicture;
        synchronized (monitor()) {
            check_orphaned();
            cTPicture = (CTPicture) get_store().add_element_user(PROPERTY_QNAME[26]);
        }
        return cTPicture;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTPTab addNewPtab() {
        CTPTab cTPTab;
        synchronized (monitor()) {
            check_orphaned();
            cTPTab = (CTPTab) get_store().add_element_user(PROPERTY_QNAME[33]);
        }
        return cTPTab;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTRPR addNewRPr() {
        CTRPR ctrpr;
        synchronized (monitor()) {
            check_orphaned();
            ctrpr = (CTRPR) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return ctrpr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTRPr addNewRPr2() {
        CTRPr cTRPr;
        synchronized (monitor()) {
            check_orphaned();
            cTRPr = (CTRPr) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTRPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTRuby addNewRuby() {
        CTRuby cTRuby;
        synchronized (monitor()) {
            check_orphaned();
            cTRuby = (CTRuby) get_store().add_element_user(PROPERTY_QNAME[28]);
        }
        return cTRuby;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty addNewSeparator() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[19]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty addNewSoftHyphen() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTSym addNewSym() {
        CTSym cTSym;
        synchronized (monitor()) {
            check_orphaned();
            cTSym = (CTSym) get_store().add_element_user(PROPERTY_QNAME[21]);
        }
        return cTSym;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTText addNewT() {
        CTText cTText;
        synchronized (monitor()) {
            check_orphaned();
            cTText = (CTText) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTText;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public org.openxmlformats.schemas.officeDocument.x2006.math.CTText addNewT2() {
        org.openxmlformats.schemas.officeDocument.x2006.math.CTText cTText;
        synchronized (monitor()) {
            check_orphaned();
            cTText = (org.openxmlformats.schemas.officeDocument.x2006.math.CTText) get_store().add_element_user(PROPERTY_QNAME[35]);
        }
        return cTText;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty addNewTab() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[24]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty addNewYearLong() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[15]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty addNewYearShort() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty[] getAnnotationRefArray() {
        return (CTEmpty[]) getXmlObjectArray(PROPERTY_QNAME[16], new CTEmpty[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTEmpty> getAnnotationRefList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nt7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getAnnotationRefArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pt7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setAnnotationRefArray(((Integer) obj).intValue(), (CTEmpty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rt7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewAnnotationRef(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.tt7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeAnnotationRef(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vt7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfAnnotationRefArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTBr[] getBrArray() {
        return (CTBr[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTBr[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTBr> getBrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.yt7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getBrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bu7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setBrArray(((Integer) obj).intValue(), (CTBr) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.du7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewBr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fu7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeBr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hu7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfBrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTMarkup[] getCommentReferenceArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[31], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTMarkup> getCommentReferenceList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rs7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getCommentReferenceArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ts7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setCommentReferenceArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vs7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewCommentReference(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xs7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeCommentReference(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zs7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfCommentReferenceArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTRel[] getContentPartArray() {
        return (CTRel[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTRel[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTRel> getContentPartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gw7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getContentPartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.iw7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setContentPartArray(((Integer) obj).intValue(), (CTRel) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.kw7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewContentPart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.mw7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeContentPart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ow7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfContentPartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty[] getContinuationSeparatorArray() {
        return (CTEmpty[]) getXmlObjectArray(PROPERTY_QNAME[20], new CTEmpty[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTEmpty> getContinuationSeparatorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.uu7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getContinuationSeparatorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xu7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setContinuationSeparatorArray(((Integer) obj).intValue(), (CTEmpty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zu7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewContinuationSeparator(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bv7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeContinuationSeparator(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.dv7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfContinuationSeparatorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty[] getCrArray() {
        return (CTEmpty[]) getXmlObjectArray(PROPERTY_QNAME[23], new CTEmpty[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTEmpty> getCrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sz7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getCrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.uz7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setCrArray(((Integer) obj).intValue(), (CTEmpty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wz7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewCr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.yz7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeCr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.a08
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfCrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty[] getDayLongArray() {
        return (CTEmpty[]) getXmlObjectArray(PROPERTY_QNAME[13], new CTEmpty[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTEmpty> getDayLongList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sp7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getDayLongArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vp7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setDayLongArray(((Integer) obj).intValue(), (CTEmpty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xp7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewDayLong(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zp7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeDayLong(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.bq7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfDayLongArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty[] getDayShortArray() {
        return (CTEmpty[]) getXmlObjectArray(PROPERTY_QNAME[10], new CTEmpty[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTEmpty> getDayShortList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fz7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getDayShortArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.b08
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setDayShortArray(((Integer) obj).intValue(), (CTEmpty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.x08
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewDayShort(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.t18
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeDayShort(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.p28
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfDayShortArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTText[] getDelInstrTextArray() {
        return (CTText[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTText[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTText> getDelInstrTextList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ev7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getDelInstrTextArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fv7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setDelInstrTextArray(((Integer) obj).intValue(), (CTText) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gv7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewDelInstrText(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hv7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeDelInstrText(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.iv7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfDelInstrTextArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTText[] getDelTextArray() {
        return (CTText[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTText[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTText> getDelTextList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.v18
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getDelTextArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.y18
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setDelTextArray(((Integer) obj).intValue(), (CTText) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.a28
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewDelText(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.c28
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeDelText(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.e28
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfDelTextArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTDrawing[] getDrawingArray() {
        return (CTDrawing[]) getXmlObjectArray(PROPERTY_QNAME[32], new CTDrawing[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTDrawing> getDrawingList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.kr7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getDrawingArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nr7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setDrawingArray(((Integer) obj).intValue(), (CTDrawing) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pr7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewDrawing(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rr7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeDrawing(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.tr7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfDrawingArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty[] getEndnoteRefArray() {
        return (CTEmpty[]) getXmlObjectArray(PROPERTY_QNAME[18], new CTEmpty[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTEmpty> getEndnoteRefList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ct7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getEndnoteRefArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ft7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setEndnoteRefArray(((Integer) obj).intValue(), (CTEmpty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ht7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewEndnoteRef(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jt7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeEndnoteRef(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lt7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfEndnoteRefArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTFtnEdnRef[] getEndnoteReferenceArray() {
        return (CTFtnEdnRef[]) getXmlObjectArray(PROPERTY_QNAME[30], new CTFtnEdnRef[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTFtnEdnRef> getEndnoteReferenceList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mq7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getEndnoteReferenceArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ir7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setEndnoteReferenceArray(((Integer) obj).intValue(), (CTFtnEdnRef) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.es7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewEndnoteReference(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.at7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeEndnoteReference(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wt7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfEndnoteReferenceArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTFldChar[] getFldCharArray() {
        return (CTFldChar[]) getXmlObjectArray(PROPERTY_QNAME[27], new CTFldChar[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTFldChar> getFldCharList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hz7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getFldCharArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kz7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setFldCharArray(((Integer) obj).intValue(), (CTFldChar) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.mz7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewFldChar(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.oz7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeFldChar(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qz7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfFldCharArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty[] getFootnoteRefArray() {
        return (CTEmpty[]) getXmlObjectArray(PROPERTY_QNAME[17], new CTEmpty[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTEmpty> getFootnoteRefList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.d08
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getFootnoteRefArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.g08
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setFootnoteRefArray(((Integer) obj).intValue(), (CTEmpty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.i08
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewFootnoteRef(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.k08
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeFootnoteRef(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.m08
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfFootnoteRefArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTFtnEdnRef[] getFootnoteReferenceArray() {
        return (CTFtnEdnRef[]) getXmlObjectArray(PROPERTY_QNAME[29], new CTFtnEdnRef[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTFtnEdnRef> getFootnoteReferenceList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.op7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getFootnoteReferenceArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kv7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setFootnoteReferenceArray(((Integer) obj).intValue(), (CTFtnEdnRef) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vv7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewFootnoteReference(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.sw7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeFootnoteReference(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.px7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfFootnoteReferenceArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTText[] getInstrTextArray() {
        return (CTText[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTText[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTText> getInstrTextList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ly7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getInstrTextArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.oy7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setInstrTextArray(((Integer) obj).intValue(), (CTText) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qy7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewInstrText(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.sy7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeInstrText(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.uy7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfInstrTextArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty[] getLastRenderedPageBreakArray() {
        return (CTEmpty[]) getXmlObjectArray(PROPERTY_QNAME[34], new CTEmpty[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTEmpty> getLastRenderedPageBreakList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dx7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getLastRenderedPageBreakArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fx7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setLastRenderedPageBreakArray(((Integer) obj).intValue(), (CTEmpty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hx7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewLastRenderedPageBreak(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jx7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeLastRenderedPageBreak(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lx7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfLastRenderedPageBreakArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty[] getMonthLongArray() {
        return (CTEmpty[]) getXmlObjectArray(PROPERTY_QNAME[14], new CTEmpty[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTEmpty> getMonthLongList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zq7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getMonthLongArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.br7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setMonthLongArray(((Integer) obj).intValue(), (CTEmpty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dr7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewMonthLong(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fr7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeMonthLong(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hr7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfMonthLongArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty[] getMonthShortArray() {
        return (CTEmpty[]) getXmlObjectArray(PROPERTY_QNAME[11], new CTEmpty[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTEmpty> getMonthShortList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ju7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getMonthShortArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.lu7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setMonthShortArray(((Integer) obj).intValue(), (CTEmpty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nu7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewMonthShort(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pu7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeMonthShort(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ru7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfMonthShortArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty[] getNoBreakHyphenArray() {
        return (CTEmpty[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTEmpty[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTEmpty> getNoBreakHyphenList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wy7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getNoBreakHyphenArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yy7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setNoBreakHyphenArray(((Integer) obj).intValue(), (CTEmpty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.az7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewNoBreakHyphen(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cz7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeNoBreakHyphen(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ez7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfNoBreakHyphenArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTObject[] getObjectArray() {
        return (CTObject[]) getXmlObjectArray(PROPERTY_QNAME[25], new CTObject[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTObject> getObjectList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ay7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getObjectArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cy7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setObjectArray(((Integer) obj).intValue(), (CTObject) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ey7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewObject(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gy7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeObject(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.iy7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfObjectArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty[] getPgNumArray() {
        return (CTEmpty[]) getXmlObjectArray(PROPERTY_QNAME[22], new CTEmpty[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTEmpty> getPgNumList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.o08
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getPgNumArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.q08
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setPgNumArray(((Integer) obj).intValue(), (CTEmpty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.s08
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewPgNum(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.u08
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removePgNum(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.w08
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfPgNumArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTPicture[] getPictArray() {
        return (CTPicture[]) getXmlObjectArray(PROPERTY_QNAME[26], new CTPicture[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTPicture> getPictList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.oq7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getPictArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rq7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setPictArray(((Integer) obj).intValue(), (CTPicture) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.tq7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewPict(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vq7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removePict(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xq7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfPictArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTPTab[] getPtabArray() {
        return (CTPTab[]) getXmlObjectArray(PROPERTY_QNAME[33], new CTPTab[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTPTab> getPtabList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.uv7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getPtabArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yv7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setPtabArray(((Integer) obj).intValue(), (CTPTab) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.aw7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewPtab(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cw7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removePtab(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ew7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfPtabArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTRPR getRPr() {
        CTRPR ctrpr;
        synchronized (monitor()) {
            check_orphaned();
            ctrpr = (CTRPR) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (ctrpr == null) {
                ctrpr = null;
            }
        }
        return ctrpr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTRPr getRPr2() {
        CTRPr cTRPr;
        synchronized (monitor()) {
            check_orphaned();
            cTRPr = (CTRPr) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTRPr == null) {
                cTRPr = null;
            }
        }
        return cTRPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTRuby[] getRubyArray() {
        return (CTRuby[]) getXmlObjectArray(PROPERTY_QNAME[28], new CTRuby[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTRuby> getRubyList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.k18
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getRubyArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.m18
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setRubyArray(((Integer) obj).intValue(), (CTRuby) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.o18
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewRuby(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.q18
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeRuby(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.s18
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfRubyArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty[] getSeparatorArray() {
        return (CTEmpty[]) getXmlObjectArray(PROPERTY_QNAME[19], new CTEmpty[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTEmpty> getSeparatorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dq7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getSeparatorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fq7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setSeparatorArray(((Integer) obj).intValue(), (CTEmpty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hq7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewSeparator(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jq7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeSeparator(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lq7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfSeparatorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty[] getSoftHyphenArray() {
        return (CTEmpty[]) getXmlObjectArray(PROPERTY_QNAME[9], new CTEmpty[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTEmpty> getSoftHyphenList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.g28
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getSoftHyphenArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.i28
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setSoftHyphenArray(((Integer) obj).intValue(), (CTEmpty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.k28
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewSoftHyphen(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.m28
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeSoftHyphen(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.o28
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfSoftHyphenArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTSym[] getSymArray() {
        return (CTSym[]) getXmlObjectArray(PROPERTY_QNAME[21], new CTSym[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTSym> getSymList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ox7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getSymArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.sx7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setSymArray(((Integer) obj).intValue(), (CTSym) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ux7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewSym(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wx7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeSym(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yx7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfSymArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public org.openxmlformats.schemas.officeDocument.x2006.math.CTText[] getT2Array() {
        return (org.openxmlformats.schemas.officeDocument.x2006.math.CTText[]) getXmlObjectArray(PROPERTY_QNAME[35], new org.openxmlformats.schemas.officeDocument.x2006.math.CTText[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<org.openxmlformats.schemas.officeDocument.x2006.math.CTText> getT2List() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.su7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getT2Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jv7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setT2Array(((Integer) obj).intValue(), (org.openxmlformats.schemas.officeDocument.x2006.math.CTText) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nv7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewT2(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pv7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeT2(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rv7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfT2Array());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTText[] getTArray() {
        return (CTText[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTText[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTText> getTList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.z08
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getTArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.c18
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setTArray(((Integer) obj).intValue(), (CTText) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.e18
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewT(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.g18
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeT(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.i18
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfTArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty[] getTabArray() {
        return (CTEmpty[]) getXmlObjectArray(PROPERTY_QNAME[24], new CTEmpty[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTEmpty> getTabList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rw7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getTabArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vw7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setTabArray(((Integer) obj).intValue(), (CTEmpty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xw7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewTab(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zw7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeTab(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.bx7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfTabArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty[] getYearLongArray() {
        return (CTEmpty[]) getXmlObjectArray(PROPERTY_QNAME[15], new CTEmpty[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTEmpty> getYearLongList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gs7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getYearLongArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.js7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setYearLongArray(((Integer) obj).intValue(), (CTEmpty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ls7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewYearLong(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ns7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeYearLong(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ps7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfYearLongArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty[] getYearShortArray() {
        return (CTEmpty[]) getXmlObjectArray(PROPERTY_QNAME[12], new CTEmpty[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public List<CTEmpty> getYearShortList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vr7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getYearShortArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xr7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setYearShortArray(((Integer) obj).intValue(), (CTEmpty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zr7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewYearShort(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bs7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeYearShort(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ds7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfYearShortArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty insertNewAnnotationRef(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().insert_element_user(PROPERTY_QNAME[16], i);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTBr insertNewBr(int i) {
        CTBr cTBr;
        synchronized (monitor()) {
            check_orphaned();
            cTBr = (CTBr) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTBr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTMarkup insertNewCommentReference(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[31], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTRel insertNewContentPart(int i) {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty insertNewContinuationSeparator(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().insert_element_user(PROPERTY_QNAME[20], i);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty insertNewCr(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().insert_element_user(PROPERTY_QNAME[23], i);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty insertNewDayLong(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().insert_element_user(PROPERTY_QNAME[13], i);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty insertNewDayShort(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTText insertNewDelInstrText(int i) {
        CTText cTText;
        synchronized (monitor()) {
            check_orphaned();
            cTText = (CTText) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTText;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTText insertNewDelText(int i) {
        CTText cTText;
        synchronized (monitor()) {
            check_orphaned();
            cTText = (CTText) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTText;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTDrawing insertNewDrawing(int i) {
        CTDrawing cTDrawing;
        synchronized (monitor()) {
            check_orphaned();
            cTDrawing = (CTDrawing) get_store().insert_element_user(PROPERTY_QNAME[32], i);
        }
        return cTDrawing;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty insertNewEndnoteRef(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().insert_element_user(PROPERTY_QNAME[18], i);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTFtnEdnRef insertNewEndnoteReference(int i) {
        CTFtnEdnRef cTFtnEdnRef;
        synchronized (monitor()) {
            check_orphaned();
            cTFtnEdnRef = (CTFtnEdnRef) get_store().insert_element_user(PROPERTY_QNAME[30], i);
        }
        return cTFtnEdnRef;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTFldChar insertNewFldChar(int i) {
        CTFldChar cTFldChar;
        synchronized (monitor()) {
            check_orphaned();
            cTFldChar = (CTFldChar) get_store().insert_element_user(PROPERTY_QNAME[27], i);
        }
        return cTFldChar;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty insertNewFootnoteRef(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().insert_element_user(PROPERTY_QNAME[17], i);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTFtnEdnRef insertNewFootnoteReference(int i) {
        CTFtnEdnRef cTFtnEdnRef;
        synchronized (monitor()) {
            check_orphaned();
            cTFtnEdnRef = (CTFtnEdnRef) get_store().insert_element_user(PROPERTY_QNAME[29], i);
        }
        return cTFtnEdnRef;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTText insertNewInstrText(int i) {
        CTText cTText;
        synchronized (monitor()) {
            check_orphaned();
            cTText = (CTText) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTText;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty insertNewLastRenderedPageBreak(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().insert_element_user(PROPERTY_QNAME[34], i);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty insertNewMonthLong(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().insert_element_user(PROPERTY_QNAME[14], i);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty insertNewMonthShort(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty insertNewNoBreakHyphen(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTObject insertNewObject(int i) {
        CTObject cTObject;
        synchronized (monitor()) {
            check_orphaned();
            cTObject = (CTObject) get_store().insert_element_user(PROPERTY_QNAME[25], i);
        }
        return cTObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty insertNewPgNum(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().insert_element_user(PROPERTY_QNAME[22], i);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTPicture insertNewPict(int i) {
        CTPicture cTPicture;
        synchronized (monitor()) {
            check_orphaned();
            cTPicture = (CTPicture) get_store().insert_element_user(PROPERTY_QNAME[26], i);
        }
        return cTPicture;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTPTab insertNewPtab(int i) {
        CTPTab cTPTab;
        synchronized (monitor()) {
            check_orphaned();
            cTPTab = (CTPTab) get_store().insert_element_user(PROPERTY_QNAME[33], i);
        }
        return cTPTab;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTRuby insertNewRuby(int i) {
        CTRuby cTRuby;
        synchronized (monitor()) {
            check_orphaned();
            cTRuby = (CTRuby) get_store().insert_element_user(PROPERTY_QNAME[28], i);
        }
        return cTRuby;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty insertNewSeparator(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().insert_element_user(PROPERTY_QNAME[19], i);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty insertNewSoftHyphen(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTSym insertNewSym(int i) {
        CTSym cTSym;
        synchronized (monitor()) {
            check_orphaned();
            cTSym = (CTSym) get_store().insert_element_user(PROPERTY_QNAME[21], i);
        }
        return cTSym;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTText insertNewT(int i) {
        CTText cTText;
        synchronized (monitor()) {
            check_orphaned();
            cTText = (CTText) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTText;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public org.openxmlformats.schemas.officeDocument.x2006.math.CTText insertNewT2(int i) {
        org.openxmlformats.schemas.officeDocument.x2006.math.CTText cTText;
        synchronized (monitor()) {
            check_orphaned();
            cTText = (org.openxmlformats.schemas.officeDocument.x2006.math.CTText) get_store().insert_element_user(PROPERTY_QNAME[35], i);
        }
        return cTText;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty insertNewTab(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().insert_element_user(PROPERTY_QNAME[24], i);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty insertNewYearLong(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().insert_element_user(PROPERTY_QNAME[15], i);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty insertNewYearShort(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().insert_element_user(PROPERTY_QNAME[12], i);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public boolean isSetRPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public boolean isSetRPr2() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeAnnotationRef(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[16], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeBr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeCommentReference(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[31], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeContentPart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeContinuationSeparator(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[20], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeCr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[23], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeDayLong(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeDayShort(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeDelInstrText(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeDelText(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeDrawing(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[32], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeEndnoteRef(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[18], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeEndnoteReference(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[30], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeFldChar(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[27], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeFootnoteRef(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[17], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeFootnoteReference(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[29], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeInstrText(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeLastRenderedPageBreak(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[34], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeMonthLong(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeMonthShort(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeNoBreakHyphen(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeObject(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[25], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removePgNum(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[22], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removePict(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[26], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removePtab(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[33], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeRuby(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[28], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeSeparator(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[19], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeSoftHyphen(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeSym(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[21], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeT(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeT2(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[35], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeTab(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[24], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeYearLong(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void removeYearShort(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setAnnotationRefArray(CTEmpty[] cTEmptyArr) {
        check_orphaned();
        arraySetterHelper(cTEmptyArr, PROPERTY_QNAME[16]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setBrArray(CTBr[] cTBrArr) {
        check_orphaned();
        arraySetterHelper(cTBrArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setCommentReferenceArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[31]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setContentPartArray(CTRel[] cTRelArr) {
        check_orphaned();
        arraySetterHelper(cTRelArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setContinuationSeparatorArray(CTEmpty[] cTEmptyArr) {
        check_orphaned();
        arraySetterHelper(cTEmptyArr, PROPERTY_QNAME[20]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setCrArray(CTEmpty[] cTEmptyArr) {
        check_orphaned();
        arraySetterHelper(cTEmptyArr, PROPERTY_QNAME[23]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setDayLongArray(CTEmpty[] cTEmptyArr) {
        check_orphaned();
        arraySetterHelper(cTEmptyArr, PROPERTY_QNAME[13]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setDayShortArray(CTEmpty[] cTEmptyArr) {
        check_orphaned();
        arraySetterHelper(cTEmptyArr, PROPERTY_QNAME[10]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setDelInstrTextArray(CTText[] cTTextArr) {
        check_orphaned();
        arraySetterHelper(cTTextArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setDelTextArray(CTText[] cTTextArr) {
        check_orphaned();
        arraySetterHelper(cTTextArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setDrawingArray(CTDrawing[] cTDrawingArr) {
        check_orphaned();
        arraySetterHelper(cTDrawingArr, PROPERTY_QNAME[32]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setEndnoteRefArray(CTEmpty[] cTEmptyArr) {
        check_orphaned();
        arraySetterHelper(cTEmptyArr, PROPERTY_QNAME[18]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setEndnoteReferenceArray(CTFtnEdnRef[] cTFtnEdnRefArr) {
        check_orphaned();
        arraySetterHelper(cTFtnEdnRefArr, PROPERTY_QNAME[30]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setFldCharArray(CTFldChar[] cTFldCharArr) {
        check_orphaned();
        arraySetterHelper(cTFldCharArr, PROPERTY_QNAME[27]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setFootnoteRefArray(CTEmpty[] cTEmptyArr) {
        check_orphaned();
        arraySetterHelper(cTEmptyArr, PROPERTY_QNAME[17]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setFootnoteReferenceArray(CTFtnEdnRef[] cTFtnEdnRefArr) {
        check_orphaned();
        arraySetterHelper(cTFtnEdnRefArr, PROPERTY_QNAME[29]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setInstrTextArray(CTText[] cTTextArr) {
        check_orphaned();
        arraySetterHelper(cTTextArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setLastRenderedPageBreakArray(CTEmpty[] cTEmptyArr) {
        check_orphaned();
        arraySetterHelper(cTEmptyArr, PROPERTY_QNAME[34]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setMonthLongArray(CTEmpty[] cTEmptyArr) {
        check_orphaned();
        arraySetterHelper(cTEmptyArr, PROPERTY_QNAME[14]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setMonthShortArray(CTEmpty[] cTEmptyArr) {
        check_orphaned();
        arraySetterHelper(cTEmptyArr, PROPERTY_QNAME[11]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setNoBreakHyphenArray(CTEmpty[] cTEmptyArr) {
        check_orphaned();
        arraySetterHelper(cTEmptyArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setObjectArray(CTObject[] cTObjectArr) {
        check_orphaned();
        arraySetterHelper(cTObjectArr, PROPERTY_QNAME[25]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setPgNumArray(CTEmpty[] cTEmptyArr) {
        check_orphaned();
        arraySetterHelper(cTEmptyArr, PROPERTY_QNAME[22]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setPictArray(CTPicture[] cTPictureArr) {
        check_orphaned();
        arraySetterHelper(cTPictureArr, PROPERTY_QNAME[26]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setPtabArray(CTPTab[] cTPTabArr) {
        check_orphaned();
        arraySetterHelper(cTPTabArr, PROPERTY_QNAME[33]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setRPr(CTRPR ctrpr) {
        generatedSetterHelperImpl(ctrpr, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setRPr2(CTRPr cTRPr) {
        generatedSetterHelperImpl(cTRPr, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setRubyArray(CTRuby[] cTRubyArr) {
        check_orphaned();
        arraySetterHelper(cTRubyArr, PROPERTY_QNAME[28]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setSeparatorArray(CTEmpty[] cTEmptyArr) {
        check_orphaned();
        arraySetterHelper(cTEmptyArr, PROPERTY_QNAME[19]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setSoftHyphenArray(CTEmpty[] cTEmptyArr) {
        check_orphaned();
        arraySetterHelper(cTEmptyArr, PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setSymArray(CTSym[] cTSymArr) {
        check_orphaned();
        arraySetterHelper(cTSymArr, PROPERTY_QNAME[21]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setT2Array(org.openxmlformats.schemas.officeDocument.x2006.math.CTText[] cTTextArr) {
        check_orphaned();
        arraySetterHelper(cTTextArr, PROPERTY_QNAME[35]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setTArray(CTText[] cTTextArr) {
        check_orphaned();
        arraySetterHelper(cTTextArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setTabArray(CTEmpty[] cTEmptyArr) {
        check_orphaned();
        arraySetterHelper(cTEmptyArr, PROPERTY_QNAME[24]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setYearLongArray(CTEmpty[] cTEmptyArr) {
        check_orphaned();
        arraySetterHelper(cTEmptyArr, PROPERTY_QNAME[15]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setYearShortArray(CTEmpty[] cTEmptyArr) {
        check_orphaned();
        arraySetterHelper(cTEmptyArr, PROPERTY_QNAME[12]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfAnnotationRefArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[16]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfBrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfCommentReferenceArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[31]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfContentPartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfContinuationSeparatorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[20]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfCrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[23]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfDayLongArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[13]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfDayShortArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfDelInstrTextArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfDelTextArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfDrawingArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[32]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfEndnoteRefArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[18]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfEndnoteReferenceArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[30]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfFldCharArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[27]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfFootnoteRefArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[17]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfFootnoteReferenceArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[29]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfInstrTextArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfLastRenderedPageBreakArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[34]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfMonthLongArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[14]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfMonthShortArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfNoBreakHyphenArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfObjectArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[25]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfPgNumArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[22]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfPictArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[26]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfPtabArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[33]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfRubyArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[28]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfSeparatorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[19]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfSoftHyphenArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfSymArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[21]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfT2Array() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[35]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfTArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfTabArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[24]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfYearLongArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[15]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public int sizeOfYearShortArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void unsetRPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void unsetRPr2() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty getAnnotationRefArray(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[16], i);
            if (cTEmpty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTBr getBrArray(int i) {
        CTBr cTBr;
        synchronized (monitor()) {
            check_orphaned();
            cTBr = (CTBr) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTBr == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTMarkup getCommentReferenceArray(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().find_element_user(PROPERTY_QNAME[31], i);
            if (cTMarkup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTRel getContentPartArray(int i) {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTRel == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty getContinuationSeparatorArray(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[20], i);
            if (cTEmpty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty getCrArray(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[23], i);
            if (cTEmpty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty getDayLongArray(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (cTEmpty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty getDayShortArray(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[10], i);
            if (cTEmpty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTText getDelInstrTextArray(int i) {
        CTText cTText;
        synchronized (monitor()) {
            check_orphaned();
            cTText = (CTText) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTText == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTText;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTText getDelTextArray(int i) {
        CTText cTText;
        synchronized (monitor()) {
            check_orphaned();
            cTText = (CTText) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTText == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTText;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTDrawing getDrawingArray(int i) {
        CTDrawing cTDrawing;
        synchronized (monitor()) {
            check_orphaned();
            cTDrawing = (CTDrawing) get_store().find_element_user(PROPERTY_QNAME[32], i);
            if (cTDrawing == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDrawing;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty getEndnoteRefArray(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[18], i);
            if (cTEmpty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTFtnEdnRef getEndnoteReferenceArray(int i) {
        CTFtnEdnRef cTFtnEdnRef;
        synchronized (monitor()) {
            check_orphaned();
            cTFtnEdnRef = (CTFtnEdnRef) get_store().find_element_user(PROPERTY_QNAME[30], i);
            if (cTFtnEdnRef == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFtnEdnRef;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTFldChar getFldCharArray(int i) {
        CTFldChar cTFldChar;
        synchronized (monitor()) {
            check_orphaned();
            cTFldChar = (CTFldChar) get_store().find_element_user(PROPERTY_QNAME[27], i);
            if (cTFldChar == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFldChar;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty getFootnoteRefArray(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[17], i);
            if (cTEmpty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTFtnEdnRef getFootnoteReferenceArray(int i) {
        CTFtnEdnRef cTFtnEdnRef;
        synchronized (monitor()) {
            check_orphaned();
            cTFtnEdnRef = (CTFtnEdnRef) get_store().find_element_user(PROPERTY_QNAME[29], i);
            if (cTFtnEdnRef == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFtnEdnRef;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTText getInstrTextArray(int i) {
        CTText cTText;
        synchronized (monitor()) {
            check_orphaned();
            cTText = (CTText) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTText == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTText;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty getLastRenderedPageBreakArray(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[34], i);
            if (cTEmpty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty getMonthLongArray(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[14], i);
            if (cTEmpty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty getMonthShortArray(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (cTEmpty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty getNoBreakHyphenArray(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (cTEmpty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTObject getObjectArray(int i) {
        CTObject cTObject;
        synchronized (monitor()) {
            check_orphaned();
            cTObject = (CTObject) get_store().find_element_user(PROPERTY_QNAME[25], i);
            if (cTObject == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty getPgNumArray(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[22], i);
            if (cTEmpty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTPicture getPictArray(int i) {
        CTPicture cTPicture;
        synchronized (monitor()) {
            check_orphaned();
            cTPicture = (CTPicture) get_store().find_element_user(PROPERTY_QNAME[26], i);
            if (cTPicture == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPicture;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTPTab getPtabArray(int i) {
        CTPTab cTPTab;
        synchronized (monitor()) {
            check_orphaned();
            cTPTab = (CTPTab) get_store().find_element_user(PROPERTY_QNAME[33], i);
            if (cTPTab == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPTab;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTRuby getRubyArray(int i) {
        CTRuby cTRuby;
        synchronized (monitor()) {
            check_orphaned();
            cTRuby = (CTRuby) get_store().find_element_user(PROPERTY_QNAME[28], i);
            if (cTRuby == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRuby;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty getSeparatorArray(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[19], i);
            if (cTEmpty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty getSoftHyphenArray(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (cTEmpty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTSym getSymArray(int i) {
        CTSym cTSym;
        synchronized (monitor()) {
            check_orphaned();
            cTSym = (CTSym) get_store().find_element_user(PROPERTY_QNAME[21], i);
            if (cTSym == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSym;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public org.openxmlformats.schemas.officeDocument.x2006.math.CTText getT2Array(int i) {
        org.openxmlformats.schemas.officeDocument.x2006.math.CTText cTText;
        synchronized (monitor()) {
            check_orphaned();
            cTText = (org.openxmlformats.schemas.officeDocument.x2006.math.CTText) get_store().find_element_user(PROPERTY_QNAME[35], i);
            if (cTText == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTText;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTText getTArray(int i) {
        CTText cTText;
        synchronized (monitor()) {
            check_orphaned();
            cTText = (CTText) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTText == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTText;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty getTabArray(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[24], i);
            if (cTEmpty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty getYearLongArray(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[15], i);
            if (cTEmpty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public CTEmpty getYearShortArray(int i) {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[12], i);
            if (cTEmpty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setAnnotationRefArray(int i, CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[16], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setBrArray(int i, CTBr cTBr) {
        generatedSetterHelperImpl(cTBr, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setCommentReferenceArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[31], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setContentPartArray(int i, CTRel cTRel) {
        generatedSetterHelperImpl(cTRel, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setContinuationSeparatorArray(int i, CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[20], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setCrArray(int i, CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[23], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setDayLongArray(int i, CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[13], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setDayShortArray(int i, CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[10], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setDelInstrTextArray(int i, CTText cTText) {
        generatedSetterHelperImpl(cTText, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setDelTextArray(int i, CTText cTText) {
        generatedSetterHelperImpl(cTText, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setDrawingArray(int i, CTDrawing cTDrawing) {
        generatedSetterHelperImpl(cTDrawing, PROPERTY_QNAME[32], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setEndnoteRefArray(int i, CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[18], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setEndnoteReferenceArray(int i, CTFtnEdnRef cTFtnEdnRef) {
        generatedSetterHelperImpl(cTFtnEdnRef, PROPERTY_QNAME[30], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setFldCharArray(int i, CTFldChar cTFldChar) {
        generatedSetterHelperImpl(cTFldChar, PROPERTY_QNAME[27], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setFootnoteRefArray(int i, CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[17], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setFootnoteReferenceArray(int i, CTFtnEdnRef cTFtnEdnRef) {
        generatedSetterHelperImpl(cTFtnEdnRef, PROPERTY_QNAME[29], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setInstrTextArray(int i, CTText cTText) {
        generatedSetterHelperImpl(cTText, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setLastRenderedPageBreakArray(int i, CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[34], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setMonthLongArray(int i, CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[14], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setMonthShortArray(int i, CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[11], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setNoBreakHyphenArray(int i, CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setObjectArray(int i, CTObject cTObject) {
        generatedSetterHelperImpl(cTObject, PROPERTY_QNAME[25], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setPgNumArray(int i, CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[22], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setPictArray(int i, CTPicture cTPicture) {
        generatedSetterHelperImpl(cTPicture, PROPERTY_QNAME[26], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setPtabArray(int i, CTPTab cTPTab) {
        generatedSetterHelperImpl(cTPTab, PROPERTY_QNAME[33], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setRubyArray(int i, CTRuby cTRuby) {
        generatedSetterHelperImpl(cTRuby, PROPERTY_QNAME[28], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setSeparatorArray(int i, CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[19], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setSoftHyphenArray(int i, CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[9], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setSymArray(int i, CTSym cTSym) {
        generatedSetterHelperImpl(cTSym, PROPERTY_QNAME[21], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setT2Array(int i, org.openxmlformats.schemas.officeDocument.x2006.math.CTText cTText) {
        generatedSetterHelperImpl(cTText, PROPERTY_QNAME[35], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setTArray(int i, CTText cTText) {
        generatedSetterHelperImpl(cTText, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setTabArray(int i, CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[24], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setYearLongArray(int i, CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[15], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTR
    public void setYearShortArray(int i, CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[12], i, (short) 2);
    }
}
