package org.apache.poi.style;

import java.util.Objects;
import org.apache.poi.common.usermodel.fonts.FontGroup;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.property.IRunPropertyFetcher;
import org.apache.poi.convert.xwpf.property.RunPropertyListFetcher;
import org.apache.poi.util.StringUtils;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STVerticalAlignRun;

/* loaded from: classes13.dex */
public class TextRunStyles extends TextStyles {
    private String fontStyle;
    private String fontWeight;
    private ParagraphStyles parent;
    private String superscript;
    private String textShadowed;
    private String textTransform;

    public TextRunStyles(RunPropertyListFetcher runPropertyListFetcher) {
        super(runPropertyListFetcher);
    }

    private void clearSameAttributes() {
        if (WordToHtmlUtils.isNull(this.parent)) {
            return;
        }
        TextStyles textStyles = this.parent.getTextStyles();
        if (this.borderStyles.equals(textStyles.borderStyles)) {
            this.borderStyles.reset();
        }
        if (this.textDecoration.equals(textStyles.textDecoration)) {
            this.textDecoration.reset();
        }
        if (Objects.equals(this.letterSpacing, textStyles.letterSpacing)) {
            this.letterSpacing = null;
        }
        if (StringUtils.isEquals(this.backgroundColor, textStyles.backgroundColor)) {
            this.backgroundColor = null;
        }
        if (StringUtils.isEquals(this.textColor, textStyles.textColor)) {
            this.textColor = null;
        }
        if (Objects.equals(this.textScale, textStyles.textScale)) {
            this.textScale = null;
        }
        if (StringUtils.isEquals(this.vanish, textStyles.vanish)) {
            this.vanish = null;
        }
    }

    @Override // org.apache.poi.style.TextStyles
    public String getFontFamily(FontGroup fontGroup) {
        String fontFamily = super.getFontFamily(fontGroup);
        if (!WordToHtmlUtils.isNull(fontFamily)) {
            return fontFamily;
        }
        if (WordToHtmlUtils.isNull(this.parent)) {
            return null;
        }
        return this.parent.getTextStyles().getFontFamily(fontGroup);
    }

    @Override // org.apache.poi.style.TextStyles
    public String getFontFamilyWithParent(FontGroup fontGroup) {
        String fontFamily = getFontFamily(fontGroup);
        if (!WordToHtmlUtils.isNull(this.parent) && StringUtils.isEquals(fontFamily, this.parent.getTextStyles().getFontFamily(FontGroup.LATIN))) {
            return null;
        }
        return fontFamily;
    }

    @Override // org.apache.poi.style.TextStyles
    public UnitValue getFontSize(FontGroup fontGroup) {
        UnitValue fontSize = super.getFontSize(fontGroup);
        if (!WordToHtmlUtils.isNull(fontSize)) {
            return fontSize;
        }
        if (!WordToHtmlUtils.isNull(this.parent)) {
            fontSize = this.parent.getTextStyles().getFontSize(fontGroup);
        }
        return WordToHtmlUtils.isNull(fontSize) ? TextStyles.DEFAULT_FONT_SIZE : fontSize;
    }

    @Override // org.apache.poi.style.TextStyles
    public UnitValue getFontSizeWithParent(FontGroup fontGroup) {
        UnitValue fontSize = getFontSize(fontGroup);
        if (!WordToHtmlUtils.isNull(this.parent) && fontSize.equals(this.parent.getTextStyles().getFontSize(FontGroup.LATIN))) {
            return null;
        }
        return fontSize;
    }

    @Override // org.apache.poi.style.TextStyles
    public LineHeight getLineHeight() {
        if (WordToHtmlUtils.isNull(this.parent)) {
            return null;
        }
        return this.parent.getLineHeight();
    }

    public void increaseTextChildSize() {
        if (WordToHtmlUtils.isNull(this.parent)) {
            return;
        }
        this.parent.increaseTextChildSize();
    }

    @Override // org.apache.poi.style.TextStyles
    public void parse(IRunPropertyFetcher iRunPropertyFetcher) {
        super.parse(iRunPropertyFetcher);
        STVerticalAlignRun.Enum verticalAlignment = iRunPropertyFetcher.getVerticalAlignment();
        if (verticalAlignment == STVerticalAlignRun.SUPERSCRIPT) {
            this.superscript = "vertical-align:super;font-size:smaller;";
        } else if (verticalAlignment == STVerticalAlignRun.SUBSCRIPT) {
            this.superscript = "vertical-align:sub;font-size:smaller;";
        }
        if (WordToHtmlUtils.parseBool(iRunPropertyFetcher.isItalic())) {
            this.fontStyle = "font-style:italic;";
        }
        if (WordToHtmlUtils.parseBool(iRunPropertyFetcher.isBold())) {
            this.fontWeight = "font-weight:bold;";
        }
        if (WordToHtmlUtils.parseBool(iRunPropertyFetcher.isShadowed())) {
            this.textShadowed = "box-shadow:10px 10px 5px #888888;";
        }
        if (WordToHtmlUtils.parseBool(iRunPropertyFetcher.isCapitalized())) {
            this.textTransform = "text-transform:uppercase;";
        } else if (WordToHtmlUtils.parseBool(iRunPropertyFetcher.isSmallCaps())) {
            this.textTransform = "text-transform:lowercase;";
        }
    }

    @Override // org.apache.poi.style.TextStyles
    public String toStyle(FontGroup fontGroup) {
        StringBuilder sb = new StringBuilder(super.toStyle(fontGroup));
        if (WordToHtmlUtils.isNotEmpty(this.fontStyle)) {
            sb.append(this.fontStyle);
        }
        if (WordToHtmlUtils.isNotEmpty(this.fontWeight)) {
            sb.append(this.fontWeight);
        }
        if (WordToHtmlUtils.isNotEmpty(this.superscript)) {
            sb.append(this.superscript);
        }
        if (WordToHtmlUtils.isNotEmpty(this.textShadowed)) {
            sb.append(this.textShadowed);
        }
        if (WordToHtmlUtils.isNotEmpty(this.textTransform)) {
            sb.append(this.textTransform);
        }
        return sb.toString();
    }

    public TextRunStyles(RunPropertyListFetcher runPropertyListFetcher, boolean z) {
        super(runPropertyListFetcher, z);
    }

    public TextRunStyles(ParagraphStyles paragraphStyles, RunPropertyListFetcher runPropertyListFetcher, boolean z) {
        super(runPropertyListFetcher, z);
        this.parent = paragraphStyles;
        clearSameAttributes();
    }
}
