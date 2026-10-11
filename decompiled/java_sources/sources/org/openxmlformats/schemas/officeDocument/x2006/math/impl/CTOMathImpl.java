package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import com.miui.penengine.p015e.C6997f;
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
import org.openxmlformats.schemas.officeDocument.x2006.math.CTR;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTRad;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTSPre;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTSSub;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTSSubSup;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTSSup;
import org.openxmlformats.schemas.officeDocument.x2006.math.impl.CTOMathImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBookmark;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCustomXmlRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHyperlink;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMarkup;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMarkupRange;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMoveBookmark;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPerm;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPermStart;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTProofErr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSimpleField;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSmartTagRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrackChange;

/* loaded from: classes14.dex */
public class CTOMathImpl extends XmlComplexContentImpl implements CTOMath {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "acc"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "bar"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "box"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "borderBox"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "d"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "eqArr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", C6997f.f39671c), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "func"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "groupChr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "limLow"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "limUpp"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "m"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "nary"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "phant"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "rad"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "sPre"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "sSub"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "sSubSup"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "sSup"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "r"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXml"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "fldSimple"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "hyperlink"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "smartTag"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "sdt"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "proofErr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "permStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "permEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "bookmarkStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "bookmarkEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveFromRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveFromRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveToRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveToRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "commentRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "commentRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlInsRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlInsRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlDelRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlDelRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlMoveFromRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlMoveFromRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlMoveToRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlMoveToRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "ins"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "del"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveFrom"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveTo"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "oMathPara"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "oMath")};
    private static final long serialVersionUID = 1;

    public CTOMathImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTAcc addNewAcc() {
        CTAcc cTAcc;
        synchronized (monitor()) {
            check_orphaned();
            cTAcc = (CTAcc) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTAcc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTBar addNewBar() {
        CTBar cTBar;
        synchronized (monitor()) {
            check_orphaned();
            cTBar = (CTBar) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTBar;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkupRange addNewBookmarkEnd() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[29]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTBookmark addNewBookmarkStart() {
        CTBookmark cTBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTBookmark = (CTBookmark) get_store().add_element_user(PROPERTY_QNAME[28]);
        }
        return cTBookmark;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTBorderBox addNewBorderBox() {
        CTBorderBox cTBorderBox;
        synchronized (monitor()) {
            check_orphaned();
            cTBorderBox = (CTBorderBox) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTBorderBox;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTBox addNewBox() {
        CTBox cTBox;
        synchronized (monitor()) {
            check_orphaned();
            cTBox = (CTBox) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTBox;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkupRange addNewCommentRangeEnd() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[35]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkupRange addNewCommentRangeStart() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[34]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTCustomXmlRun addNewCustomXml() {
        CTCustomXmlRun cTCustomXmlRun;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomXmlRun = (CTCustomXmlRun) get_store().add_element_user(PROPERTY_QNAME[20]);
        }
        return cTCustomXmlRun;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkup addNewCustomXmlDelRangeEnd() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[39]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTTrackChange addNewCustomXmlDelRangeStart() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[38]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkup addNewCustomXmlInsRangeEnd() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[37]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTTrackChange addNewCustomXmlInsRangeStart() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[36]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkup addNewCustomXmlMoveFromRangeEnd() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[41]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTTrackChange addNewCustomXmlMoveFromRangeStart() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[40]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkup addNewCustomXmlMoveToRangeEnd() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[43]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTTrackChange addNewCustomXmlMoveToRangeStart() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[42]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTD addNewD() {
        CTD ctd;
        synchronized (monitor()) {
            check_orphaned();
            ctd = (CTD) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return ctd;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTRunTrackChange addNewDel() {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().add_element_user(PROPERTY_QNAME[45]);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTEqArr addNewEqArr() {
        CTEqArr cTEqArr;
        synchronized (monitor()) {
            check_orphaned();
            cTEqArr = (CTEqArr) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTEqArr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTF addNewF() {
        CTF ctf;
        synchronized (monitor()) {
            check_orphaned();
            ctf = (CTF) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return ctf;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSimpleField addNewFldSimple() {
        CTSimpleField cTSimpleField;
        synchronized (monitor()) {
            check_orphaned();
            cTSimpleField = (CTSimpleField) get_store().add_element_user(PROPERTY_QNAME[21]);
        }
        return cTSimpleField;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTFunc addNewFunc() {
        CTFunc cTFunc;
        synchronized (monitor()) {
            check_orphaned();
            cTFunc = (CTFunc) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTFunc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTGroupChr addNewGroupChr() {
        CTGroupChr cTGroupChr;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupChr = (CTGroupChr) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTGroupChr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTHyperlink addNewHyperlink() {
        CTHyperlink cTHyperlink;
        synchronized (monitor()) {
            check_orphaned();
            cTHyperlink = (CTHyperlink) get_store().add_element_user(PROPERTY_QNAME[22]);
        }
        return cTHyperlink;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTRunTrackChange addNewIns() {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().add_element_user(PROPERTY_QNAME[44]);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTLimLow addNewLimLow() {
        CTLimLow cTLimLow;
        synchronized (monitor()) {
            check_orphaned();
            cTLimLow = (CTLimLow) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTLimLow;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTLimUpp addNewLimUpp() {
        CTLimUpp cTLimUpp;
        synchronized (monitor()) {
            check_orphaned();
            cTLimUpp = (CTLimUpp) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTLimUpp;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTM addNewM() {
        CTM ctm;
        synchronized (monitor()) {
            check_orphaned();
            ctm = (CTM) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return ctm;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTRunTrackChange addNewMoveFrom() {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().add_element_user(PROPERTY_QNAME[46]);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkupRange addNewMoveFromRangeEnd() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[31]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMoveBookmark addNewMoveFromRangeStart() {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().add_element_user(PROPERTY_QNAME[30]);
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTRunTrackChange addNewMoveTo() {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().add_element_user(PROPERTY_QNAME[47]);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkupRange addNewMoveToRangeEnd() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[33]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMoveBookmark addNewMoveToRangeStart() {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().add_element_user(PROPERTY_QNAME[32]);
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTNary addNewNary() {
        CTNary cTNary;
        synchronized (monitor()) {
            check_orphaned();
            cTNary = (CTNary) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTNary;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTOMath addNewOMath() {
        CTOMath cTOMath;
        synchronized (monitor()) {
            check_orphaned();
            cTOMath = (CTOMath) get_store().add_element_user(PROPERTY_QNAME[49]);
        }
        return cTOMath;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTOMathPara addNewOMathPara() {
        CTOMathPara cTOMathPara;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathPara = (CTOMathPara) get_store().add_element_user(PROPERTY_QNAME[48]);
        }
        return cTOMathPara;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTPerm addNewPermEnd() {
        CTPerm cTPerm;
        synchronized (monitor()) {
            check_orphaned();
            cTPerm = (CTPerm) get_store().add_element_user(PROPERTY_QNAME[27]);
        }
        return cTPerm;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTPermStart addNewPermStart() {
        CTPermStart cTPermStart;
        synchronized (monitor()) {
            check_orphaned();
            cTPermStart = (CTPermStart) get_store().add_element_user(PROPERTY_QNAME[26]);
        }
        return cTPermStart;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTPhant addNewPhant() {
        CTPhant cTPhant;
        synchronized (monitor()) {
            check_orphaned();
            cTPhant = (CTPhant) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTPhant;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTProofErr addNewProofErr() {
        CTProofErr cTProofErr;
        synchronized (monitor()) {
            check_orphaned();
            cTProofErr = (CTProofErr) get_store().add_element_user(PROPERTY_QNAME[25]);
        }
        return cTProofErr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTR addNewR() {
        CTR ctr;
        synchronized (monitor()) {
            check_orphaned();
            ctr = (CTR) get_store().add_element_user(PROPERTY_QNAME[19]);
        }
        return ctr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTRad addNewRad() {
        CTRad cTRad;
        synchronized (monitor()) {
            check_orphaned();
            cTRad = (CTRad) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return cTRad;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSPre addNewSPre() {
        CTSPre cTSPre;
        synchronized (monitor()) {
            check_orphaned();
            cTSPre = (CTSPre) get_store().add_element_user(PROPERTY_QNAME[15]);
        }
        return cTSPre;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSSub addNewSSub() {
        CTSSub cTSSub;
        synchronized (monitor()) {
            check_orphaned();
            cTSSub = (CTSSub) get_store().add_element_user(PROPERTY_QNAME[16]);
        }
        return cTSSub;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSSubSup addNewSSubSup() {
        CTSSubSup cTSSubSup;
        synchronized (monitor()) {
            check_orphaned();
            cTSSubSup = (CTSSubSup) get_store().add_element_user(PROPERTY_QNAME[17]);
        }
        return cTSSubSup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSSup addNewSSup() {
        CTSSup cTSSup;
        synchronized (monitor()) {
            check_orphaned();
            cTSSup = (CTSSup) get_store().add_element_user(PROPERTY_QNAME[18]);
        }
        return cTSSup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSdtRun addNewSdt() {
        CTSdtRun cTSdtRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtRun = (CTSdtRun) get_store().add_element_user(PROPERTY_QNAME[24]);
        }
        return cTSdtRun;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSmartTagRun addNewSmartTag() {
        CTSmartTagRun cTSmartTagRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSmartTagRun = (CTSmartTagRun) get_store().add_element_user(PROPERTY_QNAME[23]);
        }
        return cTSmartTagRun;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTAcc[] getAccArray() {
        return (CTAcc[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTAcc[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTAcc> getAccList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.v16
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getAccArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.w16
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setAccArray(((Integer) obj).intValue(), (CTAcc) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.x16
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewAcc(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.y16
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeAcc(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.z16
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfAccArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTBar[] getBarArray() {
        return (CTBar[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTBar[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTBar> getBarList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.y36
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getBarArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.j46
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setBarArray(((Integer) obj).intValue(), (CTBar) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.u46
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewBar(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.f56
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeBar(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.q56
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfBarArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkupRange[] getBookmarkEndArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[29], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTMarkupRange> getBookmarkEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.p16
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getBookmarkEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.q16
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setBookmarkEndArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.r16
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewBookmarkEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.s16
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeBookmarkEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.t16
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfBookmarkEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTBookmark[] getBookmarkStartArray() {
        return (CTBookmark[]) getXmlObjectArray(PROPERTY_QNAME[28], new CTBookmark[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTBookmark> getBookmarkStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.q86
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getBookmarkStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.r86
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setBookmarkStartArray(((Integer) obj).intValue(), (CTBookmark) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.s86
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewBookmarkStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.t86
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeBookmarkStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.u86
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfBookmarkStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTBorderBox[] getBorderBoxArray() {
        return (CTBorderBox[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTBorderBox[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTBorderBox> getBorderBoxList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.t66
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getBorderBoxArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.u66
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setBorderBoxArray(((Integer) obj).intValue(), (CTBorderBox) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.v66
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewBorderBox(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.w66
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeBorderBox(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.x66
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfBorderBoxArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTBox[] getBoxArray() {
        return (CTBox[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTBox[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTBox> getBoxList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.u76
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getBoxArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.v76
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setBoxArray(((Integer) obj).intValue(), (CTBox) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.w76
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewBox(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.x76
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeBox(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.y76
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfBoxArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkupRange[] getCommentRangeEndArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[35], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTMarkupRange> getCommentRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mz5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getCommentRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nz5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setCommentRangeEndArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.oz5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewCommentRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pz5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeCommentRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qz5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfCommentRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkupRange[] getCommentRangeStartArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[34], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTMarkupRange> getCommentRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.e16
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getCommentRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.f16
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setCommentRangeStartArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.g16
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewCommentRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.h16
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeCommentRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.i16
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfCommentRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTCustomXmlRun[] getCustomXmlArray() {
        return (CTCustomXmlRun[]) getXmlObjectArray(PROPERTY_QNAME[20], new CTCustomXmlRun[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkup[] getCustomXmlDelRangeEndArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[39], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTMarkup> getCustomXmlDelRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.z06
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getCustomXmlDelRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.a16
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setCustomXmlDelRangeEndArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.b16
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewCustomXmlDelRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.c16
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeCustomXmlDelRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.d16
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfCustomXmlDelRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTTrackChange[] getCustomXmlDelRangeStartArray() {
        return (CTTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[38], new CTTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTTrackChange> getCustomXmlDelRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.h36
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getCustomXmlDelRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.i36
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setCustomXmlDelRangeStartArray(((Integer) obj).intValue(), (CTTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.j36
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewCustomXmlDelRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.k36
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeCustomXmlDelRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.l36
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfCustomXmlDelRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkup[] getCustomXmlInsRangeEndArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[37], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTMarkup> getCustomXmlInsRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.v46
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getCustomXmlInsRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.w46
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setCustomXmlInsRangeEndArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.x46
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewCustomXmlInsRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.y46
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeCustomXmlInsRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.z46
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfCustomXmlInsRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTTrackChange[] getCustomXmlInsRangeStartArray() {
        return (CTTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[36], new CTTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTTrackChange> getCustomXmlInsRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.k46
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getCustomXmlInsRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.l46
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setCustomXmlInsRangeStartArray(((Integer) obj).intValue(), (CTTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.m46
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewCustomXmlInsRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.n46
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeCustomXmlInsRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.o46
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfCustomXmlInsRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTCustomXmlRun> getCustomXmlList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.x56
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getCustomXmlArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.y56
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setCustomXmlArray(((Integer) obj).intValue(), (CTCustomXmlRun) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.z56
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewCustomXml(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.a66
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeCustomXml(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.b66
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfCustomXmlArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkup[] getCustomXmlMoveFromRangeEndArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[41], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTMarkup> getCustomXmlMoveFromRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gz5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getCustomXmlMoveFromRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.n36
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setCustomXmlMoveFromRangeEndArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.w56
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewCustomXmlMoveFromRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.h66
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeCustomXmlMoveFromRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.s66
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfCustomXmlMoveFromRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTTrackChange[] getCustomXmlMoveFromRangeStartArray() {
        return (CTTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[40], new CTTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTTrackChange> getCustomXmlMoveFromRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.k16
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getCustomXmlMoveFromRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.l16
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setCustomXmlMoveFromRangeStartArray(((Integer) obj).intValue(), (CTTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.m16
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewCustomXmlMoveFromRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.n16
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeCustomXmlMoveFromRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.o16
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfCustomXmlMoveFromRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkup[] getCustomXmlMoveToRangeEndArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[43], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTMarkup> getCustomXmlMoveToRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.l26
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getCustomXmlMoveToRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.m26
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setCustomXmlMoveToRangeEndArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.n26
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewCustomXmlMoveToRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.o26
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeCustomXmlMoveToRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.p26
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfCustomXmlMoveToRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTTrackChange[] getCustomXmlMoveToRangeStartArray() {
        return (CTTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[42], new CTTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTTrackChange> getCustomXmlMoveToRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.d76
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getCustomXmlMoveToRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.o76
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setCustomXmlMoveToRangeStartArray(((Integer) obj).intValue(), (CTTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.z76
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewCustomXmlMoveToRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.k86
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeCustomXmlMoveToRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.v86
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfCustomXmlMoveToRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTD[] getDArray() {
        return (CTD[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTD[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTD> getDList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.r26
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getDArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.s26
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setDArray(((Integer) obj).intValue(), (CTD) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.t26
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewD(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.u26
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeD(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.v26
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfDArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTRunTrackChange[] getDelArray() {
        return (CTRunTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[45], new CTRunTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTRunTrackChange> getDelList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sz5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getDelArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tz5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setDelArray(((Integer) obj).intValue(), (CTRunTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.uz5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewDel(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vz5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeDel(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wz5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfDelArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTEqArr[] getEqArrArray() {
        return (CTEqArr[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTEqArr[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTEqArr> getEqArrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.c36
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getEqArrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.d36
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setEqArrArray(((Integer) obj).intValue(), (CTEqArr) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.e36
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewEqArr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.f36
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeEqArr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.g36
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfEqArrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTF[] getFArray() {
        return (CTF[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTF[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTF> getFList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.i06
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getFArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.j06
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setFArray(((Integer) obj).intValue(), (CTF) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.k06
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewF(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.l06
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeF(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.m06
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfFArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSimpleField[] getFldSimpleArray() {
        return (CTSimpleField[]) getXmlObjectArray(PROPERTY_QNAME[21], new CTSimpleField[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTSimpleField> getFldSimpleList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.g56
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getFldSimpleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.h56
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setFldSimpleArray(((Integer) obj).intValue(), (CTSimpleField) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.i56
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewFldSimple(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.j56
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeFldSimple(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.k56
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfFldSimpleArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTFunc[] getFuncArray() {
        return (CTFunc[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTFunc[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTFunc> getFuncList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xz5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getFuncArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yz5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setFuncArray(((Integer) obj).intValue(), (CTFunc) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zz5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewFunc(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.a06
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeFunc(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.b06
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfFuncArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTGroupChr[] getGroupChrArray() {
        return (CTGroupChr[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTGroupChr[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTGroupChr> getGroupChrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.o36
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getGroupChrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.p36
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setGroupChrArray(((Integer) obj).intValue(), (CTGroupChr) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.q36
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewGroupChr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.r36
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeGroupChr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.s36
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfGroupChrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTHyperlink[] getHyperlinkArray() {
        return (CTHyperlink[]) getXmlObjectArray(PROPERTY_QNAME[22], new CTHyperlink[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTHyperlink> getHyperlinkList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.w26
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getHyperlinkArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.x26
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setHyperlinkArray(((Integer) obj).intValue(), (CTHyperlink) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.y26
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewHyperlink(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.z26
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeHyperlink(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.a36
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfHyperlinkArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTRunTrackChange[] getInsArray() {
        return (CTRunTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[44], new CTRunTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTRunTrackChange> getInsList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.e46
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getInsArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.f46
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setInsArray(((Integer) obj).intValue(), (CTRunTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.g46
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewIns(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.h46
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeIns(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.i46
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfInsArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTLimLow[] getLimLowArray() {
        return (CTLimLow[]) getXmlObjectArray(PROPERTY_QNAME[9], new CTLimLow[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTLimLow> getLimLowList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.i66
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getLimLowArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.j66
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setLimLowArray(((Integer) obj).intValue(), (CTLimLow) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.k66
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewLimLow(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.l66
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeLimLow(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.m66
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfLimLowArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTLimUpp[] getLimUppArray() {
        return (CTLimUpp[]) getXmlObjectArray(PROPERTY_QNAME[10], new CTLimUpp[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTLimUpp> getLimUppList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.r56
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getLimUppArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.s56
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setLimUppArray(((Integer) obj).intValue(), (CTLimUpp) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.t56
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewLimUpp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.u56
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeLimUpp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.v56
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfLimUppArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTM[] getMArray() {
        return (CTM[]) getXmlObjectArray(PROPERTY_QNAME[11], new CTM[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTM> getMList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rz5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getMArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.c06
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setMArray(((Integer) obj).intValue(), (CTM) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.n06
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewM(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.y06
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeM(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.j16
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfMArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTRunTrackChange[] getMoveFromArray() {
        return (CTRunTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[46], new CTRunTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTRunTrackChange> getMoveFromList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.o06
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getMoveFromArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.p06
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setMoveFromArray(((Integer) obj).intValue(), (CTRunTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.q06
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewMoveFrom(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.r06
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeMoveFrom(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.s06
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfMoveFromArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkupRange[] getMoveFromRangeEndArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[31], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTMarkupRange> getMoveFromRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.g26
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getMoveFromRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.h26
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setMoveFromRangeEndArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.i26
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewMoveFromRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.j26
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeMoveFromRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.k26
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfMoveFromRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMoveBookmark[] getMoveFromRangeStartArray() {
        return (CTMoveBookmark[]) getXmlObjectArray(PROPERTY_QNAME[30], new CTMoveBookmark[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTMoveBookmark> getMoveFromRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.l86
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getMoveFromRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.m86
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setMoveFromRangeStartArray(((Integer) obj).intValue(), (CTMoveBookmark) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.n86
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewMoveFromRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.o86
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeMoveFromRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.p86
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfMoveFromRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTRunTrackChange[] getMoveToArray() {
        return (CTRunTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[47], new CTRunTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTRunTrackChange> getMoveToList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.f86
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getMoveToArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.g86
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setMoveToArray(((Integer) obj).intValue(), (CTRunTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.h86
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewMoveTo(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.i86
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeMoveTo(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.j86
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfMoveToArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkupRange[] getMoveToRangeEndArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[33], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTMarkupRange> getMoveToRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.a86
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getMoveToRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.b86
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setMoveToRangeEndArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.c86
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewMoveToRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.d86
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeMoveToRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.e86
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfMoveToRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMoveBookmark[] getMoveToRangeStartArray() {
        return (CTMoveBookmark[]) getXmlObjectArray(PROPERTY_QNAME[32], new CTMoveBookmark[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTMoveBookmark> getMoveToRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.u16
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getMoveToRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.f26
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setMoveToRangeStartArray(((Integer) obj).intValue(), (CTMoveBookmark) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.q26
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewMoveToRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.b36
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeMoveToRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.m36
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfMoveToRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTNary[] getNaryArray() {
        return (CTNary[]) getXmlObjectArray(PROPERTY_QNAME[12], new CTNary[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTNary> getNaryList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.t06
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getNaryArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.u06
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setNaryArray(((Integer) obj).intValue(), (CTNary) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.v06
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewNary(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.w06
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeNary(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.x06
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfNaryArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTOMath[] getOMathArray() {
        return (CTOMath[]) getXmlObjectArray(PROPERTY_QNAME[49], new CTOMath[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTOMath> getOMathList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.z36
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getOMathArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.a46
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setOMathArray(((Integer) obj).intValue(), (CTOMath) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.b46
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewOMath(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.c46
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeOMath(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.d46
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfOMathArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTOMathPara[] getOMathParaArray() {
        return (CTOMathPara[]) getXmlObjectArray(PROPERTY_QNAME[48], new CTOMathPara[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTOMathPara> getOMathParaList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.j76
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getOMathParaArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.k76
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setOMathParaArray(((Integer) obj).intValue(), (CTOMathPara) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.l76
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewOMathPara(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.m76
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeOMathPara(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.n76
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfOMathParaArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTPerm[] getPermEndArray() {
        return (CTPerm[]) getXmlObjectArray(PROPERTY_QNAME[27], new CTPerm[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTPerm> getPermEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.p76
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getPermEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.q76
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setPermEndArray(((Integer) obj).intValue(), (CTPerm) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.r76
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewPermEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.s76
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removePermEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.t76
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfPermEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTPermStart[] getPermStartArray() {
        return (CTPermStart[]) getXmlObjectArray(PROPERTY_QNAME[26], new CTPermStart[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTPermStart> getPermStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.a26
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getPermStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.b26
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setPermStartArray(((Integer) obj).intValue(), (CTPermStart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.c26
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewPermStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.d26
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removePermStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.e26
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfPermStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTPhant[] getPhantArray() {
        return (CTPhant[]) getXmlObjectArray(PROPERTY_QNAME[13], new CTPhant[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTPhant> getPhantList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.d06
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getPhantArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.e06
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setPhantArray(((Integer) obj).intValue(), (CTPhant) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.f06
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewPhant(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.g06
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removePhant(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.h06
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfPhantArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTProofErr[] getProofErrArray() {
        return (CTProofErr[]) getXmlObjectArray(PROPERTY_QNAME[25], new CTProofErr[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTProofErr> getProofErrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hz5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getProofErrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.iz5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setProofErrArray(((Integer) obj).intValue(), (CTProofErr) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jz5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewProofErr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kz5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeProofErr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lz5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfProofErrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTR[] getRArray() {
        return (CTR[]) getXmlObjectArray(PROPERTY_QNAME[19], new CTR[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTR> getRList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.c66
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getRArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.d66
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setRArray(((Integer) obj).intValue(), (CTR) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.e66
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewR(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.f66
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeR(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.g66
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfRArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTRad[] getRadArray() {
        return (CTRad[]) getXmlObjectArray(PROPERTY_QNAME[14], new CTRad[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTRad> getRadList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.a56
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getRadArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.b56
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setRadArray(((Integer) obj).intValue(), (CTRad) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.c56
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewRad(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.d56
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeRad(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.e56
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfRadArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSPre[] getSPreArray() {
        return (CTSPre[]) getXmlObjectArray(PROPERTY_QNAME[15], new CTSPre[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTSPre> getSPreList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.t36
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getSPreArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.u36
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setSPreArray(((Integer) obj).intValue(), (CTSPre) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.v36
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewSPre(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.w36
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeSPre(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.x36
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfSPreArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSSub[] getSSubArray() {
        return (CTSSub[]) getXmlObjectArray(PROPERTY_QNAME[16], new CTSSub[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTSSub> getSSubList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.e76
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getSSubArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.f76
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setSSubArray(((Integer) obj).intValue(), (CTSSub) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.g76
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewSSub(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.h76
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeSSub(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.i76
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfSSubArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSSubSup[] getSSubSupArray() {
        return (CTSSubSup[]) getXmlObjectArray(PROPERTY_QNAME[17], new CTSSubSup[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTSSubSup> getSSubSupList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.y66
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getSSubSupArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.z66
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setSSubSupArray(((Integer) obj).intValue(), (CTSSubSup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.a76
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewSSubSup(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.b76
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeSSubSup(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.c76
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfSSubSupArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSSup[] getSSupArray() {
        return (CTSSup[]) getXmlObjectArray(PROPERTY_QNAME[18], new CTSSup[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTSSup> getSSupList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.p46
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getSSupArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.q46
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setSSupArray(((Integer) obj).intValue(), (CTSSup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.r46
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewSSup(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.s46
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeSSup(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.t46
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfSSupArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSdtRun[] getSdtArray() {
        return (CTSdtRun[]) getXmlObjectArray(PROPERTY_QNAME[24], new CTSdtRun[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTSdtRun> getSdtList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.n66
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getSdtArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.o66
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setSdtArray(((Integer) obj).intValue(), (CTSdtRun) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.p66
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewSdt(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.q66
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeSdt(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.r66
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfSdtArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSmartTagRun[] getSmartTagArray() {
        return (CTSmartTagRun[]) getXmlObjectArray(PROPERTY_QNAME[23], new CTSmartTagRun[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public List<CTSmartTagRun> getSmartTagList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.l56
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.getSmartTagArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.m56
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathImpl.this.setSmartTagArray(((Integer) obj).intValue(), (CTSmartTagRun) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.n56
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathImpl.this.insertNewSmartTag(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.o56
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathImpl.this.removeSmartTag(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.p56
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathImpl.this.sizeOfSmartTagArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTAcc insertNewAcc(int i) {
        CTAcc cTAcc;
        synchronized (monitor()) {
            check_orphaned();
            cTAcc = (CTAcc) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTAcc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTBar insertNewBar(int i) {
        CTBar cTBar;
        synchronized (monitor()) {
            check_orphaned();
            cTBar = (CTBar) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTBar;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkupRange insertNewBookmarkEnd(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[29], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTBookmark insertNewBookmarkStart(int i) {
        CTBookmark cTBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTBookmark = (CTBookmark) get_store().insert_element_user(PROPERTY_QNAME[28], i);
        }
        return cTBookmark;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTBorderBox insertNewBorderBox(int i) {
        CTBorderBox cTBorderBox;
        synchronized (monitor()) {
            check_orphaned();
            cTBorderBox = (CTBorderBox) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTBorderBox;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTBox insertNewBox(int i) {
        CTBox cTBox;
        synchronized (monitor()) {
            check_orphaned();
            cTBox = (CTBox) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTBox;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkupRange insertNewCommentRangeEnd(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[35], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkupRange insertNewCommentRangeStart(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[34], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTCustomXmlRun insertNewCustomXml(int i) {
        CTCustomXmlRun cTCustomXmlRun;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomXmlRun = (CTCustomXmlRun) get_store().insert_element_user(PROPERTY_QNAME[20], i);
        }
        return cTCustomXmlRun;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkup insertNewCustomXmlDelRangeEnd(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[39], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTTrackChange insertNewCustomXmlDelRangeStart(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().insert_element_user(PROPERTY_QNAME[38], i);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkup insertNewCustomXmlInsRangeEnd(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[37], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTTrackChange insertNewCustomXmlInsRangeStart(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().insert_element_user(PROPERTY_QNAME[36], i);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkup insertNewCustomXmlMoveFromRangeEnd(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[41], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTTrackChange insertNewCustomXmlMoveFromRangeStart(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().insert_element_user(PROPERTY_QNAME[40], i);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkup insertNewCustomXmlMoveToRangeEnd(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[43], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTTrackChange insertNewCustomXmlMoveToRangeStart(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().insert_element_user(PROPERTY_QNAME[42], i);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTD insertNewD(int i) {
        CTD ctd;
        synchronized (monitor()) {
            check_orphaned();
            ctd = (CTD) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return ctd;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTRunTrackChange insertNewDel(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().insert_element_user(PROPERTY_QNAME[45], i);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTEqArr insertNewEqArr(int i) {
        CTEqArr cTEqArr;
        synchronized (monitor()) {
            check_orphaned();
            cTEqArr = (CTEqArr) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTEqArr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTF insertNewF(int i) {
        CTF ctf;
        synchronized (monitor()) {
            check_orphaned();
            ctf = (CTF) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return ctf;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSimpleField insertNewFldSimple(int i) {
        CTSimpleField cTSimpleField;
        synchronized (monitor()) {
            check_orphaned();
            cTSimpleField = (CTSimpleField) get_store().insert_element_user(PROPERTY_QNAME[21], i);
        }
        return cTSimpleField;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTFunc insertNewFunc(int i) {
        CTFunc cTFunc;
        synchronized (monitor()) {
            check_orphaned();
            cTFunc = (CTFunc) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTFunc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTGroupChr insertNewGroupChr(int i) {
        CTGroupChr cTGroupChr;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupChr = (CTGroupChr) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTGroupChr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTHyperlink insertNewHyperlink(int i) {
        CTHyperlink cTHyperlink;
        synchronized (monitor()) {
            check_orphaned();
            cTHyperlink = (CTHyperlink) get_store().insert_element_user(PROPERTY_QNAME[22], i);
        }
        return cTHyperlink;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTRunTrackChange insertNewIns(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().insert_element_user(PROPERTY_QNAME[44], i);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTLimLow insertNewLimLow(int i) {
        CTLimLow cTLimLow;
        synchronized (monitor()) {
            check_orphaned();
            cTLimLow = (CTLimLow) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return cTLimLow;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTLimUpp insertNewLimUpp(int i) {
        CTLimUpp cTLimUpp;
        synchronized (monitor()) {
            check_orphaned();
            cTLimUpp = (CTLimUpp) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return cTLimUpp;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTM insertNewM(int i) {
        CTM ctm;
        synchronized (monitor()) {
            check_orphaned();
            ctm = (CTM) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return ctm;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTRunTrackChange insertNewMoveFrom(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().insert_element_user(PROPERTY_QNAME[46], i);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkupRange insertNewMoveFromRangeEnd(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[31], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMoveBookmark insertNewMoveFromRangeStart(int i) {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().insert_element_user(PROPERTY_QNAME[30], i);
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTRunTrackChange insertNewMoveTo(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().insert_element_user(PROPERTY_QNAME[47], i);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkupRange insertNewMoveToRangeEnd(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[33], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMoveBookmark insertNewMoveToRangeStart(int i) {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().insert_element_user(PROPERTY_QNAME[32], i);
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTNary insertNewNary(int i) {
        CTNary cTNary;
        synchronized (monitor()) {
            check_orphaned();
            cTNary = (CTNary) get_store().insert_element_user(PROPERTY_QNAME[12], i);
        }
        return cTNary;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTOMath insertNewOMath(int i) {
        CTOMath cTOMath;
        synchronized (monitor()) {
            check_orphaned();
            cTOMath = (CTOMath) get_store().insert_element_user(PROPERTY_QNAME[49], i);
        }
        return cTOMath;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTOMathPara insertNewOMathPara(int i) {
        CTOMathPara cTOMathPara;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathPara = (CTOMathPara) get_store().insert_element_user(PROPERTY_QNAME[48], i);
        }
        return cTOMathPara;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTPerm insertNewPermEnd(int i) {
        CTPerm cTPerm;
        synchronized (monitor()) {
            check_orphaned();
            cTPerm = (CTPerm) get_store().insert_element_user(PROPERTY_QNAME[27], i);
        }
        return cTPerm;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTPermStart insertNewPermStart(int i) {
        CTPermStart cTPermStart;
        synchronized (monitor()) {
            check_orphaned();
            cTPermStart = (CTPermStart) get_store().insert_element_user(PROPERTY_QNAME[26], i);
        }
        return cTPermStart;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTPhant insertNewPhant(int i) {
        CTPhant cTPhant;
        synchronized (monitor()) {
            check_orphaned();
            cTPhant = (CTPhant) get_store().insert_element_user(PROPERTY_QNAME[13], i);
        }
        return cTPhant;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTProofErr insertNewProofErr(int i) {
        CTProofErr cTProofErr;
        synchronized (monitor()) {
            check_orphaned();
            cTProofErr = (CTProofErr) get_store().insert_element_user(PROPERTY_QNAME[25], i);
        }
        return cTProofErr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTR insertNewR(int i) {
        CTR ctr;
        synchronized (monitor()) {
            check_orphaned();
            ctr = (CTR) get_store().insert_element_user(PROPERTY_QNAME[19], i);
        }
        return ctr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTRad insertNewRad(int i) {
        CTRad cTRad;
        synchronized (monitor()) {
            check_orphaned();
            cTRad = (CTRad) get_store().insert_element_user(PROPERTY_QNAME[14], i);
        }
        return cTRad;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSPre insertNewSPre(int i) {
        CTSPre cTSPre;
        synchronized (monitor()) {
            check_orphaned();
            cTSPre = (CTSPre) get_store().insert_element_user(PROPERTY_QNAME[15], i);
        }
        return cTSPre;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSSub insertNewSSub(int i) {
        CTSSub cTSSub;
        synchronized (monitor()) {
            check_orphaned();
            cTSSub = (CTSSub) get_store().insert_element_user(PROPERTY_QNAME[16], i);
        }
        return cTSSub;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSSubSup insertNewSSubSup(int i) {
        CTSSubSup cTSSubSup;
        synchronized (monitor()) {
            check_orphaned();
            cTSSubSup = (CTSSubSup) get_store().insert_element_user(PROPERTY_QNAME[17], i);
        }
        return cTSSubSup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSSup insertNewSSup(int i) {
        CTSSup cTSSup;
        synchronized (monitor()) {
            check_orphaned();
            cTSSup = (CTSSup) get_store().insert_element_user(PROPERTY_QNAME[18], i);
        }
        return cTSSup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSdtRun insertNewSdt(int i) {
        CTSdtRun cTSdtRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtRun = (CTSdtRun) get_store().insert_element_user(PROPERTY_QNAME[24], i);
        }
        return cTSdtRun;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSmartTagRun insertNewSmartTag(int i) {
        CTSmartTagRun cTSmartTagRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSmartTagRun = (CTSmartTagRun) get_store().insert_element_user(PROPERTY_QNAME[23], i);
        }
        return cTSmartTagRun;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeAcc(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeBar(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeBookmarkEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[29], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeBookmarkStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[28], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeBorderBox(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeBox(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeCommentRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[35], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeCommentRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[34], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeCustomXml(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[20], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeCustomXmlDelRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[39], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeCustomXmlDelRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[38], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeCustomXmlInsRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[37], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeCustomXmlInsRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[36], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeCustomXmlMoveFromRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[41], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeCustomXmlMoveFromRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[40], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeCustomXmlMoveToRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[43], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeCustomXmlMoveToRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[42], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeD(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeDel(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[45], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeEqArr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeF(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeFldSimple(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[21], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeFunc(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeGroupChr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeHyperlink(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[22], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeIns(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[44], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeLimLow(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeLimUpp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeM(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeMoveFrom(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[46], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeMoveFromRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[31], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeMoveFromRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[30], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeMoveTo(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[47], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeMoveToRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[33], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeMoveToRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[32], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeNary(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeOMath(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[49], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeOMathPara(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[48], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removePermEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[27], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removePermStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[26], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removePhant(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeProofErr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[25], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeR(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[19], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeRad(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeSPre(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeSSub(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[16], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeSSubSup(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[17], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeSSup(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[18], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeSdt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[24], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void removeSmartTag(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[23], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setAccArray(CTAcc[] cTAccArr) {
        check_orphaned();
        arraySetterHelper(cTAccArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setBarArray(CTBar[] cTBarArr) {
        check_orphaned();
        arraySetterHelper(cTBarArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setBookmarkEndArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[29]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setBookmarkStartArray(CTBookmark[] cTBookmarkArr) {
        check_orphaned();
        arraySetterHelper(cTBookmarkArr, PROPERTY_QNAME[28]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setBorderBoxArray(CTBorderBox[] cTBorderBoxArr) {
        check_orphaned();
        arraySetterHelper(cTBorderBoxArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setBoxArray(CTBox[] cTBoxArr) {
        check_orphaned();
        arraySetterHelper(cTBoxArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCommentRangeEndArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[35]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCommentRangeStartArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[34]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCustomXmlArray(CTCustomXmlRun[] cTCustomXmlRunArr) {
        check_orphaned();
        arraySetterHelper(cTCustomXmlRunArr, PROPERTY_QNAME[20]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCustomXmlDelRangeEndArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[39]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCustomXmlDelRangeStartArray(CTTrackChange[] cTTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTTrackChangeArr, PROPERTY_QNAME[38]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCustomXmlInsRangeEndArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[37]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCustomXmlInsRangeStartArray(CTTrackChange[] cTTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTTrackChangeArr, PROPERTY_QNAME[36]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCustomXmlMoveFromRangeEndArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[41]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCustomXmlMoveFromRangeStartArray(CTTrackChange[] cTTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTTrackChangeArr, PROPERTY_QNAME[40]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCustomXmlMoveToRangeEndArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[43]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCustomXmlMoveToRangeStartArray(CTTrackChange[] cTTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTTrackChangeArr, PROPERTY_QNAME[42]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setDArray(CTD[] ctdArr) {
        check_orphaned();
        arraySetterHelper(ctdArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setDelArray(CTRunTrackChange[] cTRunTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRunTrackChangeArr, PROPERTY_QNAME[45]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setEqArrArray(CTEqArr[] cTEqArrArr) {
        check_orphaned();
        arraySetterHelper(cTEqArrArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setFArray(CTF[] ctfArr) {
        check_orphaned();
        arraySetterHelper(ctfArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setFldSimpleArray(CTSimpleField[] cTSimpleFieldArr) {
        check_orphaned();
        arraySetterHelper(cTSimpleFieldArr, PROPERTY_QNAME[21]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setFuncArray(CTFunc[] cTFuncArr) {
        check_orphaned();
        arraySetterHelper(cTFuncArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setGroupChrArray(CTGroupChr[] cTGroupChrArr) {
        check_orphaned();
        arraySetterHelper(cTGroupChrArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setHyperlinkArray(CTHyperlink[] cTHyperlinkArr) {
        check_orphaned();
        arraySetterHelper(cTHyperlinkArr, PROPERTY_QNAME[22]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setInsArray(CTRunTrackChange[] cTRunTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRunTrackChangeArr, PROPERTY_QNAME[44]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setLimLowArray(CTLimLow[] cTLimLowArr) {
        check_orphaned();
        arraySetterHelper(cTLimLowArr, PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setLimUppArray(CTLimUpp[] cTLimUppArr) {
        check_orphaned();
        arraySetterHelper(cTLimUppArr, PROPERTY_QNAME[10]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setMArray(CTM[] ctmArr) {
        check_orphaned();
        arraySetterHelper(ctmArr, PROPERTY_QNAME[11]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setMoveFromArray(CTRunTrackChange[] cTRunTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRunTrackChangeArr, PROPERTY_QNAME[46]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setMoveFromRangeEndArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[31]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setMoveFromRangeStartArray(CTMoveBookmark[] cTMoveBookmarkArr) {
        check_orphaned();
        arraySetterHelper(cTMoveBookmarkArr, PROPERTY_QNAME[30]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setMoveToArray(CTRunTrackChange[] cTRunTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRunTrackChangeArr, PROPERTY_QNAME[47]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setMoveToRangeEndArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[33]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setMoveToRangeStartArray(CTMoveBookmark[] cTMoveBookmarkArr) {
        check_orphaned();
        arraySetterHelper(cTMoveBookmarkArr, PROPERTY_QNAME[32]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setNaryArray(CTNary[] cTNaryArr) {
        check_orphaned();
        arraySetterHelper(cTNaryArr, PROPERTY_QNAME[12]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setOMathArray(CTOMath[] cTOMathArr) {
        check_orphaned();
        arraySetterHelper(cTOMathArr, PROPERTY_QNAME[49]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setOMathParaArray(CTOMathPara[] cTOMathParaArr) {
        check_orphaned();
        arraySetterHelper(cTOMathParaArr, PROPERTY_QNAME[48]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setPermEndArray(CTPerm[] cTPermArr) {
        check_orphaned();
        arraySetterHelper(cTPermArr, PROPERTY_QNAME[27]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setPermStartArray(CTPermStart[] cTPermStartArr) {
        check_orphaned();
        arraySetterHelper(cTPermStartArr, PROPERTY_QNAME[26]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setPhantArray(CTPhant[] cTPhantArr) {
        check_orphaned();
        arraySetterHelper(cTPhantArr, PROPERTY_QNAME[13]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setProofErrArray(CTProofErr[] cTProofErrArr) {
        check_orphaned();
        arraySetterHelper(cTProofErrArr, PROPERTY_QNAME[25]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setRArray(CTR[] ctrArr) {
        check_orphaned();
        arraySetterHelper(ctrArr, PROPERTY_QNAME[19]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setRadArray(CTRad[] cTRadArr) {
        check_orphaned();
        arraySetterHelper(cTRadArr, PROPERTY_QNAME[14]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setSPreArray(CTSPre[] cTSPreArr) {
        check_orphaned();
        arraySetterHelper(cTSPreArr, PROPERTY_QNAME[15]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setSSubArray(CTSSub[] cTSSubArr) {
        check_orphaned();
        arraySetterHelper(cTSSubArr, PROPERTY_QNAME[16]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setSSubSupArray(CTSSubSup[] cTSSubSupArr) {
        check_orphaned();
        arraySetterHelper(cTSSubSupArr, PROPERTY_QNAME[17]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setSSupArray(CTSSup[] cTSSupArr) {
        check_orphaned();
        arraySetterHelper(cTSSupArr, PROPERTY_QNAME[18]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setSdtArray(CTSdtRun[] cTSdtRunArr) {
        check_orphaned();
        arraySetterHelper(cTSdtRunArr, PROPERTY_QNAME[24]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setSmartTagArray(CTSmartTagRun[] cTSmartTagRunArr) {
        check_orphaned();
        arraySetterHelper(cTSmartTagRunArr, PROPERTY_QNAME[23]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfAccArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfBarArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfBookmarkEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[29]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfBookmarkStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[28]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfBorderBoxArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfBoxArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfCommentRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[35]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfCommentRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[34]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfCustomXmlArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[20]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfCustomXmlDelRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[39]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfCustomXmlDelRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[38]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfCustomXmlInsRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[37]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfCustomXmlInsRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[36]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfCustomXmlMoveFromRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[41]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfCustomXmlMoveFromRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[40]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfCustomXmlMoveToRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[43]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfCustomXmlMoveToRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[42]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfDArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfDelArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[45]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfEqArrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfFArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfFldSimpleArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[21]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfFuncArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfGroupChrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfHyperlinkArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[22]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfInsArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[44]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfLimLowArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfLimUppArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfMArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfMoveFromArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[46]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfMoveFromRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[31]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfMoveFromRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[30]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfMoveToArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[47]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfMoveToRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[33]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfMoveToRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[32]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfNaryArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfOMathArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[49]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfOMathParaArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[48]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfPermEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[27]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfPermStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[26]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfPhantArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[13]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfProofErrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[25]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfRArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[19]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfRadArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[14]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfSPreArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[15]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfSSubArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[16]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfSSubSupArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[17]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfSSupArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[18]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfSdtArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[24]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public int sizeOfSmartTagArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[23]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTAcc getAccArray(int i) {
        CTAcc cTAcc;
        synchronized (monitor()) {
            check_orphaned();
            cTAcc = (CTAcc) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTAcc == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAcc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTBar getBarArray(int i) {
        CTBar cTBar;
        synchronized (monitor()) {
            check_orphaned();
            cTBar = (CTBar) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTBar == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBar;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkupRange getBookmarkEndArray(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().find_element_user(PROPERTY_QNAME[29], i);
            if (cTMarkupRange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTBookmark getBookmarkStartArray(int i) {
        CTBookmark cTBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTBookmark = (CTBookmark) get_store().find_element_user(PROPERTY_QNAME[28], i);
            if (cTBookmark == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBookmark;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTBorderBox getBorderBoxArray(int i) {
        CTBorderBox cTBorderBox;
        synchronized (monitor()) {
            check_orphaned();
            cTBorderBox = (CTBorderBox) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTBorderBox == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBorderBox;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTBox getBoxArray(int i) {
        CTBox cTBox;
        synchronized (monitor()) {
            check_orphaned();
            cTBox = (CTBox) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTBox == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBox;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkupRange getCommentRangeEndArray(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().find_element_user(PROPERTY_QNAME[35], i);
            if (cTMarkupRange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkupRange getCommentRangeStartArray(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().find_element_user(PROPERTY_QNAME[34], i);
            if (cTMarkupRange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTCustomXmlRun getCustomXmlArray(int i) {
        CTCustomXmlRun cTCustomXmlRun;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomXmlRun = (CTCustomXmlRun) get_store().find_element_user(PROPERTY_QNAME[20], i);
            if (cTCustomXmlRun == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCustomXmlRun;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkup getCustomXmlDelRangeEndArray(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().find_element_user(PROPERTY_QNAME[39], i);
            if (cTMarkup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTTrackChange getCustomXmlDelRangeStartArray(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().find_element_user(PROPERTY_QNAME[38], i);
            if (cTTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkup getCustomXmlInsRangeEndArray(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().find_element_user(PROPERTY_QNAME[37], i);
            if (cTMarkup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTTrackChange getCustomXmlInsRangeStartArray(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().find_element_user(PROPERTY_QNAME[36], i);
            if (cTTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkup getCustomXmlMoveFromRangeEndArray(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().find_element_user(PROPERTY_QNAME[41], i);
            if (cTMarkup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTTrackChange getCustomXmlMoveFromRangeStartArray(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().find_element_user(PROPERTY_QNAME[40], i);
            if (cTTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkup getCustomXmlMoveToRangeEndArray(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().find_element_user(PROPERTY_QNAME[43], i);
            if (cTMarkup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTTrackChange getCustomXmlMoveToRangeStartArray(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().find_element_user(PROPERTY_QNAME[42], i);
            if (cTTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTD getDArray(int i) {
        CTD ctd;
        synchronized (monitor()) {
            check_orphaned();
            ctd = (CTD) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (ctd == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return ctd;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTRunTrackChange getDelArray(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().find_element_user(PROPERTY_QNAME[45], i);
            if (cTRunTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTEqArr getEqArrArray(int i) {
        CTEqArr cTEqArr;
        synchronized (monitor()) {
            check_orphaned();
            cTEqArr = (CTEqArr) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTEqArr == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEqArr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTF getFArray(int i) {
        CTF ctf;
        synchronized (monitor()) {
            check_orphaned();
            ctf = (CTF) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (ctf == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return ctf;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSimpleField getFldSimpleArray(int i) {
        CTSimpleField cTSimpleField;
        synchronized (monitor()) {
            check_orphaned();
            cTSimpleField = (CTSimpleField) get_store().find_element_user(PROPERTY_QNAME[21], i);
            if (cTSimpleField == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSimpleField;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTFunc getFuncArray(int i) {
        CTFunc cTFunc;
        synchronized (monitor()) {
            check_orphaned();
            cTFunc = (CTFunc) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTFunc == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFunc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTGroupChr getGroupChrArray(int i) {
        CTGroupChr cTGroupChr;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupChr = (CTGroupChr) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (cTGroupChr == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGroupChr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTHyperlink getHyperlinkArray(int i) {
        CTHyperlink cTHyperlink;
        synchronized (monitor()) {
            check_orphaned();
            cTHyperlink = (CTHyperlink) get_store().find_element_user(PROPERTY_QNAME[22], i);
            if (cTHyperlink == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTHyperlink;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTRunTrackChange getInsArray(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().find_element_user(PROPERTY_QNAME[44], i);
            if (cTRunTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTLimLow getLimLowArray(int i) {
        CTLimLow cTLimLow;
        synchronized (monitor()) {
            check_orphaned();
            cTLimLow = (CTLimLow) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (cTLimLow == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTLimLow;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTLimUpp getLimUppArray(int i) {
        CTLimUpp cTLimUpp;
        synchronized (monitor()) {
            check_orphaned();
            cTLimUpp = (CTLimUpp) get_store().find_element_user(PROPERTY_QNAME[10], i);
            if (cTLimUpp == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTLimUpp;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTM getMArray(int i) {
        CTM ctm;
        synchronized (monitor()) {
            check_orphaned();
            ctm = (CTM) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (ctm == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return ctm;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTRunTrackChange getMoveFromArray(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().find_element_user(PROPERTY_QNAME[46], i);
            if (cTRunTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkupRange getMoveFromRangeEndArray(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().find_element_user(PROPERTY_QNAME[31], i);
            if (cTMarkupRange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMoveBookmark getMoveFromRangeStartArray(int i) {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().find_element_user(PROPERTY_QNAME[30], i);
            if (cTMoveBookmark == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTRunTrackChange getMoveToArray(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().find_element_user(PROPERTY_QNAME[47], i);
            if (cTRunTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMarkupRange getMoveToRangeEndArray(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().find_element_user(PROPERTY_QNAME[33], i);
            if (cTMarkupRange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTMoveBookmark getMoveToRangeStartArray(int i) {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().find_element_user(PROPERTY_QNAME[32], i);
            if (cTMoveBookmark == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTNary getNaryArray(int i) {
        CTNary cTNary;
        synchronized (monitor()) {
            check_orphaned();
            cTNary = (CTNary) get_store().find_element_user(PROPERTY_QNAME[12], i);
            if (cTNary == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNary;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTOMath getOMathArray(int i) {
        CTOMath cTOMath;
        synchronized (monitor()) {
            check_orphaned();
            cTOMath = (CTOMath) get_store().find_element_user(PROPERTY_QNAME[49], i);
            if (cTOMath == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOMath;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTOMathPara getOMathParaArray(int i) {
        CTOMathPara cTOMathPara;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathPara = (CTOMathPara) get_store().find_element_user(PROPERTY_QNAME[48], i);
            if (cTOMathPara == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOMathPara;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTPerm getPermEndArray(int i) {
        CTPerm cTPerm;
        synchronized (monitor()) {
            check_orphaned();
            cTPerm = (CTPerm) get_store().find_element_user(PROPERTY_QNAME[27], i);
            if (cTPerm == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPerm;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTPermStart getPermStartArray(int i) {
        CTPermStart cTPermStart;
        synchronized (monitor()) {
            check_orphaned();
            cTPermStart = (CTPermStart) get_store().find_element_user(PROPERTY_QNAME[26], i);
            if (cTPermStart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPermStart;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTPhant getPhantArray(int i) {
        CTPhant cTPhant;
        synchronized (monitor()) {
            check_orphaned();
            cTPhant = (CTPhant) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (cTPhant == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPhant;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTProofErr getProofErrArray(int i) {
        CTProofErr cTProofErr;
        synchronized (monitor()) {
            check_orphaned();
            cTProofErr = (CTProofErr) get_store().find_element_user(PROPERTY_QNAME[25], i);
            if (cTProofErr == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTProofErr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTR getRArray(int i) {
        CTR ctr;
        synchronized (monitor()) {
            check_orphaned();
            ctr = (CTR) get_store().find_element_user(PROPERTY_QNAME[19], i);
            if (ctr == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return ctr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTRad getRadArray(int i) {
        CTRad cTRad;
        synchronized (monitor()) {
            check_orphaned();
            cTRad = (CTRad) get_store().find_element_user(PROPERTY_QNAME[14], i);
            if (cTRad == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRad;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSPre getSPreArray(int i) {
        CTSPre cTSPre;
        synchronized (monitor()) {
            check_orphaned();
            cTSPre = (CTSPre) get_store().find_element_user(PROPERTY_QNAME[15], i);
            if (cTSPre == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSPre;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSSub getSSubArray(int i) {
        CTSSub cTSSub;
        synchronized (monitor()) {
            check_orphaned();
            cTSSub = (CTSSub) get_store().find_element_user(PROPERTY_QNAME[16], i);
            if (cTSSub == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSSub;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSSubSup getSSubSupArray(int i) {
        CTSSubSup cTSSubSup;
        synchronized (monitor()) {
            check_orphaned();
            cTSSubSup = (CTSSubSup) get_store().find_element_user(PROPERTY_QNAME[17], i);
            if (cTSSubSup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSSubSup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSSup getSSupArray(int i) {
        CTSSup cTSSup;
        synchronized (monitor()) {
            check_orphaned();
            cTSSup = (CTSSup) get_store().find_element_user(PROPERTY_QNAME[18], i);
            if (cTSSup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSSup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSdtRun getSdtArray(int i) {
        CTSdtRun cTSdtRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtRun = (CTSdtRun) get_store().find_element_user(PROPERTY_QNAME[24], i);
            if (cTSdtRun == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSdtRun;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public CTSmartTagRun getSmartTagArray(int i) {
        CTSmartTagRun cTSmartTagRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSmartTagRun = (CTSmartTagRun) get_store().find_element_user(PROPERTY_QNAME[23], i);
            if (cTSmartTagRun == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSmartTagRun;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setAccArray(int i, CTAcc cTAcc) {
        generatedSetterHelperImpl(cTAcc, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setBarArray(int i, CTBar cTBar) {
        generatedSetterHelperImpl(cTBar, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setBookmarkEndArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[29], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setBookmarkStartArray(int i, CTBookmark cTBookmark) {
        generatedSetterHelperImpl(cTBookmark, PROPERTY_QNAME[28], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setBorderBoxArray(int i, CTBorderBox cTBorderBox) {
        generatedSetterHelperImpl(cTBorderBox, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setBoxArray(int i, CTBox cTBox) {
        generatedSetterHelperImpl(cTBox, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCommentRangeEndArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[35], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCommentRangeStartArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[34], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCustomXmlArray(int i, CTCustomXmlRun cTCustomXmlRun) {
        generatedSetterHelperImpl(cTCustomXmlRun, PROPERTY_QNAME[20], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCustomXmlDelRangeEndArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[39], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCustomXmlDelRangeStartArray(int i, CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[38], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCustomXmlInsRangeEndArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[37], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCustomXmlInsRangeStartArray(int i, CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[36], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCustomXmlMoveFromRangeEndArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[41], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCustomXmlMoveFromRangeStartArray(int i, CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[40], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCustomXmlMoveToRangeEndArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[43], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setCustomXmlMoveToRangeStartArray(int i, CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[42], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setDArray(int i, CTD ctd) {
        generatedSetterHelperImpl(ctd, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setDelArray(int i, CTRunTrackChange cTRunTrackChange) {
        generatedSetterHelperImpl(cTRunTrackChange, PROPERTY_QNAME[45], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setEqArrArray(int i, CTEqArr cTEqArr) {
        generatedSetterHelperImpl(cTEqArr, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setFArray(int i, CTF ctf) {
        generatedSetterHelperImpl(ctf, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setFldSimpleArray(int i, CTSimpleField cTSimpleField) {
        generatedSetterHelperImpl(cTSimpleField, PROPERTY_QNAME[21], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setFuncArray(int i, CTFunc cTFunc) {
        generatedSetterHelperImpl(cTFunc, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setGroupChrArray(int i, CTGroupChr cTGroupChr) {
        generatedSetterHelperImpl(cTGroupChr, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setHyperlinkArray(int i, CTHyperlink cTHyperlink) {
        generatedSetterHelperImpl(cTHyperlink, PROPERTY_QNAME[22], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setInsArray(int i, CTRunTrackChange cTRunTrackChange) {
        generatedSetterHelperImpl(cTRunTrackChange, PROPERTY_QNAME[44], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setLimLowArray(int i, CTLimLow cTLimLow) {
        generatedSetterHelperImpl(cTLimLow, PROPERTY_QNAME[9], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setLimUppArray(int i, CTLimUpp cTLimUpp) {
        generatedSetterHelperImpl(cTLimUpp, PROPERTY_QNAME[10], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setMArray(int i, CTM ctm) {
        generatedSetterHelperImpl(ctm, PROPERTY_QNAME[11], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setMoveFromArray(int i, CTRunTrackChange cTRunTrackChange) {
        generatedSetterHelperImpl(cTRunTrackChange, PROPERTY_QNAME[46], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setMoveFromRangeEndArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[31], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setMoveFromRangeStartArray(int i, CTMoveBookmark cTMoveBookmark) {
        generatedSetterHelperImpl(cTMoveBookmark, PROPERTY_QNAME[30], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setMoveToArray(int i, CTRunTrackChange cTRunTrackChange) {
        generatedSetterHelperImpl(cTRunTrackChange, PROPERTY_QNAME[47], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setMoveToRangeEndArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[33], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setMoveToRangeStartArray(int i, CTMoveBookmark cTMoveBookmark) {
        generatedSetterHelperImpl(cTMoveBookmark, PROPERTY_QNAME[32], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setNaryArray(int i, CTNary cTNary) {
        generatedSetterHelperImpl(cTNary, PROPERTY_QNAME[12], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setOMathArray(int i, CTOMath cTOMath) {
        generatedSetterHelperImpl(cTOMath, PROPERTY_QNAME[49], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setOMathParaArray(int i, CTOMathPara cTOMathPara) {
        generatedSetterHelperImpl(cTOMathPara, PROPERTY_QNAME[48], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setPermEndArray(int i, CTPerm cTPerm) {
        generatedSetterHelperImpl(cTPerm, PROPERTY_QNAME[27], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setPermStartArray(int i, CTPermStart cTPermStart) {
        generatedSetterHelperImpl(cTPermStart, PROPERTY_QNAME[26], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setPhantArray(int i, CTPhant cTPhant) {
        generatedSetterHelperImpl(cTPhant, PROPERTY_QNAME[13], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setProofErrArray(int i, CTProofErr cTProofErr) {
        generatedSetterHelperImpl(cTProofErr, PROPERTY_QNAME[25], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setRArray(int i, CTR ctr) {
        generatedSetterHelperImpl(ctr, PROPERTY_QNAME[19], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setRadArray(int i, CTRad cTRad) {
        generatedSetterHelperImpl(cTRad, PROPERTY_QNAME[14], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setSPreArray(int i, CTSPre cTSPre) {
        generatedSetterHelperImpl(cTSPre, PROPERTY_QNAME[15], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setSSubArray(int i, CTSSub cTSSub) {
        generatedSetterHelperImpl(cTSSub, PROPERTY_QNAME[16], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setSSubSupArray(int i, CTSSubSup cTSSubSup) {
        generatedSetterHelperImpl(cTSSubSup, PROPERTY_QNAME[17], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setSSupArray(int i, CTSSup cTSSup) {
        generatedSetterHelperImpl(cTSSup, PROPERTY_QNAME[18], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setSdtArray(int i, CTSdtRun cTSdtRun) {
        generatedSetterHelperImpl(cTSdtRun, PROPERTY_QNAME[24], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath
    public void setSmartTagArray(int i, CTSmartTagRun cTSmartTagRun) {
        generatedSetterHelperImpl(cTSmartTagRun, PROPERTY_QNAME[23], i, (short) 2);
    }
}
