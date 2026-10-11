package org.apache.poi.style;

import java.util.HashMap;
import java.util.Map;
import org.apache.poi.common.usermodel.fonts.FontGroup;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.XWPFWordToHtmlUtils;
import org.apache.poi.convert.xwpf.property.BordersFetcher;
import org.apache.poi.convert.xwpf.property.IRunPropertyFetcher;
import org.apache.poi.convert.xwpf.property.RunPropertyListFetcher;

/* loaded from: classes13.dex */
public abstract class TextStyles implements Styles {
    public static final String COLOR_AUTO = "auto";
    public static final UnitValue DEFAULT_FONT_SIZE = UnitValue.fromPT(10.5d);
    public static final String FONT_CHINESE = "宋体";
    public static final String FONT_LATIN = "Times New Roman";
    public static final String FONT_SYMBOL = "Symbol";
    protected String backgroundColor;
    protected BordersStyles borderStyles;
    protected RunPropertyListFetcher fetcher;
    protected Map<FontGroup, String> fontFamilyMap;
    protected Map<FontGroup, UnitValue> fontSizeMap;
    protected boolean isInsert;
    protected String kerning;
    protected UnitValue letterSpacing;
    protected String textColor;
    protected TextDecoration textDecoration;
    protected TextEmphasis textEmphasis;
    protected UnitValue textScale;
    protected String vanish;

    public TextStyles(RunPropertyListFetcher runPropertyListFetcher, boolean z) {
        this.borderStyles = new BordersStyles();
        this.textDecoration = new TextDecoration();
        this.textEmphasis = new TextEmphasis();
        this.fontFamilyMap = new HashMap();
        this.fontSizeMap = new HashMap();
        this.fetcher = runPropertyListFetcher;
        this.isInsert = z;
        parse(runPropertyListFetcher);
    }

    public RunPropertyListFetcher getFetcher() {
        return this.fetcher;
    }

    public String getFontFamily(FontGroup fontGroup) {
        String str = this.fontFamilyMap.get(fontGroup);
        if (!WordToHtmlUtils.isNull(str)) {
            return str;
        }
        String fontFamily = this.fetcher.getFontFamily(fontGroup);
        this.fontFamilyMap.put(fontGroup, fontFamily);
        return fontFamily;
    }

    public String getFontFamilyWithParent(FontGroup fontGroup) {
        return getFontFamily(fontGroup);
    }

    public UnitValue getFontSize(FontGroup fontGroup) {
        UnitValue unitValue = this.fontSizeMap.get(fontGroup);
        if (WordToHtmlUtils.isNull(unitValue)) {
            unitValue = this.fetcher.getFontSize(fontGroup);
            if (WordToHtmlUtils.isNull(unitValue)) {
                unitValue = DEFAULT_FONT_SIZE;
            }
            this.fontSizeMap.put(fontGroup, unitValue);
        }
        return unitValue;
    }

    public UnitValue getFontSizeWithParent(FontGroup fontGroup) {
        return getFontSize(fontGroup);
    }

    public LineHeight getLineHeight() {
        return null;
    }

    public boolean isDisplay() {
        return WordToHtmlUtils.isNull(this.vanish);
    }

    public void parse(IRunPropertyFetcher iRunPropertyFetcher) {
        parseBorderStyles(iRunPropertyFetcher);
        this.textDecoration.parse(iRunPropertyFetcher);
        this.textEmphasis.parse(iRunPropertyFetcher);
        if (WordToHtmlUtils.parseBool(iRunPropertyFetcher.isVanish())) {
            this.vanish = "display:none;";
        }
        this.backgroundColor = iRunPropertyFetcher.getTextHighlightColor();
        this.letterSpacing = iRunPropertyFetcher.getCharacterSpacing();
        if (this.isInsert) {
            this.textColor = "#ff0000";
        } else {
            this.textColor = XWPFWordToHtmlUtils.getColorValue(iRunPropertyFetcher.getColor());
        }
        this.textScale = iRunPropertyFetcher.getTextScale();
    }

    public void parseBorderStyles(BordersFetcher bordersFetcher) {
        this.borderStyles.parse(bordersFetcher);
    }

    @Override // org.apache.poi.style.Styles
    public String toStyle() {
        return toStyle(FontGroup.LATIN);
    }

    public String toStyle(FontGroup fontGroup) {
        StringBuilder sb = new StringBuilder();
        if (WordToHtmlUtils.isNotEmpty(this.vanish)) {
            sb.append(this.vanish);
        }
        if (WordToHtmlUtils.isNotEmpty(this.backgroundColor) && !"auto".equals(this.backgroundColor)) {
            sb.append("background-color:");
            sb.append(this.backgroundColor);
            sb.append(';');
        }
        String fontFamilyWithParent = getFontFamilyWithParent(fontGroup);
        if (WordToHtmlUtils.isNotEmpty(fontFamilyWithParent)) {
            sb.append("font-family:");
            sb.append(fontFamilyWithParent);
            sb.append(';');
        }
        UnitValue fontSizeWithParent = getFontSizeWithParent(fontGroup);
        if (!WordToHtmlUtils.isNull(fontSizeWithParent) && fontSizeWithParent.isValid()) {
            sb.append("font-size:");
            sb.append(fontSizeWithParent.toStyle());
        }
        if (!WordToHtmlUtils.isNull(this.letterSpacing) && this.letterSpacing.isValid()) {
            sb.append("letter-spacing:");
            sb.append(this.letterSpacing.toStyle());
        }
        if (WordToHtmlUtils.isNotEmpty(this.textColor) && !"auto".equals(this.textColor)) {
            sb.append("color:");
            sb.append(this.textColor);
            sb.append(';');
        }
        sb.append(this.textDecoration.toStyle());
        sb.append(this.borderStyles.toStyle());
        sb.append(this.textEmphasis.toStyle());
        return sb.toString();
    }

    public String getFontFamily() {
        return getFontFamily(FontGroup.LATIN);
    }

    public UnitValue getFontSize() {
        return getFontSize(FontGroup.LATIN);
    }

    public TextStyles(RunPropertyListFetcher runPropertyListFetcher) {
        this(runPropertyListFetcher, false);
    }
}
