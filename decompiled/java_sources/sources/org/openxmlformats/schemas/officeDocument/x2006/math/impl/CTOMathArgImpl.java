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
import org.openxmlformats.schemas.officeDocument.x2006.math.CTCtrlPr;
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
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArgPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTPhant;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTR;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTRad;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTSPre;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTSSub;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTSSubSup;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTSSup;
import org.openxmlformats.schemas.officeDocument.x2006.math.impl.CTOMathArgImpl;
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
public class CTOMathArgImpl extends XmlComplexContentImpl implements CTOMathArg {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "argPr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "acc"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "bar"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "box"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "borderBox"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "d"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "eqArr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", C6997f.f39671c), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "func"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "groupChr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "limLow"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "limUpp"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "m"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "nary"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "phant"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "rad"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "sPre"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "sSub"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "sSubSup"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "sSup"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "r"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXml"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "fldSimple"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "hyperlink"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "smartTag"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "sdt"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "proofErr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "permStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "permEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "bookmarkStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "bookmarkEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveFromRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveFromRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveToRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveToRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "commentRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "commentRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlInsRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlInsRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlDelRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlDelRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlMoveFromRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlMoveFromRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlMoveToRangeStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "customXmlMoveToRangeEnd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "ins"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "del"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveFrom"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveTo"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "oMathPara"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "oMath"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "ctrlPr")};
    private static final long serialVersionUID = 1;

    public CTOMathArgImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTAcc addNewAcc() {
        CTAcc cTAcc;
        synchronized (monitor()) {
            check_orphaned();
            cTAcc = (CTAcc) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTAcc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTOMathArgPr addNewArgPr() {
        CTOMathArgPr cTOMathArgPr;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArgPr = (CTOMathArgPr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTOMathArgPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTBar addNewBar() {
        CTBar cTBar;
        synchronized (monitor()) {
            check_orphaned();
            cTBar = (CTBar) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTBar;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkupRange addNewBookmarkEnd() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[30]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTBookmark addNewBookmarkStart() {
        CTBookmark cTBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTBookmark = (CTBookmark) get_store().add_element_user(PROPERTY_QNAME[29]);
        }
        return cTBookmark;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTBorderBox addNewBorderBox() {
        CTBorderBox cTBorderBox;
        synchronized (monitor()) {
            check_orphaned();
            cTBorderBox = (CTBorderBox) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTBorderBox;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTBox addNewBox() {
        CTBox cTBox;
        synchronized (monitor()) {
            check_orphaned();
            cTBox = (CTBox) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTBox;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkupRange addNewCommentRangeEnd() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[36]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkupRange addNewCommentRangeStart() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[35]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTCtrlPr addNewCtrlPr() {
        CTCtrlPr cTCtrlPr;
        synchronized (monitor()) {
            check_orphaned();
            cTCtrlPr = (CTCtrlPr) get_store().add_element_user(PROPERTY_QNAME[51]);
        }
        return cTCtrlPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTCustomXmlRun addNewCustomXml() {
        CTCustomXmlRun cTCustomXmlRun;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomXmlRun = (CTCustomXmlRun) get_store().add_element_user(PROPERTY_QNAME[21]);
        }
        return cTCustomXmlRun;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkup addNewCustomXmlDelRangeEnd() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[40]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTTrackChange addNewCustomXmlDelRangeStart() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[39]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkup addNewCustomXmlInsRangeEnd() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[38]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTTrackChange addNewCustomXmlInsRangeStart() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[37]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkup addNewCustomXmlMoveFromRangeEnd() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[42]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTTrackChange addNewCustomXmlMoveFromRangeStart() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[41]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkup addNewCustomXmlMoveToRangeEnd() {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().add_element_user(PROPERTY_QNAME[44]);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTTrackChange addNewCustomXmlMoveToRangeStart() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[43]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTD addNewD() {
        CTD ctd;
        synchronized (monitor()) {
            check_orphaned();
            ctd = (CTD) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return ctd;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTRunTrackChange addNewDel() {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().add_element_user(PROPERTY_QNAME[46]);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTEqArr addNewEqArr() {
        CTEqArr cTEqArr;
        synchronized (monitor()) {
            check_orphaned();
            cTEqArr = (CTEqArr) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTEqArr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTF addNewF() {
        CTF ctf;
        synchronized (monitor()) {
            check_orphaned();
            ctf = (CTF) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return ctf;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSimpleField addNewFldSimple() {
        CTSimpleField cTSimpleField;
        synchronized (monitor()) {
            check_orphaned();
            cTSimpleField = (CTSimpleField) get_store().add_element_user(PROPERTY_QNAME[22]);
        }
        return cTSimpleField;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTFunc addNewFunc() {
        CTFunc cTFunc;
        synchronized (monitor()) {
            check_orphaned();
            cTFunc = (CTFunc) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTFunc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTGroupChr addNewGroupChr() {
        CTGroupChr cTGroupChr;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupChr = (CTGroupChr) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTGroupChr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTHyperlink addNewHyperlink() {
        CTHyperlink cTHyperlink;
        synchronized (monitor()) {
            check_orphaned();
            cTHyperlink = (CTHyperlink) get_store().add_element_user(PROPERTY_QNAME[23]);
        }
        return cTHyperlink;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTRunTrackChange addNewIns() {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().add_element_user(PROPERTY_QNAME[45]);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTLimLow addNewLimLow() {
        CTLimLow cTLimLow;
        synchronized (monitor()) {
            check_orphaned();
            cTLimLow = (CTLimLow) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTLimLow;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTLimUpp addNewLimUpp() {
        CTLimUpp cTLimUpp;
        synchronized (monitor()) {
            check_orphaned();
            cTLimUpp = (CTLimUpp) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTLimUpp;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTM addNewM() {
        CTM ctm;
        synchronized (monitor()) {
            check_orphaned();
            ctm = (CTM) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return ctm;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTRunTrackChange addNewMoveFrom() {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().add_element_user(PROPERTY_QNAME[47]);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkupRange addNewMoveFromRangeEnd() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[32]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMoveBookmark addNewMoveFromRangeStart() {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().add_element_user(PROPERTY_QNAME[31]);
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTRunTrackChange addNewMoveTo() {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().add_element_user(PROPERTY_QNAME[48]);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkupRange addNewMoveToRangeEnd() {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().add_element_user(PROPERTY_QNAME[34]);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMoveBookmark addNewMoveToRangeStart() {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().add_element_user(PROPERTY_QNAME[33]);
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTNary addNewNary() {
        CTNary cTNary;
        synchronized (monitor()) {
            check_orphaned();
            cTNary = (CTNary) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTNary;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTOMath addNewOMath() {
        CTOMath cTOMath;
        synchronized (monitor()) {
            check_orphaned();
            cTOMath = (CTOMath) get_store().add_element_user(PROPERTY_QNAME[50]);
        }
        return cTOMath;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTOMathPara addNewOMathPara() {
        CTOMathPara cTOMathPara;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathPara = (CTOMathPara) get_store().add_element_user(PROPERTY_QNAME[49]);
        }
        return cTOMathPara;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTPerm addNewPermEnd() {
        CTPerm cTPerm;
        synchronized (monitor()) {
            check_orphaned();
            cTPerm = (CTPerm) get_store().add_element_user(PROPERTY_QNAME[28]);
        }
        return cTPerm;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTPermStart addNewPermStart() {
        CTPermStart cTPermStart;
        synchronized (monitor()) {
            check_orphaned();
            cTPermStart = (CTPermStart) get_store().add_element_user(PROPERTY_QNAME[27]);
        }
        return cTPermStart;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTPhant addNewPhant() {
        CTPhant cTPhant;
        synchronized (monitor()) {
            check_orphaned();
            cTPhant = (CTPhant) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return cTPhant;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTProofErr addNewProofErr() {
        CTProofErr cTProofErr;
        synchronized (monitor()) {
            check_orphaned();
            cTProofErr = (CTProofErr) get_store().add_element_user(PROPERTY_QNAME[26]);
        }
        return cTProofErr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTR addNewR() {
        CTR ctr;
        synchronized (monitor()) {
            check_orphaned();
            ctr = (CTR) get_store().add_element_user(PROPERTY_QNAME[20]);
        }
        return ctr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTRad addNewRad() {
        CTRad cTRad;
        synchronized (monitor()) {
            check_orphaned();
            cTRad = (CTRad) get_store().add_element_user(PROPERTY_QNAME[15]);
        }
        return cTRad;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSPre addNewSPre() {
        CTSPre cTSPre;
        synchronized (monitor()) {
            check_orphaned();
            cTSPre = (CTSPre) get_store().add_element_user(PROPERTY_QNAME[16]);
        }
        return cTSPre;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSSub addNewSSub() {
        CTSSub cTSSub;
        synchronized (monitor()) {
            check_orphaned();
            cTSSub = (CTSSub) get_store().add_element_user(PROPERTY_QNAME[17]);
        }
        return cTSSub;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSSubSup addNewSSubSup() {
        CTSSubSup cTSSubSup;
        synchronized (monitor()) {
            check_orphaned();
            cTSSubSup = (CTSSubSup) get_store().add_element_user(PROPERTY_QNAME[18]);
        }
        return cTSSubSup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSSup addNewSSup() {
        CTSSup cTSSup;
        synchronized (monitor()) {
            check_orphaned();
            cTSSup = (CTSSup) get_store().add_element_user(PROPERTY_QNAME[19]);
        }
        return cTSSup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSdtRun addNewSdt() {
        CTSdtRun cTSdtRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtRun = (CTSdtRun) get_store().add_element_user(PROPERTY_QNAME[25]);
        }
        return cTSdtRun;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSmartTagRun addNewSmartTag() {
        CTSmartTagRun cTSmartTagRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSmartTagRun = (CTSmartTagRun) get_store().add_element_user(PROPERTY_QNAME[24]);
        }
        return cTSmartTagRun;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTAcc[] getAccArray() {
        return (CTAcc[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTAcc[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTAcc> getAccList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mw5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getAccArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nw5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setAccArray(((Integer) obj).intValue(), (CTAcc) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ow5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewAcc(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pw5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeAcc(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qw5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfAccArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTOMathArgPr getArgPr() {
        CTOMathArgPr cTOMathArgPr;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArgPr = (CTOMathArgPr) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTOMathArgPr == null) {
                cTOMathArgPr = null;
            }
        }
        return cTOMathArgPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTBar[] getBarArray() {
        return (CTBar[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTBar[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTBar> getBarList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zu5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getBarArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.av5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setBarArray(((Integer) obj).intValue(), (CTBar) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bv5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewBar(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cv5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeBar(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.dv5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfBarArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkupRange[] getBookmarkEndArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[30], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTMarkupRange> getBookmarkEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.yt5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getBookmarkEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zt5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setBookmarkEndArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.au5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewBookmarkEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bu5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeBookmarkEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.cu5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfBookmarkEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTBookmark[] getBookmarkStartArray() {
        return (CTBookmark[]) getXmlObjectArray(PROPERTY_QNAME[29], new CTBookmark[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTBookmark> getBookmarkStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ou5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getBookmarkStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pu5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setBookmarkStartArray(((Integer) obj).intValue(), (CTBookmark) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qu5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewBookmarkStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ru5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeBookmarkStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.su5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfBookmarkStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTBorderBox[] getBorderBoxArray() {
        return (CTBorderBox[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTBorderBox[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTBorderBox> getBorderBoxList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.uu5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getBorderBoxArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vu5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setBorderBoxArray(((Integer) obj).intValue(), (CTBorderBox) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wu5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewBorderBox(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xu5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeBorderBox(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yu5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfBorderBoxArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTBox[] getBoxArray() {
        return (CTBox[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTBox[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTBox> getBoxList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ur5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getBoxArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vr5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setBoxArray(((Integer) obj).intValue(), (CTBox) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wr5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewBox(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xr5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeBox(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yr5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfBoxArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkupRange[] getCommentRangeEndArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[36], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTMarkupRange> getCommentRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xw5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getCommentRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yw5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setCommentRangeEndArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zw5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewCommentRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ax5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeCommentRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.bx5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfCommentRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkupRange[] getCommentRangeStartArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[35], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTMarkupRange> getCommentRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vs5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getCommentRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ws5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setCommentRangeStartArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xs5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewCommentRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ys5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeCommentRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zs5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfCommentRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTCtrlPr getCtrlPr() {
        CTCtrlPr cTCtrlPr;
        synchronized (monitor()) {
            check_orphaned();
            cTCtrlPr = (CTCtrlPr) get_store().find_element_user(PROPERTY_QNAME[51], 0);
            if (cTCtrlPr == null) {
                cTCtrlPr = null;
            }
        }
        return cTCtrlPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTCustomXmlRun[] getCustomXmlArray() {
        return (CTCustomXmlRun[]) getXmlObjectArray(PROPERTY_QNAME[21], new CTCustomXmlRun[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkup[] getCustomXmlDelRangeEndArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[40], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTMarkup> getCustomXmlDelRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ix5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getCustomXmlDelRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jx5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setCustomXmlDelRangeEndArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.kx5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewCustomXmlDelRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.lx5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeCustomXmlDelRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.mx5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfCustomXmlDelRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTTrackChange[] getCustomXmlDelRangeStartArray() {
        return (CTTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[39], new CTTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTTrackChange> getCustomXmlDelRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ey5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getCustomXmlDelRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fy5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setCustomXmlDelRangeStartArray(((Integer) obj).intValue(), (CTTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gy5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewCustomXmlDelRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hy5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeCustomXmlDelRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.iy5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfCustomXmlDelRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkup[] getCustomXmlInsRangeEndArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[38], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTMarkup> getCustomXmlInsRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.or5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getCustomXmlInsRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pr5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setCustomXmlInsRangeEndArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qr5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewCustomXmlInsRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rr5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeCustomXmlInsRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.sr5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfCustomXmlInsRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTTrackChange[] getCustomXmlInsRangeStartArray() {
        return (CTTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[37], new CTTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTTrackChange> getCustomXmlInsRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jr5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getCustomXmlInsRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kr5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setCustomXmlInsRangeStartArray(((Integer) obj).intValue(), (CTTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lr5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewCustomXmlInsRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.mr5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeCustomXmlInsRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.nr5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfCustomXmlInsRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTCustomXmlRun> getCustomXmlList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.az5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getCustomXmlArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bz5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setCustomXmlArray(((Integer) obj).intValue(), (CTCustomXmlRun) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.cz5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewCustomXml(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.dz5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeCustomXml(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ez5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfCustomXmlArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkup[] getCustomXmlMoveFromRangeEndArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[42], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTMarkup> getCustomXmlMoveFromRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qp5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getCustomXmlMoveFromRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xt5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setCustomXmlMoveFromRangeEndArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gw5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewCustomXmlMoveFromRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rw5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeCustomXmlMoveFromRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.cx5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfCustomXmlMoveFromRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTTrackChange[] getCustomXmlMoveFromRangeStartArray() {
        return (CTTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[41], new CTTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTTrackChange> getCustomXmlMoveFromRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ox5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getCustomXmlMoveFromRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.px5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setCustomXmlMoveFromRangeStartArray(((Integer) obj).intValue(), (CTTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qx5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewCustomXmlMoveFromRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rx5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeCustomXmlMoveFromRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.sx5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfCustomXmlMoveFromRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkup[] getCustomXmlMoveToRangeEndArray() {
        return (CTMarkup[]) getXmlObjectArray(PROPERTY_QNAME[44], new CTMarkup[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTMarkup> getCustomXmlMoveToRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gt5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getCustomXmlMoveToRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ht5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setCustomXmlMoveToRangeEndArray(((Integer) obj).intValue(), (CTMarkup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.it5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewCustomXmlMoveToRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jt5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeCustomXmlMoveToRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.kt5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfCustomXmlMoveToRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTTrackChange[] getCustomXmlMoveToRangeStartArray() {
        return (CTTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[43], new CTTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTTrackChange> getCustomXmlMoveToRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rt5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getCustomXmlMoveToRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.st5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setCustomXmlMoveToRangeStartArray(((Integer) obj).intValue(), (CTTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.tt5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewCustomXmlMoveToRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ut5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeCustomXmlMoveToRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vt5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfCustomXmlMoveToRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTD[] getDArray() {
        return (CTD[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTD[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTD> getDList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wp5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getDArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xp5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setDArray(((Integer) obj).intValue(), (CTD) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.yp5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewD(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zp5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeD(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.aq5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfDArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTRunTrackChange[] getDelArray() {
        return (CTRunTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[46], new CTRunTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTRunTrackChange> getDelList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sw5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getDelArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tw5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setDelArray(((Integer) obj).intValue(), (CTRunTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.uw5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewDel(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vw5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeDel(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ww5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfDelArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTEqArr[] getEqArrArray() {
        return (CTEqArr[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTEqArr[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTEqArr> getEqArrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.kv5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getEqArrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.lv5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setEqArrArray(((Integer) obj).intValue(), (CTEqArr) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.mv5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewEqArr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.nv5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeEqArr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ov5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfEqArrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTF[] getFArray() {
        return (CTF[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTF[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTF> getFList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ks5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getFArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ls5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setFArray(((Integer) obj).intValue(), (CTF) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ms5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewF(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ns5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeF(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.os5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfFArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSimpleField[] getFldSimpleArray() {
        return (CTSimpleField[]) getXmlObjectArray(PROPERTY_QNAME[22], new CTSimpleField[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTSimpleField> getFldSimpleList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qs5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getFldSimpleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rs5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setFldSimpleArray(((Integer) obj).intValue(), (CTSimpleField) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ss5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewFldSimple(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ts5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeFldSimple(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.us5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfFldSimpleArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTFunc[] getFuncArray() {
        return (CTFunc[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTFunc[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTFunc> getFuncList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nx5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getFuncArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yx5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setFuncArray(((Integer) obj).intValue(), (CTFunc) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jy5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewFunc(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.uy5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeFunc(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fz5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfFuncArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTGroupChr[] getGroupChrArray() {
        return (CTGroupChr[]) getXmlObjectArray(PROPERTY_QNAME[9], new CTGroupChr[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTGroupChr> getGroupChrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zx5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getGroupChrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ay5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setGroupChrArray(((Integer) obj).intValue(), (CTGroupChr) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.by5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewGroupChr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cy5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeGroupChr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.dy5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfGroupChrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTHyperlink[] getHyperlinkArray() {
        return (CTHyperlink[]) getXmlObjectArray(PROPERTY_QNAME[23], new CTHyperlink[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTHyperlink> getHyperlinkList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qv5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getHyperlinkArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rv5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setHyperlinkArray(((Integer) obj).intValue(), (CTHyperlink) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.sv5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewHyperlink(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.tv5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeHyperlink(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.uv5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfHyperlinkArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTRunTrackChange[] getInsArray() {
        return (CTRunTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[45], new CTRunTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTRunTrackChange> getInsList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bw5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getInsArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cw5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setInsArray(((Integer) obj).intValue(), (CTRunTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dw5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewIns(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ew5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeIns(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fw5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfInsArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTLimLow[] getLimLowArray() {
        return (CTLimLow[]) getXmlObjectArray(PROPERTY_QNAME[10], new CTLimLow[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTLimLow> getLimLowList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ju5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getLimLowArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ku5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setLimLowArray(((Integer) obj).intValue(), (CTLimLow) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lu5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewLimLow(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.mu5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeLimLow(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.nu5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfLimLowArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTLimUpp[] getLimUppArray() {
        return (CTLimUpp[]) getXmlObjectArray(PROPERTY_QNAME[11], new CTLimUpp[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTLimUpp> getLimUppList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vv5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getLimUppArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wv5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setLimUppArray(((Integer) obj).intValue(), (CTLimUpp) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xv5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewLimUpp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.yv5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeLimUpp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zv5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfLimUppArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTM[] getMArray() {
        return (CTM[]) getXmlObjectArray(PROPERTY_QNAME[12], new CTM[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTM> getMList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hw5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getMArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.iw5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setMArray(((Integer) obj).intValue(), (CTM) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jw5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewM(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kw5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeM(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lw5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfMArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTRunTrackChange[] getMoveFromArray() {
        return (CTRunTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[47], new CTRunTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTRunTrackChange> getMoveFromList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sq5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getMoveFromArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tq5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setMoveFromArray(((Integer) obj).intValue(), (CTRunTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.uq5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewMoveFrom(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vq5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeMoveFrom(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wq5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfMoveFromArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkupRange[] getMoveFromRangeEndArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[32], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTMarkupRange> getMoveFromRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vy5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getMoveFromRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wy5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setMoveFromRangeEndArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xy5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewMoveFromRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.yy5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeMoveFromRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zy5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfMoveFromRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMoveBookmark[] getMoveFromRangeStartArray() {
        return (CTMoveBookmark[]) getXmlObjectArray(PROPERTY_QNAME[31], new CTMoveBookmark[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTMoveBookmark> getMoveFromRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.iu5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getMoveFromRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tu5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setMoveFromRangeStartArray(((Integer) obj).intValue(), (CTMoveBookmark) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ev5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewMoveFromRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pv5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeMoveFromRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.aw5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfMoveFromRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTRunTrackChange[] getMoveToArray() {
        return (CTRunTrackChange[]) getXmlObjectArray(PROPERTY_QNAME[48], new CTRunTrackChange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTRunTrackChange> getMoveToList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.py5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getMoveToArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qy5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setMoveToArray(((Integer) obj).intValue(), (CTRunTrackChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ry5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewMoveTo(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.sy5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeMoveTo(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ty5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfMoveToArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkupRange[] getMoveToRangeEndArray() {
        return (CTMarkupRange[]) getXmlObjectArray(PROPERTY_QNAME[34], new CTMarkupRange[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTMarkupRange> getMoveToRangeEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bq5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getMoveToRangeEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mq5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setMoveToRangeEndArray(((Integer) obj).intValue(), (CTMarkupRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xq5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewMoveToRangeEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ir5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeMoveToRangeEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.tr5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfMoveToRangeEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMoveBookmark[] getMoveToRangeStartArray() {
        return (CTMoveBookmark[]) getXmlObjectArray(PROPERTY_QNAME[33], new CTMoveBookmark[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTMoveBookmark> getMoveToRangeStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fs5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getMoveToRangeStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gs5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setMoveToRangeStartArray(((Integer) obj).intValue(), (CTMoveBookmark) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hs5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewMoveToRangeStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.is5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeMoveToRangeStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.js5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfMoveToRangeStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTNary[] getNaryArray() {
        return (CTNary[]) getXmlObjectArray(PROPERTY_QNAME[13], new CTNary[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTNary> getNaryList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dr5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getNaryArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.er5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setNaryArray(((Integer) obj).intValue(), (CTNary) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fr5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewNary(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gr5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeNary(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hr5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfNaryArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTOMath[] getOMathArray() {
        return (CTOMath[]) getXmlObjectArray(PROPERTY_QNAME[50], new CTOMath[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTOMath> getOMathList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zr5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getOMathArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.as5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setOMathArray(((Integer) obj).intValue(), (CTOMath) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bs5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewOMath(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cs5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeOMath(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ds5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfOMathArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTOMathPara[] getOMathParaArray() {
        return (CTOMathPara[]) getXmlObjectArray(PROPERTY_QNAME[49], new CTOMathPara[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTOMathPara> getOMathParaList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rp5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getOMathParaArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.sp5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setOMathParaArray(((Integer) obj).intValue(), (CTOMathPara) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.tp5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewOMathPara(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.up5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeOMathPara(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vp5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfOMathParaArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTPerm[] getPermEndArray() {
        return (CTPerm[]) getXmlObjectArray(PROPERTY_QNAME[28], new CTPerm[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTPerm> getPermEndList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mt5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getPermEndArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nt5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setPermEndArray(((Integer) obj).intValue(), (CTPerm) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ot5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewPermEnd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pt5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removePermEnd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qt5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfPermEndArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTPermStart[] getPermStartArray() {
        return (CTPermStart[]) getXmlObjectArray(PROPERTY_QNAME[27], new CTPermStart[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTPermStart> getPermStartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nq5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getPermStartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.oq5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setPermStartArray(((Integer) obj).intValue(), (CTPermStart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pq5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewPermStart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qq5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removePermStart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rq5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfPermStartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTPhant[] getPhantArray() {
        return (CTPhant[]) getXmlObjectArray(PROPERTY_QNAME[14], new CTPhant[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTPhant> getPhantList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.tx5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getPhantArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ux5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setPhantArray(((Integer) obj).intValue(), (CTPhant) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vx5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewPhant(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wx5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removePhant(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xx5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfPhantArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTProofErr[] getProofErrArray() {
        return (CTProofErr[]) getXmlObjectArray(PROPERTY_QNAME[26], new CTProofErr[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTProofErr> getProofErrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.es5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getProofErrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ps5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setProofErrArray(((Integer) obj).intValue(), (CTProofErr) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.at5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewProofErr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.lt5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeProofErr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wt5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfProofErrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTR[] getRArray() {
        return (CTR[]) getXmlObjectArray(PROPERTY_QNAME[20], new CTR[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTR> getRList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dx5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getRArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ex5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setRArray(((Integer) obj).intValue(), (CTR) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fx5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewR(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gx5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeR(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hx5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfRArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTRad[] getRadArray() {
        return (CTRad[]) getXmlObjectArray(PROPERTY_QNAME[15], new CTRad[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTRad> getRadList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fv5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getRadArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gv5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setRadArray(((Integer) obj).intValue(), (CTRad) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hv5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewRad(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.iv5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeRad(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.jv5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfRadArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSPre[] getSPreArray() {
        return (CTSPre[]) getXmlObjectArray(PROPERTY_QNAME[16], new CTSPre[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTSPre> getSPreList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bt5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getSPreArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ct5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setSPreArray(((Integer) obj).intValue(), (CTSPre) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dt5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewSPre(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.et5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeSPre(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ft5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfSPreArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSSub[] getSSubArray() {
        return (CTSSub[]) getXmlObjectArray(PROPERTY_QNAME[17], new CTSSub[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTSSub> getSSubList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.yq5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getSSubArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zq5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setSSubArray(((Integer) obj).intValue(), (CTSSub) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ar5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewSSub(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.br5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeSSub(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.cr5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfSSubArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSSubSup[] getSSubSupArray() {
        return (CTSSubSup[]) getXmlObjectArray(PROPERTY_QNAME[18], new CTSSubSup[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTSSubSup> getSSubSupList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ky5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getSSubSupArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ly5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setSSubSupArray(((Integer) obj).intValue(), (CTSSubSup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.my5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewSSubSup(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ny5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeSSubSup(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.oy5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfSSubSupArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSSup[] getSSupArray() {
        return (CTSSup[]) getXmlObjectArray(PROPERTY_QNAME[19], new CTSSup[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTSSup> getSSupList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.cq5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getSSupArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dq5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setSSupArray(((Integer) obj).intValue(), (CTSSup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.eq5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewSSup(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fq5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeSSup(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.gq5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfSSupArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSdtRun[] getSdtArray() {
        return (CTSdtRun[]) getXmlObjectArray(PROPERTY_QNAME[25], new CTSdtRun[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTSdtRun> getSdtList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.du5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getSdtArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.eu5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setSdtArray(((Integer) obj).intValue(), (CTSdtRun) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fu5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewSdt(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gu5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeSdt(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hu5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfSdtArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSmartTagRun[] getSmartTagArray() {
        return (CTSmartTagRun[]) getXmlObjectArray(PROPERTY_QNAME[24], new CTSmartTagRun[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public List<CTSmartTagRun> getSmartTagList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hq5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.getSmartTagArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.iq5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathArgImpl.this.setSmartTagArray(((Integer) obj).intValue(), (CTSmartTagRun) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jq5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathArgImpl.this.insertNewSmartTag(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kq5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathArgImpl.this.removeSmartTag(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lq5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathArgImpl.this.sizeOfSmartTagArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTAcc insertNewAcc(int i) {
        CTAcc cTAcc;
        synchronized (monitor()) {
            check_orphaned();
            cTAcc = (CTAcc) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTAcc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTBar insertNewBar(int i) {
        CTBar cTBar;
        synchronized (monitor()) {
            check_orphaned();
            cTBar = (CTBar) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTBar;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkupRange insertNewBookmarkEnd(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[30], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTBookmark insertNewBookmarkStart(int i) {
        CTBookmark cTBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTBookmark = (CTBookmark) get_store().insert_element_user(PROPERTY_QNAME[29], i);
        }
        return cTBookmark;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTBorderBox insertNewBorderBox(int i) {
        CTBorderBox cTBorderBox;
        synchronized (monitor()) {
            check_orphaned();
            cTBorderBox = (CTBorderBox) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTBorderBox;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTBox insertNewBox(int i) {
        CTBox cTBox;
        synchronized (monitor()) {
            check_orphaned();
            cTBox = (CTBox) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTBox;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkupRange insertNewCommentRangeEnd(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[36], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkupRange insertNewCommentRangeStart(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[35], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTCustomXmlRun insertNewCustomXml(int i) {
        CTCustomXmlRun cTCustomXmlRun;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomXmlRun = (CTCustomXmlRun) get_store().insert_element_user(PROPERTY_QNAME[21], i);
        }
        return cTCustomXmlRun;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkup insertNewCustomXmlDelRangeEnd(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[40], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTTrackChange insertNewCustomXmlDelRangeStart(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().insert_element_user(PROPERTY_QNAME[39], i);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkup insertNewCustomXmlInsRangeEnd(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[38], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTTrackChange insertNewCustomXmlInsRangeStart(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().insert_element_user(PROPERTY_QNAME[37], i);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkup insertNewCustomXmlMoveFromRangeEnd(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[42], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTTrackChange insertNewCustomXmlMoveFromRangeStart(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().insert_element_user(PROPERTY_QNAME[41], i);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkup insertNewCustomXmlMoveToRangeEnd(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().insert_element_user(PROPERTY_QNAME[44], i);
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTTrackChange insertNewCustomXmlMoveToRangeStart(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().insert_element_user(PROPERTY_QNAME[43], i);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTD insertNewD(int i) {
        CTD ctd;
        synchronized (monitor()) {
            check_orphaned();
            ctd = (CTD) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return ctd;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTRunTrackChange insertNewDel(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().insert_element_user(PROPERTY_QNAME[46], i);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTEqArr insertNewEqArr(int i) {
        CTEqArr cTEqArr;
        synchronized (monitor()) {
            check_orphaned();
            cTEqArr = (CTEqArr) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTEqArr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTF insertNewF(int i) {
        CTF ctf;
        synchronized (monitor()) {
            check_orphaned();
            ctf = (CTF) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return ctf;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSimpleField insertNewFldSimple(int i) {
        CTSimpleField cTSimpleField;
        synchronized (monitor()) {
            check_orphaned();
            cTSimpleField = (CTSimpleField) get_store().insert_element_user(PROPERTY_QNAME[22], i);
        }
        return cTSimpleField;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTFunc insertNewFunc(int i) {
        CTFunc cTFunc;
        synchronized (monitor()) {
            check_orphaned();
            cTFunc = (CTFunc) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTFunc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTGroupChr insertNewGroupChr(int i) {
        CTGroupChr cTGroupChr;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupChr = (CTGroupChr) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return cTGroupChr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTHyperlink insertNewHyperlink(int i) {
        CTHyperlink cTHyperlink;
        synchronized (monitor()) {
            check_orphaned();
            cTHyperlink = (CTHyperlink) get_store().insert_element_user(PROPERTY_QNAME[23], i);
        }
        return cTHyperlink;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTRunTrackChange insertNewIns(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().insert_element_user(PROPERTY_QNAME[45], i);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTLimLow insertNewLimLow(int i) {
        CTLimLow cTLimLow;
        synchronized (monitor()) {
            check_orphaned();
            cTLimLow = (CTLimLow) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return cTLimLow;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTLimUpp insertNewLimUpp(int i) {
        CTLimUpp cTLimUpp;
        synchronized (monitor()) {
            check_orphaned();
            cTLimUpp = (CTLimUpp) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return cTLimUpp;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTM insertNewM(int i) {
        CTM ctm;
        synchronized (monitor()) {
            check_orphaned();
            ctm = (CTM) get_store().insert_element_user(PROPERTY_QNAME[12], i);
        }
        return ctm;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTRunTrackChange insertNewMoveFrom(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().insert_element_user(PROPERTY_QNAME[47], i);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkupRange insertNewMoveFromRangeEnd(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[32], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMoveBookmark insertNewMoveFromRangeStart(int i) {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().insert_element_user(PROPERTY_QNAME[31], i);
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTRunTrackChange insertNewMoveTo(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().insert_element_user(PROPERTY_QNAME[48], i);
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkupRange insertNewMoveToRangeEnd(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().insert_element_user(PROPERTY_QNAME[34], i);
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMoveBookmark insertNewMoveToRangeStart(int i) {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().insert_element_user(PROPERTY_QNAME[33], i);
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTNary insertNewNary(int i) {
        CTNary cTNary;
        synchronized (monitor()) {
            check_orphaned();
            cTNary = (CTNary) get_store().insert_element_user(PROPERTY_QNAME[13], i);
        }
        return cTNary;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTOMath insertNewOMath(int i) {
        CTOMath cTOMath;
        synchronized (monitor()) {
            check_orphaned();
            cTOMath = (CTOMath) get_store().insert_element_user(PROPERTY_QNAME[50], i);
        }
        return cTOMath;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTOMathPara insertNewOMathPara(int i) {
        CTOMathPara cTOMathPara;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathPara = (CTOMathPara) get_store().insert_element_user(PROPERTY_QNAME[49], i);
        }
        return cTOMathPara;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTPerm insertNewPermEnd(int i) {
        CTPerm cTPerm;
        synchronized (monitor()) {
            check_orphaned();
            cTPerm = (CTPerm) get_store().insert_element_user(PROPERTY_QNAME[28], i);
        }
        return cTPerm;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTPermStart insertNewPermStart(int i) {
        CTPermStart cTPermStart;
        synchronized (monitor()) {
            check_orphaned();
            cTPermStart = (CTPermStart) get_store().insert_element_user(PROPERTY_QNAME[27], i);
        }
        return cTPermStart;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTPhant insertNewPhant(int i) {
        CTPhant cTPhant;
        synchronized (monitor()) {
            check_orphaned();
            cTPhant = (CTPhant) get_store().insert_element_user(PROPERTY_QNAME[14], i);
        }
        return cTPhant;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTProofErr insertNewProofErr(int i) {
        CTProofErr cTProofErr;
        synchronized (monitor()) {
            check_orphaned();
            cTProofErr = (CTProofErr) get_store().insert_element_user(PROPERTY_QNAME[26], i);
        }
        return cTProofErr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTR insertNewR(int i) {
        CTR ctr;
        synchronized (monitor()) {
            check_orphaned();
            ctr = (CTR) get_store().insert_element_user(PROPERTY_QNAME[20], i);
        }
        return ctr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTRad insertNewRad(int i) {
        CTRad cTRad;
        synchronized (monitor()) {
            check_orphaned();
            cTRad = (CTRad) get_store().insert_element_user(PROPERTY_QNAME[15], i);
        }
        return cTRad;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSPre insertNewSPre(int i) {
        CTSPre cTSPre;
        synchronized (monitor()) {
            check_orphaned();
            cTSPre = (CTSPre) get_store().insert_element_user(PROPERTY_QNAME[16], i);
        }
        return cTSPre;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSSub insertNewSSub(int i) {
        CTSSub cTSSub;
        synchronized (monitor()) {
            check_orphaned();
            cTSSub = (CTSSub) get_store().insert_element_user(PROPERTY_QNAME[17], i);
        }
        return cTSSub;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSSubSup insertNewSSubSup(int i) {
        CTSSubSup cTSSubSup;
        synchronized (monitor()) {
            check_orphaned();
            cTSSubSup = (CTSSubSup) get_store().insert_element_user(PROPERTY_QNAME[18], i);
        }
        return cTSSubSup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSSup insertNewSSup(int i) {
        CTSSup cTSSup;
        synchronized (monitor()) {
            check_orphaned();
            cTSSup = (CTSSup) get_store().insert_element_user(PROPERTY_QNAME[19], i);
        }
        return cTSSup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSdtRun insertNewSdt(int i) {
        CTSdtRun cTSdtRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtRun = (CTSdtRun) get_store().insert_element_user(PROPERTY_QNAME[25], i);
        }
        return cTSdtRun;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSmartTagRun insertNewSmartTag(int i) {
        CTSmartTagRun cTSmartTagRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSmartTagRun = (CTSmartTagRun) get_store().insert_element_user(PROPERTY_QNAME[24], i);
        }
        return cTSmartTagRun;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public boolean isSetArgPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public boolean isSetCtrlPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[51]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeAcc(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeBar(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeBookmarkEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[30], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeBookmarkStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[29], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeBorderBox(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeBox(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeCommentRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[36], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeCommentRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[35], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeCustomXml(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[21], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeCustomXmlDelRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[40], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeCustomXmlDelRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[39], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeCustomXmlInsRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[38], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeCustomXmlInsRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[37], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeCustomXmlMoveFromRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[42], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeCustomXmlMoveFromRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[41], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeCustomXmlMoveToRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[44], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeCustomXmlMoveToRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[43], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeD(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeDel(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[46], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeEqArr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeF(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeFldSimple(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[22], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeFunc(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeGroupChr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeHyperlink(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[23], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeIns(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[45], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeLimLow(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeLimUpp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeM(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeMoveFrom(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[47], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeMoveFromRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[32], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeMoveFromRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[31], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeMoveTo(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[48], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeMoveToRangeEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[34], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeMoveToRangeStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[33], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeNary(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeOMath(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[50], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeOMathPara(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[49], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removePermEnd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[28], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removePermStart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[27], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removePhant(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeProofErr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[26], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeR(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[20], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeRad(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeSPre(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[16], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeSSub(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[17], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeSSubSup(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[18], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeSSup(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[19], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeSdt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[25], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void removeSmartTag(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[24], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setAccArray(CTAcc[] cTAccArr) {
        check_orphaned();
        arraySetterHelper(cTAccArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setArgPr(CTOMathArgPr cTOMathArgPr) {
        generatedSetterHelperImpl(cTOMathArgPr, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setBarArray(CTBar[] cTBarArr) {
        check_orphaned();
        arraySetterHelper(cTBarArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setBookmarkEndArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[30]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setBookmarkStartArray(CTBookmark[] cTBookmarkArr) {
        check_orphaned();
        arraySetterHelper(cTBookmarkArr, PROPERTY_QNAME[29]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setBorderBoxArray(CTBorderBox[] cTBorderBoxArr) {
        check_orphaned();
        arraySetterHelper(cTBorderBoxArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setBoxArray(CTBox[] cTBoxArr) {
        check_orphaned();
        arraySetterHelper(cTBoxArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCommentRangeEndArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[36]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCommentRangeStartArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[35]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCtrlPr(CTCtrlPr cTCtrlPr) {
        generatedSetterHelperImpl(cTCtrlPr, PROPERTY_QNAME[51], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCustomXmlArray(CTCustomXmlRun[] cTCustomXmlRunArr) {
        check_orphaned();
        arraySetterHelper(cTCustomXmlRunArr, PROPERTY_QNAME[21]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCustomXmlDelRangeEndArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[40]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCustomXmlDelRangeStartArray(CTTrackChange[] cTTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTTrackChangeArr, PROPERTY_QNAME[39]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCustomXmlInsRangeEndArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[38]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCustomXmlInsRangeStartArray(CTTrackChange[] cTTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTTrackChangeArr, PROPERTY_QNAME[37]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCustomXmlMoveFromRangeEndArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[42]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCustomXmlMoveFromRangeStartArray(CTTrackChange[] cTTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTTrackChangeArr, PROPERTY_QNAME[41]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCustomXmlMoveToRangeEndArray(CTMarkup[] cTMarkupArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupArr, PROPERTY_QNAME[44]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCustomXmlMoveToRangeStartArray(CTTrackChange[] cTTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTTrackChangeArr, PROPERTY_QNAME[43]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setDArray(CTD[] ctdArr) {
        check_orphaned();
        arraySetterHelper(ctdArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setDelArray(CTRunTrackChange[] cTRunTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRunTrackChangeArr, PROPERTY_QNAME[46]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setEqArrArray(CTEqArr[] cTEqArrArr) {
        check_orphaned();
        arraySetterHelper(cTEqArrArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setFArray(CTF[] ctfArr) {
        check_orphaned();
        arraySetterHelper(ctfArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setFldSimpleArray(CTSimpleField[] cTSimpleFieldArr) {
        check_orphaned();
        arraySetterHelper(cTSimpleFieldArr, PROPERTY_QNAME[22]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setFuncArray(CTFunc[] cTFuncArr) {
        check_orphaned();
        arraySetterHelper(cTFuncArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setGroupChrArray(CTGroupChr[] cTGroupChrArr) {
        check_orphaned();
        arraySetterHelper(cTGroupChrArr, PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setHyperlinkArray(CTHyperlink[] cTHyperlinkArr) {
        check_orphaned();
        arraySetterHelper(cTHyperlinkArr, PROPERTY_QNAME[23]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setInsArray(CTRunTrackChange[] cTRunTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRunTrackChangeArr, PROPERTY_QNAME[45]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setLimLowArray(CTLimLow[] cTLimLowArr) {
        check_orphaned();
        arraySetterHelper(cTLimLowArr, PROPERTY_QNAME[10]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setLimUppArray(CTLimUpp[] cTLimUppArr) {
        check_orphaned();
        arraySetterHelper(cTLimUppArr, PROPERTY_QNAME[11]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setMArray(CTM[] ctmArr) {
        check_orphaned();
        arraySetterHelper(ctmArr, PROPERTY_QNAME[12]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setMoveFromArray(CTRunTrackChange[] cTRunTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRunTrackChangeArr, PROPERTY_QNAME[47]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setMoveFromRangeEndArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[32]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setMoveFromRangeStartArray(CTMoveBookmark[] cTMoveBookmarkArr) {
        check_orphaned();
        arraySetterHelper(cTMoveBookmarkArr, PROPERTY_QNAME[31]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setMoveToArray(CTRunTrackChange[] cTRunTrackChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRunTrackChangeArr, PROPERTY_QNAME[48]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setMoveToRangeEndArray(CTMarkupRange[] cTMarkupRangeArr) {
        check_orphaned();
        arraySetterHelper(cTMarkupRangeArr, PROPERTY_QNAME[34]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setMoveToRangeStartArray(CTMoveBookmark[] cTMoveBookmarkArr) {
        check_orphaned();
        arraySetterHelper(cTMoveBookmarkArr, PROPERTY_QNAME[33]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setNaryArray(CTNary[] cTNaryArr) {
        check_orphaned();
        arraySetterHelper(cTNaryArr, PROPERTY_QNAME[13]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setOMathArray(CTOMath[] cTOMathArr) {
        check_orphaned();
        arraySetterHelper(cTOMathArr, PROPERTY_QNAME[50]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setOMathParaArray(CTOMathPara[] cTOMathParaArr) {
        check_orphaned();
        arraySetterHelper(cTOMathParaArr, PROPERTY_QNAME[49]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setPermEndArray(CTPerm[] cTPermArr) {
        check_orphaned();
        arraySetterHelper(cTPermArr, PROPERTY_QNAME[28]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setPermStartArray(CTPermStart[] cTPermStartArr) {
        check_orphaned();
        arraySetterHelper(cTPermStartArr, PROPERTY_QNAME[27]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setPhantArray(CTPhant[] cTPhantArr) {
        check_orphaned();
        arraySetterHelper(cTPhantArr, PROPERTY_QNAME[14]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setProofErrArray(CTProofErr[] cTProofErrArr) {
        check_orphaned();
        arraySetterHelper(cTProofErrArr, PROPERTY_QNAME[26]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setRArray(CTR[] ctrArr) {
        check_orphaned();
        arraySetterHelper(ctrArr, PROPERTY_QNAME[20]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setRadArray(CTRad[] cTRadArr) {
        check_orphaned();
        arraySetterHelper(cTRadArr, PROPERTY_QNAME[15]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setSPreArray(CTSPre[] cTSPreArr) {
        check_orphaned();
        arraySetterHelper(cTSPreArr, PROPERTY_QNAME[16]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setSSubArray(CTSSub[] cTSSubArr) {
        check_orphaned();
        arraySetterHelper(cTSSubArr, PROPERTY_QNAME[17]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setSSubSupArray(CTSSubSup[] cTSSubSupArr) {
        check_orphaned();
        arraySetterHelper(cTSSubSupArr, PROPERTY_QNAME[18]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setSSupArray(CTSSup[] cTSSupArr) {
        check_orphaned();
        arraySetterHelper(cTSSupArr, PROPERTY_QNAME[19]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setSdtArray(CTSdtRun[] cTSdtRunArr) {
        check_orphaned();
        arraySetterHelper(cTSdtRunArr, PROPERTY_QNAME[25]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setSmartTagArray(CTSmartTagRun[] cTSmartTagRunArr) {
        check_orphaned();
        arraySetterHelper(cTSmartTagRunArr, PROPERTY_QNAME[24]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfAccArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfBarArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfBookmarkEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[30]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfBookmarkStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[29]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfBorderBoxArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfBoxArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfCommentRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[36]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfCommentRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[35]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfCustomXmlArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[21]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfCustomXmlDelRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[40]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfCustomXmlDelRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[39]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfCustomXmlInsRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[38]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfCustomXmlInsRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[37]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfCustomXmlMoveFromRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[42]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfCustomXmlMoveFromRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[41]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfCustomXmlMoveToRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[44]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfCustomXmlMoveToRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[43]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfDArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfDelArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[46]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfEqArrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfFArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfFldSimpleArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[22]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfFuncArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfGroupChrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfHyperlinkArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[23]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfInsArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[45]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfLimLowArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfLimUppArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfMArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfMoveFromArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[47]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfMoveFromRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[32]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfMoveFromRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[31]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfMoveToArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[48]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfMoveToRangeEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[34]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfMoveToRangeStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[33]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfNaryArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[13]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfOMathArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[50]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfOMathParaArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[49]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfPermEndArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[28]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfPermStartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[27]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfPhantArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[14]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfProofErrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[26]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfRArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[20]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfRadArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[15]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfSPreArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[16]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfSSubArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[17]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfSSubSupArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[18]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfSSupArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[19]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfSdtArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[25]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public int sizeOfSmartTagArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[24]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void unsetArgPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void unsetCtrlPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[51], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTAcc getAccArray(int i) {
        CTAcc cTAcc;
        synchronized (monitor()) {
            check_orphaned();
            cTAcc = (CTAcc) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTAcc == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAcc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTBar getBarArray(int i) {
        CTBar cTBar;
        synchronized (monitor()) {
            check_orphaned();
            cTBar = (CTBar) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTBar == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBar;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkupRange getBookmarkEndArray(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().find_element_user(PROPERTY_QNAME[30], i);
            if (cTMarkupRange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTBookmark getBookmarkStartArray(int i) {
        CTBookmark cTBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTBookmark = (CTBookmark) get_store().find_element_user(PROPERTY_QNAME[29], i);
            if (cTBookmark == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBookmark;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTBorderBox getBorderBoxArray(int i) {
        CTBorderBox cTBorderBox;
        synchronized (monitor()) {
            check_orphaned();
            cTBorderBox = (CTBorderBox) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTBorderBox == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBorderBox;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTBox getBoxArray(int i) {
        CTBox cTBox;
        synchronized (monitor()) {
            check_orphaned();
            cTBox = (CTBox) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTBox == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBox;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkupRange getCommentRangeEndArray(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().find_element_user(PROPERTY_QNAME[36], i);
            if (cTMarkupRange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkupRange getCommentRangeStartArray(int i) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTCustomXmlRun getCustomXmlArray(int i) {
        CTCustomXmlRun cTCustomXmlRun;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomXmlRun = (CTCustomXmlRun) get_store().find_element_user(PROPERTY_QNAME[21], i);
            if (cTCustomXmlRun == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCustomXmlRun;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkup getCustomXmlDelRangeEndArray(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().find_element_user(PROPERTY_QNAME[40], i);
            if (cTMarkup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTTrackChange getCustomXmlDelRangeStartArray(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().find_element_user(PROPERTY_QNAME[39], i);
            if (cTTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkup getCustomXmlInsRangeEndArray(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().find_element_user(PROPERTY_QNAME[38], i);
            if (cTMarkup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTTrackChange getCustomXmlInsRangeStartArray(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().find_element_user(PROPERTY_QNAME[37], i);
            if (cTTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkup getCustomXmlMoveFromRangeEndArray(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().find_element_user(PROPERTY_QNAME[42], i);
            if (cTMarkup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTTrackChange getCustomXmlMoveFromRangeStartArray(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().find_element_user(PROPERTY_QNAME[41], i);
            if (cTTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkup getCustomXmlMoveToRangeEndArray(int i) {
        CTMarkup cTMarkup;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkup = (CTMarkup) get_store().find_element_user(PROPERTY_QNAME[44], i);
            if (cTMarkup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTTrackChange getCustomXmlMoveToRangeStartArray(int i) {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().find_element_user(PROPERTY_QNAME[43], i);
            if (cTTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTD getDArray(int i) {
        CTD ctd;
        synchronized (monitor()) {
            check_orphaned();
            ctd = (CTD) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (ctd == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return ctd;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTRunTrackChange getDelArray(int i) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTEqArr getEqArrArray(int i) {
        CTEqArr cTEqArr;
        synchronized (monitor()) {
            check_orphaned();
            cTEqArr = (CTEqArr) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTEqArr == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEqArr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTF getFArray(int i) {
        CTF ctf;
        synchronized (monitor()) {
            check_orphaned();
            ctf = (CTF) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (ctf == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return ctf;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSimpleField getFldSimpleArray(int i) {
        CTSimpleField cTSimpleField;
        synchronized (monitor()) {
            check_orphaned();
            cTSimpleField = (CTSimpleField) get_store().find_element_user(PROPERTY_QNAME[22], i);
            if (cTSimpleField == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSimpleField;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTFunc getFuncArray(int i) {
        CTFunc cTFunc;
        synchronized (monitor()) {
            check_orphaned();
            cTFunc = (CTFunc) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (cTFunc == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFunc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTGroupChr getGroupChrArray(int i) {
        CTGroupChr cTGroupChr;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupChr = (CTGroupChr) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (cTGroupChr == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGroupChr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTHyperlink getHyperlinkArray(int i) {
        CTHyperlink cTHyperlink;
        synchronized (monitor()) {
            check_orphaned();
            cTHyperlink = (CTHyperlink) get_store().find_element_user(PROPERTY_QNAME[23], i);
            if (cTHyperlink == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTHyperlink;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTRunTrackChange getInsArray(int i) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTLimLow getLimLowArray(int i) {
        CTLimLow cTLimLow;
        synchronized (monitor()) {
            check_orphaned();
            cTLimLow = (CTLimLow) get_store().find_element_user(PROPERTY_QNAME[10], i);
            if (cTLimLow == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTLimLow;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTLimUpp getLimUppArray(int i) {
        CTLimUpp cTLimUpp;
        synchronized (monitor()) {
            check_orphaned();
            cTLimUpp = (CTLimUpp) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (cTLimUpp == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTLimUpp;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTM getMArray(int i) {
        CTM ctm;
        synchronized (monitor()) {
            check_orphaned();
            ctm = (CTM) get_store().find_element_user(PROPERTY_QNAME[12], i);
            if (ctm == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return ctm;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTRunTrackChange getMoveFromArray(int i) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkupRange getMoveFromRangeEndArray(int i) {
        CTMarkupRange cTMarkupRange;
        synchronized (monitor()) {
            check_orphaned();
            cTMarkupRange = (CTMarkupRange) get_store().find_element_user(PROPERTY_QNAME[32], i);
            if (cTMarkupRange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMarkupRange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMoveBookmark getMoveFromRangeStartArray(int i) {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().find_element_user(PROPERTY_QNAME[31], i);
            if (cTMoveBookmark == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTRunTrackChange getMoveToArray(int i) {
        CTRunTrackChange cTRunTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRunTrackChange = (CTRunTrackChange) get_store().find_element_user(PROPERTY_QNAME[48], i);
            if (cTRunTrackChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRunTrackChange;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMarkupRange getMoveToRangeEndArray(int i) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTMoveBookmark getMoveToRangeStartArray(int i) {
        CTMoveBookmark cTMoveBookmark;
        synchronized (monitor()) {
            check_orphaned();
            cTMoveBookmark = (CTMoveBookmark) get_store().find_element_user(PROPERTY_QNAME[33], i);
            if (cTMoveBookmark == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMoveBookmark;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTNary getNaryArray(int i) {
        CTNary cTNary;
        synchronized (monitor()) {
            check_orphaned();
            cTNary = (CTNary) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (cTNary == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNary;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTOMath getOMathArray(int i) {
        CTOMath cTOMath;
        synchronized (monitor()) {
            check_orphaned();
            cTOMath = (CTOMath) get_store().find_element_user(PROPERTY_QNAME[50], i);
            if (cTOMath == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOMath;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTOMathPara getOMathParaArray(int i) {
        CTOMathPara cTOMathPara;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathPara = (CTOMathPara) get_store().find_element_user(PROPERTY_QNAME[49], i);
            if (cTOMathPara == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOMathPara;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTPerm getPermEndArray(int i) {
        CTPerm cTPerm;
        synchronized (monitor()) {
            check_orphaned();
            cTPerm = (CTPerm) get_store().find_element_user(PROPERTY_QNAME[28], i);
            if (cTPerm == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPerm;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTPermStart getPermStartArray(int i) {
        CTPermStart cTPermStart;
        synchronized (monitor()) {
            check_orphaned();
            cTPermStart = (CTPermStart) get_store().find_element_user(PROPERTY_QNAME[27], i);
            if (cTPermStart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPermStart;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTPhant getPhantArray(int i) {
        CTPhant cTPhant;
        synchronized (monitor()) {
            check_orphaned();
            cTPhant = (CTPhant) get_store().find_element_user(PROPERTY_QNAME[14], i);
            if (cTPhant == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPhant;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTProofErr getProofErrArray(int i) {
        CTProofErr cTProofErr;
        synchronized (monitor()) {
            check_orphaned();
            cTProofErr = (CTProofErr) get_store().find_element_user(PROPERTY_QNAME[26], i);
            if (cTProofErr == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTProofErr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTR getRArray(int i) {
        CTR ctr;
        synchronized (monitor()) {
            check_orphaned();
            ctr = (CTR) get_store().find_element_user(PROPERTY_QNAME[20], i);
            if (ctr == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return ctr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTRad getRadArray(int i) {
        CTRad cTRad;
        synchronized (monitor()) {
            check_orphaned();
            cTRad = (CTRad) get_store().find_element_user(PROPERTY_QNAME[15], i);
            if (cTRad == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRad;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSPre getSPreArray(int i) {
        CTSPre cTSPre;
        synchronized (monitor()) {
            check_orphaned();
            cTSPre = (CTSPre) get_store().find_element_user(PROPERTY_QNAME[16], i);
            if (cTSPre == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSPre;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSSub getSSubArray(int i) {
        CTSSub cTSSub;
        synchronized (monitor()) {
            check_orphaned();
            cTSSub = (CTSSub) get_store().find_element_user(PROPERTY_QNAME[17], i);
            if (cTSSub == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSSub;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSSubSup getSSubSupArray(int i) {
        CTSSubSup cTSSubSup;
        synchronized (monitor()) {
            check_orphaned();
            cTSSubSup = (CTSSubSup) get_store().find_element_user(PROPERTY_QNAME[18], i);
            if (cTSSubSup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSSubSup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSSup getSSupArray(int i) {
        CTSSup cTSSup;
        synchronized (monitor()) {
            check_orphaned();
            cTSSup = (CTSSup) get_store().find_element_user(PROPERTY_QNAME[19], i);
            if (cTSSup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSSup;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSdtRun getSdtArray(int i) {
        CTSdtRun cTSdtRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtRun = (CTSdtRun) get_store().find_element_user(PROPERTY_QNAME[25], i);
            if (cTSdtRun == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSdtRun;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public CTSmartTagRun getSmartTagArray(int i) {
        CTSmartTagRun cTSmartTagRun;
        synchronized (monitor()) {
            check_orphaned();
            cTSmartTagRun = (CTSmartTagRun) get_store().find_element_user(PROPERTY_QNAME[24], i);
            if (cTSmartTagRun == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSmartTagRun;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setAccArray(int i, CTAcc cTAcc) {
        generatedSetterHelperImpl(cTAcc, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setBarArray(int i, CTBar cTBar) {
        generatedSetterHelperImpl(cTBar, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setBookmarkEndArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[30], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setBookmarkStartArray(int i, CTBookmark cTBookmark) {
        generatedSetterHelperImpl(cTBookmark, PROPERTY_QNAME[29], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setBorderBoxArray(int i, CTBorderBox cTBorderBox) {
        generatedSetterHelperImpl(cTBorderBox, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setBoxArray(int i, CTBox cTBox) {
        generatedSetterHelperImpl(cTBox, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCommentRangeEndArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[36], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCommentRangeStartArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[35], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCustomXmlArray(int i, CTCustomXmlRun cTCustomXmlRun) {
        generatedSetterHelperImpl(cTCustomXmlRun, PROPERTY_QNAME[21], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCustomXmlDelRangeEndArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[40], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCustomXmlDelRangeStartArray(int i, CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[39], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCustomXmlInsRangeEndArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[38], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCustomXmlInsRangeStartArray(int i, CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[37], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCustomXmlMoveFromRangeEndArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[42], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCustomXmlMoveFromRangeStartArray(int i, CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[41], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCustomXmlMoveToRangeEndArray(int i, CTMarkup cTMarkup) {
        generatedSetterHelperImpl(cTMarkup, PROPERTY_QNAME[44], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setCustomXmlMoveToRangeStartArray(int i, CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[43], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setDArray(int i, CTD ctd) {
        generatedSetterHelperImpl(ctd, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setDelArray(int i, CTRunTrackChange cTRunTrackChange) {
        generatedSetterHelperImpl(cTRunTrackChange, PROPERTY_QNAME[46], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setEqArrArray(int i, CTEqArr cTEqArr) {
        generatedSetterHelperImpl(cTEqArr, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setFArray(int i, CTF ctf) {
        generatedSetterHelperImpl(ctf, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setFldSimpleArray(int i, CTSimpleField cTSimpleField) {
        generatedSetterHelperImpl(cTSimpleField, PROPERTY_QNAME[22], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setFuncArray(int i, CTFunc cTFunc) {
        generatedSetterHelperImpl(cTFunc, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setGroupChrArray(int i, CTGroupChr cTGroupChr) {
        generatedSetterHelperImpl(cTGroupChr, PROPERTY_QNAME[9], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setHyperlinkArray(int i, CTHyperlink cTHyperlink) {
        generatedSetterHelperImpl(cTHyperlink, PROPERTY_QNAME[23], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setInsArray(int i, CTRunTrackChange cTRunTrackChange) {
        generatedSetterHelperImpl(cTRunTrackChange, PROPERTY_QNAME[45], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setLimLowArray(int i, CTLimLow cTLimLow) {
        generatedSetterHelperImpl(cTLimLow, PROPERTY_QNAME[10], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setLimUppArray(int i, CTLimUpp cTLimUpp) {
        generatedSetterHelperImpl(cTLimUpp, PROPERTY_QNAME[11], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setMArray(int i, CTM ctm) {
        generatedSetterHelperImpl(ctm, PROPERTY_QNAME[12], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setMoveFromArray(int i, CTRunTrackChange cTRunTrackChange) {
        generatedSetterHelperImpl(cTRunTrackChange, PROPERTY_QNAME[47], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setMoveFromRangeEndArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[32], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setMoveFromRangeStartArray(int i, CTMoveBookmark cTMoveBookmark) {
        generatedSetterHelperImpl(cTMoveBookmark, PROPERTY_QNAME[31], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setMoveToArray(int i, CTRunTrackChange cTRunTrackChange) {
        generatedSetterHelperImpl(cTRunTrackChange, PROPERTY_QNAME[48], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setMoveToRangeEndArray(int i, CTMarkupRange cTMarkupRange) {
        generatedSetterHelperImpl(cTMarkupRange, PROPERTY_QNAME[34], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setMoveToRangeStartArray(int i, CTMoveBookmark cTMoveBookmark) {
        generatedSetterHelperImpl(cTMoveBookmark, PROPERTY_QNAME[33], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setNaryArray(int i, CTNary cTNary) {
        generatedSetterHelperImpl(cTNary, PROPERTY_QNAME[13], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setOMathArray(int i, CTOMath cTOMath) {
        generatedSetterHelperImpl(cTOMath, PROPERTY_QNAME[50], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setOMathParaArray(int i, CTOMathPara cTOMathPara) {
        generatedSetterHelperImpl(cTOMathPara, PROPERTY_QNAME[49], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setPermEndArray(int i, CTPerm cTPerm) {
        generatedSetterHelperImpl(cTPerm, PROPERTY_QNAME[28], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setPermStartArray(int i, CTPermStart cTPermStart) {
        generatedSetterHelperImpl(cTPermStart, PROPERTY_QNAME[27], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setPhantArray(int i, CTPhant cTPhant) {
        generatedSetterHelperImpl(cTPhant, PROPERTY_QNAME[14], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setProofErrArray(int i, CTProofErr cTProofErr) {
        generatedSetterHelperImpl(cTProofErr, PROPERTY_QNAME[26], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setRArray(int i, CTR ctr) {
        generatedSetterHelperImpl(ctr, PROPERTY_QNAME[20], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setRadArray(int i, CTRad cTRad) {
        generatedSetterHelperImpl(cTRad, PROPERTY_QNAME[15], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setSPreArray(int i, CTSPre cTSPre) {
        generatedSetterHelperImpl(cTSPre, PROPERTY_QNAME[16], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setSSubArray(int i, CTSSub cTSSub) {
        generatedSetterHelperImpl(cTSSub, PROPERTY_QNAME[17], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setSSubSupArray(int i, CTSSubSup cTSSubSup) {
        generatedSetterHelperImpl(cTSSubSup, PROPERTY_QNAME[18], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setSSupArray(int i, CTSSup cTSSup) {
        generatedSetterHelperImpl(cTSSup, PROPERTY_QNAME[19], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setSdtArray(int i, CTSdtRun cTSdtRun) {
        generatedSetterHelperImpl(cTSdtRun, PROPERTY_QNAME[25], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg
    public void setSmartTagArray(int i, CTSmartTagRun cTSmartTagRun) {
        generatedSetterHelperImpl(cTSmartTagRun, PROPERTY_QNAME[24], i, (short) 2);
    }
}
