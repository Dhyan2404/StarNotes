package org.apache.poi.common;

import org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSupplementalFont;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextFont;

/* loaded from: classes12.dex */
public class LangGroup {

    /* renamed from: org.apache.poi.common.LangGroup$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194151 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$common$LangGroup$Lang;

        static {
            int[] iArr = new int[Lang.values().length];
            $SwitchMap$org$apache$poi$common$LangGroup$Lang = iArr;
            try {
                iArr[Lang.ZH_CN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$common$LangGroup$Lang[Lang.ZH_TW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$common$LangGroup$Lang[Lang.JAPAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$common$LangGroup$Lang[Lang.KOKR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$common$LangGroup$Lang[Lang.SAUDI_ARABIA.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$common$LangGroup$Lang[Lang.SYRIA_ARABIA.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$common$LangGroup$Lang[Lang.HEBREW.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$common$LangGroup$Lang[Lang.THAI.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$common$LangGroup$Lang[Lang.BENGALI_INDIA.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$apache$poi$common$LangGroup$Lang[Lang.KHMER.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$apache$poi$common$LangGroup$Lang[Lang.UNKNOWN.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$apache$poi$common$LangGroup$Lang[Lang.US.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* loaded from: classes12.dex */
    public enum FontScript {
        ENGLISH("US"),
        JAPAN("Jpan"),
        HANG("Hang"),
        HANS("Hans"),
        HANT("Hant"),
        ARAB("Arab"),
        HEBREW("Hebr"),
        THAI("Thai"),
        ETHI("Ethi"),
        BENG("Beng"),
        GUJR("Gujr"),
        KHMR("Khmr"),
        KNDA("Knda"),
        ZH_CN("zh_CN"),
        ZH_TW("zh_TW"),
        UNKNOWN("");

        private String script;

        FontScript(String str) {
            this.script = str;
        }

        public String getScript() {
            return this.script;
        }
    }

    /* loaded from: classes12.dex */
    public enum Lang {
        US("en-US"),
        ZH_CN(com.trans.android.font.Lang.f93893CN),
        ZH_TW("zh-TW"),
        ETHIOPIA("am-ET"),
        SAUDI_ARABIA("ar-SA"),
        SYRIA_ARABIA("ar-SY"),
        ASSAMESE_INDIA("as-IN"),
        BENGALI_BANGLADESH("bn-BD"),
        BENGALI_INDIA("bn-IN"),
        CHEROKEE("chr-Cher-US"),
        PERSIAN("fa-IR"),
        GUJARATI("gu-IN"),
        HEBREW("he-IL"),
        HINDI("hi-IN"),
        JAPAN("ja-JP"),
        KHMER("km-KH"),
        KNIN("kn-IN"),
        KOKIN("kok-IN"),
        KOKR("ko-KR"),
        KUARABIQ("ku-Arab-IQ"),
        LOLA("lo-LA"),
        MLIN("ml-IN"),
        MARATHI("mr-IN"),
        NEPALI("ne-NP"),
        ORIYA("or-IN"),
        PUNJABI_ARABIC_PAKISTAN("pa-Arab-PK"),
        PUNJABI("pa-IN"),
        DARI("prs-AF"),
        SINDH("sd-Arab-PK"),
        SINHALA("si-LK"),
        SYRIA("syr-SY"),
        TAMIL("ta-IN"),
        TELUGU("te-IN"),
        THAI("th-TH"),
        TIGRINYA("ti-ET"),
        UYGUR("ug-CN"),
        URDU("ur-PK"),
        UNKNOWN("");

        private String abbr;

        Lang(String str) {
            this.abbr = str;
        }

        public static Lang getLang(String str) {
            if (str == null || str.length() == 0) {
                return UNKNOWN;
            }
            for (Lang lang : values()) {
                if (lang.abbr.equalsIgnoreCase(str)) {
                    return lang;
                }
            }
            return UNKNOWN;
        }
    }

    public static CTTextFont getCTTextFontByFontScript(CTFontCollection cTFontCollection, FontScript fontScript) {
        String typefaceByFontScript = getTypefaceByFontScript(cTFontCollection, fontScript);
        if (typefaceByFontScript == null) {
            return null;
        }
        CTTextFont newInstance = CTTextFont.Factory.newInstance();
        newInstance.setTypeface(typefaceByFontScript);
        return newInstance;
    }

    public static CTTextFont getCTTextFontByLang(CTFontCollection cTFontCollection, String str) {
        String typefaceByLang = getTypefaceByLang(cTFontCollection, str);
        if (typefaceByLang == null) {
            return null;
        }
        CTTextFont newInstance = CTTextFont.Factory.newInstance();
        newInstance.setTypeface(typefaceByLang);
        return newInstance;
    }

    public static FontScript getFontScript(String str) {
        switch (C194151.$SwitchMap$org$apache$poi$common$LangGroup$Lang[Lang.getLang(str).ordinal()]) {
            case 1:
                return FontScript.HANS;
            case 2:
                return FontScript.HANT;
            case 3:
                return FontScript.JAPAN;
            case 4:
                return FontScript.HANG;
            case 5:
            case 6:
                return FontScript.ARAB;
            case 7:
                return FontScript.HEBREW;
            case 8:
                return FontScript.THAI;
            case 9:
                return FontScript.BENG;
            case 10:
                return FontScript.KHMR;
            case 11:
                return FontScript.UNKNOWN;
            default:
                return FontScript.ENGLISH;
        }
    }

    public static String getTypefaceByFontScript(CTFontCollection cTFontCollection, FontScript fontScript) {
        if (fontScript == FontScript.UNKNOWN || cTFontCollection == null) {
            return null;
        }
        if (fontScript == FontScript.ENGLISH) {
            CTTextFont latin = cTFontCollection.getLatin();
            if (latin == null) {
                return null;
            }
            return latin.getTypeface();
        }
        for (CTSupplementalFont cTSupplementalFont : cTFontCollection.getFontList()) {
            if (fontScript.script.equalsIgnoreCase(cTSupplementalFont.getScript())) {
                return cTSupplementalFont.getTypeface();
            }
        }
        CTTextFont latin2 = cTFontCollection.getLatin();
        if (latin2 == null) {
            return null;
        }
        return latin2.getTypeface();
    }

    public static String getTypefaceByLang(CTFontCollection cTFontCollection, String str) {
        if (cTFontCollection == null) {
            return null;
        }
        return getTypefaceByFontScript(cTFontCollection, getFontScript(str));
    }
}
