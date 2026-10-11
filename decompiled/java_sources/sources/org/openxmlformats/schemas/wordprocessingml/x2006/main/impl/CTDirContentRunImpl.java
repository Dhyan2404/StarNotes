package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBdoContentRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBookmark;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCustomXmlRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHyperlink;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMarkup;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMarkupRange;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMoveBookmark;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPerm;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPermStart;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTProofErr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRel;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSimpleField;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSmartTagRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrackChange;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STDirection;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTDirContentRunImpl;

/* loaded from: classes16.dex */
public class CTDirContentRunImpl extends XmlComplexContentImpl implements CTDirContentRun {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXml"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "smartTag"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "sdt"), new QName(XSSFRelation.NS_WORDPROCESSINGML, CouchFieldKey.KEY_DIR), new QName(XSSFRelation.NS_WORDPROCESSINGML, "bdo"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "r"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "proofErr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "permStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "permEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "bookmarkStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "bookmarkEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveFromRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveFromRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveToRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveToRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "commentRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "commentRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlInsRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlInsRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlDelRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlDelRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlMoveFromRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlMoveFromRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlMoveToRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlMoveToRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "ins"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "del"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveFrom"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveTo"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "oMathPara"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "oMath"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "fldSimple"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "hyperlink"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "subDoc"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTDirContentRunImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTBdoContentRun addNewBdo() {
        CTBdoContentRun cTBdoContentRun;
        synchronized (monitor()) {
            check_orphaned();
            cTBdoContentRun = (CTBdoContentRun) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTBdoContentRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkupRange addNewBookmarkEnd() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTBookmark addNewBookmarkStart() {
        CTBookmark cTBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTBookmark = (CTBookmark) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkupRange addNewCommentRangeEnd() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[16]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkupRange addNewCommentRangeStart() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[15]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTCustomXmlRun addNewCustomXml() {
        CTCustomXmlRun cTCustomXmlRun;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomXmlRun = (CTCustomXmlRun) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCustomXmlRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkup addNewCustomXmlDelRangeEnd() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[20]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTTrackChange addNewCustomXmlDelRangeStart() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[19]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkup addNewCustomXmlInsRangeEnd() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[18]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTTrackChange addNewCustomXmlInsRangeStart() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[17]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkup addNewCustomXmlMoveFromRangeEnd() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[22]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTTrackChange addNewCustomXmlMoveFromRangeStart() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[21]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkup addNewCustomXmlMoveToRangeEnd() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[24]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTTrackChange addNewCustomXmlMoveToRangeStart() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[23]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTRunTrackChange addNewDel() {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().add_element_user(PROPERTY_QNAME[26]);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTDirContentRun addNewDir() {
        CTDirContentRun cTDirContentRun;
        synchronized (monitor()) {
            check_orphaned();
            cTDirContentRun = (CTDirContentRun) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTDirContentRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTSimpleField addNewFldSimple() {
        CTSimpleField cTSimpleField;
        synchronized (monitor()) {
            check_orphaned();
            cTSimpleField = (CTSimpleField) get_store().add_element_user(PROPERTY_QNAME[31]);
        }
        return cTSimpleField;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTHyperlink addNewHyperlink() {
        CTHyperlink cTHyperlink;
        synchronized (monitor()) {
            check_orphaned();
            cTHyperlink = (CTHyperlink) get_store().add_element_user(PROPERTY_QNAME[32]);
        }
        return cTHyperlink;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTRunTrackChange addNewIns() {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().add_element_user(PROPERTY_QNAME[25]);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTRunTrackChange addNewMoveFrom() {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().add_element_user(PROPERTY_QNAME[27]);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkupRange addNewMoveFromRangeEnd() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMoveBookmark addNewMoveFromRangeStart() {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTRunTrackChange addNewMoveTo() {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().add_element_user(PROPERTY_QNAME[28]);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkupRange addNewMoveToRangeEnd() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMoveBookmark addNewMoveToRangeStart() {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTOMath addNewOMath() {
        CTOMath cTOMath;
        synchronized (monitor()) {
            check_orphaned();
            cTOMath = (CTOMath) get_store().add_element_user(PROPERTY_QNAME[30]);
        }
        return cTOMath;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTOMathPara addNewOMathPara() {
        CTOMathPara cTOMathPara;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathPara = (CTOMathPara) get_store().add_element_user(PROPERTY_QNAME[29]);
        }
        return cTOMathPara;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTPerm addNewPermEnd() {
        CTPerm cTPerm;
        synchronized (monitor()) {
            check_orphaned();
            cTPerm = (CTPerm) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTPerm;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTPermStart addNewPermStart() {
        CTPermStart cTPermStart;
        synchronized (monitor()) {
            check_orphaned();
            cTPermStart = (CTPermStart) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTPermStart;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTProofErr addNewProofErr() {
        CTProofErr cTProofErr;
        synchronized (monitor()) {
            check_orphaned();
            cTProofErr = (CTProofErr) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTProofErr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTR addNewR() {
        CTR ctr;
        synchronized (monitor()) {
            check_orphaned();
            ctr = (CTR) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return ctr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTSdtRun addNewSdt() {
        CTSdtRun cTSdtRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtRun = (CTSdtRun) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTSdtRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTSmartTagRun addNewSmartTag() {
        CTSmartTagRun cTSmartTagRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSmartTagRun = (CTSmartTagRun) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTSmartTagRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTRel addNewSubDoc() {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().add_element_user(PROPERTY_QNAME[33]);
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTBdoContentRun[] getBdoArray() {
        return (CTBdoContentRun[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTBdoContentRun[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTBdoContentRun> getBdoList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ta3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getBdoArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ua3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setBdoArray(((Integer) obj).intValue(), (CTBdoContentRun) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.va3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewBdo(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wa3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeBdo(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xa3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfBdoArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkupRange[] getBookmarkEndArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[10], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTMarkupRange> getBookmarkEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ya3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getBookmarkEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jb3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setBookmarkEndArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.kb3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewBookmarkEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.lb3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeBookmarkEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.mb3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfBookmarkEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTBookmark[] getBookmarkStartArray() {
        return (CTBookmark[]) getXmlObjectArray(PROPERTY_QNAME[9], new CTBookmark[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTBookmark> getBookmarkStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.l83
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getBookmarkStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.m83
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setBookmarkStartArray(((Integer) obj).intValue(), (CTBookmark) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.n83
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewBookmarkStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.o83
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeBookmarkStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.p83
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfBookmarkStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkupRange[] getCommentRangeEndArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[16], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTMarkupRange> getCommentRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ec3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getCommentRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fc3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setCommentRangeEndArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gc3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewCommentRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hc3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeCommentRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ic3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfCommentRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkupRange[] getCommentRangeStartArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[15], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTMarkupRange> getCommentRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zb3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getCommentRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ac3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setCommentRangeStartArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bc3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewCommentRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cc3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeCommentRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.dc3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfCommentRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTCustomXmlRun[] getCustomXmlArray() {
        return (CTCustomXmlRun[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCustomXmlRun[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkup[] getCustomXmlDelRangeEndArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[20], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTMarkup> getCustomXmlDelRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.x93
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getCustomXmlDelRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.y93
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setCustomXmlDelRangeEndArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.z93
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewCustomXmlDelRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.aa3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeCustomXmlDelRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ba3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfCustomXmlDelRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTTrackChange[] getCustomXmlDelRangeStartArray() {
        return (CTTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[19], new CTTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTTrackChange> getCustomXmlDelRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ob3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getCustomXmlDelRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pb3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setCustomXmlDelRangeStartArray(((Integer) obj).intValue(), (CTTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qb3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewCustomXmlDelRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rb3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeCustomXmlDelRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.sb3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfCustomXmlDelRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkup[] getCustomXmlInsRangeEndArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[18], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTMarkup> getCustomXmlInsRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.kc3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getCustomXmlInsRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.lc3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setCustomXmlInsRangeEndArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.mc3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewCustomXmlInsRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.nc3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeCustomXmlInsRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.oc3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfCustomXmlInsRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTTrackChange[] getCustomXmlInsRangeStartArray() {
        return (CTTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[17], new CTTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTTrackChange> getCustomXmlInsRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.k83
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getCustomXmlInsRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nb3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setCustomXmlInsRangeStartArray(((Integer) obj).intValue(), (CTTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.yb3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewCustomXmlInsRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jc3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeCustomXmlInsRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.uc3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfCustomXmlInsRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTCustomXmlRun> getCustomXmlList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vc3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getCustomXmlArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wc3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setCustomXmlArray(((Integer) obj).intValue(), (CTCustomXmlRun) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xc3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewCustomXml(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.yc3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeCustomXml(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zc3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfCustomXmlArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkup[] getCustomXmlMoveFromRangeEndArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[22], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTMarkup> getCustomXmlMoveFromRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ia3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getCustomXmlMoveFromRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ja3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setCustomXmlMoveFromRangeEndArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ka3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewCustomXmlMoveFromRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.la3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeCustomXmlMoveFromRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ma3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfCustomXmlMoveFromRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTTrackChange[] getCustomXmlMoveFromRangeStartArray() {
        return (CTTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[21], new CTTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTTrackChange> getCustomXmlMoveFromRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.b93
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getCustomXmlMoveFromRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.c93
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setCustomXmlMoveFromRangeStartArray(((Integer) obj).intValue(), (CTTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.d93
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewCustomXmlMoveFromRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.e93
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeCustomXmlMoveFromRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.f93
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfCustomXmlMoveFromRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkup[] getCustomXmlMoveToRangeEndArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[24], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTMarkup> getCustomXmlMoveToRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.za3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getCustomXmlMoveToRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ab3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setCustomXmlMoveToRangeEndArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bb3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewCustomXmlMoveToRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cb3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeCustomXmlMoveToRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.db3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfCustomXmlMoveToRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTTrackChange[] getCustomXmlMoveToRangeStartArray() {
        return (CTTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[23], new CTTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTTrackChange> getCustomXmlMoveToRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ad3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getCustomXmlMoveToRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bd3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setCustomXmlMoveToRangeStartArray(((Integer) obj).intValue(), (CTTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.cd3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewCustomXmlMoveToRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.dd3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeCustomXmlMoveToRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ed3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfCustomXmlMoveToRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTRunTrackChange[] getDelArray() {
        return (CTRunTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[26], new CTRunTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTRunTrackChange> getDelList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.se3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getDelArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.te3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setDelArray(((Integer) obj).intValue(), (CTRunTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ue3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewDel(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ve3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeDel(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.we3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfDelArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTDirContentRun[] getDirArray() {
        return (CTDirContentRun[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTDirContentRun[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTDirContentRun> getDirList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ld3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getDirArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.md3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setDirArray(((Integer) obj).intValue(), (CTDirContentRun) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nd3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewDir(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.od3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeDir(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pd3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfDirArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTSimpleField[] getFldSimpleArray() {
        return (CTSimpleField[]) getXmlObjectArray(PROPERTY_QNAME[31], new CTSimpleField[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTSimpleField> getFldSimpleList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gd3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getFldSimpleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hd3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setFldSimpleArray(((Integer) obj).intValue(), (CTSimpleField) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.id3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewFldSimple(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jd3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeFldSimple(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.kd3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfFldSimpleArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTHyperlink[] getHyperlinkArray() {
        return (CTHyperlink[]) getXmlObjectArray(PROPERTY_QNAME[32], new CTHyperlink[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTHyperlink> getHyperlinkList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.q83
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getHyperlinkArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.r83
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setHyperlinkArray(((Integer) obj).intValue(), (CTHyperlink) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.s83
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewHyperlink(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.t83
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeHyperlink(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.u83
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfHyperlinkArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTRunTrackChange[] getInsArray() {
        return (CTRunTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[25], new CTRunTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTRunTrackChange> getInsList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.h93
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getInsArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.i93
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setInsArray(((Integer) obj).intValue(), (CTRunTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.j93
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewIns(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.k93
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeIns(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.l93
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfInsArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTRunTrackChange[] getMoveFromArray() {
        return (CTRunTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[27], new CTRunTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTRunTrackChange> getMoveFromList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.oa3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getMoveFromArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pa3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setMoveFromArray(((Integer) obj).intValue(), (CTRunTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qa3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewMoveFrom(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ra3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeMoveFrom(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.sa3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfMoveFromArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkupRange[] getMoveFromRangeEndArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[12], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTMarkupRange> getMoveFromRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.m93
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getMoveFromRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.n93
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setMoveFromRangeEndArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.o93
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewMoveFromRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.p93
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeMoveFromRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.q93
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfMoveFromRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMoveBookmark[] getMoveFromRangeStartArray() {
        return (CTMoveBookmark[]) getXmlObjectArray(PROPERTY_QNAME[11], new CTMoveBookmark[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTMoveBookmark> getMoveFromRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ce3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getMoveFromRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.de3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setMoveFromRangeStartArray(((Integer) obj).intValue(), (CTMoveBookmark) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ee3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewMoveFromRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fe3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeMoveFromRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ge3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfMoveFromRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTRunTrackChange[] getMoveToArray() {
        return (CTRunTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[28], new CTRunTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTRunTrackChange> getMoveToList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.he3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getMoveToArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ie3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setMoveToArray(((Integer) obj).intValue(), (CTRunTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.je3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewMoveTo(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ke3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeMoveTo(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.le3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfMoveToArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkupRange[] getMoveToRangeEndArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[14], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTMarkupRange> getMoveToRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.w83
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getMoveToRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.x83
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setMoveToRangeEndArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.y83
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewMoveToRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.z83
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeMoveToRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.a93
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfMoveToRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMoveBookmark[] getMoveToRangeStartArray() {
        return (CTMoveBookmark[]) getXmlObjectArray(PROPERTY_QNAME[13], new CTMoveBookmark[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTMoveBookmark> getMoveToRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.pc3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getMoveToRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qc3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setMoveToRangeStartArray(((Integer) obj).intValue(), (CTMoveBookmark) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rc3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewMoveToRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.sc3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeMoveToRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.tc3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfMoveToRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTOMath[] getOMathArray() {
        return (CTOMath[]) getXmlObjectArray(PROPERTY_QNAME[30], new CTOMath[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTOMath> getOMathList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.tb3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getOMathArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ub3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setOMathArray(((Integer) obj).intValue(), (CTOMath) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vb3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewOMath(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wb3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeOMath(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xb3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfOMathArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTOMathPara[] getOMathParaArray() {
        return (CTOMathPara[]) getXmlObjectArray(PROPERTY_QNAME[29], new CTOMathPara[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTOMathPara> getOMathParaList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rd3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getOMathParaArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.sd3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setOMathParaArray(((Integer) obj).intValue(), (CTOMathPara) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.td3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewOMathPara(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ud3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeOMathPara(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vd3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfOMathParaArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTPerm[] getPermEndArray() {
        return (CTPerm[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTPerm[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTPerm> getPermEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.da3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getPermEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ea3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setPermEndArray(((Integer) obj).intValue(), (CTPerm) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fa3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewPermEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ga3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removePermEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ha3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfPermEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTPermStart[] getPermStartArray() {
        return (CTPermStart[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTPermStart[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTPermStart> getPermStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.s93
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getPermStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.t93
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setPermStartArray(((Integer) obj).intValue(), (CTPermStart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.u93
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewPermStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.v93
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removePermStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.w93
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfPermStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTProofErr[] getProofErrArray() {
        return (CTProofErr[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTProofErr[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTProofErr> getProofErrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fd3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getProofErrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qd3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setProofErrArray(((Integer) obj).intValue(), (CTProofErr) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.be3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewProofErr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.me3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeProofErr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xe3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfProofErrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTR[] getRArray() {
        return (CTR[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTR[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTR> getRList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wd3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getRArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xd3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setRArray(((Integer) obj).intValue(), (CTR) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.yd3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewR(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zd3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeR(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ae3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfRArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTSdtRun[] getSdtArray() {
        return (CTSdtRun[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTSdtRun[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTSdtRun> getSdtList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.v83
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getSdtArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.g93
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setSdtArray(((Integer) obj).intValue(), (CTSdtRun) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.r93
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewSdt(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ca3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeSdt(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.na3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfSdtArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTSmartTagRun[] getSmartTagArray() {
        return (CTSmartTagRun[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTSmartTagRun[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTSmartTagRun> getSmartTagList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ne3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getSmartTagArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.oe3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setSmartTagArray(((Integer) obj).intValue(), (CTSmartTagRun) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pe3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewSmartTag(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qe3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeSmartTag(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.re3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfSmartTagArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTRel[] getSubDocArray() {
        return (CTRel[]) getXmlObjectArray(PROPERTY_QNAME[33], new CTRel[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public List<CTRel> getSubDocList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.eb3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.getSubDocArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fb3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDirContentRunImpl.this.setSubDocArray(((Integer) obj).intValue(), (CTRel) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gb3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDirContentRunImpl.this.insertNewSubDoc(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hb3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDirContentRunImpl.this.removeSubDoc(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ib3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDirContentRunImpl.this.sizeOfSubDocArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public STDirection.Enum getVal() {
        STDirection.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[34]);
            r3 = simpleValue == null ? null : (STDirection.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTBdoContentRun insertNewBdo(int i) {
        CTBdoContentRun cTBdoContentRun;
        synchronized (monitor()) {
            check_orphaned();
            cTBdoContentRun = (CTBdoContentRun) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTBdoContentRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkupRange insertNewBookmarkEnd(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTBookmark insertNewBookmarkStart(int i) {
        CTBookmark cTBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTBookmark = (CTBookmark) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return cTBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkupRange insertNewCommentRangeEnd(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[16], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkupRange insertNewCommentRangeStart(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[15], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTCustomXmlRun insertNewCustomXml(int i) {
        CTCustomXmlRun cTCustomXmlRun;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomXmlRun = (CTCustomXmlRun) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCustomXmlRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkup insertNewCustomXmlDelRangeEnd(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[20], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTTrackChange insertNewCustomXmlDelRangeStart(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().insert_element_user(PROPERTY_QNAME[19], i);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkup insertNewCustomXmlInsRangeEnd(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[18], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTTrackChange insertNewCustomXmlInsRangeStart(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().insert_element_user(PROPERTY_QNAME[17], i);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkup insertNewCustomXmlMoveFromRangeEnd(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[22], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTTrackChange insertNewCustomXmlMoveFromRangeStart(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().insert_element_user(PROPERTY_QNAME[21], i);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkup insertNewCustomXmlMoveToRangeEnd(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[24], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTTrackChange insertNewCustomXmlMoveToRangeStart(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().insert_element_user(PROPERTY_QNAME[23], i);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTRunTrackChange insertNewDel(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().insert_element_user(PROPERTY_QNAME[26], i);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTDirContentRun insertNewDir(int i) {
        CTDirContentRun cTDirContentRun;
        synchronized (monitor()) {
            check_orphaned();
            cTDirContentRun = (CTDirContentRun) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTDirContentRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTSimpleField insertNewFldSimple(int i) {
        CTSimpleField cTSimpleField;
        synchronized (monitor()) {
            check_orphaned();
            cTSimpleField = (CTSimpleField) get_store().insert_element_user(PROPERTY_QNAME[31], i);
        }
        return cTSimpleField;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTHyperlink insertNewHyperlink(int i) {
        CTHyperlink cTHyperlink;
        synchronized (monitor()) {
            check_orphaned();
            cTHyperlink = (CTHyperlink) get_store().insert_element_user(PROPERTY_QNAME[32], i);
        }
        return cTHyperlink;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTRunTrackChange insertNewIns(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().insert_element_user(PROPERTY_QNAME[25], i);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTRunTrackChange insertNewMoveFrom(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().insert_element_user(PROPERTY_QNAME[27], i);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkupRange insertNewMoveFromRangeEnd(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[12], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMoveBookmark insertNewMoveFromRangeStart(int i) {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTRunTrackChange insertNewMoveTo(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().insert_element_user(PROPERTY_QNAME[28], i);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkupRange insertNewMoveToRangeEnd(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[14], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMoveBookmark insertNewMoveToRangeStart(int i) {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().insert_element_user(PROPERTY_QNAME[13], i);
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTOMath insertNewOMath(int i) {
        CTOMath cTOMath;
        synchronized (monitor()) {
            check_orphaned();
            cTOMath = (CTOMath) get_store().insert_element_user(PROPERTY_QNAME[30], i);
        }
        return cTOMath;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTOMathPara insertNewOMathPara(int i) {
        CTOMathPara cTOMathPara;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathPara = (CTOMathPara) get_store().insert_element_user(PROPERTY_QNAME[29], i);
        }
        return cTOMathPara;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTPerm insertNewPermEnd(int i) {
        CTPerm cTPerm;
        synchronized (monitor()) {
            check_orphaned();
            cTPerm = (CTPerm) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTPerm;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTPermStart insertNewPermStart(int i) {
        CTPermStart cTPermStart;
        synchronized (monitor()) {
            check_orphaned();
            cTPermStart = (CTPermStart) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTPermStart;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTProofErr insertNewProofErr(int i) {
        CTProofErr cTProofErr;
        synchronized (monitor()) {
            check_orphaned();
            cTProofErr = (CTProofErr) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTProofErr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTR insertNewR(int i) {
        CTR ctr;
        synchronized (monitor()) {
            check_orphaned();
            ctr = (CTR) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return ctr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTSdtRun insertNewSdt(int i) {
        CTSdtRun cTSdtRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtRun = (CTSdtRun) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTSdtRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTSmartTagRun insertNewSmartTag(int i) {
        CTSmartTagRun cTSmartTagRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSmartTagRun = (CTSmartTagRun) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTSmartTagRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTRel insertNewSubDoc(int i) {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().insert_element_user(PROPERTY_QNAME[33], i);
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[34]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeBdo(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeBookmarkEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeBookmarkStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeCommentRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[16], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeCommentRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeCustomXml(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeCustomXmlDelRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[20], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeCustomXmlDelRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[19], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeCustomXmlInsRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[18], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeCustomXmlInsRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[17], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeCustomXmlMoveFromRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[22], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeCustomXmlMoveFromRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[21], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeCustomXmlMoveToRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[24], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeCustomXmlMoveToRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[23], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeDel(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[26], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeDir(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeFldSimple(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[31], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeHyperlink(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[32], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeIns(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[25], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeMoveFrom(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[27], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeMoveFromRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeMoveFromRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeMoveTo(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[28], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeMoveToRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeMoveToRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeOMath(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[30], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeOMathPara(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[29], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removePermEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removePermStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeProofErr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeR(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeSdt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeSmartTag(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void removeSubDoc(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[33], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setBdoArray(CTBdoContentRun[] cTBdoContentRunArr) {
        check_orphaned();
        arraySetterHelper(cTBdoContentRunArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setBookmarkEndArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[10]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setBookmarkStartArray(CTBookmark[] cTBookmarkArr) {
        check_orphaned();
        arraySetterHelper(cTBookmarkArr, PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCommentRangeEndArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[16]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCommentRangeStartArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[15]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCustomXmlArray(CTCustomXmlRun[] cTCustomXmlRunArr) {
        check_orphaned();
        arraySetterHelper(cTCustomXmlRunArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCustomXmlDelRangeEndArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[20]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCustomXmlDelRangeStartArray(CTTrackChange[] cTTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTTrackChangeArr, PROPERTY_QNAME[19]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCustomXmlInsRangeEndArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[18]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCustomXmlInsRangeStartArray(CTTrackChange[] cTTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTTrackChangeArr, PROPERTY_QNAME[17]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCustomXmlMoveFromRangeEndArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[22]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCustomXmlMoveFromRangeStartArray(CTTrackChange[] cTTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTTrackChangeArr, PROPERTY_QNAME[21]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCustomXmlMoveToRangeEndArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[24]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCustomXmlMoveToRangeStartArray(CTTrackChange[] cTTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTTrackChangeArr, PROPERTY_QNAME[23]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setDelArray(CTRunTrackChange[] cTRunTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRunTrackChangeArr, PROPERTY_QNAME[26]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setDirArray(CTDirContentRun[] cTDirContentRunArr) {
        check_orphaned();
        arraySetterHelper(cTDirContentRunArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setFldSimpleArray(CTSimpleField[] cTSimpleFieldArr) {
        check_orphaned();
        arraySetterHelper(cTSimpleFieldArr, PROPERTY_QNAME[31]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setHyperlinkArray(CTHyperlink[] cTHyperlinkArr) {
        check_orphaned();
        arraySetterHelper(cTHyperlinkArr, PROPERTY_QNAME[32]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setInsArray(CTRunTrackChange[] cTRunTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRunTrackChangeArr, PROPERTY_QNAME[25]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setMoveFromArray(CTRunTrackChange[] cTRunTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRunTrackChangeArr, PROPERTY_QNAME[27]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setMoveFromRangeEndArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[12]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setMoveFromRangeStartArray(CTMoveBookmark[] cTMoveBookmarkArr) {
        check_orphaned();
        arraySetterHelper(cTMoveBookmarkArr, PROPERTY_QNAME[11]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setMoveToArray(CTRunTrackChange[] cTRunTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRunTrackChangeArr, PROPERTY_QNAME[28]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setMoveToRangeEndArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[14]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setMoveToRangeStartArray(CTMoveBookmark[] cTMoveBookmarkArr) {
        check_orphaned();
        arraySetterHelper(cTMoveBookmarkArr, PROPERTY_QNAME[13]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setOMathArray(CTOMath[] cTOMathArr) {
        check_orphaned();
        arraySetterHelper(cTOMathArr, PROPERTY_QNAME[30]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setOMathParaArray(CTOMathPara[] cTOMathParaArr) {
        check_orphaned();
        arraySetterHelper(cTOMathParaArr, PROPERTY_QNAME[29]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setPermEndArray(CTPerm[] cTPermArr) {
        check_orphaned();
        arraySetterHelper(cTPermArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setPermStartArray(CTPermStart[] cTPermStartArr) {
        check_orphaned();
        arraySetterHelper(cTPermStartArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setProofErrArray(CTProofErr[] cTProofErrArr) {
        check_orphaned();
        arraySetterHelper(cTProofErrArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setRArray(CTR[] ctrArr) {
        check_orphaned();
        arraySetterHelper(ctrArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setSdtArray(CTSdtRun[] cTSdtRunArr) {
        check_orphaned();
        arraySetterHelper(cTSdtRunArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setSmartTagArray(CTSmartTagRun[] cTSmartTagRunArr) {
        check_orphaned();
        arraySetterHelper(cTSmartTagRunArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setSubDocArray(CTRel[] cTRelArr) {
        check_orphaned();
        arraySetterHelper(cTRelArr, PROPERTY_QNAME[33]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setVal(STDirection.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[34]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[34]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfBdoArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfBookmarkEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfBookmarkStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfCommentRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[16]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfCommentRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[15]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfCustomXmlArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfCustomXmlDelRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[20]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfCustomXmlDelRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[19]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfCustomXmlInsRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[18]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfCustomXmlInsRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[17]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfCustomXmlMoveFromRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[22]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfCustomXmlMoveFromRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[21]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfCustomXmlMoveToRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[24]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfCustomXmlMoveToRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[23]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfDelArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[26]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfDirArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfFldSimpleArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[31]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfHyperlinkArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[32]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfInsArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[25]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfMoveFromArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[27]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfMoveFromRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfMoveFromRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfMoveToArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[28]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfMoveToRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[14]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfMoveToRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[13]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfOMathArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[30]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfOMathParaArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[29]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfPermEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfPermStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfProofErrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfRArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfSdtArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfSmartTagArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public int sizeOfSubDocArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[33]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[34]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public STDirection xgetVal() {
        STDirection sTDirection;
        synchronized (monitor()) {
            check_orphaned();
            sTDirection = (STDirection) get_store().find_attribute_user(PROPERTY_QNAME[34]);
        }
        return sTDirection;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void xsetVal(STDirection sTDirection) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDirection sTDirection2 = (STDirection) typeStore.find_attribute_user(qNameArr[34]);
            if (sTDirection2 == null) {
                sTDirection2 = (STDirection) get_store().add_attribute_user(qNameArr[34]);
            }
            sTDirection2.set(sTDirection);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTBdoContentRun getBdoArray(int i) {
        CTBdoContentRun cTBdoContentRun;
        synchronized (monitor()) {
            check_orphaned();
            cTBdoContentRun = (CTBdoContentRun) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTBdoContentRun == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBdoContentRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkupRange getBookmarkEndArray(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().find_element_user(PROPERTY_QNAME[10], i);
            if (cTMarkupRange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTBookmark getBookmarkStartArray(int i) {
        CTBookmark cTBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTBookmark = (CTBookmark) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (cTBookmark == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkupRange getCommentRangeEndArray(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().find_element_user(PROPERTY_QNAME[16], i);
            if (cTMarkupRange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkupRange getCommentRangeStartArray(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().find_element_user(PROPERTY_QNAME[15], i);
            if (cTMarkupRange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTCustomXmlRun getCustomXmlArray(int i) {
        CTCustomXmlRun cTCustomXmlRun;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomXmlRun = (CTCustomXmlRun) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCustomXmlRun == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCustomXmlRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkup getCustomXmlDelRangeEndArray(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().find_element_user(PROPERTY_QNAME[20], i);
            if (cTMarkup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTTrackChange getCustomXmlDelRangeStartArray(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().find_element_user(PROPERTY_QNAME[19], i);
            if (cTTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkup getCustomXmlInsRangeEndArray(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().find_element_user(PROPERTY_QNAME[18], i);
            if (cTMarkup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTTrackChange getCustomXmlInsRangeStartArray(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().find_element_user(PROPERTY_QNAME[17], i);
            if (cTTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkup getCustomXmlMoveFromRangeEndArray(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().find_element_user(PROPERTY_QNAME[22], i);
            if (cTMarkup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTTrackChange getCustomXmlMoveFromRangeStartArray(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().find_element_user(PROPERTY_QNAME[21], i);
            if (cTTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkup getCustomXmlMoveToRangeEndArray(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().find_element_user(PROPERTY_QNAME[24], i);
            if (cTMarkup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTTrackChange getCustomXmlMoveToRangeStartArray(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().find_element_user(PROPERTY_QNAME[23], i);
            if (cTTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTRunTrackChange getDelArray(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().find_element_user(PROPERTY_QNAME[26], i);
            if (cTRunTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTDirContentRun getDirArray(int i) {
        CTDirContentRun cTDirContentRun;
        synchronized (monitor()) {
            check_orphaned();
            cTDirContentRun = (CTDirContentRun) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTDirContentRun == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDirContentRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTSimpleField getFldSimpleArray(int i) {
        CTSimpleField cTSimpleField;
        synchronized (monitor()) {
            check_orphaned();
            cTSimpleField = (CTSimpleField) get_store().find_element_user(PROPERTY_QNAME[31], i);
            if (cTSimpleField == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSimpleField;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTHyperlink getHyperlinkArray(int i) {
        CTHyperlink cTHyperlink;
        synchronized (monitor()) {
            check_orphaned();
            cTHyperlink = (CTHyperlink) get_store().find_element_user(PROPERTY_QNAME[32], i);
            if (cTHyperlink == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTHyperlink;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTRunTrackChange getInsArray(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().find_element_user(PROPERTY_QNAME[25], i);
            if (cTRunTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTRunTrackChange getMoveFromArray(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().find_element_user(PROPERTY_QNAME[27], i);
            if (cTRunTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkupRange getMoveFromRangeEndArray(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().find_element_user(PROPERTY_QNAME[12], i);
            if (cTMarkupRange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMoveBookmark getMoveFromRangeStartArray(int i) {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (cTMoveBookmark == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTRunTrackChange getMoveToArray(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().find_element_user(PROPERTY_QNAME[28], i);
            if (cTRunTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMarkupRange getMoveToRangeEndArray(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().find_element_user(PROPERTY_QNAME[14], i);
            if (cTMarkupRange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTMoveBookmark getMoveToRangeStartArray(int i) {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (cTMoveBookmark == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTOMath getOMathArray(int i) {
        CTOMath cTOMath;
        synchronized (monitor()) {
            check_orphaned();
            cTOMath = (CTOMath) get_store().find_element_user(PROPERTY_QNAME[30], i);
            if (cTOMath == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOMath;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTOMathPara getOMathParaArray(int i) {
        CTOMathPara cTOMathPara;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathPara = (CTOMathPara) get_store().find_element_user(PROPERTY_QNAME[29], i);
            if (cTOMathPara == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOMathPara;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTPerm getPermEndArray(int i) {
        CTPerm cTPerm;
        synchronized (monitor()) {
            check_orphaned();
            cTPerm = (CTPerm) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (cTPerm == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPerm;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTPermStart getPermStartArray(int i) {
        CTPermStart cTPermStart;
        synchronized (monitor()) {
            check_orphaned();
            cTPermStart = (CTPermStart) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTPermStart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPermStart;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTProofErr getProofErrArray(int i) {
        CTProofErr cTProofErr;
        synchronized (monitor()) {
            check_orphaned();
            cTProofErr = (CTProofErr) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTProofErr == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTProofErr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTR getRArray(int i) {
        CTR ctr;
        synchronized (monitor()) {
            check_orphaned();
            ctr = (CTR) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (ctr == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return ctr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTSdtRun getSdtArray(int i) {
        CTSdtRun cTSdtRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtRun = (CTSdtRun) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTSdtRun == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSdtRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTSmartTagRun getSmartTagArray(int i) {
        CTSmartTagRun cTSmartTagRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSmartTagRun = (CTSmartTagRun) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTSmartTagRun == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSmartTagRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public CTRel getSubDocArray(int i) {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().find_element_user(PROPERTY_QNAME[33], i);
            if (cTRel == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setBdoArray(int i, CTBdoContentRun cTBdoContentRun) {
        generatedSetterHelperImpl(cTBdoContentRun, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setBookmarkEndArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[10], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setBookmarkStartArray(int i, CTBookmark cTBookmark) {
        generatedSetterHelperImpl(cTBookmark, PROPERTY_QNAME[9], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCommentRangeEndArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[16], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCommentRangeStartArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[15], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCustomXmlArray(int i, CTCustomXmlRun cTCustomXmlRun) {
        generatedSetterHelperImpl(cTCustomXmlRun, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCustomXmlDelRangeEndArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[20], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCustomXmlDelRangeStartArray(int i, CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[19], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCustomXmlInsRangeEndArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[18], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCustomXmlInsRangeStartArray(int i, CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[17], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCustomXmlMoveFromRangeEndArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[22], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCustomXmlMoveFromRangeStartArray(int i, CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[21], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCustomXmlMoveToRangeEndArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[24], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setCustomXmlMoveToRangeStartArray(int i, CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[23], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setDelArray(int i, CTRunTrackChange cTRunTrackChange) {
        generatedSetterHelperImpl(cTRunTrackChange, PROPERTY_QNAME[26], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setDirArray(int i, CTDirContentRun cTDirContentRun) {
        generatedSetterHelperImpl(cTDirContentRun, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setFldSimpleArray(int i, CTSimpleField cTSimpleField) {
        generatedSetterHelperImpl(cTSimpleField, PROPERTY_QNAME[31], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setHyperlinkArray(int i, CTHyperlink cTHyperlink) {
        generatedSetterHelperImpl(cTHyperlink, PROPERTY_QNAME[32], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setInsArray(int i, CTRunTrackChange cTRunTrackChange) {
        generatedSetterHelperImpl(cTRunTrackChange, PROPERTY_QNAME[25], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setMoveFromArray(int i, CTRunTrackChange cTRunTrackChange) {
        generatedSetterHelperImpl(cTRunTrackChange, PROPERTY_QNAME[27], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setMoveFromRangeEndArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[12], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setMoveFromRangeStartArray(int i, CTMoveBookmark cTMoveBookmark) {
        generatedSetterHelperImpl(cTMoveBookmark, PROPERTY_QNAME[11], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setMoveToArray(int i, CTRunTrackChange cTRunTrackChange) {
        generatedSetterHelperImpl(cTRunTrackChange, PROPERTY_QNAME[28], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setMoveToRangeEndArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[14], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setMoveToRangeStartArray(int i, CTMoveBookmark cTMoveBookmark) {
        generatedSetterHelperImpl(cTMoveBookmark, PROPERTY_QNAME[13], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setOMathArray(int i, CTOMath cTOMath) {
        generatedSetterHelperImpl(cTOMath, PROPERTY_QNAME[30], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setOMathParaArray(int i, CTOMathPara cTOMathPara) {
        generatedSetterHelperImpl(cTOMathPara, PROPERTY_QNAME[29], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setPermEndArray(int i, CTPerm cTPerm) {
        generatedSetterHelperImpl(cTPerm, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setPermStartArray(int i, CTPermStart cTPermStart) {
        generatedSetterHelperImpl(cTPermStart, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setProofErrArray(int i, CTProofErr cTProofErr) {
        generatedSetterHelperImpl(cTProofErr, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setRArray(int i, CTR ctr) {
        generatedSetterHelperImpl(ctr, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setSdtArray(int i, CTSdtRun cTSdtRun) {
        generatedSetterHelperImpl(cTSdtRun, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setSmartTagArray(int i, CTSmartTagRun cTSmartTagRun) {
        generatedSetterHelperImpl(cTSmartTagRun, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun
    public void setSubDocArray(int i, CTRel cTRel) {
        generatedSetterHelperImpl(cTRel, PROPERTY_QNAME[33], i, (short) 2);
    }
}
