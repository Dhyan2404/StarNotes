package org.apache.poi.xwpf.usermodel;

import java.math.BigInteger;
import java.nio.charset.Charset;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LocaleUtil;
import org.apache.xmlbeans.impl.p119xb.xmlschema.SpaceAttribute;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTabStop;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTText;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STFldCharType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTabJc;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTabTlc;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme;

/* loaded from: classes13.dex */
public class TOC {
    CTSdtBlock block;

    public TOC() {
        this(CTSdtBlock.Factory.newInstance());
    }

    public void addRow(int i, String str, int i2, String str2) {
        CTP addNewP = this.block.getSdtContent().addNewP();
        Charset charset = LocaleUtil.CHARSET_1252;
        addNewP.setRsidR("00EF7E24".getBytes(charset));
        addNewP.setRsidRDefault("00EF7E24".getBytes(charset));
        CTPPr addNewPPr = addNewP.addNewPPr();
        addNewPPr.addNewPStyle().setVal("TOC" + i);
        CTTabStop addNewTab = addNewPPr.addNewTabs().addNewTab();
        addNewTab.setVal(STTabJc.RIGHT);
        addNewTab.setLeader(STTabTlc.DOT);
        addNewTab.setPos(BigInteger.valueOf(8290L));
        addNewPPr.addNewRPr().addNewNoProof();
        CTR addNewR = addNewP.addNewR();
        addNewR.addNewRPr().addNewNoProof();
        addNewR.addNewT().setStringValue(str);
        CTR addNewR2 = addNewP.addNewR();
        addNewR2.addNewRPr().addNewNoProof();
        addNewR2.addNewTab();
        CTR addNewR3 = addNewP.addNewR();
        addNewR3.addNewRPr().addNewNoProof();
        addNewR3.addNewFldChar().setFldCharType(STFldCharType.BEGIN);
        CTR addNewR4 = addNewP.addNewR();
        addNewR4.addNewRPr().addNewNoProof();
        CTText addNewInstrText = addNewR4.addNewInstrText();
        addNewInstrText.setSpace(SpaceAttribute.Space.PRESERVE);
        addNewInstrText.setStringValue(" PAGEREF _Toc" + str2 + " \\h ");
        addNewP.addNewR().addNewRPr().addNewNoProof();
        CTR addNewR5 = addNewP.addNewR();
        addNewR5.addNewRPr().addNewNoProof();
        addNewR5.addNewFldChar().setFldCharType(STFldCharType.SEPARATE);
        CTR addNewR6 = addNewP.addNewR();
        addNewR6.addNewRPr().addNewNoProof();
        addNewR6.addNewT().setStringValue(Integer.toString(i2));
        CTR addNewR7 = addNewP.addNewR();
        addNewR7.addNewRPr().addNewNoProof();
        addNewR7.addNewFldChar().setFldCharType(STFldCharType.END);
    }

    @Internal
    public CTSdtBlock getBlock() {
        return this.block;
    }

    public TOC(CTSdtBlock cTSdtBlock) {
        this.block = cTSdtBlock;
        CTSdtPr addNewSdtPr = cTSdtBlock.addNewSdtPr();
        addNewSdtPr.addNewId().setVal(BigInteger.valueOf(4844945L));
        addNewSdtPr.addNewDocPartObj().addNewDocPartGallery().setVal("Table of contents");
        CTRPr addNewRPr = cTSdtBlock.addNewSdtEndPr().addNewRPr();
        CTFonts addNewRFonts = addNewRPr.addNewRFonts();
        STTheme.Enum r1 = STTheme.MINOR_H_ANSI;
        addNewRFonts.setAsciiTheme(r1);
        addNewRFonts.setEastAsiaTheme(r1);
        addNewRFonts.setHAnsiTheme(r1);
        addNewRFonts.setCstheme(STTheme.MINOR_BIDI);
        CTOnOff addNewB = addNewRPr.addNewB();
        STOnOff1.Enum r12 = STOnOff1.OFF;
        addNewB.setVal(r12);
        addNewRPr.addNewBCs().setVal(r12);
        addNewRPr.addNewColor().setVal("auto");
        addNewRPr.addNewSz().setVal(BigInteger.valueOf(24L));
        addNewRPr.addNewSzCs().setVal(BigInteger.valueOf(24L));
        CTP addNewP = cTSdtBlock.addNewSdtContent().addNewP();
        Charset charset = LocaleUtil.CHARSET_1252;
        addNewP.setRsidR("00EF7E24".getBytes(charset));
        addNewP.setRsidRDefault("00EF7E24".getBytes(charset));
        addNewP.addNewPPr().addNewPStyle().setVal("TOCHeading");
        addNewP.addNewR().addNewT().setStringValue("Table of Contents");
    }
}
