package org.apache.poi.hslf.usermodel;

import java.awt.Color;
import java.util.function.Function;
import java.util.stream.Stream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.common.usermodel.fonts.FontGroup;
import org.apache.poi.common.usermodel.fonts.FontInfo;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.model.textproperties.BitMaskTextProp;
import org.apache.poi.hslf.model.textproperties.CharFlagsTextProp;
import org.apache.poi.hslf.model.textproperties.TextProp;
import org.apache.poi.hslf.model.textproperties.TextPropCollection;
import org.apache.poi.hslf.usermodel.HSLFSlideShow;
import org.apache.poi.hslf.usermodel.HSLFTextRun;
import org.apache.poi.sl.draw.DrawPaint;
import org.apache.poi.sl.usermodel.MasterSheet;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.sl.usermodel.Placeholder;
import org.apache.poi.sl.usermodel.Shape;
import org.apache.poi.sl.usermodel.TextParagraph;
import org.apache.poi.sl.usermodel.TextRun;
import org.apache.poi.sl.usermodel.TextShape;

/* loaded from: classes12.dex */
public final class HSLFTextRun implements TextRun {
    private static final Logger LOG = LogManager.getLogger((Class<?>) HSLFTextRun.class);
    private HSLFFontInfo[] cachedFontInfo;
    private HSLFHyperlink link;
    private HSLFTextParagraph parentParagraph;
    private String _runText = "";
    private TextPropCollection characterStyle = new TextPropCollection(1, TextPropCollection.TextPropType.character);

    /* renamed from: org.apache.poi.hslf.usermodel.HSLFTextRun$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194761 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$Placeholder;

        static {
            int[] iArr = new int[Placeholder.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$Placeholder = iArr;
            try {
                iArr[Placeholder.SLIDE_NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$Placeholder[Placeholder.DATETIME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[FontGroup.values().length];
            $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup = iArr2;
            try {
                iArr2[FontGroup.LATIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[FontGroup.COMPLEX_SCRIPT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[FontGroup.EAST_ASIAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[FontGroup.SYMBOL.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public HSLFTextRun(HSLFTextParagraph hSLFTextParagraph) {
        this.parentParagraph = hSLFTextParagraph;
    }

    private <T extends TextProp> T getMasterProp() {
        int runType = this.parentParagraph.getRunType();
        HSLFSheet sheet = this.parentParagraph.getSheet();
        if (sheet == null) {
            LOG.atError().log("Sheet is not available");
            return null;
        }
        HSLFMasterSheet masterSheet = sheet.getMasterSheet();
        if (masterSheet == null) {
            LOG.atWarn().log("MasterSheet is not available");
            return null;
        }
        TextPropCollection propCollection = masterSheet.getPropCollection(runType, this.parentParagraph.getIndentLevel(), CharFlagsTextProp.NAME, true);
        if (propCollection == null) {
            return null;
        }
        return (T) propCollection.findByName(CharFlagsTextProp.NAME);
    }

    private boolean isCharFlagsTextPropVal(int i) {
        return getFlag(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Stream lambda$getFieldType$0(TextShape textShape) {
        return textShape.getTextParagraphs().stream();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Stream lambda$getFieldType$1(TextParagraph textParagraph) {
        return textParagraph.getTextRuns().stream();
    }

    private FontGroup safeFontGroup(FontGroup fontGroup) {
        return fontGroup != null ? fontGroup : FontGroup.getFontGroupFirst(getRawText());
    }

    private void setCharFlagsTextPropVal(int i, boolean z) {
        if (getFlag(i) != z) {
            setFlag(i, z);
            this.parentParagraph.setDirty();
        }
    }

    private void setFlag(int i, boolean z) {
        ((BitMaskTextProp) this.characterStyle.addWithName(CharFlagsTextProp.NAME)).setSubValue(z, i);
    }

    public TextPropCollection getCharacterStyle() {
        return this.characterStyle;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [org.apache.poi.hslf.usermodel.HSLFShape, org.apache.poi.hslf.usermodel.HSLFSimpleShape, org.apache.poi.hslf.usermodel.HSLFTextShape] */
    @Override // org.apache.poi.sl.usermodel.TextRun
    public TextRun.FieldType getFieldType() {
        ?? parentShape = getTextParagraph().getParentShape();
        Placeholder placeholder = parentShape.getPlaceholder();
        if (placeholder != null) {
            int i = C194761.$SwitchMap$org$apache$poi$sl$usermodel$Placeholder[placeholder.ordinal()];
            if (i == 1) {
                return TextRun.FieldType.SLIDE_NUMBER;
            }
            if (i == 2) {
                return TextRun.FieldType.DATE_TIME;
            }
        }
        Shape metroShape = parentShape.getSheet() instanceof MasterSheet ? parentShape.getMetroShape() : null;
        if (metroShape instanceof TextShape) {
            return (TextRun.FieldType) Stream.of((TextShape) metroShape).flatMap(new Function() { // from class: com.sunia.HTREnginev2.e8h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Stream lambda$getFieldType$0;
                    lambda$getFieldType$0 = HSLFTextRun.lambda$getFieldType$0((TextShape) obj);
                    return lambda$getFieldType$0;
                }
            }).flatMap(new Function() { // from class: com.sunia.HTREnginev2.f8h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Stream lambda$getFieldType$1;
                    lambda$getFieldType$1 = HSLFTextRun.lambda$getFieldType$1((TextParagraph) obj);
                    return lambda$getFieldType$1;
                }
            }).findFirst().map(new Function() { // from class: com.sunia.HTREnginev2.g8h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((TextRun) obj).getFieldType();
                }
            }).orElse(null);
        }
        return null;
    }

    public boolean getFlag(int i) {
        TextPropCollection textPropCollection = this.characterStyle;
        BitMaskTextProp bitMaskTextProp = textPropCollection == null ? null : (BitMaskTextProp) textPropCollection.findByName(CharFlagsTextProp.NAME);
        if (bitMaskTextProp == null || !bitMaskTextProp.getSubPropMatches()[i]) {
            bitMaskTextProp = (BitMaskTextProp) getMasterProp();
        }
        return bitMaskTextProp != null && bitMaskTextProp.getSubValue(i);
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public String getFontFamily() {
        return getFontFamily(null);
    }

    public int getFontIndex() {
        TextProp propVal = getTextParagraph().getPropVal(this.characterStyle, "font.index");
        if (propVal == null) {
            return -1;
        }
        return propVal.getValue();
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public Double getFontSize() {
        if (getTextParagraph().getPropVal(this.characterStyle, "font.size") == null) {
            return null;
        }
        return Double.valueOf(r2.getValue());
    }

    public int getLength() {
        return this._runText.length();
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public byte getPitchAndFamily() {
        return (byte) 0;
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public String getRawText() {
        return this._runText;
    }

    public int getSuperscript() {
        TextProp propVal = getTextParagraph().getPropVal(this.characterStyle, "superscript");
        if (propVal == null) {
            return 0;
        }
        return propVal.getValue();
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public TextRun.TextCap getTextCap() {
        return TextRun.TextCap.NONE;
    }

    public HSLFTextParagraph getTextParagraph() {
        return this.parentParagraph;
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public boolean isBold() {
        return isCharFlagsTextPropVal(0);
    }

    public boolean isEmbossed() {
        return isCharFlagsTextPropVal(9);
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public boolean isItalic() {
        return isCharFlagsTextPropVal(1);
    }

    public boolean isShadowed() {
        return isCharFlagsTextPropVal(4);
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public boolean isStrikethrough() {
        return isCharFlagsTextPropVal(8);
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public boolean isSubscript() {
        return getSuperscript() < 0;
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public boolean isSuperscript() {
        return getSuperscript() > 0;
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public boolean isUnderlined() {
        return isCharFlagsTextPropVal(2);
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setBold(boolean z) {
        setCharFlagsTextPropVal(0, z);
    }

    public void setCharTextPropVal(String str, Integer num) {
        getTextParagraph().setPropVal(this.characterStyle, str, num);
    }

    public void setCharacterStyle(TextPropCollection textPropCollection) {
        TextPropCollection copy = textPropCollection.copy();
        this.characterStyle = copy;
        copy.updateTextSize(this._runText.length());
    }

    public void setEmbossed(boolean z) {
        setCharFlagsTextPropVal(9, z);
    }

    public void setFontColor(int i) {
        setCharTextPropVal("font.color", Integer.valueOf(i));
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setFontFamily(String str) {
        setFontFamily(str, FontGroup.LATIN);
    }

    public void setFontIndex(int i) {
        setCharTextPropVal("font.index", Integer.valueOf(i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setFontInfo(FontInfo fontInfo, FontGroup fontGroup) {
        FontGroup safeFontGroup = safeFontGroup(fontGroup);
        HSLFSheet sheet = this.parentParagraph.getSheet();
        HSLFSlideShow slideShow = sheet == null ? 0 : sheet.getSlideShow();
        if (sheet == null || slideShow == 0) {
            if (this.cachedFontInfo == null) {
                this.cachedFontInfo = new HSLFFontInfo[FontGroup.values().length];
            }
            this.cachedFontInfo[safeFontGroup.ordinal()] = fontInfo != null ? new HSLFFontInfo(fontInfo) : null;
        } else {
            int i = C194761.$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[safeFontGroup.ordinal()];
            String str = (i == 2 || i == 3) ? "asian.font.index" : i != 4 ? "ansi.font.index" : "symbol.font.index";
            Integer index = fontInfo != null ? slideShow.addFont(fontInfo).getIndex() : null;
            setCharTextPropVal("font.index", index);
            setCharTextPropVal(str, index);
        }
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setFontSize(Double d) {
        setCharTextPropVal("font.size", d == null ? null : Integer.valueOf(d.intValue()));
    }

    public void setHyperlink(HSLFHyperlink hSLFHyperlink) {
        this.link = hSLFHyperlink;
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setItalic(boolean z) {
        setCharFlagsTextPropVal(1, z);
    }

    public void setShadowed(boolean z) {
        setCharFlagsTextPropVal(4, z);
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setStrikethrough(boolean z) {
        setCharFlagsTextPropVal(8, z);
    }

    public void setSuperscript(int i) {
        setCharTextPropVal("superscript", Integer.valueOf(i));
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setText(String str) {
        if (str == null) {
            throw new HSLFException("text must not be null");
        }
        String internalString = HSLFTextParagraph.toInternalString(str);
        if (internalString.equals(this._runText)) {
            return;
        }
        this._runText = internalString;
        if (HSLFSlideShow.getLoadSavePhase() == HSLFSlideShow.LoadSavePhase.LOADED) {
            this.parentParagraph.setDirty();
        }
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setUnderlined(boolean z) {
        setCharFlagsTextPropVal(2, z);
    }

    public void updateSheet() {
        if (this.cachedFontInfo != null) {
            for (FontGroup fontGroup : FontGroup.values()) {
                setFontInfo(this.cachedFontInfo[fontGroup.ordinal()], fontGroup);
            }
            this.cachedFontInfo = null;
        }
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public HSLFHyperlink createHyperlink() {
        if (this.link == null) {
            this.link = HSLFHyperlink.createHyperlink(this);
            this.parentParagraph.setDirty();
        }
        return this.link;
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public PaintStyle.SolidPaint getFontColor() {
        TextProp propVal = getTextParagraph().getPropVal(this.characterStyle, "font.color");
        if (propVal == null) {
            return null;
        }
        return DrawPaint.createSolidPaint(HSLFTextParagraph.getColorFromColorIndexStruct(propVal.getValue(), this.parentParagraph.getSheet()));
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public String getFontFamily(FontGroup fontGroup) {
        HSLFFontInfo fontInfo = getFontInfo(fontGroup);
        if (fontInfo != null) {
            return fontInfo.getTypeface();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.poi.sl.usermodel.TextRun
    public HSLFFontInfo getFontInfo(FontGroup fontGroup) {
        FontGroup safeFontGroup = safeFontGroup(fontGroup);
        HSLFSheet sheet = this.parentParagraph.getSheet();
        HSLFSlideShow slideShow = sheet == null ? 0 : sheet.getSlideShow();
        if (sheet != null && slideShow != 0) {
            int i = C194761.$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[safeFontGroup.ordinal()];
            TextProp propVal = getTextParagraph().getPropVal(this.characterStyle, (i == 2 || i == 3) ? "asian.font.index" : i != 4 ? "font.index,ansi.font.index" : "symbol.font.index");
            if (propVal != null) {
                return slideShow.getFont(propVal.getValue());
            }
            return null;
        }
        HSLFFontInfo[] hSLFFontInfoArr = this.cachedFontInfo;
        if (hSLFFontInfoArr != null) {
            return hSLFFontInfoArr[safeFontGroup.ordinal()];
        }
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public HSLFHyperlink getHyperlink() {
        return this.link;
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public HSLFTextParagraph getParagraph() {
        return this.parentParagraph;
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setFontColor(Color color) {
        setFontColor(DrawPaint.createSolidPaint(color));
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setFontFamily(String str, FontGroup fontGroup) {
        setFontInfo(new HSLFFontInfo(str), fontGroup);
    }

    @Override // org.apache.poi.sl.usermodel.TextRun
    public void setFontColor(PaintStyle paintStyle) {
        if (paintStyle instanceof PaintStyle.SolidPaint) {
            Color applyColorTransform = DrawPaint.applyColorTransform(((PaintStyle.SolidPaint) paintStyle).getSolidColor());
            setFontColor(new Color(applyColorTransform.getBlue(), applyColorTransform.getGreen(), applyColorTransform.getRed(), 254).getRGB());
            return;
        }
        throw new IllegalArgumentException("HSLF only supports solid paint");
    }
}
