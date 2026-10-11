package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTAcc;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTBar;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTBorderBox;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTBox;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTD;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTF;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTFunc;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTLimLow;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTLimUpp;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTM;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTNary;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTPhant;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTRad;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTSPre;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTSSub;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTSSubSup;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTSSup;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBdoContentRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBookmark;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCustomXmlRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDirContentRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMarkup;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMarkupRange;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMoveBookmark;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPerm;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPermStart;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTProofErr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSmartTagRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrackChange;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTRunTrackChangeImpl;

/* loaded from: classes16.dex */
public class CTRunTrackChangeImpl extends CTTrackChangeImpl implements CTRunTrackChange {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXml"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "smartTag"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "sdt"), new QName(XSSFRelation.NS_WORDPROCESSINGML, CouchFieldKey.KEY_DIR), new QName(XSSFRelation.NS_WORDPROCESSINGML, "bdo"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "r"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "proofErr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "permStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "permEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "bookmarkStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "bookmarkEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveFromRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveFromRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveToRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveToRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "commentRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "commentRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlInsRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlInsRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlDelRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlDelRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlMoveFromRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlMoveFromRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlMoveToRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlMoveToRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "ins"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "del"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveFrom"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveTo"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "oMathPara"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "oMath"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "acc"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "bar"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "box"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "borderBox"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "d"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "eqArr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", C6997f.f39671c), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "func"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "groupChr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "limLow"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "limUpp"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "m"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "nary"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "phant"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "rad"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "sPre"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "sSub"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "sSubSup"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "sSup"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "r")};
    private static final long serialVersionUID = 1;

    public CTRunTrackChangeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTAcc addNewAcc() {
        CTAcc cTAcc;
        synchronized (monitor()) {
            check_orphaned();
            cTAcc = (CTAcc) get_store().add_element_user(PROPERTY_QNAME[31]);
        }
        return cTAcc;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTBar addNewBar() {
        CTBar cTBar;
        synchronized (monitor()) {
            check_orphaned();
            cTBar = (CTBar) get_store().add_element_user(PROPERTY_QNAME[32]);
        }
        return cTBar;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTBdoContentRun addNewBdo() {
        CTBdoContentRun cTBdoContentRun;
        synchronized (monitor()) {
            check_orphaned();
            cTBdoContentRun = (CTBdoContentRun) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTBdoContentRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkupRange addNewBookmarkEnd() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTBookmark addNewBookmarkStart() {
        CTBookmark cTBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTBookmark = (CTBookmark) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTBorderBox addNewBorderBox() {
        CTBorderBox cTBorderBox;
        synchronized (monitor()) {
            check_orphaned();
            cTBorderBox = (CTBorderBox) get_store().add_element_user(PROPERTY_QNAME[34]);
        }
        return cTBorderBox;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTBox addNewBox() {
        CTBox cTBox;
        synchronized (monitor()) {
            check_orphaned();
            cTBox = (CTBox) get_store().add_element_user(PROPERTY_QNAME[33]);
        }
        return cTBox;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkupRange addNewCommentRangeEnd() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[16]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkupRange addNewCommentRangeStart() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[15]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTCustomXmlRun addNewCustomXml() {
        CTCustomXmlRun cTCustomXmlRun;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomXmlRun = (CTCustomXmlRun) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCustomXmlRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkup addNewCustomXmlDelRangeEnd() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[20]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTTrackChange addNewCustomXmlDelRangeStart() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[19]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkup addNewCustomXmlInsRangeEnd() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[18]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTTrackChange addNewCustomXmlInsRangeStart() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[17]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkup addNewCustomXmlMoveFromRangeEnd() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[22]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTTrackChange addNewCustomXmlMoveFromRangeStart() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[21]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkup addNewCustomXmlMoveToRangeEnd() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[24]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTTrackChange addNewCustomXmlMoveToRangeStart() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[23]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTD addNewD() {
        CTD ctd;
        synchronized (monitor()) {
            check_orphaned();
            ctd = (CTD) get_store().add_element_user(PROPERTY_QNAME[35]);
        }
        return ctd;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTRunTrackChange addNewDel() {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().add_element_user(PROPERTY_QNAME[26]);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTDirContentRun addNewDir() {
        CTDirContentRun cTDirContentRun;
        synchronized (monitor()) {
            check_orphaned();
            cTDirContentRun = (CTDirContentRun) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTDirContentRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTEqArr addNewEqArr() {
        CTEqArr cTEqArr;
        synchronized (monitor()) {
            check_orphaned();
            cTEqArr = (CTEqArr) get_store().add_element_user(PROPERTY_QNAME[36]);
        }
        return cTEqArr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTF addNewF() {
        CTF ctf;
        synchronized (monitor()) {
            check_orphaned();
            ctf = (CTF) get_store().add_element_user(PROPERTY_QNAME[37]);
        }
        return ctf;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTFunc addNewFunc() {
        CTFunc cTFunc;
        synchronized (monitor()) {
            check_orphaned();
            cTFunc = (CTFunc) get_store().add_element_user(PROPERTY_QNAME[38]);
        }
        return cTFunc;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTGroupChr addNewGroupChr() {
        CTGroupChr cTGroupChr;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupChr = (CTGroupChr) get_store().add_element_user(PROPERTY_QNAME[39]);
        }
        return cTGroupChr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTRunTrackChange addNewIns() {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().add_element_user(PROPERTY_QNAME[25]);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTLimLow addNewLimLow() {
        CTLimLow cTLimLow;
        synchronized (monitor()) {
            check_orphaned();
            cTLimLow = (CTLimLow) get_store().add_element_user(PROPERTY_QNAME[40]);
        }
        return cTLimLow;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTLimUpp addNewLimUpp() {
        CTLimUpp cTLimUpp;
        synchronized (monitor()) {
            check_orphaned();
            cTLimUpp = (CTLimUpp) get_store().add_element_user(PROPERTY_QNAME[41]);
        }
        return cTLimUpp;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTM addNewM() {
        CTM ctm;
        synchronized (monitor()) {
            check_orphaned();
            ctm = (CTM) get_store().add_element_user(PROPERTY_QNAME[42]);
        }
        return ctm;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTRunTrackChange addNewMoveFrom() {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().add_element_user(PROPERTY_QNAME[27]);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkupRange addNewMoveFromRangeEnd() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMoveBookmark addNewMoveFromRangeStart() {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTRunTrackChange addNewMoveTo() {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().add_element_user(PROPERTY_QNAME[28]);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkupRange addNewMoveToRangeEnd() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMoveBookmark addNewMoveToRangeStart() {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTNary addNewNary() {
        CTNary cTNary;
        synchronized (monitor()) {
            check_orphaned();
            cTNary = (CTNary) get_store().add_element_user(PROPERTY_QNAME[43]);
        }
        return cTNary;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTOMath addNewOMath() {
        CTOMath cTOMath;
        synchronized (monitor()) {
            check_orphaned();
            cTOMath = (CTOMath) get_store().add_element_user(PROPERTY_QNAME[30]);
        }
        return cTOMath;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTOMathPara addNewOMathPara() {
        CTOMathPara cTOMathPara;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathPara = (CTOMathPara) get_store().add_element_user(PROPERTY_QNAME[29]);
        }
        return cTOMathPara;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTPerm addNewPermEnd() {
        CTPerm cTPerm;
        synchronized (monitor()) {
            check_orphaned();
            cTPerm = (CTPerm) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTPerm;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTPermStart addNewPermStart() {
        CTPermStart cTPermStart;
        synchronized (monitor()) {
            check_orphaned();
            cTPermStart = (CTPermStart) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTPermStart;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTPhant addNewPhant() {
        CTPhant cTPhant;
        synchronized (monitor()) {
            check_orphaned();
            cTPhant = (CTPhant) get_store().add_element_user(PROPERTY_QNAME[44]);
        }
        return cTPhant;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTProofErr addNewProofErr() {
        CTProofErr cTProofErr;
        synchronized (monitor()) {
            check_orphaned();
            cTProofErr = (CTProofErr) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTProofErr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTR addNewR() {
        CTR ctr;
        synchronized (monitor()) {
            check_orphaned();
            ctr = (CTR) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return ctr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public org.openxmlformats.schemas.officeDocument.x2006.math.CTR addNewR2() {
        org.openxmlformats.schemas.officeDocument.x2006.math.CTR ctr;
        synchronized (monitor()) {
            check_orphaned();
            ctr = (org.openxmlformats.schemas.officeDocument.x2006.math.CTR) get_store().add_element_user(PROPERTY_QNAME[50]);
        }
        return ctr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTRad addNewRad() {
        CTRad cTRad;
        synchronized (monitor()) {
            check_orphaned();
            cTRad = (CTRad) get_store().add_element_user(PROPERTY_QNAME[45]);
        }
        return cTRad;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSPre addNewSPre() {
        CTSPre cTSPre;
        synchronized (monitor()) {
            check_orphaned();
            cTSPre = (CTSPre) get_store().add_element_user(PROPERTY_QNAME[46]);
        }
        return cTSPre;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSSub addNewSSub() {
        CTSSub cTSSub;
        synchronized (monitor()) {
            check_orphaned();
            cTSSub = (CTSSub) get_store().add_element_user(PROPERTY_QNAME[47]);
        }
        return cTSSub;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSSubSup addNewSSubSup() {
        CTSSubSup cTSSubSup;
        synchronized (monitor()) {
            check_orphaned();
            cTSSubSup = (CTSSubSup) get_store().add_element_user(PROPERTY_QNAME[48]);
        }
        return cTSSubSup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSSup addNewSSup() {
        CTSSup cTSSup;
        synchronized (monitor()) {
            check_orphaned();
            cTSSup = (CTSSup) get_store().add_element_user(PROPERTY_QNAME[49]);
        }
        return cTSSup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSdtRun addNewSdt() {
        CTSdtRun cTSdtRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtRun = (CTSdtRun) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTSdtRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSmartTagRun addNewSmartTag() {
        CTSmartTagRun cTSmartTagRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSmartTagRun = (CTSmartTagRun) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTSmartTagRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTAcc[] getAccArray() {
        return (CTAcc[]) getXmlObjectArray(PROPERTY_QNAME[31], new CTAcc[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTAcc> getAccList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xj9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getAccArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yj9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setAccArray(((Integer) obj).intValue(), (CTAcc) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zj9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewAcc(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ak9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeAcc(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.bk9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfAccArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTBar[] getBarArray() {
        return (CTBar[]) getXmlObjectArray(PROPERTY_QNAME[32], new CTBar[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTBar> getBarList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.je9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getBarArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ke9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setBarArray(((Integer) obj).intValue(), (CTBar) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.le9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewBar(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.me9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeBar(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ne9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfBarArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTBdoContentRun[] getBdoArray() {
        return (CTBdoContentRun[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTBdoContentRun[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTBdoContentRun> getBdoList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ng9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getBdoArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.og9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setBdoArray(((Integer) obj).intValue(), (CTBdoContentRun) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pg9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewBdo(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qg9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeBdo(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rg9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfBdoArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkupRange[] getBookmarkEndArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[10], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTMarkupRange> getBookmarkEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bj9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getBookmarkEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cj9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setBookmarkEndArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dj9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewBookmarkEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ej9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeBookmarkEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fj9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfBookmarkEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTBookmark[] getBookmarkStartArray() {
        return (CTBookmark[]) getXmlObjectArray(PROPERTY_QNAME[9], new CTBookmark[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTBookmark> getBookmarkStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bg9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getBookmarkStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cg9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setBookmarkStartArray(((Integer) obj).intValue(), (CTBookmark) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dg9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewBookmarkStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.eg9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeBookmarkStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fg9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfBookmarkStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTBorderBox[] getBorderBoxArray() {
        return (CTBorderBox[]) getXmlObjectArray(PROPERTY_QNAME[34], new CTBorderBox[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTBorderBox> getBorderBoxList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gc9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getBorderBoxArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hc9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setBorderBoxArray(((Integer) obj).intValue(), (CTBorderBox) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ic9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewBorderBox(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jc9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeBorderBox(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.kc9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfBorderBoxArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTBox[] getBoxArray() {
        return (CTBox[]) getXmlObjectArray(PROPERTY_QNAME[33], new CTBox[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTBox> getBoxList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.td9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getBoxArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ud9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setBoxArray(((Integer) obj).intValue(), (CTBox) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vd9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewBox(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wd9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeBox(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xd9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfBoxArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkupRange[] getCommentRangeEndArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[16], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTMarkupRange> getCommentRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xc9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getCommentRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yc9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setCommentRangeEndArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zc9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewCommentRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ad9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeCommentRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.bd9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfCommentRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkupRange[] getCommentRangeStartArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[15], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTMarkupRange> getCommentRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lc9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getCommentRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wc9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setCommentRangeStartArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hd9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewCommentRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.sd9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeCommentRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.de9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfCommentRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTCustomXmlRun[] getCustomXmlArray() {
        return (CTCustomXmlRun[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCustomXmlRun[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkup[] getCustomXmlDelRangeEndArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[20], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTMarkup> getCustomXmlDelRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ik9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getCustomXmlDelRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jk9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setCustomXmlDelRangeEndArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.kk9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewCustomXmlDelRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.lk9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeCustomXmlDelRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.mk9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfCustomXmlDelRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTTrackChange[] getCustomXmlDelRangeStartArray() {
        return (CTTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[19], new CTTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTTrackChange> getCustomXmlDelRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.uh9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getCustomXmlDelRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vh9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setCustomXmlDelRangeStartArray(((Integer) obj).intValue(), (CTTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wh9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewCustomXmlDelRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xh9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeCustomXmlDelRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yh9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfCustomXmlDelRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkup[] getCustomXmlInsRangeEndArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[18], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTMarkup> getCustomXmlInsRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.yg9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getCustomXmlInsRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zg9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setCustomXmlInsRangeEndArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ah9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewCustomXmlInsRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bh9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeCustomXmlInsRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ch9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfCustomXmlInsRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTTrackChange[] getCustomXmlInsRangeStartArray() {
        return (CTTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[17], new CTTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTTrackChange> getCustomXmlInsRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mc9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getCustomXmlInsRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nc9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setCustomXmlInsRangeStartArray(((Integer) obj).intValue(), (CTTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.oc9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewCustomXmlInsRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pc9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeCustomXmlInsRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qc9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfCustomXmlInsRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTCustomXmlRun> getCustomXmlList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ue9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getCustomXmlArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ve9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setCustomXmlArray(((Integer) obj).intValue(), (CTCustomXmlRun) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.we9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewCustomXml(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xe9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeCustomXml(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ye9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfCustomXmlArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkup[] getCustomXmlMoveFromRangeEndArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[22], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTMarkup> getCustomXmlMoveFromRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rc9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getCustomXmlMoveFromRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.sc9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setCustomXmlMoveFromRangeEndArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.tc9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewCustomXmlMoveFromRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.uc9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeCustomXmlMoveFromRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vc9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfCustomXmlMoveFromRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTTrackChange[] getCustomXmlMoveFromRangeStartArray() {
        return (CTTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[21], new CTTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTTrackChange> getCustomXmlMoveFromRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.pe9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getCustomXmlMoveFromRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qe9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setCustomXmlMoveFromRangeStartArray(((Integer) obj).intValue(), (CTTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.re9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewCustomXmlMoveFromRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.se9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeCustomXmlMoveFromRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.te9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfCustomXmlMoveFromRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkup[] getCustomXmlMoveToRangeEndArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[24], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTMarkup> getCustomXmlMoveToRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fi9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getCustomXmlMoveToRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gi9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setCustomXmlMoveToRangeEndArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hi9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewCustomXmlMoveToRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ii9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeCustomXmlMoveToRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ji9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfCustomXmlMoveToRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTTrackChange[] getCustomXmlMoveToRangeStartArray() {
        return (CTTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[23], new CTTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTTrackChange> getCustomXmlMoveToRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.eh9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getCustomXmlMoveToRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fh9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setCustomXmlMoveToRangeStartArray(((Integer) obj).intValue(), (CTTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gh9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewCustomXmlMoveToRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hh9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeCustomXmlMoveToRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ih9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfCustomXmlMoveToRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTD[] getDArray() {
        return (CTD[]) getXmlObjectArray(PROPERTY_QNAME[35], new CTD[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTD> getDList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ai9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getDArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bi9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setDArray(((Integer) obj).intValue(), (CTD) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ci9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewD(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.di9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeD(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ei9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfDArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTRunTrackChange[] getDelArray() {
        return (CTRunTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[26], new CTRunTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTRunTrackChange> getDelList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zk9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getDelArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.al9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setDelArray(((Integer) obj).intValue(), (CTRunTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bl9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewDel(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cl9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeDel(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.dl9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfDelArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTDirContentRun[] getDirArray() {
        return (CTDirContentRun[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTDirContentRun[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTDirContentRun> getDirList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.af9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getDirArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bf9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setDirArray(((Integer) obj).intValue(), (CTDirContentRun) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.cf9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewDir(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.df9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeDir(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ef9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfDirArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTEqArr[] getEqArrArray() {
        return (CTEqArr[]) getXmlObjectArray(PROPERTY_QNAME[36], new CTEqArr[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTEqArr> getEqArrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ig9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getEqArrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jg9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setEqArrArray(((Integer) obj).intValue(), (CTEqArr) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.kg9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewEqArr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.lg9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeEqArr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.mg9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfEqArrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTF[] getFArray() {
        return (CTF[]) getXmlObjectArray(PROPERTY_QNAME[37], new CTF[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTF> getFList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wi9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getFArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xi9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setFArray(((Integer) obj).intValue(), (CTF) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.yi9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewF(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zi9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeF(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.aj9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfFArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTFunc[] getFuncArray() {
        return (CTFunc[]) getXmlObjectArray(PROPERTY_QNAME[38], new CTFunc[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTFunc> getFuncList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.yd9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getFuncArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zd9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setFuncArray(((Integer) obj).intValue(), (CTFunc) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ae9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewFunc(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.be9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeFunc(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ce9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfFuncArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTGroupChr[] getGroupChrArray() {
        return (CTGroupChr[]) getXmlObjectArray(PROPERTY_QNAME[39], new CTGroupChr[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTGroupChr> getGroupChrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.tg9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getGroupChrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ug9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setGroupChrArray(((Integer) obj).intValue(), (CTGroupChr) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vg9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewGroupChr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wg9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeGroupChr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xg9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfGroupChrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTRunTrackChange[] getInsArray() {
        return (CTRunTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[25], new CTRunTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTRunTrackChange> getInsList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sj9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getInsArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tj9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setInsArray(((Integer) obj).intValue(), (CTRunTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.uj9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewIns(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vj9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeIns(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wj9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfInsArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTLimLow[] getLimLowArray() {
        return (CTLimLow[]) getXmlObjectArray(PROPERTY_QNAME[40], new CTLimLow[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTLimLow> getLimLowList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.id9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getLimLowArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jd9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setLimLowArray(((Integer) obj).intValue(), (CTLimLow) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.kd9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewLimLow(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ld9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeLimLow(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.md9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfLimLowArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTLimUpp[] getLimUppArray() {
        return (CTLimUpp[]) getXmlObjectArray(PROPERTY_QNAME[41], new CTLimUpp[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTLimUpp> getLimUppList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mj9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getLimUppArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nj9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setLimUppArray(((Integer) obj).intValue(), (CTLimUpp) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.oj9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewLimUpp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pj9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeLimUpp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qj9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfLimUppArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTM[] getMArray() {
        return (CTM[]) getXmlObjectArray(PROPERTY_QNAME[42], new CTM[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTM> getMList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jh9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getMArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kh9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setMArray(((Integer) obj).intValue(), (CTM) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lh9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewM(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.mh9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeM(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.nh9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfMArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTRunTrackChange[] getMoveFromArray() {
        return (CTRunTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[27], new CTRunTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTRunTrackChange> getMoveFromList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sg9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getMoveFromArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dh9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setMoveFromArray(((Integer) obj).intValue(), (CTRunTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.oh9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewMoveFrom(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zh9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeMoveFrom(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ki9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfMoveFromArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkupRange[] getMoveFromRangeEndArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[12], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTMarkupRange> getMoveFromRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qi9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getMoveFromRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ri9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setMoveFromRangeEndArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.si9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewMoveFromRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ti9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeMoveFromRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ui9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfMoveFromRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMoveBookmark[] getMoveFromRangeStartArray() {
        return (CTMoveBookmark[]) getXmlObjectArray(PROPERTY_QNAME[11], new CTMoveBookmark[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTMoveBookmark> getMoveFromRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wf9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getMoveFromRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xf9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setMoveFromRangeStartArray(((Integer) obj).intValue(), (CTMoveBookmark) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.yf9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewMoveFromRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zf9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeMoveFromRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ag9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfMoveFromRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTRunTrackChange[] getMoveToArray() {
        return (CTRunTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[28], new CTRunTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTRunTrackChange> getMoveToList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ph9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getMoveToArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qh9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setMoveToArray(((Integer) obj).intValue(), (CTRunTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rh9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewMoveTo(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.sh9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeMoveTo(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.th9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfMoveToArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkupRange[] getMoveToRangeEndArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[14], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTMarkupRange> getMoveToRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ff9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getMoveToRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gf9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setMoveToRangeEndArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hf9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewMoveToRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.if9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeMoveToRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.jf9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfMoveToRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMoveBookmark[] getMoveToRangeStartArray() {
        return (CTMoveBookmark[]) getXmlObjectArray(PROPERTY_QNAME[13], new CTMoveBookmark[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTMoveBookmark> getMoveToRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ee9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getMoveToRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fe9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setMoveToRangeStartArray(((Integer) obj).intValue(), (CTMoveBookmark) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ge9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewMoveToRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.he9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeMoveToRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ie9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfMoveToRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTNary[] getNaryArray() {
        return (CTNary[]) getXmlObjectArray(PROPERTY_QNAME[43], new CTNary[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTNary> getNaryList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.tk9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getNaryArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.uk9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setNaryArray(((Integer) obj).intValue(), (CTNary) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vk9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewNary(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wk9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeNary(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xk9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfNaryArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTOMath[] getOMathArray() {
        return (CTOMath[]) getXmlObjectArray(PROPERTY_QNAME[30], new CTOMath[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTOMath> getOMathList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.el9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getOMathArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fl9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setOMathArray(((Integer) obj).intValue(), (CTOMath) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gl9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewOMath(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hl9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeOMath(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.il9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfOMathArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTOMathPara[] getOMathParaArray() {
        return (CTOMathPara[]) getXmlObjectArray(PROPERTY_QNAME[29], new CTOMathPara[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTOMathPara> getOMathParaList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ck9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getOMathParaArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nk9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setOMathParaArray(((Integer) obj).intValue(), (CTOMathPara) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.yk9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewOMathPara(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jl9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeOMathPara(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ul9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfOMathParaArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTPerm[] getPermEndArray() {
        return (CTPerm[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTPerm[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTPerm> getPermEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.li9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getPermEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mi9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setPermEndArray(((Integer) obj).intValue(), (CTPerm) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ni9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewPermEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.oi9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removePermEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pi9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfPermEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTPermStart[] getPermStartArray() {
        return (CTPermStart[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTPermStart[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTPermStart> getPermStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ac9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getPermStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hg9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setPermStartArray(((Integer) obj).intValue(), (CTPermStart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vi9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewPermStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gj9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removePermStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rj9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfPermStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTPhant[] getPhantArray() {
        return (CTPhant[]) getXmlObjectArray(PROPERTY_QNAME[44], new CTPhant[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTPhant> getPhantList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.pl9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getPhantArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ql9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setPhantArray(((Integer) obj).intValue(), (CTPhant) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rl9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewPhant(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.sl9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removePhant(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.tl9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfPhantArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTProofErr[] getProofErrArray() {
        return (CTProofErr[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTProofErr[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTProofErr> getProofErrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dk9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getProofErrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ek9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setProofErrArray(((Integer) obj).intValue(), (CTProofErr) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fk9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewProofErr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gk9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeProofErr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hk9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfProofErrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public org.openxmlformats.schemas.officeDocument.x2006.math.CTR[] getR2Array() {
        return (org.openxmlformats.schemas.officeDocument.x2006.math.CTR[]) getXmlObjectArray(PROPERTY_QNAME[50], new org.openxmlformats.schemas.officeDocument.x2006.math.CTR[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<org.openxmlformats.schemas.officeDocument.x2006.math.CTR> getR2List() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lf9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getR2Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mf9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setR2Array(((Integer) obj).intValue(), (org.openxmlformats.schemas.officeDocument.x2006.math.CTR) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nf9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewR2(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.of9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeR2(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pf9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfR2Array());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTR[] getRArray() {
        return (CTR[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTR[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTR> getRList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ok9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getRArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pk9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setRArray(((Integer) obj).intValue(), (CTR) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qk9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewR(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rk9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeR(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.sk9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfRArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTRad[] getRadArray() {
        return (CTRad[]) getXmlObjectArray(PROPERTY_QNAME[45], new CTRad[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTRad> getRadList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.oe9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getRadArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ze9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setRadArray(((Integer) obj).intValue(), (CTRad) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.kf9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewRad(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vf9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeRad(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.gg9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfRadArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSPre[] getSPreArray() {
        return (CTSPre[]) getXmlObjectArray(PROPERTY_QNAME[46], new CTSPre[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTSPre> getSPreList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.cd9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getSPreArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dd9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setSPreArray(((Integer) obj).intValue(), (CTSPre) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ed9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewSPre(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fd9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeSPre(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.gd9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfSPreArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSSub[] getSSubArray() {
        return (CTSSub[]) getXmlObjectArray(PROPERTY_QNAME[47], new CTSSub[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTSSub> getSSubList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.kl9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getSSubArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ll9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setSSubArray(((Integer) obj).intValue(), (CTSSub) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ml9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewSSub(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.nl9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeSSub(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ol9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfSSubArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSSubSup[] getSSubSupArray() {
        return (CTSSubSup[]) getXmlObjectArray(PROPERTY_QNAME[48], new CTSSubSup[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTSSubSup> getSSubSupList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nd9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getSSubSupArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.od9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setSSubSupArray(((Integer) obj).intValue(), (CTSSubSup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pd9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewSSubSup(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qd9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeSSubSup(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rd9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfSSubSupArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSSup[] getSSupArray() {
        return (CTSSup[]) getXmlObjectArray(PROPERTY_QNAME[49], new CTSSup[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTSSup> getSSupList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bc9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getSSupArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cc9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setSSupArray(((Integer) obj).intValue(), (CTSSup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dc9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewSSup(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ec9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeSSup(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fc9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfSSupArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSdtRun[] getSdtArray() {
        return (CTSdtRun[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTSdtRun[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTSdtRun> getSdtList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qf9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getSdtArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rf9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setSdtArray(((Integer) obj).intValue(), (CTSdtRun) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.sf9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewSdt(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.tf9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeSdt(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.uf9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfSdtArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSmartTagRun[] getSmartTagArray() {
        return (CTSmartTagRun[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTSmartTagRun[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public List<CTSmartTagRun> getSmartTagList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hj9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.getSmartTagArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ij9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRunTrackChangeImpl.this.setSmartTagArray(((Integer) obj).intValue(), (CTSmartTagRun) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jj9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRunTrackChangeImpl.this.insertNewSmartTag(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kj9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRunTrackChangeImpl.this.removeSmartTag(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lj9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRunTrackChangeImpl.this.sizeOfSmartTagArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTAcc insertNewAcc(int i) {
        CTAcc cTAcc;
        synchronized (monitor()) {
            check_orphaned();
            cTAcc = (CTAcc) get_store().insert_element_user(PROPERTY_QNAME[31], i);
        }
        return cTAcc;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTBar insertNewBar(int i) {
        CTBar cTBar;
        synchronized (monitor()) {
            check_orphaned();
            cTBar = (CTBar) get_store().insert_element_user(PROPERTY_QNAME[32], i);
        }
        return cTBar;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTBdoContentRun insertNewBdo(int i) {
        CTBdoContentRun cTBdoContentRun;
        synchronized (monitor()) {
            check_orphaned();
            cTBdoContentRun = (CTBdoContentRun) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTBdoContentRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkupRange insertNewBookmarkEnd(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTBookmark insertNewBookmarkStart(int i) {
        CTBookmark cTBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTBookmark = (CTBookmark) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return cTBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTBorderBox insertNewBorderBox(int i) {
        CTBorderBox cTBorderBox;
        synchronized (monitor()) {
            check_orphaned();
            cTBorderBox = (CTBorderBox) get_store().insert_element_user(PROPERTY_QNAME[34], i);
        }
        return cTBorderBox;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTBox insertNewBox(int i) {
        CTBox cTBox;
        synchronized (monitor()) {
            check_orphaned();
            cTBox = (CTBox) get_store().insert_element_user(PROPERTY_QNAME[33], i);
        }
        return cTBox;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkupRange insertNewCommentRangeEnd(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[16], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkupRange insertNewCommentRangeStart(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[15], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTCustomXmlRun insertNewCustomXml(int i) {
        CTCustomXmlRun cTCustomXmlRun;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomXmlRun = (CTCustomXmlRun) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCustomXmlRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkup insertNewCustomXmlDelRangeEnd(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[20], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTTrackChange insertNewCustomXmlDelRangeStart(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().insert_element_user(PROPERTY_QNAME[19], i);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkup insertNewCustomXmlInsRangeEnd(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[18], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTTrackChange insertNewCustomXmlInsRangeStart(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().insert_element_user(PROPERTY_QNAME[17], i);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkup insertNewCustomXmlMoveFromRangeEnd(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[22], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTTrackChange insertNewCustomXmlMoveFromRangeStart(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().insert_element_user(PROPERTY_QNAME[21], i);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkup insertNewCustomXmlMoveToRangeEnd(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[24], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTTrackChange insertNewCustomXmlMoveToRangeStart(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().insert_element_user(PROPERTY_QNAME[23], i);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTD insertNewD(int i) {
        CTD ctd;
        synchronized (monitor()) {
            check_orphaned();
            ctd = (CTD) get_store().insert_element_user(PROPERTY_QNAME[35], i);
        }
        return ctd;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTRunTrackChange insertNewDel(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().insert_element_user(PROPERTY_QNAME[26], i);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTDirContentRun insertNewDir(int i) {
        CTDirContentRun cTDirContentRun;
        synchronized (monitor()) {
            check_orphaned();
            cTDirContentRun = (CTDirContentRun) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTDirContentRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTEqArr insertNewEqArr(int i) {
        CTEqArr cTEqArr;
        synchronized (monitor()) {
            check_orphaned();
            cTEqArr = (CTEqArr) get_store().insert_element_user(PROPERTY_QNAME[36], i);
        }
        return cTEqArr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTF insertNewF(int i) {
        CTF ctf;
        synchronized (monitor()) {
            check_orphaned();
            ctf = (CTF) get_store().insert_element_user(PROPERTY_QNAME[37], i);
        }
        return ctf;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTFunc insertNewFunc(int i) {
        CTFunc cTFunc;
        synchronized (monitor()) {
            check_orphaned();
            cTFunc = (CTFunc) get_store().insert_element_user(PROPERTY_QNAME[38], i);
        }
        return cTFunc;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTGroupChr insertNewGroupChr(int i) {
        CTGroupChr cTGroupChr;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupChr = (CTGroupChr) get_store().insert_element_user(PROPERTY_QNAME[39], i);
        }
        return cTGroupChr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTRunTrackChange insertNewIns(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().insert_element_user(PROPERTY_QNAME[25], i);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTLimLow insertNewLimLow(int i) {
        CTLimLow cTLimLow;
        synchronized (monitor()) {
            check_orphaned();
            cTLimLow = (CTLimLow) get_store().insert_element_user(PROPERTY_QNAME[40], i);
        }
        return cTLimLow;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTLimUpp insertNewLimUpp(int i) {
        CTLimUpp cTLimUpp;
        synchronized (monitor()) {
            check_orphaned();
            cTLimUpp = (CTLimUpp) get_store().insert_element_user(PROPERTY_QNAME[41], i);
        }
        return cTLimUpp;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTM insertNewM(int i) {
        CTM ctm;
        synchronized (monitor()) {
            check_orphaned();
            ctm = (CTM) get_store().insert_element_user(PROPERTY_QNAME[42], i);
        }
        return ctm;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTRunTrackChange insertNewMoveFrom(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().insert_element_user(PROPERTY_QNAME[27], i);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkupRange insertNewMoveFromRangeEnd(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[12], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMoveBookmark insertNewMoveFromRangeStart(int i) {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTRunTrackChange insertNewMoveTo(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().insert_element_user(PROPERTY_QNAME[28], i);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMarkupRange insertNewMoveToRangeEnd(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[14], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTMoveBookmark insertNewMoveToRangeStart(int i) {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().insert_element_user(PROPERTY_QNAME[13], i);
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTNary insertNewNary(int i) {
        CTNary cTNary;
        synchronized (monitor()) {
            check_orphaned();
            cTNary = (CTNary) get_store().insert_element_user(PROPERTY_QNAME[43], i);
        }
        return cTNary;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTOMath insertNewOMath(int i) {
        CTOMath cTOMath;
        synchronized (monitor()) {
            check_orphaned();
            cTOMath = (CTOMath) get_store().insert_element_user(PROPERTY_QNAME[30], i);
        }
        return cTOMath;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTOMathPara insertNewOMathPara(int i) {
        CTOMathPara cTOMathPara;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathPara = (CTOMathPara) get_store().insert_element_user(PROPERTY_QNAME[29], i);
        }
        return cTOMathPara;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTPerm insertNewPermEnd(int i) {
        CTPerm cTPerm;
        synchronized (monitor()) {
            check_orphaned();
            cTPerm = (CTPerm) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTPerm;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTPermStart insertNewPermStart(int i) {
        CTPermStart cTPermStart;
        synchronized (monitor()) {
            check_orphaned();
            cTPermStart = (CTPermStart) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTPermStart;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTPhant insertNewPhant(int i) {
        CTPhant cTPhant;
        synchronized (monitor()) {
            check_orphaned();
            cTPhant = (CTPhant) get_store().insert_element_user(PROPERTY_QNAME[44], i);
        }
        return cTPhant;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTProofErr insertNewProofErr(int i) {
        CTProofErr cTProofErr;
        synchronized (monitor()) {
            check_orphaned();
            cTProofErr = (CTProofErr) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTProofErr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTR insertNewR(int i) {
        CTR ctr;
        synchronized (monitor()) {
            check_orphaned();
            ctr = (CTR) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return ctr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public org.openxmlformats.schemas.officeDocument.x2006.math.CTR insertNewR2(int i) {
        org.openxmlformats.schemas.officeDocument.x2006.math.CTR ctr;
        synchronized (monitor()) {
            check_orphaned();
            ctr = (org.openxmlformats.schemas.officeDocument.x2006.math.CTR) get_store().insert_element_user(PROPERTY_QNAME[50], i);
        }
        return ctr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTRad insertNewRad(int i) {
        CTRad cTRad;
        synchronized (monitor()) {
            check_orphaned();
            cTRad = (CTRad) get_store().insert_element_user(PROPERTY_QNAME[45], i);
        }
        return cTRad;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSPre insertNewSPre(int i) {
        CTSPre cTSPre;
        synchronized (monitor()) {
            check_orphaned();
            cTSPre = (CTSPre) get_store().insert_element_user(PROPERTY_QNAME[46], i);
        }
        return cTSPre;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSSub insertNewSSub(int i) {
        CTSSub cTSSub;
        synchronized (monitor()) {
            check_orphaned();
            cTSSub = (CTSSub) get_store().insert_element_user(PROPERTY_QNAME[47], i);
        }
        return cTSSub;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSSubSup insertNewSSubSup(int i) {
        CTSSubSup cTSSubSup;
        synchronized (monitor()) {
            check_orphaned();
            cTSSubSup = (CTSSubSup) get_store().insert_element_user(PROPERTY_QNAME[48], i);
        }
        return cTSSubSup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSSup insertNewSSup(int i) {
        CTSSup cTSSup;
        synchronized (monitor()) {
            check_orphaned();
            cTSSup = (CTSSup) get_store().insert_element_user(PROPERTY_QNAME[49], i);
        }
        return cTSSup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSdtRun insertNewSdt(int i) {
        CTSdtRun cTSdtRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtRun = (CTSdtRun) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTSdtRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSmartTagRun insertNewSmartTag(int i) {
        CTSmartTagRun cTSmartTagRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSmartTagRun = (CTSmartTagRun) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTSmartTagRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeAcc(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[31], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeBar(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[32], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeBdo(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeBookmarkEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeBookmarkStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeBorderBox(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[34], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeBox(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[33], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeCommentRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[16], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeCommentRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeCustomXml(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeCustomXmlDelRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[20], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeCustomXmlDelRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[19], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeCustomXmlInsRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[18], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeCustomXmlInsRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[17], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeCustomXmlMoveFromRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[22], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeCustomXmlMoveFromRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[21], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeCustomXmlMoveToRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[24], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeCustomXmlMoveToRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[23], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeD(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[35], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeDel(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[26], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeDir(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeEqArr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[36], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeF(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[37], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeFunc(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[38], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeGroupChr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[39], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeIns(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[25], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeLimLow(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[40], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeLimUpp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[41], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeM(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[42], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeMoveFrom(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[27], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeMoveFromRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeMoveFromRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeMoveTo(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[28], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeMoveToRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeMoveToRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeNary(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[43], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeOMath(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[30], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeOMathPara(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[29], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removePermEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removePermStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removePhant(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[44], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeProofErr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeR(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeR2(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[50], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeRad(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[45], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeSPre(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[46], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeSSub(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[47], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeSSubSup(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[48], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeSSup(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[49], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeSdt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void removeSmartTag(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setAccArray(CTAcc[] cTAccArr) {
        check_orphaned();
        arraySetterHelper(cTAccArr, PROPERTY_QNAME[31]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setBarArray(CTBar[] cTBarArr) {
        check_orphaned();
        arraySetterHelper(cTBarArr, PROPERTY_QNAME[32]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setBdoArray(CTBdoContentRun[] cTBdoContentRunArr) {
        check_orphaned();
        arraySetterHelper(cTBdoContentRunArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setBookmarkEndArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[10]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setBookmarkStartArray(CTBookmark[] cTBookmarkArr) {
        check_orphaned();
        arraySetterHelper(cTBookmarkArr, PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setBorderBoxArray(CTBorderBox[] cTBorderBoxArr) {
        check_orphaned();
        arraySetterHelper(cTBorderBoxArr, PROPERTY_QNAME[34]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setBoxArray(CTBox[] cTBoxArr) {
        check_orphaned();
        arraySetterHelper(cTBoxArr, PROPERTY_QNAME[33]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCommentRangeEndArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[16]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCommentRangeStartArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[15]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCustomXmlArray(CTCustomXmlRun[] cTCustomXmlRunArr) {
        check_orphaned();
        arraySetterHelper(cTCustomXmlRunArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCustomXmlDelRangeEndArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[20]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCustomXmlDelRangeStartArray(CTTrackChange[] cTTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTTrackChangeArr, PROPERTY_QNAME[19]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCustomXmlInsRangeEndArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[18]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCustomXmlInsRangeStartArray(CTTrackChange[] cTTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTTrackChangeArr, PROPERTY_QNAME[17]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCustomXmlMoveFromRangeEndArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[22]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCustomXmlMoveFromRangeStartArray(CTTrackChange[] cTTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTTrackChangeArr, PROPERTY_QNAME[21]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCustomXmlMoveToRangeEndArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[24]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCustomXmlMoveToRangeStartArray(CTTrackChange[] cTTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTTrackChangeArr, PROPERTY_QNAME[23]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setDArray(CTD[] ctdArr) {
        check_orphaned();
        arraySetterHelper(ctdArr, PROPERTY_QNAME[35]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setDelArray(CTRunTrackChange[] cTRunTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRunTrackChangeArr, PROPERTY_QNAME[26]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setDirArray(CTDirContentRun[] cTDirContentRunArr) {
        check_orphaned();
        arraySetterHelper(cTDirContentRunArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setEqArrArray(CTEqArr[] cTEqArrArr) {
        check_orphaned();
        arraySetterHelper(cTEqArrArr, PROPERTY_QNAME[36]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setFArray(CTF[] ctfArr) {
        check_orphaned();
        arraySetterHelper(ctfArr, PROPERTY_QNAME[37]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setFuncArray(CTFunc[] cTFuncArr) {
        check_orphaned();
        arraySetterHelper(cTFuncArr, PROPERTY_QNAME[38]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setGroupChrArray(CTGroupChr[] cTGroupChrArr) {
        check_orphaned();
        arraySetterHelper(cTGroupChrArr, PROPERTY_QNAME[39]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setInsArray(CTRunTrackChange[] cTRunTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRunTrackChangeArr, PROPERTY_QNAME[25]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setLimLowArray(CTLimLow[] cTLimLowArr) {
        check_orphaned();
        arraySetterHelper(cTLimLowArr, PROPERTY_QNAME[40]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setLimUppArray(CTLimUpp[] cTLimUppArr) {
        check_orphaned();
        arraySetterHelper(cTLimUppArr, PROPERTY_QNAME[41]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setMArray(CTM[] ctmArr) {
        check_orphaned();
        arraySetterHelper(ctmArr, PROPERTY_QNAME[42]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setMoveFromArray(CTRunTrackChange[] cTRunTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRunTrackChangeArr, PROPERTY_QNAME[27]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setMoveFromRangeEndArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[12]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setMoveFromRangeStartArray(CTMoveBookmark[] cTMoveBookmarkArr) {
        check_orphaned();
        arraySetterHelper(cTMoveBookmarkArr, PROPERTY_QNAME[11]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setMoveToArray(CTRunTrackChange[] cTRunTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRunTrackChangeArr, PROPERTY_QNAME[28]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setMoveToRangeEndArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[14]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setMoveToRangeStartArray(CTMoveBookmark[] cTMoveBookmarkArr) {
        check_orphaned();
        arraySetterHelper(cTMoveBookmarkArr, PROPERTY_QNAME[13]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setNaryArray(CTNary[] cTNaryArr) {
        check_orphaned();
        arraySetterHelper(cTNaryArr, PROPERTY_QNAME[43]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setOMathArray(CTOMath[] cTOMathArr) {
        check_orphaned();
        arraySetterHelper(cTOMathArr, PROPERTY_QNAME[30]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setOMathParaArray(CTOMathPara[] cTOMathParaArr) {
        check_orphaned();
        arraySetterHelper(cTOMathParaArr, PROPERTY_QNAME[29]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setPermEndArray(CTPerm[] cTPermArr) {
        check_orphaned();
        arraySetterHelper(cTPermArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setPermStartArray(CTPermStart[] cTPermStartArr) {
        check_orphaned();
        arraySetterHelper(cTPermStartArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setPhantArray(CTPhant[] cTPhantArr) {
        check_orphaned();
        arraySetterHelper(cTPhantArr, PROPERTY_QNAME[44]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setProofErrArray(CTProofErr[] cTProofErrArr) {
        check_orphaned();
        arraySetterHelper(cTProofErrArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setR2Array(org.openxmlformats.schemas.officeDocument.x2006.math.CTR[] ctrArr) {
        check_orphaned();
        arraySetterHelper(ctrArr, PROPERTY_QNAME[50]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setRArray(CTR[] ctrArr) {
        check_orphaned();
        arraySetterHelper(ctrArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setRadArray(CTRad[] cTRadArr) {
        check_orphaned();
        arraySetterHelper(cTRadArr, PROPERTY_QNAME[45]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setSPreArray(CTSPre[] cTSPreArr) {
        check_orphaned();
        arraySetterHelper(cTSPreArr, PROPERTY_QNAME[46]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setSSubArray(CTSSub[] cTSSubArr) {
        check_orphaned();
        arraySetterHelper(cTSSubArr, PROPERTY_QNAME[47]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setSSubSupArray(CTSSubSup[] cTSSubSupArr) {
        check_orphaned();
        arraySetterHelper(cTSSubSupArr, PROPERTY_QNAME[48]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setSSupArray(CTSSup[] cTSSupArr) {
        check_orphaned();
        arraySetterHelper(cTSSupArr, PROPERTY_QNAME[49]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setSdtArray(CTSdtRun[] cTSdtRunArr) {
        check_orphaned();
        arraySetterHelper(cTSdtRunArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setSmartTagArray(CTSmartTagRun[] cTSmartTagRunArr) {
        check_orphaned();
        arraySetterHelper(cTSmartTagRunArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfAccArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[31]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfBarArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[32]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfBdoArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfBookmarkEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfBookmarkStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfBorderBoxArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[34]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfBoxArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[33]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfCommentRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[16]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfCommentRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[15]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfCustomXmlArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfCustomXmlDelRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[20]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfCustomXmlDelRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[19]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfCustomXmlInsRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[18]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfCustomXmlInsRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[17]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfCustomXmlMoveFromRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[22]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfCustomXmlMoveFromRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[21]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfCustomXmlMoveToRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[24]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfCustomXmlMoveToRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[23]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfDArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[35]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfDelArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[26]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfDirArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfEqArrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[36]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfFArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[37]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfFuncArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[38]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfGroupChrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[39]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfInsArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[25]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfLimLowArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[40]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfLimUppArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[41]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfMArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[42]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfMoveFromArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[27]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfMoveFromRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfMoveFromRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfMoveToArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[28]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfMoveToRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[14]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfMoveToRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[13]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfNaryArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[43]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfOMathArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[30]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfOMathParaArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[29]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfPermEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfPermStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfPhantArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[44]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfProofErrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfR2Array() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[50]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfRArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfRadArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[45]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfSPreArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[46]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfSSubArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[47]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfSSubSupArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[48]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfSSupArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[49]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfSdtArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public int sizeOfSmartTagArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTAcc getAccArray(int i) {
        CTAcc cTAcc;
        synchronized (monitor()) {
            check_orphaned();
            cTAcc = (CTAcc) get_store().find_element_user(PROPERTY_QNAME[31], i);
            if (cTAcc == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAcc;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTBar getBarArray(int i) {
        CTBar cTBar;
        synchronized (monitor()) {
            check_orphaned();
            cTBar = (CTBar) get_store().find_element_user(PROPERTY_QNAME[32], i);
            if (cTBar == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBar;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTBorderBox getBorderBoxArray(int i) {
        CTBorderBox cTBorderBox;
        synchronized (monitor()) {
            check_orphaned();
            cTBorderBox = (CTBorderBox) get_store().find_element_user(PROPERTY_QNAME[34], i);
            if (cTBorderBox == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBorderBox;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTBox getBoxArray(int i) {
        CTBox cTBox;
        synchronized (monitor()) {
            check_orphaned();
            cTBox = (CTBox) get_store().find_element_user(PROPERTY_QNAME[33], i);
            if (cTBox == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBox;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTD getDArray(int i) {
        CTD ctd;
        synchronized (monitor()) {
            check_orphaned();
            ctd = (CTD) get_store().find_element_user(PROPERTY_QNAME[35], i);
            if (ctd == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return ctd;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTEqArr getEqArrArray(int i) {
        CTEqArr cTEqArr;
        synchronized (monitor()) {
            check_orphaned();
            cTEqArr = (CTEqArr) get_store().find_element_user(PROPERTY_QNAME[36], i);
            if (cTEqArr == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEqArr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTF getFArray(int i) {
        CTF ctf;
        synchronized (monitor()) {
            check_orphaned();
            ctf = (CTF) get_store().find_element_user(PROPERTY_QNAME[37], i);
            if (ctf == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return ctf;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTFunc getFuncArray(int i) {
        CTFunc cTFunc;
        synchronized (monitor()) {
            check_orphaned();
            cTFunc = (CTFunc) get_store().find_element_user(PROPERTY_QNAME[38], i);
            if (cTFunc == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFunc;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTGroupChr getGroupChrArray(int i) {
        CTGroupChr cTGroupChr;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupChr = (CTGroupChr) get_store().find_element_user(PROPERTY_QNAME[39], i);
            if (cTGroupChr == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGroupChr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTLimLow getLimLowArray(int i) {
        CTLimLow cTLimLow;
        synchronized (monitor()) {
            check_orphaned();
            cTLimLow = (CTLimLow) get_store().find_element_user(PROPERTY_QNAME[40], i);
            if (cTLimLow == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTLimLow;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTLimUpp getLimUppArray(int i) {
        CTLimUpp cTLimUpp;
        synchronized (monitor()) {
            check_orphaned();
            cTLimUpp = (CTLimUpp) get_store().find_element_user(PROPERTY_QNAME[41], i);
            if (cTLimUpp == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTLimUpp;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTM getMArray(int i) {
        CTM ctm;
        synchronized (monitor()) {
            check_orphaned();
            ctm = (CTM) get_store().find_element_user(PROPERTY_QNAME[42], i);
            if (ctm == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return ctm;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTNary getNaryArray(int i) {
        CTNary cTNary;
        synchronized (monitor()) {
            check_orphaned();
            cTNary = (CTNary) get_store().find_element_user(PROPERTY_QNAME[43], i);
            if (cTNary == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNary;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTPhant getPhantArray(int i) {
        CTPhant cTPhant;
        synchronized (monitor()) {
            check_orphaned();
            cTPhant = (CTPhant) get_store().find_element_user(PROPERTY_QNAME[44], i);
            if (cTPhant == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPhant;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public org.openxmlformats.schemas.officeDocument.x2006.math.CTR getR2Array(int i) {
        org.openxmlformats.schemas.officeDocument.x2006.math.CTR ctr;
        synchronized (monitor()) {
            check_orphaned();
            ctr = (org.openxmlformats.schemas.officeDocument.x2006.math.CTR) get_store().find_element_user(PROPERTY_QNAME[50], i);
            if (ctr == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return ctr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTRad getRadArray(int i) {
        CTRad cTRad;
        synchronized (monitor()) {
            check_orphaned();
            cTRad = (CTRad) get_store().find_element_user(PROPERTY_QNAME[45], i);
            if (cTRad == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRad;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSPre getSPreArray(int i) {
        CTSPre cTSPre;
        synchronized (monitor()) {
            check_orphaned();
            cTSPre = (CTSPre) get_store().find_element_user(PROPERTY_QNAME[46], i);
            if (cTSPre == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSPre;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSSub getSSubArray(int i) {
        CTSSub cTSSub;
        synchronized (monitor()) {
            check_orphaned();
            cTSSub = (CTSSub) get_store().find_element_user(PROPERTY_QNAME[47], i);
            if (cTSSub == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSSub;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSSubSup getSSubSupArray(int i) {
        CTSSubSup cTSSubSup;
        synchronized (monitor()) {
            check_orphaned();
            cTSSubSup = (CTSSubSup) get_store().find_element_user(PROPERTY_QNAME[48], i);
            if (cTSSubSup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSSubSup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public CTSSup getSSupArray(int i) {
        CTSSup cTSSup;
        synchronized (monitor()) {
            check_orphaned();
            cTSSup = (CTSSup) get_store().find_element_user(PROPERTY_QNAME[49], i);
            if (cTSSup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSSup;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setAccArray(int i, CTAcc cTAcc) {
        generatedSetterHelperImpl(cTAcc, PROPERTY_QNAME[31], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setBarArray(int i, CTBar cTBar) {
        generatedSetterHelperImpl(cTBar, PROPERTY_QNAME[32], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setBdoArray(int i, CTBdoContentRun cTBdoContentRun) {
        generatedSetterHelperImpl(cTBdoContentRun, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setBookmarkEndArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[10], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setBookmarkStartArray(int i, CTBookmark cTBookmark) {
        generatedSetterHelperImpl(cTBookmark, PROPERTY_QNAME[9], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setBorderBoxArray(int i, CTBorderBox cTBorderBox) {
        generatedSetterHelperImpl(cTBorderBox, PROPERTY_QNAME[34], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setBoxArray(int i, CTBox cTBox) {
        generatedSetterHelperImpl(cTBox, PROPERTY_QNAME[33], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCommentRangeEndArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[16], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCommentRangeStartArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[15], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCustomXmlArray(int i, CTCustomXmlRun cTCustomXmlRun) {
        generatedSetterHelperImpl(cTCustomXmlRun, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCustomXmlDelRangeEndArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[20], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCustomXmlDelRangeStartArray(int i, CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[19], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCustomXmlInsRangeEndArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[18], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCustomXmlInsRangeStartArray(int i, CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[17], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCustomXmlMoveFromRangeEndArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[22], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCustomXmlMoveFromRangeStartArray(int i, CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[21], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCustomXmlMoveToRangeEndArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[24], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setCustomXmlMoveToRangeStartArray(int i, CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[23], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setDArray(int i, CTD ctd) {
        generatedSetterHelperImpl(ctd, PROPERTY_QNAME[35], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setDelArray(int i, CTRunTrackChange cTRunTrackChange) {
        generatedSetterHelperImpl(cTRunTrackChange, PROPERTY_QNAME[26], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setDirArray(int i, CTDirContentRun cTDirContentRun) {
        generatedSetterHelperImpl(cTDirContentRun, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setEqArrArray(int i, CTEqArr cTEqArr) {
        generatedSetterHelperImpl(cTEqArr, PROPERTY_QNAME[36], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setFArray(int i, CTF ctf) {
        generatedSetterHelperImpl(ctf, PROPERTY_QNAME[37], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setFuncArray(int i, CTFunc cTFunc) {
        generatedSetterHelperImpl(cTFunc, PROPERTY_QNAME[38], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setGroupChrArray(int i, CTGroupChr cTGroupChr) {
        generatedSetterHelperImpl(cTGroupChr, PROPERTY_QNAME[39], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setInsArray(int i, CTRunTrackChange cTRunTrackChange) {
        generatedSetterHelperImpl(cTRunTrackChange, PROPERTY_QNAME[25], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setLimLowArray(int i, CTLimLow cTLimLow) {
        generatedSetterHelperImpl(cTLimLow, PROPERTY_QNAME[40], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setLimUppArray(int i, CTLimUpp cTLimUpp) {
        generatedSetterHelperImpl(cTLimUpp, PROPERTY_QNAME[41], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setMArray(int i, CTM ctm) {
        generatedSetterHelperImpl(ctm, PROPERTY_QNAME[42], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setMoveFromArray(int i, CTRunTrackChange cTRunTrackChange) {
        generatedSetterHelperImpl(cTRunTrackChange, PROPERTY_QNAME[27], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setMoveFromRangeEndArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[12], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setMoveFromRangeStartArray(int i, CTMoveBookmark cTMoveBookmark) {
        generatedSetterHelperImpl(cTMoveBookmark, PROPERTY_QNAME[11], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setMoveToArray(int i, CTRunTrackChange cTRunTrackChange) {
        generatedSetterHelperImpl(cTRunTrackChange, PROPERTY_QNAME[28], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setMoveToRangeEndArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[14], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setMoveToRangeStartArray(int i, CTMoveBookmark cTMoveBookmark) {
        generatedSetterHelperImpl(cTMoveBookmark, PROPERTY_QNAME[13], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setNaryArray(int i, CTNary cTNary) {
        generatedSetterHelperImpl(cTNary, PROPERTY_QNAME[43], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setOMathArray(int i, CTOMath cTOMath) {
        generatedSetterHelperImpl(cTOMath, PROPERTY_QNAME[30], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setOMathParaArray(int i, CTOMathPara cTOMathPara) {
        generatedSetterHelperImpl(cTOMathPara, PROPERTY_QNAME[29], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setPermEndArray(int i, CTPerm cTPerm) {
        generatedSetterHelperImpl(cTPerm, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setPermStartArray(int i, CTPermStart cTPermStart) {
        generatedSetterHelperImpl(cTPermStart, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setPhantArray(int i, CTPhant cTPhant) {
        generatedSetterHelperImpl(cTPhant, PROPERTY_QNAME[44], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setProofErrArray(int i, CTProofErr cTProofErr) {
        generatedSetterHelperImpl(cTProofErr, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setR2Array(int i, org.openxmlformats.schemas.officeDocument.x2006.math.CTR ctr) {
        generatedSetterHelperImpl(ctr, PROPERTY_QNAME[50], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setRArray(int i, CTR ctr) {
        generatedSetterHelperImpl(ctr, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setRadArray(int i, CTRad cTRad) {
        generatedSetterHelperImpl(cTRad, PROPERTY_QNAME[45], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setSPreArray(int i, CTSPre cTSPre) {
        generatedSetterHelperImpl(cTSPre, PROPERTY_QNAME[46], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setSSubArray(int i, CTSSub cTSSub) {
        generatedSetterHelperImpl(cTSSub, PROPERTY_QNAME[47], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setSSubSupArray(int i, CTSSubSup cTSSubSup) {
        generatedSetterHelperImpl(cTSSubSup, PROPERTY_QNAME[48], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setSSupArray(int i, CTSSup cTSSup) {
        generatedSetterHelperImpl(cTSSup, PROPERTY_QNAME[49], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setSdtArray(int i, CTSdtRun cTSdtRun) {
        generatedSetterHelperImpl(cTSdtRun, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange
    public void setSmartTagArray(int i, CTSmartTagRun cTSmartTagRun) {
        generatedSetterHelperImpl(cTSmartTagRun, PROPERTY_QNAME[1], i, (short) 2);
    }
}
