package com.onyx.engine.sdk;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.engine.sdk.ReaderTextStyle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;

/* loaded from: classes8.dex */
public class ReaderTextStyle {
    public static final int BACKGROUND_COLOR_TYPE_BLUE = 9;
    public static final int BACKGROUND_COLOR_TYPE_BROWN = 3;
    public static final int BACKGROUND_COLOR_TYPE_CUSTOM_DARK = 99;
    public static final int BACKGROUND_COLOR_TYPE_CUSTOM_LIGHT = 98;
    public static final int BACKGROUND_COLOR_TYPE_DARK_GREY = 8;
    public static final int BACKGROUND_COLOR_TYPE_GREEN = 5;
    public static final int BACKGROUND_COLOR_TYPE_LIGHT_GREY = 6;
    public static final int BACKGROUND_COLOR_TYPE_MEDIUM_GREY = 7;
    public static final int BACKGROUND_COLOR_TYPE_NIGHT_MODE = 2;
    public static final int BACKGROUND_COLOR_TYPE_ORIGIN = 0;
    public static final int BACKGROUND_COLOR_TYPE_WHITE = 1;
    public static final int BACKGROUND_COLOR_TYPE_YELLOW = 4;
    public static final float DEFAULT_INDENT = Float.MAX_VALUE;
    public static final float DEFAULT_LETTER_SPACING = Float.MAX_VALUE;
    public static final float DEFAULT_LINE_SPACING = Float.MAX_VALUE;
    public static final float DEFAULT_PAGE_MARGIN = Float.MAX_VALUE;
    public static final float DEFAULT_PARAGRAPH_SPACING = Float.MAX_VALUE;
    public static final float DEFAULT_WORD_SPACING = Float.MAX_VALUE;
    public static final int FOREGROUND_COLOR_TYPE_CUSTOM_DARK = 99;
    public static final int FOREGROUND_COLOR_TYPE_CUSTOM_LIGHT = 98;
    public static final int FOREGROUND_COLOR_TYPE_ORIGIN = 0;
    public static final boolean INIT_ADJUST_PAGE_WHITESPACE = true;
    public static final boolean INIT_ANTI_ALIAS = true;
    public static final boolean INIT_CHANGE_WRITING_MODE = false;
    public static final boolean INIT_ENABLE_HYPHEN = true;
    public static final float INIT_FONT_DEF_STROKE_WIDTH = 0.0f;
    public static final float INIT_FONT_EMBOLDEN_LEVEL = 0.0f;
    public static final float INIT_FONT_SIZE = 20.0f;
    public static final boolean INIT_IMAGE_CLOSE_DEF_SCALE = false;
    public static final float INIT_IMAGE_EM = 2.0f;
    public static final float INIT_IMAGE_PERCENTAGE = 0.6f;
    public static final float INIT_IMAGE_SCALING = Float.MAX_VALUE;
    public static final float INIT_IMAGE_SIZE = Float.MAX_VALUE;
    public static final boolean INIT_INCLUDE_FONT_PADDING = false;
    public static final float INIT_INDENT = Float.MAX_VALUE;
    public static final float INIT_LETTER_SPACING = Float.MAX_VALUE;
    public static final float INIT_LINE_SPACING = Float.MAX_VALUE;
    public static final float INIT_PAGE_MARGIN = Float.MAX_VALUE;
    public static final float INIT_PARAGRAPH_SPACING = Float.MAX_VALUE;
    public static final float INIT_SCALE_TO_PAGE_LIMIT = 5.0f;
    public static final boolean INIT_SHOW_FOOTNOTE = true;
    public static final boolean INIT_SINGLE_IMAGE_FULL_SCREEN = true;
    public static final float INIT_TEXT_GAMMA = -1.0f;
    public static final int INIT_THRESHOLD = 0;
    public static final float INIT_WORD_SPACING = Float.MAX_VALUE;
    public static final int TEXT_COLOR_TYPE_CUSTOM_DARK = 99;
    public static final int TEXT_COLOR_TYPE_CUSTOM_LIGHT = 98;
    public static final int TEXT_COLOR_TYPE_RAW = 0;
    public static final int TEXT_COLOR_TYPE_THRESH_BINARY = 1;
    public static final int TEXT_COLOR_TYPE_THRESH_OCTAL = 3;
    public static final int TEXT_COLOR_TYPE_THRESH_QUATERNARY = 2;
    private final Map<String, FontEntry> styleFontMapping = new HashMap();
    private final Map<String, List<String>> tagFontMapping = new HashMap();
    private final List<String> externalFonts = new ArrayList();
    private Alignment alignment = Alignment.ALIGNMENT_JUSTIFY;
    private PagingMode pagingMode = PagingMode.PAGING_MODE_SINGLE_COLUMN;
    private ChineseConvertType chineseConvertType = ChineseConvertType.CCT_NONE;
    private TextSpacingTrim textSpacingTrim = TextSpacingTrim.SPACE_ALL;
    private LigaturesState ligaturesState = LigaturesState.NORMAL;
    private PageMargin pageMargin = new PageMargin();
    private ImageStyle imageStyle = new ImageStyle();
    private String language = "";
    private String format = "";
    private float fontSize = 20.0f;
    private float indent = Float.MAX_VALUE;
    private float letterSpacing = Float.MAX_VALUE;
    private float wordSpacing = Float.MAX_VALUE;
    private float lineSpacing = Float.MAX_VALUE;
    private float paragraphSpacing = Float.MAX_VALUE;
    private float fontEmboldenLevel = 0.0f;
    private float fontDefStrokeWidth = 0.0f;
    private float textGamma = -1.0f;
    private float imageHorPercentage = 0.6f;
    private float imageVerPercentage = 0.6f;
    private float imageMinEM = 2.0f;
    private List<Integer> colorTable = new ArrayList();
    private int threshold = 0;
    private boolean antiAlias = true;
    private boolean enableHyphen = true;
    private boolean changeWritingMode = false;
    private boolean includeFontPadding = false;
    private boolean adjustPageWhiteSpace = true;
    private boolean showFootnote = true;
    private int textColor = -16777216;
    private int textColorType = 0;
    private int backgroundColor = -1;
    private int backgroundColorType = 0;
    private int foregroundColor = -16777216;
    private int foregroundColorType = 0;

    /* loaded from: classes8.dex */
    public enum Alignment {
        ALIGNMENT_NONE,
        ALIGNMENT_LEFT,
        ALIGNMENT_RIGHT,
        ALIGNMENT_JUSTIFY;

        public static Alignment valueOf(int i) {
            for (Alignment alignment : values()) {
                if (alignment.ordinal() == i) {
                    return alignment;
                }
            }
            return ALIGNMENT_NONE;
        }
    }

    /* loaded from: classes8.dex */
    public enum ChineseConvertType {
        CCT_NONE,
        SIMPLIFIED_TO_TRADITIONAL,
        TRADITIONAL_TO_SIMPLIFIED;

        public static ChineseConvertType valueOf(int i) {
            for (ChineseConvertType chineseConvertType : values()) {
                if (chineseConvertType.ordinal() == i) {
                    return chineseConvertType;
                }
            }
            return CCT_NONE;
        }
    }

    /* loaded from: classes8.dex */
    public static class ImageStyle {
        private boolean singleImageFullScreen = true;
        private boolean closeDefScale = false;
        private float scaleMinWidth = Float.MAX_VALUE;
        private float scaleMinHeight = Float.MAX_VALUE;
        private float scaling = Float.MAX_VALUE;
        private float scaleToPageLimit = 5.0f;

        public void copy(ImageStyle imageStyle) {
            if (imageStyle == null) {
                return;
            }
            this.closeDefScale = imageStyle.closeDefScale;
            this.scaleMinWidth = imageStyle.scaleMinWidth;
            this.scaleMinHeight = imageStyle.scaleMinHeight;
            this.scaling = imageStyle.scaling;
            this.singleImageFullScreen = imageStyle.singleImageFullScreen;
            this.scaleToPageLimit = imageStyle.scaleToPageLimit;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            ImageStyle imageStyle = (ImageStyle) obj;
            return this.closeDefScale == imageStyle.closeDefScale && this.singleImageFullScreen == imageStyle.singleImageFullScreen && Float.compare(imageStyle.scaleMinWidth, this.scaleMinWidth) == 0 && Float.compare(imageStyle.scaleMinHeight, this.scaleMinHeight) == 0 && Float.compare(imageStyle.scaling, this.scaling) == 0 && Float.compare(imageStyle.scaleToPageLimit, this.scaleToPageLimit) == 0;
        }

        public float getScaleMinHeight() {
            return this.scaleMinHeight;
        }

        public float getScaleMinWidth() {
            return this.scaleMinWidth;
        }

        public float getScaleToPageLimit() {
            return this.scaleToPageLimit;
        }

        public float getScaling() {
            return this.scaling;
        }

        public int hashCode() {
            return Objects.hash(Boolean.valueOf(this.singleImageFullScreen), Boolean.valueOf(this.closeDefScale), Float.valueOf(this.scaleMinWidth), Float.valueOf(this.scaleMinHeight), Float.valueOf(this.scaling), Float.valueOf(this.scaleToPageLimit));
        }

        public boolean isCloseDefScale() {
            return this.closeDefScale;
        }

        public boolean isSingleImageFullScreen() {
            return this.singleImageFullScreen;
        }

        public void setCloseDefScale(boolean z) {
            this.closeDefScale = z;
        }

        public void setScaleMinHeight(float f) {
            this.scaleMinHeight = f;
        }

        public void setScaleMinWidth(float f) {
            this.scaleMinWidth = f;
        }

        public void setScaleToPageLimit(float f) {
            this.scaleToPageLimit = f;
        }

        public void setScaling(float f) {
            this.scaling = f;
        }

        public void setSingleImageFullScreen(boolean z) {
            this.singleImageFullScreen = z;
        }
    }

    /* loaded from: classes8.dex */
    public enum LigaturesState {
        NORMAL,
        DISABLE,
        ENABLE;

        public static LigaturesState valueOf(int i) {
            for (LigaturesState ligaturesState : values()) {
                if (ligaturesState.ordinal() == i) {
                    return ligaturesState;
                }
            }
            return NORMAL;
        }
    }

    /* loaded from: classes8.dex */
    public enum PagingMode {
        PAGING_MODE_SINGLE_COLUMN,
        PAGING_MODE_TWO_COLUMN;

        public static PagingMode valueOf(int i) {
            for (PagingMode pagingMode : values()) {
                if (pagingMode.ordinal() == i) {
                    return pagingMode;
                }
            }
            return PAGING_MODE_SINGLE_COLUMN;
        }
    }

    /* loaded from: classes8.dex */
    public enum TextSpacingTrim {
        NORMAL,
        SPACE_ALL,
        SPACE_FIRST,
        TRIM_START;

        public static TextSpacingTrim valueOf(int i) {
            for (TextSpacingTrim textSpacingTrim : values()) {
                if (textSpacingTrim.ordinal() == i) {
                    return textSpacingTrim;
                }
            }
            return NORMAL;
        }
    }

    public static ReaderTextStyle fromJson(String str) {
        return (ReaderTextStyle) JsonUtils.fromJson(str, ReaderTextStyle.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List lambda$addTagFontMapping$0(String str) {
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List lambda$addTagFontMapping$1(String str) {
        return new ArrayList();
    }

    public void addExternalFont(String str) {
        this.externalFonts.add(str);
    }

    public void addStyleFontMapping(FontEntry fontEntry) {
        this.styleFontMapping.put(fontEntry.getFontFamily(), fontEntry);
    }

    public void addTagFontMapping(String str, List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.tagFontMapping.computeIfAbsent(str, new Function() { // from class: com.sunia.HTREnginev2.hdl
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                List lambda$addTagFontMapping$0;
                lambda$addTagFontMapping$0 = ReaderTextStyle.lambda$addTagFontMapping$0((String) obj);
                return lambda$addTagFontMapping$0;
            }
        }).addAll(list);
    }

    public void copy(ReaderTextStyle readerTextStyle) {
        if (readerTextStyle == null) {
            return;
        }
        setStyleFontMapping(readerTextStyle.styleFontMapping);
        setTagFontMapping(readerTextStyle.tagFontMapping);
        setExternalFonts(readerTextStyle.externalFonts);
        this.alignment = readerTextStyle.alignment;
        this.pagingMode = readerTextStyle.pagingMode;
        this.chineseConvertType = readerTextStyle.chineseConvertType;
        this.textSpacingTrim = readerTextStyle.textSpacingTrim;
        this.ligaturesState = readerTextStyle.ligaturesState;
        this.pageMargin.copy(readerTextStyle.pageMargin);
        this.imageStyle.copy(readerTextStyle.imageStyle);
        this.language = readerTextStyle.language;
        this.format = readerTextStyle.format;
        this.fontSize = readerTextStyle.fontSize;
        this.indent = readerTextStyle.indent;
        this.letterSpacing = readerTextStyle.letterSpacing;
        this.wordSpacing = readerTextStyle.wordSpacing;
        this.lineSpacing = readerTextStyle.lineSpacing;
        this.paragraphSpacing = readerTextStyle.paragraphSpacing;
        this.fontEmboldenLevel = readerTextStyle.fontEmboldenLevel;
        this.fontDefStrokeWidth = readerTextStyle.fontDefStrokeWidth;
        this.textGamma = readerTextStyle.textGamma;
        this.imageHorPercentage = readerTextStyle.imageHorPercentage;
        this.imageVerPercentage = readerTextStyle.imageVerPercentage;
        this.imageMinEM = readerTextStyle.imageMinEM;
        this.colorTable.clear();
        this.colorTable.addAll(readerTextStyle.colorTable);
        this.threshold = readerTextStyle.threshold;
        this.antiAlias = readerTextStyle.antiAlias;
        this.enableHyphen = readerTextStyle.enableHyphen;
        this.changeWritingMode = readerTextStyle.changeWritingMode;
        this.includeFontPadding = readerTextStyle.includeFontPadding;
        this.adjustPageWhiteSpace = readerTextStyle.adjustPageWhiteSpace;
        this.showFootnote = readerTextStyle.showFootnote;
        this.textColor = readerTextStyle.textColor;
        this.textColorType = readerTextStyle.textColorType;
        this.backgroundColor = readerTextStyle.backgroundColor;
        this.backgroundColorType = readerTextStyle.backgroundColorType;
        this.foregroundColor = readerTextStyle.foregroundColor;
        this.foregroundColorType = readerTextStyle.foregroundColorType;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ReaderTextStyle readerTextStyle = (ReaderTextStyle) obj;
        return Float.compare(readerTextStyle.fontSize, this.fontSize) == 0 && Float.compare(readerTextStyle.indent, this.indent) == 0 && Float.compare(readerTextStyle.letterSpacing, this.letterSpacing) == 0 && Float.compare(readerTextStyle.wordSpacing, this.wordSpacing) == 0 && Float.compare(readerTextStyle.lineSpacing, this.lineSpacing) == 0 && Float.compare(readerTextStyle.paragraphSpacing, this.paragraphSpacing) == 0 && Float.compare(readerTextStyle.fontEmboldenLevel, this.fontEmboldenLevel) == 0 && Float.compare(readerTextStyle.fontDefStrokeWidth, this.fontDefStrokeWidth) == 0 && Float.compare(readerTextStyle.textGamma, this.textGamma) == 0 && Float.compare(readerTextStyle.imageHorPercentage, this.imageHorPercentage) == 0 && Float.compare(readerTextStyle.imageVerPercentage, this.imageVerPercentage) == 0 && Float.compare(readerTextStyle.imageMinEM, this.imageMinEM) == 0 && this.threshold == readerTextStyle.threshold && this.antiAlias == readerTextStyle.antiAlias && this.enableHyphen == readerTextStyle.enableHyphen && this.changeWritingMode == readerTextStyle.changeWritingMode && this.includeFontPadding == readerTextStyle.includeFontPadding && this.adjustPageWhiteSpace == readerTextStyle.adjustPageWhiteSpace && this.showFootnote == readerTextStyle.showFootnote && this.textColor == readerTextStyle.textColor && this.textColorType == readerTextStyle.textColorType && this.backgroundColor == readerTextStyle.backgroundColor && this.backgroundColorType == readerTextStyle.backgroundColorType && this.foregroundColor == readerTextStyle.foregroundColor && this.foregroundColorType == readerTextStyle.foregroundColorType && Objects.equals(this.styleFontMapping, readerTextStyle.styleFontMapping) && Objects.equals(this.tagFontMapping, readerTextStyle.tagFontMapping) && Objects.equals(this.externalFonts, readerTextStyle.externalFonts) && this.alignment == readerTextStyle.alignment && this.pagingMode == readerTextStyle.pagingMode && this.chineseConvertType == readerTextStyle.chineseConvertType && this.textSpacingTrim == readerTextStyle.textSpacingTrim && this.ligaturesState == readerTextStyle.ligaturesState && Objects.equals(this.pageMargin, readerTextStyle.pageMargin) && Objects.equals(this.imageStyle, readerTextStyle.imageStyle) && Objects.equals(this.language, readerTextStyle.language) && Objects.equals(this.format, readerTextStyle.format) && Objects.equals(this.colorTable, readerTextStyle.colorTable);
    }

    public Alignment getAlignment() {
        return this.alignment;
    }

    public int getBackgroundColor() {
        return this.backgroundColor;
    }

    public int getBackgroundColorType() {
        return this.backgroundColorType;
    }

    public ChineseConvertType getChineseConvertType() {
        return this.chineseConvertType;
    }

    public List<Integer> getColorTable() {
        return this.colorTable;
    }

    public List<String> getExternalFonts() {
        return this.externalFonts;
    }

    public float getFontDefStrokeWidth() {
        return this.fontDefStrokeWidth;
    }

    public float getFontEmboldenLevel() {
        return this.fontEmboldenLevel;
    }

    public float getFontSize() {
        return this.fontSize;
    }

    public int getForegroundColor() {
        return this.foregroundColor;
    }

    public int getForegroundColorType() {
        return this.foregroundColorType;
    }

    public String getFormat() {
        return this.format;
    }

    public float getImageHorPercentage() {
        return this.imageHorPercentage;
    }

    public float getImageMinEM() {
        return this.imageMinEM;
    }

    public ImageStyle getImageStyle() {
        return this.imageStyle;
    }

    public float getImageVerPercentage() {
        return this.imageVerPercentage;
    }

    public float getIndent() {
        return this.indent;
    }

    public String getLanguage() {
        return this.language;
    }

    @JSONField(deserialize = false, serialize = false)
    public String getLayoutStyle() {
        return this.styleFontMapping + ',' + this.tagFontMapping + ',' + this.externalFonts + ',' + this.textSpacingTrim + ',' + this.ligaturesState + ',' + this.pageMargin.leftMargin + ',' + this.pageMargin.topMargin + ',' + this.pageMargin.rightMargin + ',' + this.pageMargin.bottomMargin + ',' + this.imageStyle.closeDefScale + ',' + this.imageStyle.scaleMinWidth + ',' + this.imageStyle.scaleMinHeight + ',' + this.imageStyle.scaling + ',' + this.language + ',' + this.fontSize + ',' + this.indent + ',' + this.letterSpacing + ',' + this.wordSpacing + ',' + this.lineSpacing + ',' + this.paragraphSpacing + ',' + this.fontDefStrokeWidth + ',' + this.imageHorPercentage + ',' + this.imageVerPercentage + ',' + this.imageMinEM + ',' + this.antiAlias + ',' + this.enableHyphen + ',' + this.changeWritingMode + ',' + this.includeFontPadding + ',' + this.showFootnote + ',' + GlobalInitializer.isScaleImage() + ',' + GlobalInitializer.isAbsoluteLineSpacing() + ',' + GlobalInitializer.isAbsoluteParagraphSpacing() + ',';
    }

    public float getLetterSpacing() {
        return this.letterSpacing;
    }

    public LigaturesState getLigaturesState() {
        return this.ligaturesState;
    }

    public float getLineSpacing() {
        return this.lineSpacing;
    }

    public PageMargin getPageMargin() {
        return this.pageMargin;
    }

    public PagingMode getPagingMode() {
        return this.pagingMode;
    }

    public float getParagraphSpacing() {
        return this.paragraphSpacing;
    }

    public Map<String, FontEntry> getStyleFontMapping() {
        return this.styleFontMapping;
    }

    public Map<String, List<String>> getTagFontMapping() {
        return this.tagFontMapping;
    }

    public int getTextColor() {
        return this.textColor;
    }

    public int getTextColorType() {
        return this.textColorType;
    }

    public float getTextGamma() {
        return this.textGamma;
    }

    public TextSpacingTrim getTextSpacingTrim() {
        return this.textSpacingTrim;
    }

    public int getThreshold() {
        return this.threshold;
    }

    public float getWordSpacing() {
        return this.wordSpacing;
    }

    public int hashCode() {
        return Objects.hash(this.styleFontMapping, this.tagFontMapping, this.externalFonts, this.alignment, this.pagingMode, this.chineseConvertType, this.textSpacingTrim, this.ligaturesState, this.pageMargin, this.imageStyle, this.language, this.format, Float.valueOf(this.fontSize), Float.valueOf(this.indent), Float.valueOf(this.letterSpacing), Float.valueOf(this.wordSpacing), Float.valueOf(this.lineSpacing), Float.valueOf(this.paragraphSpacing), Float.valueOf(this.fontEmboldenLevel), Float.valueOf(this.fontDefStrokeWidth), Float.valueOf(this.textGamma), Float.valueOf(this.imageHorPercentage), Float.valueOf(this.imageVerPercentage), Float.valueOf(this.imageMinEM), this.colorTable, Integer.valueOf(this.threshold), Boolean.valueOf(this.antiAlias), Boolean.valueOf(this.enableHyphen), Boolean.valueOf(this.changeWritingMode), Boolean.valueOf(this.includeFontPadding), Boolean.valueOf(this.adjustPageWhiteSpace), Boolean.valueOf(this.showFootnote), Integer.valueOf(this.textColor), Integer.valueOf(this.textColorType), Integer.valueOf(this.backgroundColor), Integer.valueOf(this.backgroundColorType), Integer.valueOf(this.foregroundColor), Integer.valueOf(this.foregroundColorType));
    }

    public boolean isAdjustPageWhiteSpace() {
        return this.adjustPageWhiteSpace;
    }

    public boolean isAntiAlias() {
        return this.antiAlias;
    }

    public boolean isChangeWritingMode() {
        return this.changeWritingMode;
    }

    public boolean isEnableHyphen() {
        return this.enableHyphen;
    }

    public boolean isIncludeFontPadding() {
        return this.includeFontPadding;
    }

    public boolean isShowFootnote() {
        return this.showFootnote;
    }

    public void setAdjustPageWhiteSpace(boolean z) {
        this.adjustPageWhiteSpace = z;
    }

    public void setAlignment(Alignment alignment) {
        this.alignment = alignment;
    }

    public void setAntiAlias(boolean z) {
        this.antiAlias = z;
    }

    public void setBackgroundColor(int i) {
        this.backgroundColor = i;
    }

    public void setBackgroundColorType(int i) {
        this.backgroundColorType = i;
    }

    public void setChangeWritingMode(boolean z) {
        this.changeWritingMode = z;
    }

    public void setChineseConvertType(ChineseConvertType chineseConvertType) {
        this.chineseConvertType = chineseConvertType;
    }

    public void setColorTable(List<Integer> list) {
        this.colorTable = list;
    }

    public void setEnableHyphen(boolean z) {
        this.enableHyphen = z;
    }

    public void setExternalFonts(List<String> list) {
        this.externalFonts.clear();
        Utils.safelyAddAll(this.externalFonts, list);
    }

    public void setFontDefStrokeWidth(float f) {
        this.fontDefStrokeWidth = f;
    }

    public void setFontEmboldenLevel(float f) {
        this.fontEmboldenLevel = f;
    }

    public void setFontSize(float f) {
        this.fontSize = f;
    }

    public void setForegroundColor(int i) {
        this.foregroundColor = i;
    }

    public void setForegroundColorType(int i) {
        this.foregroundColorType = i;
    }

    public void setFormat(String str) {
        this.format = str;
    }

    public void setImageHorPercentage(float f) {
        this.imageHorPercentage = f;
    }

    public void setImageMinEM(float f) {
        this.imageMinEM = f;
    }

    public void setImageStyle(ImageStyle imageStyle) {
        this.imageStyle = imageStyle;
    }

    public void setImageVerPercentage(float f) {
        this.imageVerPercentage = f;
    }

    public void setIncludeFontPadding(boolean z) {
        this.includeFontPadding = z;
    }

    public void setIndent(float f) {
        this.indent = f;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setLetterSpacing(float f) {
        this.letterSpacing = f;
    }

    public ReaderTextStyle setLigaturesState(LigaturesState ligaturesState) {
        this.ligaturesState = ligaturesState;
        return this;
    }

    public void setLineSpacing(float f) {
        this.lineSpacing = f;
    }

    public void setPageMargin(PageMargin pageMargin) {
        this.pageMargin = pageMargin;
    }

    public void setPagingMode(PagingMode pagingMode) {
        this.pagingMode = pagingMode;
    }

    public void setParagraphSpacing(float f) {
        this.paragraphSpacing = f;
    }

    public void setShowFootnote(boolean z) {
        this.showFootnote = z;
    }

    public void setStyleFontMapping(Map<String, FontEntry> map) {
        this.styleFontMapping.clear();
        if (map != null) {
            this.styleFontMapping.putAll(map);
        }
    }

    public void setTagFontMapping(Map<String, List<String>> map) {
        this.tagFontMapping.clear();
        if (map != null) {
            this.tagFontMapping.putAll(map);
        }
    }

    public void setTextColor(int i) {
        this.textColor = i;
    }

    public void setTextColorType(int i) {
        this.textColorType = i;
    }

    public void setTextGamma(float f) {
        this.textGamma = f;
    }

    public void setTextSpacingTrim(TextSpacingTrim textSpacingTrim) {
        this.textSpacingTrim = textSpacingTrim;
    }

    public void setThreshold(int i) {
        this.threshold = i;
    }

    public void setWordSpacing(float f) {
        this.wordSpacing = f;
    }

    public String toJson() {
        return JsonUtils.toJson(this);
    }

    public void setAlignment(int i) {
        this.alignment = Alignment.valueOf(i);
    }

    public void setChineseConvertType(int i) {
        this.chineseConvertType = ChineseConvertType.valueOf(i);
    }

    public ReaderTextStyle setLigaturesState(int i) {
        this.ligaturesState = LigaturesState.valueOf(i);
        return this;
    }

    public void setPagingMode(int i) {
        this.pagingMode = PagingMode.valueOf(i);
    }

    public void setTextSpacingTrim(int i) {
        this.textSpacingTrim = TextSpacingTrim.valueOf(i);
    }

    public void addTagFontMapping(String str, String str2) {
        this.tagFontMapping.computeIfAbsent(str, new Function() { // from class: com.sunia.HTREnginev2.gdl
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                List lambda$addTagFontMapping$1;
                lambda$addTagFontMapping$1 = ReaderTextStyle.lambda$addTagFontMapping$1((String) obj);
                return lambda$addTagFontMapping$1;
            }
        }).add(str2);
    }

    public void setTagFontMapping(String str, List<String> list) {
        if (list != null && !list.isEmpty()) {
            this.tagFontMapping.put(str, list);
        } else {
            this.tagFontMapping.remove(str);
        }
    }

    /* loaded from: classes8.dex */
    public static class PageMargin {
        private float bottomMargin;
        private float leftMargin;
        private float rightMargin;
        private float topMargin;

        public PageMargin() {
            this.leftMargin = Float.MAX_VALUE;
            this.topMargin = Float.MAX_VALUE;
            this.rightMargin = Float.MAX_VALUE;
            this.bottomMargin = Float.MAX_VALUE;
        }

        public void copy(PageMargin pageMargin) {
            if (pageMargin == null) {
                return;
            }
            this.leftMargin = pageMargin.leftMargin;
            this.topMargin = pageMargin.topMargin;
            this.rightMargin = pageMargin.rightMargin;
            this.bottomMargin = pageMargin.bottomMargin;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            PageMargin pageMargin = (PageMargin) obj;
            return Float.compare(pageMargin.leftMargin, this.leftMargin) == 0 && Float.compare(pageMargin.topMargin, this.topMargin) == 0 && Float.compare(pageMargin.rightMargin, this.rightMargin) == 0 && Float.compare(pageMargin.bottomMargin, this.bottomMargin) == 0;
        }

        public float getBottomMargin() {
            return this.bottomMargin;
        }

        public float getLeftMargin() {
            return this.leftMargin;
        }

        public float getRightMargin() {
            return this.rightMargin;
        }

        public float getTopMargin() {
            return this.topMargin;
        }

        public int hashCode() {
            return Objects.hash(Float.valueOf(this.leftMargin), Float.valueOf(this.topMargin), Float.valueOf(this.rightMargin), Float.valueOf(this.bottomMargin));
        }

        public void setBottomMargin(float f) {
            this.bottomMargin = f;
        }

        public void setLeftMargin(float f) {
            this.leftMargin = f;
        }

        public void setRightMargin(float f) {
            this.rightMargin = f;
        }

        public void setTopMargin(float f) {
            this.topMargin = f;
        }

        public PageMargin(float f, float f2, float f3, float f4) {
            this.leftMargin = f;
            this.rightMargin = f2;
            this.topMargin = f3;
            this.bottomMargin = f4;
        }
    }

    public ReaderTextStyle copy() {
        ReaderTextStyle readerTextStyle = new ReaderTextStyle();
        readerTextStyle.copy(this);
        return readerTextStyle;
    }
}
