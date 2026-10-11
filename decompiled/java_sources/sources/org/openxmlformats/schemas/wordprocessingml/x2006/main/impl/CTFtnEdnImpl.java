package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import java.math.BigInteger;
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
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTAltChunk;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBookmark;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCustomXmlBlock;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMarkup;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMarkupRange;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMoveBookmark;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPerm;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPermStart;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTProofErr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrackChange;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STDecimalNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STFtnEdn;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTFtnEdnImpl;

/* loaded from: classes16.dex */
public class CTFtnEdnImpl extends XmlComplexContentImpl implements CTFtnEdn {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXml"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "sdt"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "p"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "tbl"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "proofErr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "permStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "permEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "bookmarkStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "bookmarkEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveFromRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveFromRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveToRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveToRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "commentRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "commentRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlInsRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlInsRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlDelRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlDelRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlMoveFromRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlMoveFromRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlMoveToRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlMoveToRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "ins"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "del"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveFrom"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveTo"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "oMathPara"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "oMath"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "altChunk"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "type"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "id")};
    private static final long serialVersionUID = 1;

    public CTFtnEdnImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTAltChunk addNewAltChunk() {
        CTAltChunk cTAltChunk;
        synchronized (monitor()) {
            check_orphaned();
            cTAltChunk = (CTAltChunk) get_store().add_element_user(PROPERTY_QNAME[29]);
        }
        return cTAltChunk;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkupRange addNewBookmarkEnd() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTBookmark addNewBookmarkStart() {
        CTBookmark cTBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTBookmark = (CTBookmark) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkupRange addNewCommentRangeEnd() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkupRange addNewCommentRangeStart() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTCustomXmlBlock addNewCustomXml() {
        CTCustomXmlBlock cTCustomXmlBlock;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomXmlBlock = (CTCustomXmlBlock) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCustomXmlBlock;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkup addNewCustomXmlDelRangeEnd() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[18]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTTrackChange addNewCustomXmlDelRangeStart() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[17]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkup addNewCustomXmlInsRangeEnd() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[16]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTTrackChange addNewCustomXmlInsRangeStart() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[15]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkup addNewCustomXmlMoveFromRangeEnd() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[20]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTTrackChange addNewCustomXmlMoveFromRangeStart() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[19]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkup addNewCustomXmlMoveToRangeEnd() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[22]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTTrackChange addNewCustomXmlMoveToRangeStart() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[21]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTRunTrackChange addNewDel() {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().add_element_user(PROPERTY_QNAME[24]);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTRunTrackChange addNewIns() {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().add_element_user(PROPERTY_QNAME[23]);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTRunTrackChange addNewMoveFrom() {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().add_element_user(PROPERTY_QNAME[25]);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkupRange addNewMoveFromRangeEnd() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMoveBookmark addNewMoveFromRangeStart() {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTRunTrackChange addNewMoveTo() {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().add_element_user(PROPERTY_QNAME[26]);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkupRange addNewMoveToRangeEnd() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMoveBookmark addNewMoveToRangeStart() {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTOMath addNewOMath() {
        CTOMath cTOMath;
        synchronized (monitor()) {
            check_orphaned();
            cTOMath = (CTOMath) get_store().add_element_user(PROPERTY_QNAME[28]);
        }
        return cTOMath;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTOMathPara addNewOMathPara() {
        CTOMathPara cTOMathPara;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathPara = (CTOMathPara) get_store().add_element_user(PROPERTY_QNAME[27]);
        }
        return cTOMathPara;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTP addNewP() {
        CTP ctp;
        synchronized (monitor()) {
            check_orphaned();
            ctp = (CTP) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return ctp;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTPerm addNewPermEnd() {
        CTPerm cTPerm;
        synchronized (monitor()) {
            check_orphaned();
            cTPerm = (CTPerm) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTPerm;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTPermStart addNewPermStart() {
        CTPermStart cTPermStart;
        synchronized (monitor()) {
            check_orphaned();
            cTPermStart = (CTPermStart) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTPermStart;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTProofErr addNewProofErr() {
        CTProofErr cTProofErr;
        synchronized (monitor()) {
            check_orphaned();
            cTProofErr = (CTProofErr) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTProofErr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTSdtBlock addNewSdt() {
        CTSdtBlock cTSdtBlock;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtBlock = (CTSdtBlock) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTSdtBlock;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTTbl addNewTbl() {
        CTTbl cTTbl;
        synchronized (monitor()) {
            check_orphaned();
            cTTbl = (CTTbl) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTTbl;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTAltChunk[] getAltChunkArray() {
        return (CTAltChunk[]) getXmlObjectArray(PROPERTY_QNAME[29], new CTAltChunk[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTAltChunk> getAltChunkList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.z24
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getAltChunkArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.i54
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setAltChunkArray(((Integer) obj).intValue(), (CTAltChunk) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.t54
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewAltChunk(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.e64
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeAltChunk(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.p64
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfAltChunkArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkupRange[] getBookmarkEndArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTMarkupRange> getBookmarkEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.o54
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getBookmarkEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.p54
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setBookmarkEndArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.q54
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewBookmarkEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.r54
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeBookmarkEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.s54
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfBookmarkEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTBookmark[] getBookmarkStartArray() {
        return (CTBookmark[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTBookmark[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTBookmark> getBookmarkStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.m74
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getBookmarkStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.n74
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setBookmarkStartArray(((Integer) obj).intValue(), (CTBookmark) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.o74
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewBookmarkStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.p74
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeBookmarkStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.q74
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfBookmarkStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkupRange[] getCommentRangeEndArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[14], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTMarkupRange> getCommentRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.k64
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getCommentRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.l64
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setCommentRangeEndArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.m64
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewCommentRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.n64
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeCommentRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.o64
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfCommentRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkupRange[] getCommentRangeStartArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[13], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTMarkupRange> getCommentRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.m44
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getCommentRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.n44
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setCommentRangeStartArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.o44
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewCommentRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.p44
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeCommentRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.q44
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfCommentRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTCustomXmlBlock[] getCustomXmlArray() {
        return (CTCustomXmlBlock[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCustomXmlBlock[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkup[] getCustomXmlDelRangeEndArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[18], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTMarkup> getCustomXmlDelRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.j54
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getCustomXmlDelRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.k54
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setCustomXmlDelRangeEndArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.l54
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewCustomXmlDelRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.m54
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeCustomXmlDelRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.n54
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfCustomXmlDelRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTTrackChange[] getCustomXmlDelRangeStartArray() {
        return (CTTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[17], new CTTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTTrackChange> getCustomXmlDelRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.r74
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getCustomXmlDelRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.s74
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setCustomXmlDelRangeStartArray(((Integer) obj).intValue(), (CTTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.t74
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewCustomXmlDelRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.u74
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeCustomXmlDelRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.v74
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfCustomXmlDelRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkup[] getCustomXmlInsRangeEndArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[16], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTMarkup> getCustomXmlInsRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.k34
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getCustomXmlInsRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.v34
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setCustomXmlInsRangeEndArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.g44
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewCustomXmlInsRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.r44
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeCustomXmlInsRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.c54
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfCustomXmlInsRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTTrackChange[] getCustomXmlInsRangeStartArray() {
        return (CTTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[15], new CTTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTTrackChange> getCustomXmlInsRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.g74
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getCustomXmlInsRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.h74
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setCustomXmlInsRangeStartArray(((Integer) obj).intValue(), (CTTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.i74
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewCustomXmlInsRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.j74
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeCustomXmlInsRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.k74
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfCustomXmlInsRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTCustomXmlBlock> getCustomXmlList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.n84
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getCustomXmlArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.o84
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setCustomXmlArray(((Integer) obj).intValue(), (CTCustomXmlBlock) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.p84
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewCustomXml(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.q84
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeCustomXml(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.r84
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfCustomXmlArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkup[] getCustomXmlMoveFromRangeEndArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[20], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTMarkup> getCustomXmlMoveFromRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.f64
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getCustomXmlMoveFromRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.g64
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setCustomXmlMoveFromRangeEndArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.h64
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewCustomXmlMoveFromRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.i64
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeCustomXmlMoveFromRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.j64
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfCustomXmlMoveFromRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTTrackChange[] getCustomXmlMoveFromRangeStartArray() {
        return (CTTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[19], new CTTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTTrackChange> getCustomXmlMoveFromRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.f34
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getCustomXmlMoveFromRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.g34
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setCustomXmlMoveFromRangeStartArray(((Integer) obj).intValue(), (CTTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.h34
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewCustomXmlMoveFromRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.i34
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeCustomXmlMoveFromRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.j34
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfCustomXmlMoveFromRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkup[] getCustomXmlMoveToRangeEndArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[22], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTMarkup> getCustomXmlMoveToRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.a74
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getCustomXmlMoveToRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.l74
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setCustomXmlMoveToRangeEndArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.w74
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewCustomXmlMoveToRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.h84
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeCustomXmlMoveToRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.s84
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfCustomXmlMoveToRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTTrackChange[] getCustomXmlMoveToRangeStartArray() {
        return (CTTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[21], new CTTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTTrackChange> getCustomXmlMoveToRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.c84
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getCustomXmlMoveToRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.d84
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setCustomXmlMoveToRangeStartArray(((Integer) obj).intValue(), (CTTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.e84
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewCustomXmlMoveToRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.f84
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeCustomXmlMoveToRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.g84
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfCustomXmlMoveToRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTRunTrackChange[] getDelArray() {
        return (CTRunTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[24], new CTRunTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTRunTrackChange> getDelList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.b74
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getDelArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.c74
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setDelArray(((Integer) obj).intValue(), (CTRunTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.d74
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewDel(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.e74
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeDel(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.f74
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfDelArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public BigInteger getId() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[31]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTRunTrackChange[] getInsArray() {
        return (CTRunTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[23], new CTRunTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTRunTrackChange> getInsList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.a34
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getInsArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.b34
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setInsArray(((Integer) obj).intValue(), (CTRunTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.c34
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewIns(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.d34
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeIns(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.e34
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfInsArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTRunTrackChange[] getMoveFromArray() {
        return (CTRunTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[25], new CTRunTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTRunTrackChange> getMoveFromList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.x44
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getMoveFromArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.y44
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setMoveFromArray(((Integer) obj).intValue(), (CTRunTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.z44
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewMoveFrom(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.a54
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeMoveFrom(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.b54
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfMoveFromArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkupRange[] getMoveFromRangeEndArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[10], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTMarkupRange> getMoveFromRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.x74
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getMoveFromRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.y74
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setMoveFromRangeEndArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.z74
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewMoveFromRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.a84
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeMoveFromRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.b84
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfMoveFromRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMoveBookmark[] getMoveFromRangeStartArray() {
        return (CTMoveBookmark[]) getXmlObjectArray(PROPERTY_QNAME[9], new CTMoveBookmark[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTMoveBookmark> getMoveFromRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.q64
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getMoveFromRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.r64
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setMoveFromRangeStartArray(((Integer) obj).intValue(), (CTMoveBookmark) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.s64
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewMoveFromRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.t64
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeMoveFromRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.u64
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfMoveFromRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTRunTrackChange[] getMoveToArray() {
        return (CTRunTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[26], new CTRunTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTRunTrackChange> getMoveToList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.h44
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getMoveToArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.i44
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setMoveToArray(((Integer) obj).intValue(), (CTRunTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.j44
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewMoveTo(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.k44
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeMoveTo(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.l44
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfMoveToArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkupRange[] getMoveToRangeEndArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[12], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTMarkupRange> getMoveToRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.z54
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getMoveToRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.a64
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setMoveToRangeEndArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.b64
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewMoveToRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.c64
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeMoveToRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.d64
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfMoveToRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMoveBookmark[] getMoveToRangeStartArray() {
        return (CTMoveBookmark[]) getXmlObjectArray(PROPERTY_QNAME[11], new CTMoveBookmark[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTMoveBookmark> getMoveToRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.l34
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getMoveToRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.m34
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setMoveToRangeStartArray(((Integer) obj).intValue(), (CTMoveBookmark) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.n34
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewMoveToRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.o34
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeMoveToRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.p34
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfMoveToRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTOMath[] getOMathArray() {
        return (CTOMath[]) getXmlObjectArray(PROPERTY_QNAME[28], new CTOMath[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTOMath> getOMathList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.s44
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getOMathArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.t44
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setOMathArray(((Integer) obj).intValue(), (CTOMath) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.u44
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewOMath(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.v44
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeOMath(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.w44
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfOMathArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTOMathPara[] getOMathParaArray() {
        return (CTOMathPara[]) getXmlObjectArray(PROPERTY_QNAME[27], new CTOMathPara[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTOMathPara> getOMathParaList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.u54
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getOMathParaArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.v54
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setOMathParaArray(((Integer) obj).intValue(), (CTOMathPara) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.w54
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewOMathPara(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.x54
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeOMathPara(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.y54
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfOMathParaArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTP[] getPArray() {
        return (CTP[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTP[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTP> getPList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.d54
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getPArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.e54
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setPArray(((Integer) obj).intValue(), (CTP) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.f54
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewP(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.g54
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeP(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.h54
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfPArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTPerm[] getPermEndArray() {
        return (CTPerm[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTPerm[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTPerm> getPermEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.v64
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getPermEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.w64
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setPermEndArray(((Integer) obj).intValue(), (CTPerm) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.x64
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewPermEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.y64
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removePermEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.z64
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfPermEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTPermStart[] getPermStartArray() {
        return (CTPermStart[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTPermStart[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTPermStart> getPermStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.i84
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getPermStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.j84
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setPermStartArray(((Integer) obj).intValue(), (CTPermStart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.k84
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewPermStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.l84
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removePermStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.m84
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfPermStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTProofErr[] getProofErrArray() {
        return (CTProofErr[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTProofErr[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTProofErr> getProofErrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.w34
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getProofErrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.x34
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setProofErrArray(((Integer) obj).intValue(), (CTProofErr) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.y34
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewProofErr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.z34
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeProofErr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.a44
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfProofErrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTSdtBlock[] getSdtArray() {
        return (CTSdtBlock[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTSdtBlock[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTSdtBlock> getSdtList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.q34
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getSdtArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.r34
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setSdtArray(((Integer) obj).intValue(), (CTSdtBlock) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.s34
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewSdt(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.t34
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeSdt(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.u34
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfSdtArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTTbl[] getTblArray() {
        return (CTTbl[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTTbl[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public List<CTTbl> getTblList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.b44
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.getTblArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.c44
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFtnEdnImpl.this.setTblArray(((Integer) obj).intValue(), (CTTbl) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.d44
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFtnEdnImpl.this.insertNewTbl(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.e44
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFtnEdnImpl.this.removeTbl(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.f44
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFtnEdnImpl.this.sizeOfTblArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public STFtnEdn.Enum getType() {
        STFtnEdn.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[30]);
            r3 = simpleValue == null ? null : (STFtnEdn.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTAltChunk insertNewAltChunk(int i) {
        CTAltChunk cTAltChunk;
        synchronized (monitor()) {
            check_orphaned();
            cTAltChunk = (CTAltChunk) get_store().insert_element_user(PROPERTY_QNAME[29], i);
        }
        return cTAltChunk;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkupRange insertNewBookmarkEnd(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTBookmark insertNewBookmarkStart(int i) {
        CTBookmark cTBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTBookmark = (CTBookmark) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkupRange insertNewCommentRangeEnd(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[14], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkupRange insertNewCommentRangeStart(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[13], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTCustomXmlBlock insertNewCustomXml(int i) {
        CTCustomXmlBlock cTCustomXmlBlock;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomXmlBlock = (CTCustomXmlBlock) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCustomXmlBlock;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkup insertNewCustomXmlDelRangeEnd(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[18], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTTrackChange insertNewCustomXmlDelRangeStart(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().insert_element_user(PROPERTY_QNAME[17], i);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkup insertNewCustomXmlInsRangeEnd(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[16], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTTrackChange insertNewCustomXmlInsRangeStart(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().insert_element_user(PROPERTY_QNAME[15], i);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkup insertNewCustomXmlMoveFromRangeEnd(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[20], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTTrackChange insertNewCustomXmlMoveFromRangeStart(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().insert_element_user(PROPERTY_QNAME[19], i);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkup insertNewCustomXmlMoveToRangeEnd(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[22], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTTrackChange insertNewCustomXmlMoveToRangeStart(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().insert_element_user(PROPERTY_QNAME[21], i);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTRunTrackChange insertNewDel(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().insert_element_user(PROPERTY_QNAME[24], i);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTRunTrackChange insertNewIns(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().insert_element_user(PROPERTY_QNAME[23], i);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTRunTrackChange insertNewMoveFrom(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().insert_element_user(PROPERTY_QNAME[25], i);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkupRange insertNewMoveFromRangeEnd(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMoveBookmark insertNewMoveFromRangeStart(int i) {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTRunTrackChange insertNewMoveTo(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().insert_element_user(PROPERTY_QNAME[26], i);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkupRange insertNewMoveToRangeEnd(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[12], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMoveBookmark insertNewMoveToRangeStart(int i) {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTOMath insertNewOMath(int i) {
        CTOMath cTOMath;
        synchronized (monitor()) {
            check_orphaned();
            cTOMath = (CTOMath) get_store().insert_element_user(PROPERTY_QNAME[28], i);
        }
        return cTOMath;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTOMathPara insertNewOMathPara(int i) {
        CTOMathPara cTOMathPara;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathPara = (CTOMathPara) get_store().insert_element_user(PROPERTY_QNAME[27], i);
        }
        return cTOMathPara;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTP insertNewP(int i) {
        CTP ctp;
        synchronized (monitor()) {
            check_orphaned();
            ctp = (CTP) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return ctp;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTPerm insertNewPermEnd(int i) {
        CTPerm cTPerm;
        synchronized (monitor()) {
            check_orphaned();
            cTPerm = (CTPerm) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTPerm;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTPermStart insertNewPermStart(int i) {
        CTPermStart cTPermStart;
        synchronized (monitor()) {
            check_orphaned();
            cTPermStart = (CTPermStart) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTPermStart;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTProofErr insertNewProofErr(int i) {
        CTProofErr cTProofErr;
        synchronized (monitor()) {
            check_orphaned();
            cTProofErr = (CTProofErr) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTProofErr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTSdtBlock insertNewSdt(int i) {
        CTSdtBlock cTSdtBlock;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtBlock = (CTSdtBlock) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTSdtBlock;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTTbl insertNewTbl(int i) {
        CTTbl cTTbl;
        synchronized (monitor()) {
            check_orphaned();
            cTTbl = (CTTbl) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTTbl;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public boolean isSetType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[30]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeAltChunk(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[29], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeBookmarkEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeBookmarkStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeCommentRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeCommentRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeCustomXml(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeCustomXmlDelRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[18], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeCustomXmlDelRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[17], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeCustomXmlInsRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[16], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeCustomXmlInsRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeCustomXmlMoveFromRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[20], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeCustomXmlMoveFromRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[19], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeCustomXmlMoveToRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[22], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeCustomXmlMoveToRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[21], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeDel(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[24], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeIns(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[23], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeMoveFrom(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[25], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeMoveFromRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeMoveFromRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeMoveTo(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[26], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeMoveToRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeMoveToRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeOMath(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[28], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeOMathPara(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[27], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeP(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removePermEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removePermStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeProofErr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeSdt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void removeTbl(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setAltChunkArray(CTAltChunk[] cTAltChunkArr) {
        check_orphaned();
        arraySetterHelper(cTAltChunkArr, PROPERTY_QNAME[29]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setBookmarkEndArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setBookmarkStartArray(CTBookmark[] cTBookmarkArr) {
        check_orphaned();
        arraySetterHelper(cTBookmarkArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCommentRangeEndArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[14]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCommentRangeStartArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[13]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCustomXmlArray(CTCustomXmlBlock[] cTCustomXmlBlockArr) {
        check_orphaned();
        arraySetterHelper(cTCustomXmlBlockArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCustomXmlDelRangeEndArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[18]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCustomXmlDelRangeStartArray(CTTrackChange[] cTTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTTrackChangeArr, PROPERTY_QNAME[17]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCustomXmlInsRangeEndArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[16]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCustomXmlInsRangeStartArray(CTTrackChange[] cTTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTTrackChangeArr, PROPERTY_QNAME[15]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCustomXmlMoveFromRangeEndArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[20]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCustomXmlMoveFromRangeStartArray(CTTrackChange[] cTTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTTrackChangeArr, PROPERTY_QNAME[19]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCustomXmlMoveToRangeEndArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[22]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCustomXmlMoveToRangeStartArray(CTTrackChange[] cTTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTTrackChangeArr, PROPERTY_QNAME[21]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setDelArray(CTRunTrackChange[] cTRunTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRunTrackChangeArr, PROPERTY_QNAME[24]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setId(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[31]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[31]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setInsArray(CTRunTrackChange[] cTRunTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRunTrackChangeArr, PROPERTY_QNAME[23]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setMoveFromArray(CTRunTrackChange[] cTRunTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRunTrackChangeArr, PROPERTY_QNAME[25]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setMoveFromRangeEndArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[10]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setMoveFromRangeStartArray(CTMoveBookmark[] cTMoveBookmarkArr) {
        check_orphaned();
        arraySetterHelper(cTMoveBookmarkArr, PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setMoveToArray(CTRunTrackChange[] cTRunTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRunTrackChangeArr, PROPERTY_QNAME[26]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setMoveToRangeEndArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[12]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setMoveToRangeStartArray(CTMoveBookmark[] cTMoveBookmarkArr) {
        check_orphaned();
        arraySetterHelper(cTMoveBookmarkArr, PROPERTY_QNAME[11]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setOMathArray(CTOMath[] cTOMathArr) {
        check_orphaned();
        arraySetterHelper(cTOMathArr, PROPERTY_QNAME[28]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setOMathParaArray(CTOMathPara[] cTOMathParaArr) {
        check_orphaned();
        arraySetterHelper(cTOMathParaArr, PROPERTY_QNAME[27]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setPArray(CTP[] ctpArr) {
        check_orphaned();
        arraySetterHelper(ctpArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setPermEndArray(CTPerm[] cTPermArr) {
        check_orphaned();
        arraySetterHelper(cTPermArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setPermStartArray(CTPermStart[] cTPermStartArr) {
        check_orphaned();
        arraySetterHelper(cTPermStartArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setProofErrArray(CTProofErr[] cTProofErrArr) {
        check_orphaned();
        arraySetterHelper(cTProofErrArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setSdtArray(CTSdtBlock[] cTSdtBlockArr) {
        check_orphaned();
        arraySetterHelper(cTSdtBlockArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setTblArray(CTTbl[] cTTblArr) {
        check_orphaned();
        arraySetterHelper(cTTblArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setType(STFtnEdn.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[30]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[30]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfAltChunkArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[29]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfBookmarkEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfBookmarkStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfCommentRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[14]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfCommentRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[13]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfCustomXmlArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfCustomXmlDelRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[18]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfCustomXmlDelRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[17]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfCustomXmlInsRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[16]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfCustomXmlInsRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[15]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfCustomXmlMoveFromRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[20]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfCustomXmlMoveFromRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[19]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfCustomXmlMoveToRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[22]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfCustomXmlMoveToRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[21]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfDelArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[24]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfInsArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[23]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfMoveFromArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[25]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfMoveFromRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfMoveFromRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfMoveToArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[26]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfMoveToRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfMoveToRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfOMathArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[28]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfOMathParaArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[27]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfPArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfPermEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfPermStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfProofErrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfSdtArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public int sizeOfTblArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void unsetType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[30]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public STDecimalNumber xgetId() {
        STDecimalNumber sTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            sTDecimalNumber = (STDecimalNumber) get_store().find_attribute_user(PROPERTY_QNAME[31]);
        }
        return sTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public STFtnEdn xgetType() {
        STFtnEdn sTFtnEdn;
        synchronized (monitor()) {
            check_orphaned();
            sTFtnEdn = (STFtnEdn) get_store().find_attribute_user(PROPERTY_QNAME[30]);
        }
        return sTFtnEdn;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void xsetId(STDecimalNumber sTDecimalNumber) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDecimalNumber sTDecimalNumber2 = (STDecimalNumber) typeStore.find_attribute_user(qNameArr[31]);
            if (sTDecimalNumber2 == null) {
                sTDecimalNumber2 = (STDecimalNumber) get_store().add_attribute_user(qNameArr[31]);
            }
            sTDecimalNumber2.set(sTDecimalNumber);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void xsetType(STFtnEdn sTFtnEdn) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STFtnEdn sTFtnEdn2 = (STFtnEdn) typeStore.find_attribute_user(qNameArr[30]);
            if (sTFtnEdn2 == null) {
                sTFtnEdn2 = (STFtnEdn) get_store().add_attribute_user(qNameArr[30]);
            }
            sTFtnEdn2.set(sTFtnEdn);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTAltChunk getAltChunkArray(int i) {
        CTAltChunk cTAltChunk;
        synchronized (monitor()) {
            check_orphaned();
            cTAltChunk = (CTAltChunk) get_store().find_element_user(PROPERTY_QNAME[29], i);
            if (cTAltChunk == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAltChunk;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkupRange getBookmarkEndArray(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (cTMarkupRange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTBookmark getBookmarkStartArray(int i) {
        CTBookmark cTBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTBookmark = (CTBookmark) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTBookmark == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkupRange getCommentRangeEndArray(int i) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkupRange getCommentRangeStartArray(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (cTMarkupRange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTCustomXmlBlock getCustomXmlArray(int i) {
        CTCustomXmlBlock cTCustomXmlBlock;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomXmlBlock = (CTCustomXmlBlock) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCustomXmlBlock == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCustomXmlBlock;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkup getCustomXmlDelRangeEndArray(int i) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTTrackChange getCustomXmlDelRangeStartArray(int i) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkup getCustomXmlInsRangeEndArray(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().find_element_user(PROPERTY_QNAME[16], i);
            if (cTMarkup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTTrackChange getCustomXmlInsRangeStartArray(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().find_element_user(PROPERTY_QNAME[15], i);
            if (cTTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkup getCustomXmlMoveFromRangeEndArray(int i) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTTrackChange getCustomXmlMoveFromRangeStartArray(int i) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkup getCustomXmlMoveToRangeEndArray(int i) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTTrackChange getCustomXmlMoveToRangeStartArray(int i) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTRunTrackChange getDelArray(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().find_element_user(PROPERTY_QNAME[24], i);
            if (cTRunTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTRunTrackChange getInsArray(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().find_element_user(PROPERTY_QNAME[23], i);
            if (cTRunTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTRunTrackChange getMoveFromArray(int i) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkupRange getMoveFromRangeEndArray(int i) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMoveBookmark getMoveFromRangeStartArray(int i) {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (cTMoveBookmark == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTRunTrackChange getMoveToArray(int i) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMarkupRange getMoveToRangeEndArray(int i) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTMoveBookmark getMoveToRangeStartArray(int i) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTOMath getOMathArray(int i) {
        CTOMath cTOMath;
        synchronized (monitor()) {
            check_orphaned();
            cTOMath = (CTOMath) get_store().find_element_user(PROPERTY_QNAME[28], i);
            if (cTOMath == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOMath;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTOMathPara getOMathParaArray(int i) {
        CTOMathPara cTOMathPara;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathPara = (CTOMathPara) get_store().find_element_user(PROPERTY_QNAME[27], i);
            if (cTOMathPara == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOMathPara;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTP getPArray(int i) {
        CTP ctp;
        synchronized (monitor()) {
            check_orphaned();
            ctp = (CTP) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (ctp == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return ctp;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTPerm getPermEndArray(int i) {
        CTPerm cTPerm;
        synchronized (monitor()) {
            check_orphaned();
            cTPerm = (CTPerm) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTPerm == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPerm;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTPermStart getPermStartArray(int i) {
        CTPermStart cTPermStart;
        synchronized (monitor()) {
            check_orphaned();
            cTPermStart = (CTPermStart) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTPermStart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPermStart;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTProofErr getProofErrArray(int i) {
        CTProofErr cTProofErr;
        synchronized (monitor()) {
            check_orphaned();
            cTProofErr = (CTProofErr) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTProofErr == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTProofErr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTSdtBlock getSdtArray(int i) {
        CTSdtBlock cTSdtBlock;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtBlock = (CTSdtBlock) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTSdtBlock == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSdtBlock;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public CTTbl getTblArray(int i) {
        CTTbl cTTbl;
        synchronized (monitor()) {
            check_orphaned();
            cTTbl = (CTTbl) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTTbl == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTbl;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setAltChunkArray(int i, CTAltChunk cTAltChunk) {
        generatedSetterHelperImpl(cTAltChunk, PROPERTY_QNAME[29], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setBookmarkEndArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setBookmarkStartArray(int i, CTBookmark cTBookmark) {
        generatedSetterHelperImpl(cTBookmark, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCommentRangeEndArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[14], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCommentRangeStartArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[13], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCustomXmlArray(int i, CTCustomXmlBlock cTCustomXmlBlock) {
        generatedSetterHelperImpl(cTCustomXmlBlock, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCustomXmlDelRangeEndArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[18], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCustomXmlDelRangeStartArray(int i, CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[17], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCustomXmlInsRangeEndArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[16], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCustomXmlInsRangeStartArray(int i, CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[15], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCustomXmlMoveFromRangeEndArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[20], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCustomXmlMoveFromRangeStartArray(int i, CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[19], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCustomXmlMoveToRangeEndArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[22], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setCustomXmlMoveToRangeStartArray(int i, CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[21], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setDelArray(int i, CTRunTrackChange cTRunTrackChange) {
        generatedSetterHelperImpl(cTRunTrackChange, PROPERTY_QNAME[24], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setInsArray(int i, CTRunTrackChange cTRunTrackChange) {
        generatedSetterHelperImpl(cTRunTrackChange, PROPERTY_QNAME[23], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setMoveFromArray(int i, CTRunTrackChange cTRunTrackChange) {
        generatedSetterHelperImpl(cTRunTrackChange, PROPERTY_QNAME[25], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setMoveFromRangeEndArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[10], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setMoveFromRangeStartArray(int i, CTMoveBookmark cTMoveBookmark) {
        generatedSetterHelperImpl(cTMoveBookmark, PROPERTY_QNAME[9], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setMoveToArray(int i, CTRunTrackChange cTRunTrackChange) {
        generatedSetterHelperImpl(cTRunTrackChange, PROPERTY_QNAME[26], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setMoveToRangeEndArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[12], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setMoveToRangeStartArray(int i, CTMoveBookmark cTMoveBookmark) {
        generatedSetterHelperImpl(cTMoveBookmark, PROPERTY_QNAME[11], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setOMathArray(int i, CTOMath cTOMath) {
        generatedSetterHelperImpl(cTOMath, PROPERTY_QNAME[28], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setOMathParaArray(int i, CTOMathPara cTOMathPara) {
        generatedSetterHelperImpl(cTOMathPara, PROPERTY_QNAME[27], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setPArray(int i, CTP ctp) {
        generatedSetterHelperImpl(ctp, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setPermEndArray(int i, CTPerm cTPerm) {
        generatedSetterHelperImpl(cTPerm, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setPermStartArray(int i, CTPermStart cTPermStart) {
        generatedSetterHelperImpl(cTPermStart, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setProofErrArray(int i, CTProofErr cTProofErr) {
        generatedSetterHelperImpl(cTProofErr, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setSdtArray(int i, CTSdtBlock cTSdtBlock) {
        generatedSetterHelperImpl(cTSdtBlock, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn
    public void setTblArray(int i, CTTbl cTTbl) {
        generatedSetterHelperImpl(cTTbl, PROPERTY_QNAME[3], i, (short) 2);
    }
}
