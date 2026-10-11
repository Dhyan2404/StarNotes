package org.apache.poi.convert.xwpf.property;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import org.apache.poi.common.LangGroup;
import org.apache.poi.common.usermodel.fonts.FontGroup;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.property.IRunPropertyFetcher;
import org.apache.poi.convert.xwpf.property.RunPropertyListFetcher;
import org.apache.poi.style.TextStyles;
import org.apache.poi.style.UnitValue;
import org.apache.poi.xwpf.usermodel.UnderlinePatterns;
import org.apache.poi.xwpf.usermodel.XWPFTheme;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSRgbColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextFont;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STVerticalAlignRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBorder;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEm;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHpsMeasure;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTLanguage;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STEm;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STThemeColor;

/* loaded from: classes12.dex */
public class RunPropertyListFetcher extends AbstractRunPropertyFetcher {
    private CTFonts ctFonts;
    private List<IRunPropertyFetcher> list;
    private XWPFTheme theme;

    /* renamed from: org.apache.poi.convert.xwpf.property.RunPropertyListFetcher$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194301 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$convert$xwpf$property$Hint;

        static {
            int[] iArr = new int[Hint.values().length];
            $SwitchMap$org$apache$poi$convert$xwpf$property$Hint = iArr;
            try {
                iArr[Hint.EAST_ASIA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$convert$xwpf$property$Hint[Hint.HANSI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$convert$xwpf$property$Hint[Hint.CS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$convert$xwpf$property$Hint[Hint.ASCII.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$convert$xwpf$property$Hint[Hint.DEFAULT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[FontGroup.values().length];
            $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup = iArr2;
            try {
                iArr2[FontGroup.EAST_ASIAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[FontGroup.COMPLEX_SCRIPT.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[FontGroup.SYMBOL.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[FontGroup.LATIN.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public RunPropertyListFetcher(XWPFTheme xWPFTheme) {
        this.list = new ArrayList();
        this.theme = xWPFTheme;
    }

    private <R> R findFirst(Function<IRunPropertyFetcher, R> function) {
        Iterator<IRunPropertyFetcher> it2 = this.list.iterator();
        while (it2.hasNext()) {
            R apply = function.apply(it2.next());
            if (!WordToHtmlUtils.isNull(apply)) {
                return apply;
            }
        }
        return null;
    }

    private String getFontFromFontCollectionByFontGroup(CTFontCollection cTFontCollection, FontGroup fontGroup) {
        if (WordToHtmlUtils.isNull(cTFontCollection)) {
            return null;
        }
        int i = C194301.$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[fontGroup.ordinal()];
        if (i == 1) {
            String fontTypeface = getFontTypeface(cTFontCollection.getEa());
            return WordToHtmlUtils.isEmpty(fontTypeface) ? LangGroup.getTypefaceByFontScript(cTFontCollection, LangGroup.FontScript.HANS) : fontTypeface;
        }
        if (i == 2) {
            return getFontTypeface(cTFontCollection.getCs());
        }
        if (i == 3) {
            return TextStyles.FONT_SYMBOL;
        }
        String fontTypeface2 = getFontTypeface(cTFontCollection.getLatin());
        return WordToHtmlUtils.isEmpty(fontTypeface2) ? LangGroup.getTypefaceByFontScript(cTFontCollection, LangGroup.FontScript.ENGLISH) : fontTypeface2;
    }

    private String getFontFromFontCollectionByFontTheme(STTheme.Enum r4) {
        if (WordToHtmlUtils.isNull(r4) || WordToHtmlUtils.isNull(this.theme)) {
            return null;
        }
        CTFontCollection majorFontCollection = this.theme.getMajorFontCollection();
        CTFontCollection minorFontCollection = this.theme.getMinorFontCollection();
        switch (r4.intValue()) {
            case 1:
                String fontTypeface = getFontTypeface(majorFontCollection.getEa());
                return WordToHtmlUtils.isEmpty(fontTypeface) ? LangGroup.getTypefaceByFontScript(majorFontCollection, LangGroup.FontScript.HANS) : fontTypeface;
            case 2:
            case 3:
                String fontTypeface2 = getFontTypeface(majorFontCollection.getLatin());
                return WordToHtmlUtils.isEmpty(fontTypeface2) ? LangGroup.getTypefaceByFontScript(majorFontCollection, LangGroup.FontScript.ENGLISH) : fontTypeface2;
            case 4:
                return LangGroup.getTypefaceByFontScript(majorFontCollection, LangGroup.FontScript.HANS);
            case 5:
                String fontTypeface3 = getFontTypeface(minorFontCollection.getEa());
                return WordToHtmlUtils.isEmpty(fontTypeface3) ? LangGroup.getTypefaceByFontScript(minorFontCollection, LangGroup.FontScript.HANS) : fontTypeface3;
            case 6:
            case 7:
                String fontTypeface4 = getFontTypeface(minorFontCollection.getLatin());
                return WordToHtmlUtils.isEmpty(fontTypeface4) ? LangGroup.getTypefaceByFontScript(minorFontCollection, LangGroup.FontScript.ENGLISH) : fontTypeface4;
            case 8:
                return LangGroup.getTypefaceByFontScript(minorFontCollection, LangGroup.FontScript.HANS);
            default:
                return null;
        }
    }

    private String getFontFromFontCollectionByLang(CTFontCollection cTFontCollection, FontGroup fontGroup, Hint hint) {
        if (WordToHtmlUtils.isNull(cTFontCollection)) {
            return null;
        }
        LangGroup.FontScript fontScript = getFontScript(fontGroup);
        CTLanguage cTLang = getCTLang();
        if (WordToHtmlUtils.isNull(cTLang)) {
            return LangGroup.getTypefaceByFontScript(cTFontCollection, fontScript);
        }
        for (String str : (hint == Hint.HANSI || hint == Hint.EAST_ASIA) ? new String[]{cTLang.getEastAsia()} : hint == Hint.CS ? new String[]{cTLang.getBidi()} : hint == Hint.ASCII ? new String[]{cTLang.getVal()} : new String[]{cTLang.getVal(), cTLang.getEastAsia(), cTLang.getBidi()}) {
            String typefaceByLang = LangGroup.getTypefaceByLang(cTFontCollection, str);
            if (!WordToHtmlUtils.isEmpty(typefaceByLang)) {
                return typefaceByLang;
            }
        }
        return LangGroup.getTypefaceByFontScript(cTFontCollection, fontScript);
    }

    private LangGroup.FontScript getFontScript(FontGroup fontGroup) {
        return C194301.$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[fontGroup.ordinal()] != 1 ? LangGroup.FontScript.ENGLISH : LangGroup.FontScript.HANS;
    }

    private STTheme.Enum getFontTheme(Hint hint, CTFonts cTFonts) {
        int i = C194301.$SwitchMap$org$apache$poi$convert$xwpf$property$Hint[hint.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? cTFonts.getAsciiTheme() : cTFonts.getCstheme() : cTFonts.getHAnsiTheme() : cTFonts.getEastAsiaTheme();
    }

    private String getFontTypeface(CTTextFont cTTextFont) {
        if (WordToHtmlUtils.isNull(cTTextFont)) {
            return null;
        }
        return cTTextFont.getTypeface();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$getFontFamily$0(FontGroup fontGroup, IRunPropertyFetcher iRunPropertyFetcher) {
        return iRunPropertyFetcher.getFontFamily(fontGroup);
    }

    public void addFetcher(IRunPropertyFetcher iRunPropertyFetcher) {
        this.list.add(iRunPropertyFetcher);
    }

    @Override // org.apache.poi.convert.xwpf.property.BordersFetcher
    public CTBorder[] getCTBorders() {
        return (CTBorder[]) findFirst(new Function() { // from class: com.sunia.HTREnginev2.qul
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).getCTBorders();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public CTLanguage getCTLang() {
        return (CTLanguage) findFirst(new Function() { // from class: com.sunia.HTREnginev2.rul
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).getCTLang();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public UnitValue getCharacterSpacing() {
        return (UnitValue) findFirst(new Function() { // from class: com.sunia.HTREnginev2.yul
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).getCharacterSpacing();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public String getColor() {
        return (String) findFirst(new Function() { // from class: com.sunia.HTREnginev2.oul
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).getColor();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public CTEm getEm() {
        return (CTEm) findFirst(new Function() { // from class: com.sunia.HTREnginev2.jul
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).getEm();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public STEm.Enum getEmphasisMark() {
        return (STEm.Enum) findFirst(new Function() { // from class: com.sunia.HTREnginev2.lul
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).getEmphasisMark();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.AbstractRunPropertyFetcher, org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public String getFontFamily(final FontGroup fontGroup) {
        String str = (String) findFirst(new Function() { // from class: com.sunia.HTREnginev2.mul
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$getFontFamily$0;
                lambda$getFontFamily$0 = RunPropertyListFetcher.lambda$getFontFamily$0(FontGroup.this, (IRunPropertyFetcher) obj);
                return lambda$getFontFamily$0;
            }
        });
        if (WordToHtmlUtils.isNotEmpty(str)) {
            return str;
        }
        CTFonts rFonts = getRFonts();
        Hint hint = Hint.NONE;
        if (!WordToHtmlUtils.isNull(rFonts)) {
            String fontFromCTFontsByFontGroup = getFontFromCTFontsByFontGroup(fontGroup, rFonts);
            if (WordToHtmlUtils.isNotEmpty(fontFromCTFontsByFontGroup)) {
                return fontFromCTFontsByFontGroup;
            }
            Hint fontHint = getFontHint(rFonts);
            if (fontHint != hint) {
                String fontFromCTFontsByHint = getFontFromCTFontsByHint(fontHint, rFonts);
                if (WordToHtmlUtils.isNotEmpty(fontFromCTFontsByHint)) {
                    return fontFromCTFontsByHint;
                }
            }
            String fontFromFontCollectionByFontTheme = getFontFromFontCollectionByFontTheme(getFontTheme(fontHint, rFonts));
            if (WordToHtmlUtils.isNotEmpty(fontFromFontCollectionByFontTheme)) {
                return fontFromFontCollectionByFontTheme;
            }
            hint = fontHint;
            str = fontFromFontCollectionByFontTheme;
        }
        if (!WordToHtmlUtils.isNull(this.theme)) {
            CTFontCollection majorFontCollection = this.theme.getMajorFontCollection();
            String fontFromFontCollectionByFontGroup = getFontFromFontCollectionByFontGroup(majorFontCollection, fontGroup);
            str = WordToHtmlUtils.isEmpty(fontFromFontCollectionByFontGroup) ? getFontFromFontCollectionByLang(majorFontCollection, fontGroup, hint) : fontFromFontCollectionByFontGroup;
        }
        if (WordToHtmlUtils.isEmpty(str)) {
            return fontGroup == FontGroup.EAST_ASIAN ? TextStyles.FONT_CHINESE : TextStyles.FONT_LATIN;
        }
        return str;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Integer getKerning() {
        return (Integer) findFirst(new Function() { // from class: com.sunia.HTREnginev2.cvl
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).getKerning();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public String getLang() {
        return (String) findFirst(new Function() { // from class: com.sunia.HTREnginev2.kul
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).getLang();
            }
        });
    }

    public List<IRunPropertyFetcher> getList() {
        return this.list;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public CTFonts getRFonts() {
        if (!WordToHtmlUtils.isNull(this.ctFonts)) {
            return this.ctFonts;
        }
        this.ctFonts = CTFonts.Factory.newInstance();
        Iterator<IRunPropertyFetcher> it2 = this.list.iterator();
        int i = 0;
        while (it2.hasNext()) {
            CTFonts rFonts = it2.next().getRFonts();
            if (!WordToHtmlUtils.isNull(rFonts)) {
                if (rFonts.isSetHint()) {
                    this.ctFonts.xsetHint(rFonts.xgetHint());
                    i++;
                    if (i >= 9) {
                        break;
                    }
                }
                if (rFonts.isSetAscii()) {
                    this.ctFonts.setAscii(rFonts.getAscii());
                    i++;
                    if (i >= 9) {
                        break;
                    }
                }
                if (rFonts.isSetEastAsia()) {
                    this.ctFonts.setEastAsia(rFonts.getEastAsia());
                    i++;
                    if (i >= 9) {
                        break;
                    }
                }
                if (rFonts.isSetCs()) {
                    this.ctFonts.setCs(rFonts.getCs());
                    i++;
                    if (i >= 9) {
                        break;
                    }
                }
                if (rFonts.isSetHAnsi()) {
                    this.ctFonts.setHAnsi(rFonts.getHAnsi());
                    i++;
                    if (i >= 9) {
                        break;
                    }
                }
                if (rFonts.isSetAsciiTheme()) {
                    this.ctFonts.xsetAsciiTheme(rFonts.xgetAsciiTheme());
                    i++;
                    if (i >= 9) {
                        break;
                    }
                }
                if (rFonts.isSetEastAsiaTheme()) {
                    this.ctFonts.xsetEastAsiaTheme(rFonts.xgetEastAsiaTheme());
                    i++;
                    if (i >= 9) {
                        break;
                    }
                }
                if (rFonts.isSetCstheme()) {
                    this.ctFonts.xsetCstheme(rFonts.xgetCstheme());
                    i++;
                    if (i >= 9) {
                        break;
                    }
                }
                if (rFonts.isSetHAnsiTheme()) {
                    this.ctFonts.xsetHAnsiTheme(rFonts.xgetHAnsiTheme());
                    i++;
                    if (i >= 9) {
                        break;
                    }
                } else {
                    continue;
                }
            }
        }
        return this.ctFonts;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public CTHpsMeasure getSz() {
        return (CTHpsMeasure) findFirst(new Function() { // from class: com.sunia.HTREnginev2.zul
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).getSz();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public CTHpsMeasure getSzCs() {
        return (CTHpsMeasure) findFirst(new Function() { // from class: com.sunia.HTREnginev2.hul
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).getSzCs();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public String getTextHighlightColor() {
        return (String) findFirst(new Function() { // from class: com.sunia.HTREnginev2.iul
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).getTextHighlightColor();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public UnitValue getTextScale() {
        return (UnitValue) findFirst(new Function() { // from class: com.sunia.HTREnginev2.bvl
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).getTextScale();
            }
        });
    }

    public XWPFTheme getTheme() {
        return this.theme;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public byte[] getThemeColor(String str) {
        if (WordToHtmlUtils.isNull(this.theme)) {
            return null;
        }
        CTColor cTColor = this.theme.getCTColor(str);
        if (!WordToHtmlUtils.isNull(cTColor)) {
            CTSRgbColor srgbClr = cTColor.getSrgbClr();
            if (!WordToHtmlUtils.isNull(srgbClr)) {
                return srgbClr.getVal();
            }
        }
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public UnderlinePatterns getUnderline() {
        return (UnderlinePatterns) findFirst(new Function() { // from class: com.sunia.HTREnginev2.uul
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).getUnderline();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public String getUnderlineColor() {
        return (String) findFirst(new Function() { // from class: com.sunia.HTREnginev2.gul
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).getUnderlineColor();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public STThemeColor.Enum getUnderlineThemeColorEnum() {
        return (STThemeColor.Enum) findFirst(new Function() { // from class: com.sunia.HTREnginev2.vul
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).getUnderlineThemeColorEnum();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public STVerticalAlignRun.Enum getVerticalAlignment() {
        return (STVerticalAlignRun.Enum) findFirst(new Function() { // from class: com.sunia.HTREnginev2.pul
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).getVerticalAlignment();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isBold() {
        return (Boolean) findFirst(new Function() { // from class: com.sunia.HTREnginev2.wul
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).isBold();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isCapitalized() {
        return (Boolean) findFirst(new Function() { // from class: com.sunia.HTREnginev2.avl
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).isCapitalized();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isDoubleStrikeThrough() {
        return (Boolean) findFirst(new Function() { // from class: com.sunia.HTREnginev2.dvl
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).isDoubleStrikeThrough();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isEmbossed() {
        return (Boolean) findFirst(new Function() { // from class: com.sunia.HTREnginev2.gvl
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).isEmbossed();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isHighlighted() {
        return (Boolean) findFirst(new Function() { // from class: com.sunia.HTREnginev2.nul
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).isHighlighted();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isImprinted() {
        return (Boolean) findFirst(new Function() { // from class: com.sunia.HTREnginev2.sul
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).isImprinted();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isItalic() {
        return (Boolean) findFirst(new Function() { // from class: com.sunia.HTREnginev2.fvl
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).isItalic();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isShadowed() {
        return (Boolean) findFirst(new Function() { // from class: com.sunia.HTREnginev2.ful
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).isShadowed();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isSmallCaps() {
        return (Boolean) findFirst(new Function() { // from class: com.sunia.HTREnginev2.xul
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).isSmallCaps();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isStrikeThrough() {
        return (Boolean) findFirst(new Function() { // from class: com.sunia.HTREnginev2.tul
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).isStrikeThrough();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isVanish() {
        return (Boolean) findFirst(new Function() { // from class: com.sunia.HTREnginev2.evl
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRunPropertyFetcher) obj).isVanish();
            }
        });
    }

    public void addFetcher(List<IRunPropertyFetcher> list) {
        this.list.addAll(list);
    }

    public RunPropertyListFetcher(XWPFTheme xWPFTheme, List<IRunPropertyFetcher> list) {
        ArrayList arrayList = new ArrayList();
        this.list = arrayList;
        this.theme = xWPFTheme;
        arrayList.addAll(list);
    }
}
