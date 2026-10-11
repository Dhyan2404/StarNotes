package org.apache.poi.xddf.usermodel.text;

import com.blankj.utilcode.util.LogUtils;
import com.sunia.HTREnginev2.ajo;
import com.sunia.HTREnginev2.bjo;
import com.sunia.HTREnginev2.iio;
import com.sunia.HTREnginev2.jho;
import com.sunia.HTREnginev2.kko;
import com.sunia.HTREnginev2.lio;
import com.sunia.HTREnginev2.mio;
import com.sunia.HTREnginev2.vko;
import com.sunia.HTREnginev2.wio;
import com.sunia.HTREnginev2.xio;
import com.sunia.HTREnginev2.yio;
import com.sunia.HTREnginev2.yjo;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import org.apache.poi.common.usermodel.fonts.FontGroup;
import org.apache.poi.ooxml.POIXMLRelation;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackagePartName;
import org.apache.poi.openxml4j.opc.TargetMode;
import org.apache.poi.util.Internal;
import org.apache.poi.xddf.usermodel.XDDFColor;
import org.apache.poi.xddf.usermodel.XDDFFillProperties;
import org.apache.poi.xddf.usermodel.XDDFLineProperties;
import org.apache.poi.xddf.usermodel.XDDFSolidFillProperties;
import org.apache.poi.xddf.usermodel.text.CapsType;
import org.apache.poi.xddf.usermodel.text.StrikeType;
import org.apache.poi.xddf.usermodel.text.UnderlineType;
import org.apache.poi.xddf.usermodel.text.XDDFFont;
import org.apache.poi.xddf.usermodel.text.XDDFTextRun;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTLineProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTRegularTextRun;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSolidColorFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextField;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextFont;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextLineBreak;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextCapsType;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextPoint;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextStrikeType;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextUnderlineType;

/* loaded from: classes13.dex */
public class XDDFTextRun {
    private final XDDFTextParagraph _parent;
    private XDDFRunProperties _properties;
    private CTRegularTextRun _rtr;
    private CTTextField _tf;
    private CTTextLineBreak _tlb;

    @Internal
    public XDDFTextRun(CTTextLineBreak cTTextLineBreak, XDDFTextParagraph xDDFTextParagraph) {
        this._tlb = cTTextLineBreak;
        this._parent = xDDFTextParagraph;
    }

    private <R> Optional<R> findDefinedProperty(Predicate<CTTextCharacterProperties> predicate, Function<CTTextCharacterProperties, R> function) {
        CTTextCharacterProperties properties = getProperties();
        return (properties == null || !predicate.test(properties)) ? this._parent.findDefinedRunProperty(predicate, function) : Optional.ofNullable(function.apply(properties));
    }

    private XDDFRunProperties getOrCreateProperties() {
        if (this._properties == null) {
            if (isLineBreak()) {
                this._properties = new XDDFRunProperties(this._tlb.isSetRPr() ? this._tlb.getRPr() : this._tlb.addNewRPr());
            } else if (isField()) {
                this._properties = new XDDFRunProperties(this._tf.isSetRPr() ? this._tf.getRPr() : this._tf.addNewRPr());
            } else if (isRegularRun()) {
                this._properties = new XDDFRunProperties(this._rtr.isSetRPr() ? this._rtr.getRPr() : this._rtr.addNewRPr());
            }
        }
        return this._properties;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double lambda$getCharacterKerning$9(Integer num) {
        return Double.valueOf(num.intValue() * 0.01d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XDDFFont lambda$getFonts$5(CTTextFont cTTextFont) {
        return new XDDFFont(FontGroup.COMPLEX_SCRIPT, cTTextFont);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XDDFFont lambda$getFonts$6(CTTextFont cTTextFont) {
        return new XDDFFont(FontGroup.EAST_ASIAN, cTTextFont);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XDDFFont lambda$getFonts$7(CTTextFont cTTextFont) {
        return new XDDFFont(FontGroup.LATIN, cTTextFont);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XDDFFont lambda$getFonts$8(CTTextFont cTTextFont) {
        return new XDDFFont(FontGroup.SYMBOL, cTTextFont);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$isCapitals$2(STTextCapsType.Enum r1) {
        return Boolean.valueOf(r1 != STTextCapsType.NONE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$isStrikeThrough$0(STTextStrikeType.Enum r1) {
        return Boolean.valueOf(r1 != STTextStrikeType.NO_STRIKE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$isSubscript$3(Integer num) {
        return Boolean.valueOf(num.intValue() < 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$isSuperscript$4(Integer num) {
        return Boolean.valueOf(num.intValue() > 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$isUnderline$1(STTextUnderlineType.Enum r1) {
        return Boolean.valueOf(r1 != STTextUnderlineType.NONE);
    }

    public XDDFHyperlink createMouseOver(String str) {
        XDDFHyperlink xDDFHyperlink = new XDDFHyperlink("", str);
        getOrCreateProperties().setMouseOver(xDDFHyperlink);
        return xDDFHyperlink;
    }

    public Locale getAlternativeLanguage() {
        return (Locale) findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.wjo
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetAltLang();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.xjo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTextCharacterProperties) obj).getAltLang();
            }
        }).map(new yjo()).orElse(null);
    }

    public String getBookmark() {
        return (String) findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.pko
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetBmk();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.qko
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTextCharacterProperties) obj).getBmk();
            }
        }).orElse(null);
    }

    public CapsType getCapitals() {
        return (CapsType) findDefinedProperty(new lio(), new mio()).map(new Function() { // from class: com.sunia.HTREnginev2.nio
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return CapsType.valueOf((STTextCapsType.Enum) obj);
            }
        }).orElse(null);
    }

    public Double getCharacterKerning() {
        return (Double) findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.rko
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetKern();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.sko
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((CTTextCharacterProperties) obj).getKern());
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.tko
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double lambda$getCharacterKerning$9;
                lambda$getCharacterKerning$9 = XDDFTextRun.lambda$getCharacterKerning$9((Integer) obj);
                return lambda$getCharacterKerning$9;
            }
        }).orElse(null);
    }

    public Double getCharacterSpacing() {
        return (Double) findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.wko
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetSpc();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.xko
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTextCharacterProperties) obj).xgetSpc();
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.yko
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Long.valueOf(POIXMLUnits.parseLength((STTextPoint) obj));
            }
        }).map(new jho()).orElse(null);
    }

    public Boolean getDirty() {
        return (Boolean) findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.eko
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetDirty();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.fko
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((CTTextCharacterProperties) obj).getDirty());
            }
        }).orElse(null);
    }

    public XDDFColor getFontColor() {
        return ((XDDFSolidFillProperties) findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.qio
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetSolidFill();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.rio
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTextCharacterProperties) obj).getSolidFill();
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.tio
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new XDDFSolidFillProperties((CTSolidColorFillProperties) obj);
            }
        }).orElse(new XDDFSolidFillProperties())).getColor();
    }

    public Double getFontSize() {
        Integer num = (Integer) findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.jio
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetSz();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.kio
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((CTTextCharacterProperties) obj).getSz());
            }
        }).orElse(Integer.valueOf(LogUtils.f13811p));
        return Double.valueOf(num.intValue() * (this._parent.getParentBody().getBodyProperties().getAutoFit().getFontScale() / 1.0E7d));
    }

    public XDDFFont[] getFonts() {
        final LinkedList linkedList = new LinkedList();
        findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.hjo
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetCs();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.njo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTextCharacterProperties) obj).getCs();
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.pjo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                XDDFFont lambda$getFonts$5;
                lambda$getFonts$5 = XDDFTextRun.lambda$getFonts$5((CTTextFont) obj);
                return lambda$getFonts$5;
            }
        }).ifPresent(new Consumer() { // from class: com.sunia.HTREnginev2.jjo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                linkedList.add((XDDFFont) obj);
            }
        });
        findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.qjo
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetEa();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.rjo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTextCharacterProperties) obj).getEa();
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.sjo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                XDDFFont lambda$getFonts$6;
                lambda$getFonts$6 = XDDFTextRun.lambda$getFonts$6((CTTextFont) obj);
                return lambda$getFonts$6;
            }
        }).ifPresent(new Consumer() { // from class: com.sunia.HTREnginev2.jjo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                linkedList.add((XDDFFont) obj);
            }
        });
        findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.tjo
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetLatin();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.ujo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTextCharacterProperties) obj).getLatin();
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.ijo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                XDDFFont lambda$getFonts$7;
                lambda$getFonts$7 = XDDFTextRun.lambda$getFonts$7((CTTextFont) obj);
                return lambda$getFonts$7;
            }
        }).ifPresent(new Consumer() { // from class: com.sunia.HTREnginev2.jjo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                linkedList.add((XDDFFont) obj);
            }
        });
        findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.kjo
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetSym();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.ljo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTextCharacterProperties) obj).getSym();
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.mjo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                XDDFFont lambda$getFonts$8;
                lambda$getFonts$8 = XDDFTextRun.lambda$getFonts$8((CTTextFont) obj);
                return lambda$getFonts$8;
            }
        }).ifPresent(new Consumer() { // from class: com.sunia.HTREnginev2.jjo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                linkedList.add((XDDFFont) obj);
            }
        });
        return (XDDFFont[]) linkedList.toArray(new XDDFFont[0]);
    }

    public XDDFColor getHighlight() {
        return (XDDFColor) findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.hio
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetHighlight();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.sio
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTextCharacterProperties) obj).getHighlight();
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.djo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return XDDFColor.forColorContainer((CTColor) obj);
            }
        }).orElse(null);
    }

    public XDDFHyperlink getHyperlink() {
        return (XDDFHyperlink) findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.alo
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetHlinkClick();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.blo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTextCharacterProperties) obj).getHlinkClick();
            }
        }).map(new iio()).orElse(null);
    }

    public Locale getLanguage() {
        return (Locale) findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.cko
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetLang();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.dko
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTextCharacterProperties) obj).getLang();
            }
        }).map(new yjo()).orElse(null);
    }

    public XDDFLineProperties getLineProperties() {
        return (XDDFLineProperties) findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.mko
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetLn();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.nko
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTextCharacterProperties) obj).getLn();
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.oko
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new XDDFLineProperties((CTLineProperties) obj);
            }
        }).orElse(null);
    }

    public XDDFHyperlink getMouseOver() {
        return (XDDFHyperlink) findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.uio
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetHlinkMouseOver();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.vio
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTextCharacterProperties) obj).getHlinkMouseOver();
            }
        }).map(new iio()).orElse(null);
    }

    public Boolean getNoProof() {
        return (Boolean) findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.oio
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetNoProof();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.pio
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((CTTextCharacterProperties) obj).getNoProof());
            }
        }).orElse(null);
    }

    public Boolean getNormalizeHeights() {
        return (Boolean) findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.gko
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetNormalizeH();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.hko
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((CTTextCharacterProperties) obj).getNormalizeH());
            }
        }).orElse(null);
    }

    public XDDFTextParagraph getParentParagraph() {
        return this._parent;
    }

    @Internal
    public CTTextCharacterProperties getProperties() {
        if (isLineBreak() && this._tlb.isSetRPr()) {
            return this._tlb.getRPr();
        }
        if (isField() && this._tf.isSetRPr()) {
            return this._tf.getRPr();
        }
        if (isRegularRun() && this._rtr.isSetRPr()) {
            return this._rtr.getRPr();
        }
        XDDFRunProperties defaultRunProperties = this._parent.getDefaultRunProperties();
        if (defaultRunProperties == null) {
            return null;
        }
        return defaultRunProperties.getXmlObject();
    }

    public Boolean getSpellError() {
        return (Boolean) findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.ojo
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetErr();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.zjo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((CTTextCharacterProperties) obj).getErr());
            }
        }).orElse(null);
    }

    public StrikeType getStrikeThrough() {
        return (StrikeType) findDefinedProperty(new kko(), new vko()).map(new Function() { // from class: com.sunia.HTREnginev2.zko
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return StrikeType.valueOf((STTextStrikeType.Enum) obj);
            }
        }).orElse(null);
    }

    public String getText() {
        return isLineBreak() ? "\n" : isField() ? this._tf.getT() : this._rtr.getT();
    }

    public UnderlineType getUnderline() {
        return (UnderlineType) findDefinedProperty(new ajo(), new bjo()).map(new Function() { // from class: com.sunia.HTREnginev2.cjo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return UnderlineType.valueOf((STTextUnderlineType.Enum) obj);
            }
        }).orElse(null);
    }

    public boolean isBold() {
        return ((Boolean) findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.jko
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetB();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.lko
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((CTTextCharacterProperties) obj).getB());
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    public boolean isCapitals() {
        return ((Boolean) findDefinedProperty(new lio(), new mio()).map(new Function() { // from class: com.sunia.HTREnginev2.iko
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$isCapitals$2;
                lambda$isCapitals$2 = XDDFTextRun.lambda$isCapitals$2((STTextCapsType.Enum) obj);
                return lambda$isCapitals$2;
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    public boolean isField() {
        return this._tf != null;
    }

    public boolean isItalic() {
        return ((Boolean) findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.ejo
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetI();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.fjo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((CTTextCharacterProperties) obj).getI());
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    public boolean isKumimoji() {
        return ((Boolean) findDefinedProperty(new Predicate() { // from class: com.sunia.HTREnginev2.ako
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CTTextCharacterProperties) obj).isSetKumimoji();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.bko
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((CTTextCharacterProperties) obj).getKumimoji());
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    public boolean isLineBreak() {
        return this._tlb != null;
    }

    public boolean isRegularRun() {
        return this._rtr != null;
    }

    public boolean isStrikeThrough() {
        return ((Boolean) findDefinedProperty(new kko(), new vko()).map(new Function() { // from class: com.sunia.HTREnginev2.gjo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$isStrikeThrough$0;
                lambda$isStrikeThrough$0 = XDDFTextRun.lambda$isStrikeThrough$0((STTextStrikeType.Enum) obj);
                return lambda$isStrikeThrough$0;
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    public boolean isSubscript() {
        return ((Boolean) findDefinedProperty(new wio(), new xio()).map(new yio()).map(new Function() { // from class: com.sunia.HTREnginev2.uko
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$isSubscript$3;
                lambda$isSubscript$3 = XDDFTextRun.lambda$isSubscript$3((Integer) obj);
                return lambda$isSubscript$3;
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    public boolean isSuperscript() {
        return ((Boolean) findDefinedProperty(new wio(), new xio()).map(new yio()).map(new Function() { // from class: com.sunia.HTREnginev2.zio
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$isSuperscript$4;
                lambda$isSuperscript$4 = XDDFTextRun.lambda$isSuperscript$4((Integer) obj);
                return lambda$isSuperscript$4;
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    public boolean isUnderline() {
        return ((Boolean) findDefinedProperty(new ajo(), new bjo()).map(new Function() { // from class: com.sunia.HTREnginev2.vjo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$isUnderline$1;
                lambda$isUnderline$1 = XDDFTextRun.lambda$isUnderline$1((STTextUnderlineType.Enum) obj);
                return lambda$isUnderline$1;
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    public XDDFHyperlink linkToAction(String str) {
        XDDFHyperlink xDDFHyperlink = new XDDFHyperlink("", str);
        getOrCreateProperties().setHyperlink(xDDFHyperlink);
        return xDDFHyperlink;
    }

    public XDDFHyperlink linkToExternal(String str, PackagePart packagePart, POIXMLRelation pOIXMLRelation) {
        XDDFHyperlink xDDFHyperlink = new XDDFHyperlink(packagePart.addExternalRelationship(str, pOIXMLRelation.getRelation()).getId());
        getOrCreateProperties().setHyperlink(xDDFHyperlink);
        return xDDFHyperlink;
    }

    public XDDFHyperlink linkToInternal(String str, PackagePart packagePart, POIXMLRelation pOIXMLRelation, PackagePartName packagePartName) {
        XDDFHyperlink xDDFHyperlink = new XDDFHyperlink(packagePart.addRelationship(packagePartName, TargetMode.INTERNAL, pOIXMLRelation.getRelation()).getId(), str);
        getOrCreateProperties().setHyperlink(xDDFHyperlink);
        return xDDFHyperlink;
    }

    public void setAlternativeLanguage(Locale locale) {
        getOrCreateProperties().setAlternativeLanguage(locale);
    }

    public void setBaseline(Double d) {
        if (d == null) {
            getOrCreateProperties().setBaseline(null);
        } else {
            getOrCreateProperties().setBaseline(Integer.valueOf((int) (d.doubleValue() * 1000.0d)));
        }
    }

    public void setBold(Boolean bool) {
        getOrCreateProperties().setBold(bool);
    }

    public void setBookmark(String str) {
        getOrCreateProperties().setBookmark(str);
    }

    public void setCapitals(CapsType capsType) {
        getOrCreateProperties().setCapitals(capsType);
    }

    public void setCharacterKerning(Double d) {
        getOrCreateProperties().setCharacterKerning(d);
    }

    public void setCharacterSpacing(Double d) {
        getOrCreateProperties().setCharacterSpacing(d);
    }

    public void setDirty(Boolean bool) {
        getOrCreateProperties().setDirty(bool);
    }

    public void setFillProperties(XDDFFillProperties xDDFFillProperties) {
        getOrCreateProperties().setFillProperties(xDDFFillProperties);
    }

    public void setFontColor(XDDFColor xDDFColor) {
        XDDFSolidFillProperties xDDFSolidFillProperties = new XDDFSolidFillProperties();
        xDDFSolidFillProperties.setColor(xDDFColor);
        setFillProperties(xDDFSolidFillProperties);
    }

    public void setFontSize(Double d) {
        getOrCreateProperties().setFontSize(d);
    }

    public void setFonts(XDDFFont[] xDDFFontArr) {
        getOrCreateProperties().setFonts(xDDFFontArr);
    }

    public void setHighlight(XDDFColor xDDFColor) {
        getOrCreateProperties().setHighlight(xDDFColor);
    }

    public void setItalic(Boolean bool) {
        getOrCreateProperties().setItalic(bool);
    }

    public void setKumimoji(Boolean bool) {
        getOrCreateProperties().setKumimoji(bool);
    }

    public void setLanguage(Locale locale) {
        getOrCreateProperties().setLanguage(locale);
    }

    public void setLineProperties(XDDFLineProperties xDDFLineProperties) {
        getOrCreateProperties().setLineProperties(xDDFLineProperties);
    }

    public void setNoProof(Boolean bool) {
        getOrCreateProperties().setNoProof(bool);
    }

    public void setNormalizeHeights(Boolean bool) {
        getOrCreateProperties().setNormalizeHeights(bool);
    }

    public void setSpellError(Boolean bool) {
        getOrCreateProperties().setSpellError(bool);
    }

    public void setStrikeThrough(StrikeType strikeType) {
        getOrCreateProperties().setStrikeThrough(strikeType);
    }

    public void setSubscript(Double d) {
        setBaseline(d == null ? null : Double.valueOf(-Math.abs(d.doubleValue())));
    }

    public void setSuperscript(Double d) {
        setBaseline(d == null ? null : Double.valueOf(Math.abs(d.doubleValue())));
    }

    public void setText(String str) {
        if (isField()) {
            this._tf.setT(str);
        } else if (isRegularRun()) {
            this._rtr.setT(str);
        }
    }

    public void setUnderline(UnderlineType underlineType) {
        getOrCreateProperties().setUnderline(underlineType);
    }

    @Internal
    public XDDFTextRun(CTTextField cTTextField, XDDFTextParagraph xDDFTextParagraph) {
        this._tf = cTTextField;
        this._parent = xDDFTextParagraph;
    }

    @Internal
    public XDDFTextRun(CTRegularTextRun cTRegularTextRun, XDDFTextParagraph xDDFTextParagraph) {
        this._rtr = cTRegularTextRun;
        this._parent = xDDFTextParagraph;
    }
}
