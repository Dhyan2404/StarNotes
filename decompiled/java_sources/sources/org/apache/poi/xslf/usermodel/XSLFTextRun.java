package org.apache.poi.xslf.usermodel;

import java.awt.Color;
import java.util.function.Consumer;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.common.LangGroup;
import org.apache.poi.common.usermodel.fonts.FontCharset;
import org.apache.poi.common.usermodel.fonts.FontFamily;
import org.apache.poi.common.usermodel.fonts.FontGroup;
import org.apache.poi.common.usermodel.fonts.FontInfo;
import org.apache.poi.common.usermodel.fonts.FontPitch;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException;
import org.apache.poi.sl.draw.DrawPaint;
import org.apache.poi.sl.usermodel.HighlightColorSupport;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.sl.usermodel.TextRun;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Units;
import org.apache.poi.xslf.model.CharacterPropertyFetcher;
import org.apache.poi.xslf.usermodel.XSLFPropertiesDelegate;
import org.apache.poi.xslf.usermodel.XSLFShape;
import org.apache.poi.xslf.usermodel.XSLFTextRun;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.values.XmlAnyTypeImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection;
import org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink;
import org.openxmlformats.schemas.drawingml.x2006.main.CTRegularTextRun;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSRgbColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeStyle;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSolidColorFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextBodyProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextField;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextFont;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextLineBreak;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextNormalAutofit;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextStrikeType;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextUnderlineType;

/* loaded from: classes13.dex */
public class XSLFTextRun implements TextRun, HighlightColorSupport {
    private static final Logger LOG = LogManager.getLogger((Class<?>) XSLFTextRun.class);

    /* renamed from: _p */
    private final XSLFTextParagraph f111806_p;

    /* renamed from: _r */
    private final XmlObject f111807_r;

    /* renamed from: org.apache.poi.xslf.usermodel.XSLFTextRun$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199161 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup;

        static {
            int[] iArr = new int[FontGroup.values().length];
            $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup = iArr;
            try {
                iArr[FontGroup.LATIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[FontGroup.EAST_ASIAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[FontGroup.COMPLEX_SCRIPT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[FontGroup.SYMBOL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public final class XSLFFontInfo implements FontInfo {
        private final FontGroup fontGroup;

        public /* synthetic */ XSLFFontInfo(XSLFTextRun xSLFTextRun, FontGroup fontGroup, C199161 c199161) {
            this(fontGroup);
        }

        /* JADX WARN: Type inference failed for: r5v4, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
        private CTTextFont getCTTextFont(CTTextCharacterProperties cTTextCharacterProperties, boolean z) {
            CTTextFont ea;
            CTTextFont cs;
            if (cTTextCharacterProperties == null) {
                return null;
            }
            int i = C199161.$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[this.fontGroup.ordinal()];
            if (i == 2) {
                ea = cTTextCharacterProperties.getEa();
                if (ea == null && z) {
                    ea = cTTextCharacterProperties.addNewEa();
                }
            } else if (i == 3) {
                ea = cTTextCharacterProperties.getCs();
                if (ea == null && z) {
                    ea = cTTextCharacterProperties.addNewCs();
                }
            } else if (i != 4) {
                ea = cTTextCharacterProperties.getLatin();
                if (ea == null && z) {
                    ea = cTTextCharacterProperties.addNewLatin();
                }
            } else {
                ea = cTTextCharacterProperties.getSym();
                if (ea == null && z) {
                    ea = cTTextCharacterProperties.addNewSym();
                }
            }
            if (ea == null) {
                return null;
            }
            String typeface = ea.getTypeface();
            if (typeface == null) {
                typeface = "";
            }
            if (typeface.startsWith("+mj-") || typeface.startsWith("+mn-")) {
                XSLFTheme theme = XSLFTextRun.this.f111806_p.getParentShape().getSheet().getTheme();
                CTFontCollection majorFontCollection = typeface.startsWith("+mj-") ? theme.getMajorFontCollection() : theme.getMinorFontCollection();
                String substring = typeface.substring(4);
                if ("ea".equals(substring)) {
                    CTTextFont ea2 = majorFontCollection.getEa();
                    if (ea2 == null || ea2.getTypeface() == null || ea2.getTypeface().length() == 0) {
                        cs = LangGroup.getCTTextFontByFontScript(majorFontCollection, LangGroup.FontScript.HANS);
                    } else {
                        ea = ea2;
                        if (ea != null || ea.getTypeface() == null || "".equals(ea.getTypeface())) {
                            return null;
                        }
                    }
                } else {
                    cs = "cs".equals(substring) ? majorFontCollection.getCs() : majorFontCollection.getLatin();
                }
                ea = cs;
                if (ea != null) {
                }
                return null;
            }
            return ea;
        }

        private CTTextFont getXmlObject(boolean z) {
            return z ? getCTTextFont(XSLFTextRun.this.getRPr(true), true) : (CTTextFont) XSLFTextRun.this.fetchCharacterProperty(new CharacterPropertyFetcher.CharPropFetcher() { // from class: org.apache.poi.xslf.usermodel.d
                @Override // org.apache.poi.xslf.model.CharacterPropertyFetcher.CharPropFetcher
                public final void fetch(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
                    XSLFTextRun.XSLFFontInfo.this.lambda$getXmlObject$0(cTTextCharacterProperties, consumer);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$getXmlObject$0(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
            CTTextFont cTTextFont = getCTTextFont(cTTextCharacterProperties, false);
            if (cTTextFont != null) {
                consumer.accept(cTTextFont);
            }
        }

        public void copyFrom(FontInfo fontInfo) {
            CTTextFont xmlObject = getXmlObject(true);
            if (xmlObject == null) {
                return;
            }
            setTypeface(fontInfo.getTypeface());
            setCharset(fontInfo.getCharset());
            FontPitch pitch = fontInfo.getPitch();
            FontFamily family = fontInfo.getFamily();
            if (pitch != null || family != null) {
                setPitch(pitch);
                setFamily(family);
            } else if (xmlObject.isSetPitchFamily()) {
                xmlObject.unsetPitchFamily();
            }
        }

        @Override // org.apache.poi.common.usermodel.fonts.FontInfo
        public FontCharset getCharset() {
            CTTextFont xmlObject = getXmlObject(false);
            if (xmlObject == null || !xmlObject.isSetCharset()) {
                return null;
            }
            return FontCharset.valueOf(xmlObject.getCharset() & 255);
        }

        @Override // org.apache.poi.common.usermodel.fonts.FontInfo
        public FontFamily getFamily() {
            CTTextFont xmlObject = getXmlObject(false);
            if (xmlObject == null || !xmlObject.isSetPitchFamily()) {
                return null;
            }
            return FontFamily.valueOfPitchFamily(xmlObject.getPitchFamily());
        }

        @Override // org.apache.poi.common.usermodel.fonts.FontInfo
        public FontPitch getPitch() {
            CTTextFont xmlObject = getXmlObject(false);
            if (xmlObject == null || !xmlObject.isSetPitchFamily()) {
                return null;
            }
            return FontPitch.valueOfPitchFamily(xmlObject.getPitchFamily());
        }

        @Override // org.apache.poi.common.usermodel.fonts.FontInfo
        public String getTypeface() {
            CTTextFont xmlObject = getXmlObject(false);
            if (xmlObject != null) {
                return xmlObject.getTypeface();
            }
            return null;
        }

        @Override // org.apache.poi.common.usermodel.fonts.FontInfo
        public void setCharset(FontCharset fontCharset) {
            CTTextFont xmlObject = getXmlObject(true);
            if (xmlObject == null) {
                return;
            }
            if (fontCharset != null) {
                xmlObject.setCharset((byte) fontCharset.getNativeId());
            } else if (xmlObject.isSetCharset()) {
                xmlObject.unsetCharset();
            }
        }

        @Override // org.apache.poi.common.usermodel.fonts.FontInfo
        public void setFamily(FontFamily fontFamily) {
            CTTextFont xmlObject = getXmlObject(true);
            if (xmlObject != null) {
                if (fontFamily != null || xmlObject.isSetPitchFamily()) {
                    FontPitch valueOfPitchFamily = xmlObject.isSetPitchFamily() ? FontPitch.valueOfPitchFamily(xmlObject.getPitchFamily()) : FontPitch.VARIABLE;
                    if (fontFamily == null) {
                        fontFamily = FontFamily.FF_SWISS;
                    }
                    xmlObject.setPitchFamily(FontPitch.getNativeId(valueOfPitchFamily, fontFamily));
                }
            }
        }

        @Override // org.apache.poi.common.usermodel.fonts.FontInfo
        public void setPitch(FontPitch fontPitch) {
            CTTextFont xmlObject = getXmlObject(true);
            if (xmlObject != null) {
                if (fontPitch != null || xmlObject.isSetPitchFamily()) {
                    FontFamily valueOfPitchFamily = xmlObject.isSetPitchFamily() ? FontFamily.valueOfPitchFamily(xmlObject.getPitchFamily()) : FontFamily.FF_SWISS;
                    if (fontPitch == null) {
                        fontPitch = FontPitch.VARIABLE;
                    }
                    xmlObject.setPitchFamily(FontPitch.getNativeId(fontPitch, valueOfPitchFamily));
                }
            }
        }

        @Override // org.apache.poi.common.usermodel.fonts.FontInfo
        public void setTypeface(String str) {
            if (str != null) {
                CTTextFont xmlObject = getXmlObject(true);
                if (xmlObject != null) {
                    xmlObject.setTypeface(str);
                    return;
                }
                return;
            }
            CTTextCharacterProperties rPr = XSLFTextRun.this.getRPr(false);
            if (rPr == null) {
                return;
            }
            int i = C199161.$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[FontGroup.getFontGroupFirst(XSLFTextRun.this.getRawText()).ordinal()];
            if (i == 2) {
                if (rPr.isSetEa()) {
                    rPr.unsetEa();
                }
            } else if (i == 3) {
                if (rPr.isSetCs()) {
                    rPr.unsetCs();
                }
            } else if (i != 4) {
                if (rPr.isSetLatin()) {
                    rPr.unsetLatin();
                }
            } else if (rPr.isSetSym()) {
                rPr.unsetSym();
            }
        }

        private XSLFFontInfo(FontGroup fontGroup) {
            this.fontGroup = fontGroup == null ? FontGroup.getFontGroupFirst(XSLFTextRun.this.getRawText()) : fontGroup;
        }
    }

    public XSLFTextRun(XmlObject xmlObject, XSLFTextParagraph xSLFTextParagraph) {
        this.f111807_r = xmlObject;
        this.f111806_p = xSLFTextParagraph;
        if ((xmlObject instanceof CTRegularTextRun) || (xmlObject instanceof CTTextLineBreak) || (xmlObject instanceof CTTextField) || (xmlObject instanceof XmlAnyTypeImpl)) {
            return;
        }
        throw new OpenXML4JRuntimeException("unsupported text run of type " + xmlObject.getClass());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.poi.xslf.usermodel.XSLFShape, org.apache.poi.xslf.usermodel.XSLFTextShape] */
    public <T> T fetchCharacterProperty(CharacterPropertyFetcher.CharPropFetcher<T> charPropFetcher) {
        return (T) new CharacterPropertyFetcher(this, charPropFetcher).fetchProperty(this.f111806_p.getParentShape());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r7v1, types: [org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.ooxml.POIXMLDocumentPart] */
    public static void fetchFontColor(CTTextCharacterProperties cTTextCharacterProperties, Consumer<PaintStyle> consumer, XSLFShape xSLFShape, boolean z) {
        if (cTTextCharacterProperties == null) {
            return;
        }
        CTShapeStyle spStyle = xSLFShape.getSpStyle();
        CTSchemeColor schemeClr = (spStyle == null || spStyle.getFontRef() == null) ? null : spStyle.getFontRef().getSchemeClr();
        XSLFPropertiesDelegate.XSLFFillProperties fillDelegate = XSLFPropertiesDelegate.getFillDelegate(cTTextCharacterProperties);
        ?? sheet = xSLFShape.getSheet();
        PaintStyle selectPaint = xSLFShape.selectPaint(fillDelegate, schemeClr, sheet.getPackagePart(), sheet.getTheme(), z);
        if (selectPaint != null) {
            consumer.accept(selectPaint);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void fetchHighlightColor(CTTextCharacterProperties cTTextCharacterProperties, Consumer<PaintStyle> consumer, XSLFShape xSLFShape, boolean z) {
        CTColor highlight;
        if (cTTextCharacterProperties == null || (highlight = cTTextCharacterProperties.getHighlight()) == null) {
            return;
        }
        byte[] val = highlight.getSrgbClr().getVal();
        consumer.accept(DrawPaint.createSolidPaint(new Color(val[0] & 255, val[1] & 255, val[2] & 255)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getCharacterSpacing$3(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
        if (cTTextCharacterProperties.isSetSpc()) {
            consumer.accept(Double.valueOf(Units.toPoints(POIXMLUnits.parseLength(cTTextCharacterProperties.xgetSpc()))));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getFontSize$2(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
        if (cTTextCharacterProperties.isSetSz()) {
            consumer.accept(Double.valueOf(cTTextCharacterProperties.getSz() * 0.01d));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getTextCap$7(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
        if (cTTextCharacterProperties.isSetCap()) {
            consumer.accept(TextRun.TextCap.values()[cTTextCharacterProperties.getCap().intValue() - 1]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$isBold$8(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
        if (cTTextCharacterProperties.isSetB()) {
            consumer.accept(Boolean.valueOf(cTTextCharacterProperties.getB()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$isItalic$9(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
        if (cTTextCharacterProperties.isSetI()) {
            consumer.accept(Boolean.valueOf(cTTextCharacterProperties.getI()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$isStrikethrough$4(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
        if (cTTextCharacterProperties.isSetStrike()) {
            consumer.accept(Boolean.valueOf(cTTextCharacterProperties.getStrike() != STTextStrikeType.NO_STRIKE));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$isSubscript$6(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
        if (cTTextCharacterProperties.isSetBaseline()) {
            consumer.accept(Boolean.valueOf(POIXMLUnits.parsePercent(cTTextCharacterProperties.xgetBaseline()) < 0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$isSuperscript$5(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
        if (cTTextCharacterProperties.isSetBaseline()) {
            consumer.accept(Boolean.valueOf(POIXMLUnits.parsePercent(cTTextCharacterProperties.xgetBaseline()) > 0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$isUnderlined$10(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
        if (cTTextCharacterProperties.isSetU()) {
            consumer.accept(Boolean.valueOf(cTTextCharacterProperties.getU() != STTextUnderlineType.NONE));
        }
    }

    public void copy(XSLFTextRun xSLFTextRun) {
        String fontFamily = xSLFTextRun.getFontFamily();
        if (fontFamily != null && !fontFamily.equals(getFontFamily())) {
            setFontFamily(fontFamily);
        }
        PaintStyle fontColor = xSLFTextRun.getFontColor();
        if (fontColor != null && !fontColor.equals(getFontColor())) {
            setFontColor(fontColor);
        }
        Double fontSize = xSLFTextRun.getFontSize();
        if (fontSize == null) {
            if (getFontSize() != null) {
                setFontSize(null);
            }
        } else if (!fontSize.equals(getFontSize())) {
            setFontSize(fontSize);
        }
        boolean isBold = xSLFTextRun.isBold();
        if (isBold != isBold()) {
            setBold(isBold);
        }
        boolean isItalic = xSLFTextRun.isItalic();
        if (isItalic != isItalic()) {
            setItalic(isItalic);
        }
        boolean isUnderlined = xSLFTextRun.isUnderlined();
        if (isUnderlined != isUnderlined()) {
            setUnderlined(isUnderlined);
        }
        boolean isStrikethrough = xSLFTextRun.isStrikethrough();
        if (isStrikethrough != isStrikethrough()) {
            setStrikethrough(isStrikethrough);
        }
        XSLFHyperlink hyperlink = xSLFTextRun.getHyperlink();
        if (hyperlink != null) {
            getHyperlink().copy(hyperlink);
        }
    }

    public double getCharacterSpacing() {
        Double d = (Double) fetchCharacterProperty(new CharacterPropertyFetcher.CharPropFetcher() { // from class: com.sunia.HTREnginev2.bqo
            @Override // org.apache.poi.xslf.model.CharacterPropertyFetcher.CharPropFetcher
            public final void fetch(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
                XSLFTextRun.lambda$getCharacterSpacing$3(cTTextCharacterProperties, consumer);
            }
        });
        if (d == null) {
            return 0.0d;
        }
        return d.doubleValue();
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public TextRun.FieldType getFieldType() {
        XmlObject xmlObject = this.f111807_r;
        if ((xmlObject instanceof CTTextField) && "slidenum".equals(((CTTextField) xmlObject).getType())) {
            return TextRun.FieldType.SLIDE_NUMBER;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.poi.xslf.usermodel.XSLFShape, org.apache.poi.xslf.usermodel.XSLFTextShape] */
    @Override // org.apache.poi.sl.usermodel.TextRun
    public PaintStyle getFontColor() {
        final ?? parentShape = getParagraph().getParentShape();
        final boolean z = parentShape.getPlaceholder() != null;
        return (PaintStyle) fetchCharacterProperty(new CharacterPropertyFetcher.CharPropFetcher() { // from class: com.sunia.HTREnginev2.eqo
            @Override // org.apache.poi.xslf.model.CharacterPropertyFetcher.CharPropFetcher
            public final void fetch(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
                XSLFTextRun.fetchFontColor(cTTextCharacterProperties, consumer, XSLFShape.this, z);
            }
        });
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public String getFontFamily() {
        return new XSLFFontInfo(this, FontGroup.getFontGroupFirst(getRawText()), null).getTypeface();
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public FontInfo getFontInfo(FontGroup fontGroup) {
        XSLFFontInfo xSLFFontInfo = new XSLFFontInfo(this, fontGroup, null);
        if (xSLFFontInfo.getTypeface() != null) {
            return xSLFFontInfo;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.poi.xslf.usermodel.XSLFTextShape] */
    @Override // org.apache.poi.sl.usermodel.TextRun
    public Double getFontSize() {
        CTTextBodyProperties textBodyPr;
        CTTextNormalAutofit normAutofit;
        ?? parentShape = getParagraph().getParentShape();
        double parsePercent = (parentShape == 0 || (textBodyPr = parentShape.getTextBodyPr()) == null || (normAutofit = textBodyPr.getNormAutofit()) == null || !normAutofit.isSetFontScale()) ? 1.0d : POIXMLUnits.parsePercent(normAutofit.xgetFontScale()) / 100000.0d;
        Double d = (Double) fetchCharacterProperty(new CharacterPropertyFetcher.CharPropFetcher() { // from class: com.sunia.HTREnginev2.cqo
            @Override // org.apache.poi.xslf.model.CharacterPropertyFetcher.CharPropFetcher
            public final void fetch(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
                XSLFTextRun.lambda$getFontSize$2(cTTextCharacterProperties, consumer);
            }
        });
        if (d == null) {
            return null;
        }
        return Double.valueOf(d.doubleValue() * parsePercent);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.poi.xslf.usermodel.XSLFShape, org.apache.poi.xslf.usermodel.XSLFTextShape] */
    @Override // org.apache.poi.sl.usermodel.HighlightColorSupport
    public PaintStyle getHighlightColor() {
        final ?? parentShape = getParagraph().getParentShape();
        final boolean z = parentShape.getPlaceholder() != null;
        return (PaintStyle) fetchCharacterProperty(new CharacterPropertyFetcher.CharPropFetcher() { // from class: com.sunia.HTREnginev2.fqo
            @Override // org.apache.poi.xslf.model.CharacterPropertyFetcher.CharPropFetcher
            public final void fetch(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
                XSLFTextRun.fetchHighlightColor(cTTextCharacterProperties, consumer, XSLFShape.this, z);
            }
        });
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public byte getPitchAndFamily() {
        XSLFFontInfo xSLFFontInfo = new XSLFFontInfo(this, FontGroup.getFontGroupFirst(getRawText()), null);
        FontPitch pitch = xSLFFontInfo.getPitch();
        if (pitch == null) {
            pitch = FontPitch.VARIABLE;
        }
        FontFamily family = xSLFFontInfo.getFamily();
        if (family == null) {
            family = FontFamily.FF_SWISS;
        }
        return FontPitch.getNativeId(pitch, family);
    }

    @Internal
    public CTTextCharacterProperties getRPr(boolean z) {
        XmlObject xmlObject = this.f111807_r;
        if (xmlObject instanceof CTTextField) {
            CTTextField cTTextField = (CTTextField) xmlObject;
            if (cTTextField.isSetRPr()) {
                return cTTextField.getRPr();
            }
            if (z) {
                return cTTextField.addNewRPr();
            }
        } else if (xmlObject instanceof CTTextLineBreak) {
            CTTextLineBreak cTTextLineBreak = (CTTextLineBreak) xmlObject;
            if (cTTextLineBreak.isSetRPr()) {
                return cTTextLineBreak.getRPr();
            }
            if (z) {
                return cTTextLineBreak.addNewRPr();
            }
        } else if (xmlObject instanceof CTRegularTextRun) {
            CTRegularTextRun cTRegularTextRun = (CTRegularTextRun) xmlObject;
            if (cTRegularTextRun.isSetRPr()) {
                return cTRegularTextRun.getRPr();
            }
            if (z) {
                return cTRegularTextRun.addNewRPr();
            }
        }
        if (this.f111806_p.getXmlObject().isSetPPr() && this.f111806_p.getXmlObject().getPPr().isSetDefRPr()) {
            return this.f111806_p.getXmlObject().getPPr().getDefRPr();
        }
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public String getRawText() {
        XmlObject xmlObject = this.f111807_r;
        return xmlObject instanceof CTTextField ? ((CTTextField) xmlObject).getT() : xmlObject instanceof CTTextLineBreak ? "\n" : ((CTRegularTextRun) xmlObject).getT();
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public TextRun.TextCap getTextCap() {
        TextRun.TextCap textCap = (TextRun.TextCap) fetchCharacterProperty(new CharacterPropertyFetcher.CharPropFetcher() { // from class: com.sunia.HTREnginev2.dqo
            @Override // org.apache.poi.xslf.model.CharacterPropertyFetcher.CharPropFetcher
            public final void fetch(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
                XSLFTextRun.lambda$getTextCap$7(cTTextCharacterProperties, consumer);
            }
        });
        return textCap == null ? TextRun.TextCap.NONE : textCap;
    }

    @Internal
    public XmlObject getXmlObject() {
        return this.f111807_r;
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public boolean isBold() {
        Boolean bool = (Boolean) fetchCharacterProperty(new CharacterPropertyFetcher.CharPropFetcher() { // from class: com.sunia.HTREnginev2.hqo
            @Override // org.apache.poi.xslf.model.CharacterPropertyFetcher.CharPropFetcher
            public final void fetch(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
                XSLFTextRun.lambda$isBold$8(cTTextCharacterProperties, consumer);
            }
        });
        return bool != null && bool.booleanValue();
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public boolean isItalic() {
        Boolean bool = (Boolean) fetchCharacterProperty(new CharacterPropertyFetcher.CharPropFetcher() { // from class: com.sunia.HTREnginev2.ypo
            @Override // org.apache.poi.xslf.model.CharacterPropertyFetcher.CharPropFetcher
            public final void fetch(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
                XSLFTextRun.lambda$isItalic$9(cTTextCharacterProperties, consumer);
            }
        });
        return bool != null && bool.booleanValue();
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public boolean isStrikethrough() {
        Boolean bool = (Boolean) fetchCharacterProperty(new CharacterPropertyFetcher.CharPropFetcher() { // from class: com.sunia.HTREnginev2.zpo
            @Override // org.apache.poi.xslf.model.CharacterPropertyFetcher.CharPropFetcher
            public final void fetch(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
                XSLFTextRun.lambda$isStrikethrough$4(cTTextCharacterProperties, consumer);
            }
        });
        return bool != null && bool.booleanValue();
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public boolean isSubscript() {
        Boolean bool = (Boolean) fetchCharacterProperty(new CharacterPropertyFetcher.CharPropFetcher() { // from class: com.sunia.HTREnginev2.iqo
            @Override // org.apache.poi.xslf.model.CharacterPropertyFetcher.CharPropFetcher
            public final void fetch(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
                XSLFTextRun.lambda$isSubscript$6(cTTextCharacterProperties, consumer);
            }
        });
        return bool != null && bool.booleanValue();
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public boolean isSuperscript() {
        Boolean bool = (Boolean) fetchCharacterProperty(new CharacterPropertyFetcher.CharPropFetcher() { // from class: com.sunia.HTREnginev2.aqo
            @Override // org.apache.poi.xslf.model.CharacterPropertyFetcher.CharPropFetcher
            public final void fetch(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
                XSLFTextRun.lambda$isSuperscript$5(cTTextCharacterProperties, consumer);
            }
        });
        return bool != null && bool.booleanValue();
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public boolean isUnderlined() {
        Boolean bool = (Boolean) fetchCharacterProperty(new CharacterPropertyFetcher.CharPropFetcher() { // from class: com.sunia.HTREnginev2.gqo
            @Override // org.apache.poi.xslf.model.CharacterPropertyFetcher.CharPropFetcher
            public final void fetch(CTTextCharacterProperties cTTextCharacterProperties, Consumer consumer) {
                XSLFTextRun.lambda$isUnderlined$10(cTTextCharacterProperties, consumer);
            }
        });
        return bool != null && bool.booleanValue();
    }

    public void setBaselineOffset(double d) {
        getRPr(true).setBaseline(Integer.valueOf(((int) d) * 1000));
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setBold(boolean z) {
        getRPr(true).setB(z);
    }

    public void setCharacterSpacing(double d) {
        CTTextCharacterProperties rPr = getRPr(true);
        if (d != 0.0d) {
            rPr.setSpc(Integer.valueOf((int) (d * 100.0d)));
        } else if (rPr.isSetSpc()) {
            rPr.unsetSpc();
        }
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setFontColor(Color color) {
        setFontColor(DrawPaint.createSolidPaint(color));
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setFontFamily(String str) {
        new XSLFFontInfo(this, FontGroup.getFontGroupFirst(getRawText()), null).setTypeface(str);
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setFontInfo(FontInfo fontInfo, FontGroup fontGroup) {
        new XSLFFontInfo(this, fontGroup, null).copyFrom(fontInfo);
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setFontSize(Double d) {
        CTTextCharacterProperties rPr = getRPr(true);
        if (d == null) {
            if (rPr.isSetSz()) {
                rPr.unsetSz();
            }
        } else {
            if (d.doubleValue() >= 1.0d) {
                rPr.setSz((int) (d.doubleValue() * 100.0d));
                return;
            }
            throw new IllegalArgumentException("Minimum font size is 1pt but was " + d);
        }
    }

    @Override // org.apache.poi.sl.usermodel.HighlightColorSupport
    public void setHighlightColor(Color color) {
        setHighlightColor(DrawPaint.createSolidPaint(color));
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setItalic(boolean z) {
        getRPr(true).setI(z);
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setStrikethrough(boolean z) {
        getRPr(true).setStrike(z ? STTextStrikeType.SNG_STRIKE : STTextStrikeType.NO_STRIKE);
    }

    public void setSubscript(boolean z) {
        setBaselineOffset(z ? -25.0d : 0.0d);
    }

    public void setSuperscript(boolean z) {
        setBaselineOffset(z ? 30.0d : 0.0d);
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setText(String str) {
        XmlObject xmlObject = this.f111807_r;
        if (xmlObject instanceof CTTextField) {
            ((CTTextField) xmlObject).setT(str);
        } else {
            if (xmlObject instanceof CTTextLineBreak) {
                return;
            }
            ((CTRegularTextRun) xmlObject).setT(str);
        }
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setUnderlined(boolean z) {
        getRPr(true).setU(z ? STTextUnderlineType.SNG : STTextUnderlineType.NONE);
    }

    public String toString() {
        return IteratorUtils.f104923a + getClass() + IteratorUtils.f104924b + getRawText();
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
    @Override // org.apache.poi.sl.usermodel.TextRun
    public XSLFHyperlink createHyperlink() {
        XSLFHyperlink hyperlink = getHyperlink();
        return hyperlink != null ? hyperlink : new XSLFHyperlink(getRPr(true).addNewHlinkClick(), this.f111806_p.getParentShape().getSheet());
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
    @Override // org.apache.poi.sl.usermodel.TextRun
    public XSLFHyperlink getHyperlink() {
        CTHyperlink hlinkClick;
        CTTextCharacterProperties rPr = getRPr(false);
        if (rPr == null || (hlinkClick = rPr.getHlinkClick()) == null) {
            return null;
        }
        return new XSLFHyperlink(hlinkClick, this.f111806_p.getParentShape().getSheet());
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public XSLFTextParagraph getParagraph() {
        return this.f111806_p;
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setFontColor(PaintStyle paintStyle) {
        if (!(paintStyle instanceof PaintStyle.SolidPaint)) {
            LOG.atWarn().log("Currently only SolidPaint is supported!");
            return;
        }
        Color applyColorTransform = DrawPaint.applyColorTransform(((PaintStyle.SolidPaint) paintStyle).getSolidColor());
        CTTextCharacterProperties rPr = getRPr(true);
        CTSolidColorFillProperties solidFill = rPr.isSetSolidFill() ? rPr.getSolidFill() : rPr.addNewSolidFill();
        ?? sheet = getParagraph().getParentShape().getSheet();
        new XSLFColor(solidFill, sheet.getTheme(), solidFill.getSchemeClr(), sheet).setColor(applyColorTransform);
    }

    @Override // org.apache.poi.sl.usermodel.HighlightColorSupport
    public void setHighlightColor(PaintStyle paintStyle) {
        if (paintStyle == null) {
            CTTextCharacterProperties rPr = getRPr(true);
            if (rPr.isSetHighlight()) {
                rPr.unsetHighlight();
                return;
            }
            return;
        }
        if (paintStyle instanceof PaintStyle.SolidPaint) {
            Color applyColorTransform = DrawPaint.applyColorTransform(((PaintStyle.SolidPaint) paintStyle).getSolidColor());
            CTTextCharacterProperties rPr2 = getRPr(true);
            CTColor highlight = rPr2.isSetHighlight() ? rPr2.getHighlight() : rPr2.addNewHighlight();
            CTSRgbColor newInstance = CTSRgbColor.Factory.newInstance();
            newInstance.setVal(new byte[]{(byte) applyColorTransform.getRed(), (byte) applyColorTransform.getGreen(), (byte) applyColorTransform.getBlue()});
            highlight.setSrgbClr(newInstance);
            return;
        }
        throw new IllegalArgumentException("Currently only SolidPaint is supported!");
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public String getFontFamily(FontGroup fontGroup) {
        return new XSLFFontInfo(this, fontGroup, null).getTypeface();
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setFontFamily(String str, FontGroup fontGroup) {
        new XSLFFontInfo(this, fontGroup, null).setTypeface(str);
    }
}
