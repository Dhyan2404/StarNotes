package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import com.onyx.android.sdk.hwr.data.constant.HWRGestureType;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBorder;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColor;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEastAsianLayout;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEm;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFitText;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHighlight;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHpsMeasure;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTLanguage;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTShd;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSignedHpsMeasure;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSignedTwipsMeasure;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTextEffect;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTextScale;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrackChange;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTUnderline;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTVerticalAlignRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTParaRPrOriginalImpl;

/* loaded from: classes16.dex */
public class CTParaRPrOriginalImpl extends XmlComplexContentImpl implements CTParaRPrOriginal {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "ins"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "del"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveFrom"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "moveTo"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "rStyle"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "rFonts"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "b"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "bCs"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "i"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "iCs"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "caps"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "smallCaps"), new QName(XSSFRelation.NS_WORDPROCESSINGML, HWRGestureType.STRIKE), new QName(XSSFRelation.NS_WORDPROCESSINGML, "dstrike"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "outline"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "shadow"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "emboss"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "imprint"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "noProof"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "snapToGrid"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "vanish"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "webHidden"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "color"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "spacing"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "w"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "kern"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "position"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "sz"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "szCs"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "highlight"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "u"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "effect"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "bdr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "shd"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "fitText"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "vertAlign"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "rtl"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "cs"), new QName(XSSFRelation.NS_WORDPROCESSINGML, ExtUnits.UNIT_EM), new QName(XSSFRelation.NS_WORDPROCESSINGML, "lang"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "eastAsianLayout"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "specVanish"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "oMath")};
    private static final long serialVersionUID = 1;

    public CTParaRPrOriginalImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff addNewB() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff addNewBCs() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTBorder addNewBdr() {
        CTBorder cTBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTBorder = (CTBorder) get_store().add_element_user(PROPERTY_QNAME[32]);
        }
        return cTBorder;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff addNewCaps() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTColor addNewColor() {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().add_element_user(PROPERTY_QNAME[22]);
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff addNewCs() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[37]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTTrackChange addNewDel() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff addNewDstrike() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTEastAsianLayout addNewEastAsianLayout() {
        CTEastAsianLayout cTEastAsianLayout;
        synchronized (monitor()) {
            check_orphaned();
            cTEastAsianLayout = (CTEastAsianLayout) get_store().add_element_user(PROPERTY_QNAME[40]);
        }
        return cTEastAsianLayout;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTTextEffect addNewEffect() {
        CTTextEffect cTTextEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTTextEffect = (CTTextEffect) get_store().add_element_user(PROPERTY_QNAME[31]);
        }
        return cTTextEffect;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTEm addNewEm() {
        CTEm cTEm;
        synchronized (monitor()) {
            check_orphaned();
            cTEm = (CTEm) get_store().add_element_user(PROPERTY_QNAME[38]);
        }
        return cTEm;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff addNewEmboss() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[16]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTFitText addNewFitText() {
        CTFitText cTFitText;
        synchronized (monitor()) {
            check_orphaned();
            cTFitText = (CTFitText) get_store().add_element_user(PROPERTY_QNAME[34]);
        }
        return cTFitText;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTHighlight addNewHighlight() {
        CTHighlight cTHighlight;
        synchronized (monitor()) {
            check_orphaned();
            cTHighlight = (CTHighlight) get_store().add_element_user(PROPERTY_QNAME[29]);
        }
        return cTHighlight;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff addNewI() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff addNewICs() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff addNewImprint() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[17]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTTrackChange addNewIns() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTHpsMeasure addNewKern() {
        CTHpsMeasure cTHpsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTHpsMeasure = (CTHpsMeasure) get_store().add_element_user(PROPERTY_QNAME[25]);
        }
        return cTHpsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTLanguage addNewLang() {
        CTLanguage cTLanguage;
        synchronized (monitor()) {
            check_orphaned();
            cTLanguage = (CTLanguage) get_store().add_element_user(PROPERTY_QNAME[39]);
        }
        return cTLanguage;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTTrackChange addNewMoveFrom() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTTrackChange addNewMoveTo() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff addNewNoProof() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[18]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff addNewOMath() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[42]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff addNewOutline() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTSignedHpsMeasure addNewPosition() {
        CTSignedHpsMeasure cTSignedHpsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTSignedHpsMeasure = (CTSignedHpsMeasure) get_store().add_element_user(PROPERTY_QNAME[26]);
        }
        return cTSignedHpsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTFonts addNewRFonts() {
        CTFonts cTFonts;
        synchronized (monitor()) {
            check_orphaned();
            cTFonts = (CTFonts) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTFonts;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTString addNewRStyle() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff addNewRtl() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[36]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff addNewShadow() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[15]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTShd addNewShd() {
        CTShd cTShd;
        synchronized (monitor()) {
            check_orphaned();
            cTShd = (CTShd) get_store().add_element_user(PROPERTY_QNAME[33]);
        }
        return cTShd;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff addNewSmallCaps() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff addNewSnapToGrid() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[19]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTSignedTwipsMeasure addNewSpacing() {
        CTSignedTwipsMeasure cTSignedTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTSignedTwipsMeasure = (CTSignedTwipsMeasure) get_store().add_element_user(PROPERTY_QNAME[23]);
        }
        return cTSignedTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff addNewSpecVanish() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[41]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff addNewStrike() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTHpsMeasure addNewSz() {
        CTHpsMeasure cTHpsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTHpsMeasure = (CTHpsMeasure) get_store().add_element_user(PROPERTY_QNAME[27]);
        }
        return cTHpsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTHpsMeasure addNewSzCs() {
        CTHpsMeasure cTHpsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTHpsMeasure = (CTHpsMeasure) get_store().add_element_user(PROPERTY_QNAME[28]);
        }
        return cTHpsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTUnderline addNewU() {
        CTUnderline cTUnderline;
        synchronized (monitor()) {
            check_orphaned();
            cTUnderline = (CTUnderline) get_store().add_element_user(PROPERTY_QNAME[30]);
        }
        return cTUnderline;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff addNewVanish() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[20]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTVerticalAlignRun addNewVertAlign() {
        CTVerticalAlignRun cTVerticalAlignRun;
        synchronized (monitor()) {
            check_orphaned();
            cTVerticalAlignRun = (CTVerticalAlignRun) get_store().add_element_user(PROPERTY_QNAME[35]);
        }
        return cTVerticalAlignRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTTextScale addNewW() {
        CTTextScale cTTextScale;
        synchronized (monitor()) {
            check_orphaned();
            cTTextScale = (CTTextScale) get_store().add_element_user(PROPERTY_QNAME[24]);
        }
        return cTTextScale;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff addNewWebHidden() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[21]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff[] getBArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff[] getBCsArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTOnOff> getBCsList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.j37
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getBCsArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.k37
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setBCsArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.l37
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewBCs(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.m37
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeBCs(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.n37
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfBCsArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTOnOff> getBList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nz6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getBArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.oz6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setBArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pz6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewB(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qz6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeB(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rz6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfBArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTBorder[] getBdrArray() {
        return (CTBorder[]) getXmlObjectArray(PROPERTY_QNAME[32], new CTBorder[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTBorder> getBdrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.d07
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getBdrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.e07
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setBdrArray(((Integer) obj).intValue(), (CTBorder) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.f07
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewBdr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.g07
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeBdr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.h07
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfBdrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff[] getCapsArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[10], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTOnOff> getCapsList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.yz6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getCapsArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zz6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setCapsArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.a07
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewCaps(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.b07
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeCaps(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.c07
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfCapsArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTColor[] getColorArray() {
        return (CTColor[]) getXmlObjectArray(PROPERTY_QNAME[22], new CTColor[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTColor> getColorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.yw6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getColorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jx6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setColorArray(((Integer) obj).intValue(), (CTColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ux6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewColor(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fy6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeColor(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qy6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfColorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff[] getCsArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[37], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTOnOff> getCsList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.i27
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getCsArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.j27
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setCsArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.k27
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewCs(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.l27
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeCs(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.m27
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfCsArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTTrackChange getDel() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTTrackChange == null) {
                cTTrackChange = null;
            }
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff[] getDstrikeArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[13], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTOnOff> getDstrikeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.n27
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getDstrikeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.o27
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setDstrikeArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.p27
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewDstrike(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.q27
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeDstrike(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.r27
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfDstrikeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTEastAsianLayout[] getEastAsianLayoutArray() {
        return (CTEastAsianLayout[]) getXmlObjectArray(PROPERTY_QNAME[40], new CTEastAsianLayout[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTEastAsianLayout> getEastAsianLayoutList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ly6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getEastAsianLayoutArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.my6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setEastAsianLayoutArray(((Integer) obj).intValue(), (CTEastAsianLayout) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ny6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewEastAsianLayout(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.oy6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeEastAsianLayout(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.py6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfEastAsianLayoutArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTTextEffect[] getEffectArray() {
        return (CTTextEffect[]) getXmlObjectArray(PROPERTY_QNAME[31], new CTTextEffect[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTTextEffect> getEffectList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.u37
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getEffectArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.v37
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setEffectArray(((Integer) obj).intValue(), (CTTextEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.w37
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewEffect(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.x37
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeEffect(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.y37
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfEffectArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTEm[] getEmArray() {
        return (CTEm[]) getXmlObjectArray(PROPERTY_QNAME[38], new CTEm[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTEm> getEmList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.r17
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getEmArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.s17
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setEmArray(((Integer) obj).intValue(), (CTEm) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.t17
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewEm(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.u17
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeEm(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.v17
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfEmArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff[] getEmbossArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[16], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTOnOff> getEmbossList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wy6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getEmbossArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xy6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setEmbossArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.yy6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewEmboss(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zy6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeEmboss(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.az6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfEmbossArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTFitText[] getFitTextArray() {
        return (CTFitText[]) getXmlObjectArray(PROPERTY_QNAME[34], new CTFitText[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTFitText> getFitTextList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.y27
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getFitTextArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.z27
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setFitTextArray(((Integer) obj).intValue(), (CTFitText) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.a37
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewFitText(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.b37
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeFitText(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.c37
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfFitTextArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTHighlight[] getHighlightArray() {
        return (CTHighlight[]) getXmlObjectArray(PROPERTY_QNAME[29], new CTHighlight[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTHighlight> getHighlightList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.cz6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getHighlightArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dz6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setHighlightArray(((Integer) obj).intValue(), (CTHighlight) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ez6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewHighlight(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fz6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeHighlight(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.gz6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfHighlightArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff[] getIArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff[] getICsArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[9], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTOnOff> getICsList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.g17
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getICsArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.h17
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setICsArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.i17
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewICs(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.j17
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeICs(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.k17
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfICsArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTOnOff> getIList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.t27
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getIArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.u27
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setIArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.v27
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewI(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.w27
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeI(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.x27
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfIArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff[] getImprintArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[17], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTOnOff> getImprintList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.q07
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getImprintArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.r07
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setImprintArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.s07
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewImprint(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.t07
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeImprint(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.u07
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfImprintArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTTrackChange getIns() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTrackChange == null) {
                cTTrackChange = null;
            }
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTHpsMeasure[] getKernArray() {
        return (CTHpsMeasure[]) getXmlObjectArray(PROPERTY_QNAME[25], new CTHpsMeasure[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTHpsMeasure> getKernList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.m17
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getKernArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.n17
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setKernArray(((Integer) obj).intValue(), (CTHpsMeasure) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.o17
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewKern(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.p17
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeKern(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.q17
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfKernArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTLanguage[] getLangArray() {
        return (CTLanguage[]) getXmlObjectArray(PROPERTY_QNAME[39], new CTLanguage[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTLanguage> getLangList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.h27
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getLangArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.s27
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setLangArray(((Integer) obj).intValue(), (CTLanguage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.d37
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewLang(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.o37
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeLang(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.z37
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfLangArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTTrackChange getMoveFrom() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTTrackChange == null) {
                cTTrackChange = null;
            }
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTTrackChange getMoveTo() {
        CTTrackChange cTTrackChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTrackChange = (CTTrackChange) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTTrackChange == null) {
                cTTrackChange = null;
            }
        }
        return cTTrackChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff[] getNoProofArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[18], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTOnOff> getNoProofList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bz6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getNoProofArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mz6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setNoProofArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xz6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewNoProof(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.i07
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeNoProof(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.o07
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfNoProofArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff[] getOMathArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[42], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTOnOff> getOMathList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.tw6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getOMathArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.uw6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setOMathArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vw6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewOMath(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ww6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeOMath(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xw6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfOMathArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff[] getOutlineArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[14], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTOnOff> getOutlineList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.b17
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getOutlineArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.c17
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setOutlineArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.d17
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewOutline(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.e17
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeOutline(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.f17
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfOutlineArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTSignedHpsMeasure[] getPositionArray() {
        return (CTSignedHpsMeasure[]) getXmlObjectArray(PROPERTY_QNAME[26], new CTSignedHpsMeasure[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTSignedHpsMeasure> getPositionList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.p37
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getPositionArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.q37
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setPositionArray(((Integer) obj).intValue(), (CTSignedHpsMeasure) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.r37
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewPosition(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.s37
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removePosition(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.t37
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfPositionArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTFonts[] getRFontsArray() {
        return (CTFonts[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTFonts[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTFonts> getRFontsList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ow6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getRFontsArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pw6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setRFontsArray(((Integer) obj).intValue(), (CTFonts) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qw6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewRFonts(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rw6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeRFonts(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.sw6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfRFontsArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTString[] getRStyleArray() {
        return (CTString[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTString[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTString> getRStyleList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.px6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getRStyleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qx6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setRStyleArray(((Integer) obj).intValue(), (CTString) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rx6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewRStyle(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.sx6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeRStyle(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.tx6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfRStyleArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff[] getRtlArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[36], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTOnOff> getRtlList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vx6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getRtlArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wx6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setRtlArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xx6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewRtl(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.yx6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeRtl(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zx6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfRtlArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff[] getShadowArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[15], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTOnOff> getShadowList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ay6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getShadowArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.by6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setShadowArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.cy6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewShadow(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.dy6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeShadow(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ey6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfShadowArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTShd[] getShdArray() {
        return (CTShd[]) getXmlObjectArray(PROPERTY_QNAME[33], new CTShd[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTShd> getShdList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.x17
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getShdArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.y17
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setShdArray(((Integer) obj).intValue(), (CTShd) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.z17
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewShd(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.a27
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeShd(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.b27
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfShdArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff[] getSmallCapsArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[11], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTOnOff> getSmallCapsList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nw6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getSmallCapsArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.p07
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setSmallCapsArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.a17
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewSmallCaps(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.l17
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeSmallCaps(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.w17
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfSmallCapsArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff[] getSnapToGridArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[19], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTOnOff> getSnapToGridList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gy6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getSnapToGridArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hy6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setSnapToGridArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.iy6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewSnapToGrid(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jy6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeSnapToGrid(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ky6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfSnapToGridArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTSignedTwipsMeasure[] getSpacingArray() {
        return (CTSignedTwipsMeasure[]) getXmlObjectArray(PROPERTY_QNAME[23], new CTSignedTwipsMeasure[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTSignedTwipsMeasure> getSpacingList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.kx6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getSpacingArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.lx6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setSpacingArray(((Integer) obj).intValue(), (CTSignedTwipsMeasure) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.mx6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewSpacing(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.nx6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeSpacing(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ox6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfSpacingArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff[] getSpecVanishArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[41], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTOnOff> getSpecVanishList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ex6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getSpecVanishArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fx6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setSpecVanishArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gx6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewSpecVanish(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hx6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeSpecVanish(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ix6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfSpecVanishArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff[] getStrikeArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[12], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTOnOff> getStrikeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.e37
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getStrikeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.f37
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setStrikeArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.g37
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewStrike(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.h37
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeStrike(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.i37
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfStrikeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTHpsMeasure[] getSzArray() {
        return (CTHpsMeasure[]) getXmlObjectArray(PROPERTY_QNAME[27], new CTHpsMeasure[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTHpsMeasure[] getSzCsArray() {
        return (CTHpsMeasure[]) getXmlObjectArray(PROPERTY_QNAME[28], new CTHpsMeasure[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTHpsMeasure> getSzCsList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sz6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getSzCsArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tz6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setSzCsArray(((Integer) obj).intValue(), (CTHpsMeasure) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.uz6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewSzCs(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vz6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeSzCs(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wz6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfSzCsArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTHpsMeasure> getSzList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.j07
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getSzArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.k07
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setSzArray(((Integer) obj).intValue(), (CTHpsMeasure) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.l07
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewSz(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.m07
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeSz(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.n07
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfSzArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTUnderline[] getUArray() {
        return (CTUnderline[]) getXmlObjectArray(PROPERTY_QNAME[30], new CTUnderline[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTUnderline> getUList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zw6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getUArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ax6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setUArray(((Integer) obj).intValue(), (CTUnderline) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bx6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewU(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cx6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeU(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.dx6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfUArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff[] getVanishArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[20], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTOnOff> getVanishList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ry6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getVanishArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.sy6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setVanishArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ty6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewVanish(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.uy6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeVanish(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vy6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfVanishArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTVerticalAlignRun[] getVertAlignArray() {
        return (CTVerticalAlignRun[]) getXmlObjectArray(PROPERTY_QNAME[35], new CTVerticalAlignRun[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTVerticalAlignRun> getVertAlignList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.v07
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getVertAlignArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.w07
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setVertAlignArray(((Integer) obj).intValue(), (CTVerticalAlignRun) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.x07
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewVertAlign(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.y07
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeVertAlign(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.z07
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfVertAlignArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTTextScale[] getWArray() {
        return (CTTextScale[]) getXmlObjectArray(PROPERTY_QNAME[24], new CTTextScale[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTTextScale> getWList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.c27
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getWArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.d27
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setWArray(((Integer) obj).intValue(), (CTTextScale) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.e27
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewW(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.f27
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeW(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.g27
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfWArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff[] getWebHiddenArray() {
        return (CTOnOff[]) getXmlObjectArray(PROPERTY_QNAME[21], new CTOnOff[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public List<CTOnOff> getWebHiddenList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hz6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.getWebHiddenArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.iz6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParaRPrOriginalImpl.this.setWebHiddenArray(((Integer) obj).intValue(), (CTOnOff) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jz6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParaRPrOriginalImpl.this.insertNewWebHidden(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kz6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParaRPrOriginalImpl.this.removeWebHidden(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lz6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParaRPrOriginalImpl.this.sizeOfWebHiddenArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff insertNewB(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff insertNewBCs(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTBorder insertNewBdr(int i) {
        CTBorder cTBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTBorder = (CTBorder) get_store().insert_element_user(PROPERTY_QNAME[32], i);
        }
        return cTBorder;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff insertNewCaps(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTColor insertNewColor(int i) {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().insert_element_user(PROPERTY_QNAME[22], i);
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff insertNewCs(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[37], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff insertNewDstrike(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[13], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTEastAsianLayout insertNewEastAsianLayout(int i) {
        CTEastAsianLayout cTEastAsianLayout;
        synchronized (monitor()) {
            check_orphaned();
            cTEastAsianLayout = (CTEastAsianLayout) get_store().insert_element_user(PROPERTY_QNAME[40], i);
        }
        return cTEastAsianLayout;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTTextEffect insertNewEffect(int i) {
        CTTextEffect cTTextEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTTextEffect = (CTTextEffect) get_store().insert_element_user(PROPERTY_QNAME[31], i);
        }
        return cTTextEffect;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTEm insertNewEm(int i) {
        CTEm cTEm;
        synchronized (monitor()) {
            check_orphaned();
            cTEm = (CTEm) get_store().insert_element_user(PROPERTY_QNAME[38], i);
        }
        return cTEm;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff insertNewEmboss(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[16], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTFitText insertNewFitText(int i) {
        CTFitText cTFitText;
        synchronized (monitor()) {
            check_orphaned();
            cTFitText = (CTFitText) get_store().insert_element_user(PROPERTY_QNAME[34], i);
        }
        return cTFitText;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTHighlight insertNewHighlight(int i) {
        CTHighlight cTHighlight;
        synchronized (monitor()) {
            check_orphaned();
            cTHighlight = (CTHighlight) get_store().insert_element_user(PROPERTY_QNAME[29], i);
        }
        return cTHighlight;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff insertNewI(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff insertNewICs(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff insertNewImprint(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[17], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTHpsMeasure insertNewKern(int i) {
        CTHpsMeasure cTHpsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTHpsMeasure = (CTHpsMeasure) get_store().insert_element_user(PROPERTY_QNAME[25], i);
        }
        return cTHpsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTLanguage insertNewLang(int i) {
        CTLanguage cTLanguage;
        synchronized (monitor()) {
            check_orphaned();
            cTLanguage = (CTLanguage) get_store().insert_element_user(PROPERTY_QNAME[39], i);
        }
        return cTLanguage;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff insertNewNoProof(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[18], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff insertNewOMath(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[42], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff insertNewOutline(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[14], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTSignedHpsMeasure insertNewPosition(int i) {
        CTSignedHpsMeasure cTSignedHpsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTSignedHpsMeasure = (CTSignedHpsMeasure) get_store().insert_element_user(PROPERTY_QNAME[26], i);
        }
        return cTSignedHpsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTFonts insertNewRFonts(int i) {
        CTFonts cTFonts;
        synchronized (monitor()) {
            check_orphaned();
            cTFonts = (CTFonts) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTFonts;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTString insertNewRStyle(int i) {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff insertNewRtl(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[36], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff insertNewShadow(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[15], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTShd insertNewShd(int i) {
        CTShd cTShd;
        synchronized (monitor()) {
            check_orphaned();
            cTShd = (CTShd) get_store().insert_element_user(PROPERTY_QNAME[33], i);
        }
        return cTShd;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff insertNewSmallCaps(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff insertNewSnapToGrid(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[19], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTSignedTwipsMeasure insertNewSpacing(int i) {
        CTSignedTwipsMeasure cTSignedTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTSignedTwipsMeasure = (CTSignedTwipsMeasure) get_store().insert_element_user(PROPERTY_QNAME[23], i);
        }
        return cTSignedTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff insertNewSpecVanish(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[41], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff insertNewStrike(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[12], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTHpsMeasure insertNewSz(int i) {
        CTHpsMeasure cTHpsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTHpsMeasure = (CTHpsMeasure) get_store().insert_element_user(PROPERTY_QNAME[27], i);
        }
        return cTHpsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTHpsMeasure insertNewSzCs(int i) {
        CTHpsMeasure cTHpsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTHpsMeasure = (CTHpsMeasure) get_store().insert_element_user(PROPERTY_QNAME[28], i);
        }
        return cTHpsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTUnderline insertNewU(int i) {
        CTUnderline cTUnderline;
        synchronized (monitor()) {
            check_orphaned();
            cTUnderline = (CTUnderline) get_store().insert_element_user(PROPERTY_QNAME[30], i);
        }
        return cTUnderline;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff insertNewVanish(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[20], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTVerticalAlignRun insertNewVertAlign(int i) {
        CTVerticalAlignRun cTVerticalAlignRun;
        synchronized (monitor()) {
            check_orphaned();
            cTVerticalAlignRun = (CTVerticalAlignRun) get_store().insert_element_user(PROPERTY_QNAME[35], i);
        }
        return cTVerticalAlignRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTTextScale insertNewW(int i) {
        CTTextScale cTTextScale;
        synchronized (monitor()) {
            check_orphaned();
            cTTextScale = (CTTextScale) get_store().insert_element_user(PROPERTY_QNAME[24], i);
        }
        return cTTextScale;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff insertNewWebHidden(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().insert_element_user(PROPERTY_QNAME[21], i);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public boolean isSetDel() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public boolean isSetIns() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public boolean isSetMoveFrom() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public boolean isSetMoveTo() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeB(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeBCs(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeBdr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[32], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeCaps(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeColor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[22], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeCs(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[37], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeDstrike(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeEastAsianLayout(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[40], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeEffect(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[31], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeEm(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[38], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeEmboss(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[16], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeFitText(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[34], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeHighlight(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[29], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeI(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeICs(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeImprint(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[17], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeKern(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[25], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeLang(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[39], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeNoProof(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[18], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeOMath(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[42], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeOutline(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removePosition(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[26], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeRFonts(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeRStyle(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeRtl(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[36], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeShadow(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeShd(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[33], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeSmallCaps(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeSnapToGrid(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[19], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeSpacing(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[23], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeSpecVanish(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[41], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeStrike(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeSz(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[27], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeSzCs(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[28], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeU(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[30], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeVanish(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[20], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeVertAlign(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[35], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeW(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[24], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void removeWebHidden(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[21], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setBArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setBCsArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setBdrArray(CTBorder[] cTBorderArr) {
        check_orphaned();
        arraySetterHelper(cTBorderArr, PROPERTY_QNAME[32]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setCapsArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[10]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setColorArray(CTColor[] cTColorArr) {
        check_orphaned();
        arraySetterHelper(cTColorArr, PROPERTY_QNAME[22]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setCsArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[37]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setDel(CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setDstrikeArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[13]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setEastAsianLayoutArray(CTEastAsianLayout[] cTEastAsianLayoutArr) {
        check_orphaned();
        arraySetterHelper(cTEastAsianLayoutArr, PROPERTY_QNAME[40]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setEffectArray(CTTextEffect[] cTTextEffectArr) {
        check_orphaned();
        arraySetterHelper(cTTextEffectArr, PROPERTY_QNAME[31]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setEmArray(CTEm[] cTEmArr) {
        check_orphaned();
        arraySetterHelper(cTEmArr, PROPERTY_QNAME[38]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setEmbossArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[16]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setFitTextArray(CTFitText[] cTFitTextArr) {
        check_orphaned();
        arraySetterHelper(cTFitTextArr, PROPERTY_QNAME[34]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setHighlightArray(CTHighlight[] cTHighlightArr) {
        check_orphaned();
        arraySetterHelper(cTHighlightArr, PROPERTY_QNAME[29]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setIArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setICsArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setImprintArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[17]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setIns(CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setKernArray(CTHpsMeasure[] cTHpsMeasureArr) {
        check_orphaned();
        arraySetterHelper(cTHpsMeasureArr, PROPERTY_QNAME[25]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setLangArray(CTLanguage[] cTLanguageArr) {
        check_orphaned();
        arraySetterHelper(cTLanguageArr, PROPERTY_QNAME[39]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setMoveFrom(CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setMoveTo(CTTrackChange cTTrackChange) {
        generatedSetterHelperImpl(cTTrackChange, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setNoProofArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[18]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setOMathArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[42]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setOutlineArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[14]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setPositionArray(CTSignedHpsMeasure[] cTSignedHpsMeasureArr) {
        check_orphaned();
        arraySetterHelper(cTSignedHpsMeasureArr, PROPERTY_QNAME[26]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setRFontsArray(CTFonts[] cTFontsArr) {
        check_orphaned();
        arraySetterHelper(cTFontsArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setRStyleArray(CTString[] cTStringArr) {
        check_orphaned();
        arraySetterHelper(cTStringArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setRtlArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[36]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setShadowArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[15]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setShdArray(CTShd[] cTShdArr) {
        check_orphaned();
        arraySetterHelper(cTShdArr, PROPERTY_QNAME[33]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setSmallCapsArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[11]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setSnapToGridArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[19]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setSpacingArray(CTSignedTwipsMeasure[] cTSignedTwipsMeasureArr) {
        check_orphaned();
        arraySetterHelper(cTSignedTwipsMeasureArr, PROPERTY_QNAME[23]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setSpecVanishArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[41]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setStrikeArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[12]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setSzArray(CTHpsMeasure[] cTHpsMeasureArr) {
        check_orphaned();
        arraySetterHelper(cTHpsMeasureArr, PROPERTY_QNAME[27]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setSzCsArray(CTHpsMeasure[] cTHpsMeasureArr) {
        check_orphaned();
        arraySetterHelper(cTHpsMeasureArr, PROPERTY_QNAME[28]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setUArray(CTUnderline[] cTUnderlineArr) {
        check_orphaned();
        arraySetterHelper(cTUnderlineArr, PROPERTY_QNAME[30]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setVanishArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[20]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setVertAlignArray(CTVerticalAlignRun[] cTVerticalAlignRunArr) {
        check_orphaned();
        arraySetterHelper(cTVerticalAlignRunArr, PROPERTY_QNAME[35]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setWArray(CTTextScale[] cTTextScaleArr) {
        check_orphaned();
        arraySetterHelper(cTTextScaleArr, PROPERTY_QNAME[24]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setWebHiddenArray(CTOnOff[] cTOnOffArr) {
        check_orphaned();
        arraySetterHelper(cTOnOffArr, PROPERTY_QNAME[21]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfBArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfBCsArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfBdrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[32]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfCapsArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfColorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[22]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfCsArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[37]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfDstrikeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[13]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfEastAsianLayoutArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[40]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfEffectArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[31]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfEmArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[38]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfEmbossArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[16]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfFitTextArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[34]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfHighlightArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[29]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfIArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfICsArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfImprintArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[17]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfKernArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[25]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfLangArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[39]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfNoProofArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[18]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfOMathArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[42]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfOutlineArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[14]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfPositionArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[26]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfRFontsArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfRStyleArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfRtlArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[36]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfShadowArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[15]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfShdArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[33]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfSmallCapsArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfSnapToGridArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[19]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfSpacingArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[23]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfSpecVanishArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[41]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfStrikeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfSzArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[27]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfSzCsArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[28]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfUArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[30]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfVanishArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[20]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfVertAlignArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[35]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfWArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[24]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public int sizeOfWebHiddenArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[21]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void unsetDel() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void unsetIns() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void unsetMoveFrom() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void unsetMoveTo() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff getBArray(int i) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff getBCsArray(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTOnOff == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTBorder getBdrArray(int i) {
        CTBorder cTBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTBorder = (CTBorder) get_store().find_element_user(PROPERTY_QNAME[32], i);
            if (cTBorder == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBorder;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff getCapsArray(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[10], i);
            if (cTOnOff == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTColor getColorArray(int i) {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().find_element_user(PROPERTY_QNAME[22], i);
            if (cTColor == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff getCsArray(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[37], i);
            if (cTOnOff == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff getDstrikeArray(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (cTOnOff == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTEastAsianLayout getEastAsianLayoutArray(int i) {
        CTEastAsianLayout cTEastAsianLayout;
        synchronized (monitor()) {
            check_orphaned();
            cTEastAsianLayout = (CTEastAsianLayout) get_store().find_element_user(PROPERTY_QNAME[40], i);
            if (cTEastAsianLayout == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEastAsianLayout;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTTextEffect getEffectArray(int i) {
        CTTextEffect cTTextEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTTextEffect = (CTTextEffect) get_store().find_element_user(PROPERTY_QNAME[31], i);
            if (cTTextEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTextEffect;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTEm getEmArray(int i) {
        CTEm cTEm;
        synchronized (monitor()) {
            check_orphaned();
            cTEm = (CTEm) get_store().find_element_user(PROPERTY_QNAME[38], i);
            if (cTEm == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEm;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff getEmbossArray(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[16], i);
            if (cTOnOff == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTFitText getFitTextArray(int i) {
        CTFitText cTFitText;
        synchronized (monitor()) {
            check_orphaned();
            cTFitText = (CTFitText) get_store().find_element_user(PROPERTY_QNAME[34], i);
            if (cTFitText == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFitText;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTHighlight getHighlightArray(int i) {
        CTHighlight cTHighlight;
        synchronized (monitor()) {
            check_orphaned();
            cTHighlight = (CTHighlight) get_store().find_element_user(PROPERTY_QNAME[29], i);
            if (cTHighlight == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTHighlight;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff getIArray(int i) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff getICsArray(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (cTOnOff == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff getImprintArray(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[17], i);
            if (cTOnOff == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTHpsMeasure getKernArray(int i) {
        CTHpsMeasure cTHpsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTHpsMeasure = (CTHpsMeasure) get_store().find_element_user(PROPERTY_QNAME[25], i);
            if (cTHpsMeasure == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTHpsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTLanguage getLangArray(int i) {
        CTLanguage cTLanguage;
        synchronized (monitor()) {
            check_orphaned();
            cTLanguage = (CTLanguage) get_store().find_element_user(PROPERTY_QNAME[39], i);
            if (cTLanguage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTLanguage;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff getNoProofArray(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[18], i);
            if (cTOnOff == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff getOMathArray(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[42], i);
            if (cTOnOff == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff getOutlineArray(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[14], i);
            if (cTOnOff == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTSignedHpsMeasure getPositionArray(int i) {
        CTSignedHpsMeasure cTSignedHpsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTSignedHpsMeasure = (CTSignedHpsMeasure) get_store().find_element_user(PROPERTY_QNAME[26], i);
            if (cTSignedHpsMeasure == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSignedHpsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTFonts getRFontsArray(int i) {
        CTFonts cTFonts;
        synchronized (monitor()) {
            check_orphaned();
            cTFonts = (CTFonts) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTFonts == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFonts;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTString getRStyleArray(int i) {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTString == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff getRtlArray(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[36], i);
            if (cTOnOff == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff getShadowArray(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[15], i);
            if (cTOnOff == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTShd getShdArray(int i) {
        CTShd cTShd;
        synchronized (monitor()) {
            check_orphaned();
            cTShd = (CTShd) get_store().find_element_user(PROPERTY_QNAME[33], i);
            if (cTShd == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTShd;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff getSmallCapsArray(int i) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff getSnapToGridArray(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[19], i);
            if (cTOnOff == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTSignedTwipsMeasure getSpacingArray(int i) {
        CTSignedTwipsMeasure cTSignedTwipsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTSignedTwipsMeasure = (CTSignedTwipsMeasure) get_store().find_element_user(PROPERTY_QNAME[23], i);
            if (cTSignedTwipsMeasure == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSignedTwipsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff getSpecVanishArray(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[41], i);
            if (cTOnOff == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff getStrikeArray(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[12], i);
            if (cTOnOff == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTHpsMeasure getSzArray(int i) {
        CTHpsMeasure cTHpsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTHpsMeasure = (CTHpsMeasure) get_store().find_element_user(PROPERTY_QNAME[27], i);
            if (cTHpsMeasure == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTHpsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTHpsMeasure getSzCsArray(int i) {
        CTHpsMeasure cTHpsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            cTHpsMeasure = (CTHpsMeasure) get_store().find_element_user(PROPERTY_QNAME[28], i);
            if (cTHpsMeasure == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTHpsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTUnderline getUArray(int i) {
        CTUnderline cTUnderline;
        synchronized (monitor()) {
            check_orphaned();
            cTUnderline = (CTUnderline) get_store().find_element_user(PROPERTY_QNAME[30], i);
            if (cTUnderline == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTUnderline;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff getVanishArray(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[20], i);
            if (cTOnOff == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTVerticalAlignRun getVertAlignArray(int i) {
        CTVerticalAlignRun cTVerticalAlignRun;
        synchronized (monitor()) {
            check_orphaned();
            cTVerticalAlignRun = (CTVerticalAlignRun) get_store().find_element_user(PROPERTY_QNAME[35], i);
            if (cTVerticalAlignRun == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTVerticalAlignRun;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTTextScale getWArray(int i) {
        CTTextScale cTTextScale;
        synchronized (monitor()) {
            check_orphaned();
            cTTextScale = (CTTextScale) get_store().find_element_user(PROPERTY_QNAME[24], i);
            if (cTTextScale == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTextScale;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public CTOnOff getWebHiddenArray(int i) {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[21], i);
            if (cTOnOff == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setBArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setBCsArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setBdrArray(int i, CTBorder cTBorder) {
        generatedSetterHelperImpl(cTBorder, PROPERTY_QNAME[32], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setCapsArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[10], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setColorArray(int i, CTColor cTColor) {
        generatedSetterHelperImpl(cTColor, PROPERTY_QNAME[22], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setCsArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[37], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setDstrikeArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[13], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setEastAsianLayoutArray(int i, CTEastAsianLayout cTEastAsianLayout) {
        generatedSetterHelperImpl(cTEastAsianLayout, PROPERTY_QNAME[40], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setEffectArray(int i, CTTextEffect cTTextEffect) {
        generatedSetterHelperImpl(cTTextEffect, PROPERTY_QNAME[31], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setEmArray(int i, CTEm cTEm) {
        generatedSetterHelperImpl(cTEm, PROPERTY_QNAME[38], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setEmbossArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[16], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setFitTextArray(int i, CTFitText cTFitText) {
        generatedSetterHelperImpl(cTFitText, PROPERTY_QNAME[34], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setHighlightArray(int i, CTHighlight cTHighlight) {
        generatedSetterHelperImpl(cTHighlight, PROPERTY_QNAME[29], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setIArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setICsArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[9], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setImprintArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[17], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setKernArray(int i, CTHpsMeasure cTHpsMeasure) {
        generatedSetterHelperImpl(cTHpsMeasure, PROPERTY_QNAME[25], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setLangArray(int i, CTLanguage cTLanguage) {
        generatedSetterHelperImpl(cTLanguage, PROPERTY_QNAME[39], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setNoProofArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[18], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setOMathArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[42], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setOutlineArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[14], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setPositionArray(int i, CTSignedHpsMeasure cTSignedHpsMeasure) {
        generatedSetterHelperImpl(cTSignedHpsMeasure, PROPERTY_QNAME[26], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setRFontsArray(int i, CTFonts cTFonts) {
        generatedSetterHelperImpl(cTFonts, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setRStyleArray(int i, CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setRtlArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[36], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setShadowArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[15], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setShdArray(int i, CTShd cTShd) {
        generatedSetterHelperImpl(cTShd, PROPERTY_QNAME[33], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setSmallCapsArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[11], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setSnapToGridArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[19], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setSpacingArray(int i, CTSignedTwipsMeasure cTSignedTwipsMeasure) {
        generatedSetterHelperImpl(cTSignedTwipsMeasure, PROPERTY_QNAME[23], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setSpecVanishArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[41], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setStrikeArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[12], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setSzArray(int i, CTHpsMeasure cTHpsMeasure) {
        generatedSetterHelperImpl(cTHpsMeasure, PROPERTY_QNAME[27], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setSzCsArray(int i, CTHpsMeasure cTHpsMeasure) {
        generatedSetterHelperImpl(cTHpsMeasure, PROPERTY_QNAME[28], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setUArray(int i, CTUnderline cTUnderline) {
        generatedSetterHelperImpl(cTUnderline, PROPERTY_QNAME[30], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setVanishArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[20], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setVertAlignArray(int i, CTVerticalAlignRun cTVerticalAlignRun) {
        generatedSetterHelperImpl(cTVerticalAlignRun, PROPERTY_QNAME[35], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setWArray(int i, CTTextScale cTTextScale) {
        generatedSetterHelperImpl(cTTextScale, PROPERTY_QNAME[24], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPrOriginal
    public void setWebHiddenArray(int i, CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[21], i, (short) 2);
    }
}
