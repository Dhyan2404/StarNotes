package org.apache.poi.hwpf.converter;

import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.o6o;
import org.apache.poi.hwpf.usermodel.BorderCode;
import org.apache.poi.hwpf.usermodel.CharacterRun;
import org.apache.poi.hwpf.usermodel.Paragraph;
import org.apache.poi.hwpf.usermodel.Picture;
import org.apache.poi.hwpf.usermodel.TableCell;
import org.apache.poi.hwpf.usermodel.TableRow;
import org.apache.poi.ss.util.CellUtil;
import org.apache.poi.util.ExtUnits;
import org.w3c.dom.Element;

/* loaded from: classes12.dex */
public class WordToFoUtils extends AbstractWordUtils {
    public static void compactInlines(Element element) {
        AbstractWordUtils.compactChildNodesR(element, "fo:inline");
    }

    public static void setBold(Element element, boolean z) {
        element.setAttribute(o6o.f79399i, z ? "bold" : "normal");
    }

    public static void setBorder(Element element, BorderCode borderCode, String str) {
        if (element == null) {
            throw new IllegalArgumentException("element is null");
        }
        if (borderCode == null || borderCode.isEmpty()) {
            return;
        }
        if (AbstractWordUtils.isEmpty(str)) {
            element.setAttribute("border-style", AbstractWordUtils.getBorderType(borderCode));
            element.setAttribute("border-color", AbstractWordUtils.getColor(borderCode.getColor()));
            element.setAttribute("border-width", AbstractWordUtils.getBorderWidth(borderCode));
            return;
        }
        element.setAttribute("border-" + str + "-style", AbstractWordUtils.getBorderType(borderCode));
        element.setAttribute("border-" + str + "-color", AbstractWordUtils.getColor(borderCode.getColor()));
        element.setAttribute("border-" + str + "-width", AbstractWordUtils.getBorderWidth(borderCode));
    }

    public static void setCharactersProperties(CharacterRun characterRun, Element element) {
        StringBuilder sb = new StringBuilder();
        setBorder(element, characterRun.getBorder(), "");
        if (characterRun.getIco24() != -1) {
            element.setAttribute("color", AbstractWordUtils.getColor24(characterRun.getIco24()));
        }
        if (characterRun.isCapitalized()) {
            element.setAttribute("text-transform", "uppercase");
        }
        if (characterRun.isHighlighted()) {
            element.setAttribute(o6o.f79397g, AbstractWordUtils.getColor(characterRun.getHighlightedColor()));
        }
        if (characterRun.isStrikeThrough()) {
            if (sb.length() > 0) {
                sb.append(" ");
            }
            sb.append("line-through");
        }
        if (characterRun.isShadowed()) {
            element.setAttribute("text-shadow", (characterRun.getFontSize() / 24) + ExtUnits.UNIT_PT);
        }
        if (characterRun.isSmallCaps()) {
            element.setAttribute("font-variant", "small-caps");
        }
        if (characterRun.getSubSuperScriptIndex() == 1) {
            element.setAttribute("baseline-shift", "super");
            element.setAttribute(o6o.f79400j, "smaller");
        }
        if (characterRun.getSubSuperScriptIndex() == 2) {
            element.setAttribute("baseline-shift", "sub");
            element.setAttribute(o6o.f79400j, "smaller");
        }
        if (characterRun.getUnderlineCode() > 0) {
            if (sb.length() > 0) {
                sb.append(" ");
            }
            sb.append("underline");
        }
        if (characterRun.isVanished()) {
            element.setAttribute("visibility", CellUtil.HIDDEN);
        }
        if (sb.length() > 0) {
            element.setAttribute(o6o.f79407q, sb.toString());
        }
    }

    public static void setFontFamily(Element element, String str) {
        if (AbstractWordUtils.isEmpty(str)) {
            return;
        }
        element.setAttribute(o6o.f79398h, str);
    }

    public static void setFontSize(Element element, int i) {
        element.setAttribute(o6o.f79400j, String.valueOf(i));
    }

    public static void setIndent(Paragraph paragraph, Element element) {
        if (paragraph.getFirstLineIndent() != 0) {
            element.setAttribute("text-indent", (paragraph.getFirstLineIndent() / 20) + ExtUnits.UNIT_PT);
        }
        if (paragraph.getIndentFromLeft() != 0) {
            element.setAttribute("start-indent", (paragraph.getIndentFromLeft() / 20) + ExtUnits.UNIT_PT);
        }
        if (paragraph.getIndentFromRight() != 0) {
            element.setAttribute("end-indent", (paragraph.getIndentFromRight() / 20) + ExtUnits.UNIT_PT);
        }
        if (paragraph.getSpacingBefore() != 0) {
            element.setAttribute("space-before", (paragraph.getSpacingBefore() / 20) + ExtUnits.UNIT_PT);
        }
        if (paragraph.getSpacingAfter() != 0) {
            element.setAttribute("space-after", (paragraph.getSpacingAfter() / 20) + ExtUnits.UNIT_PT);
        }
    }

    public static void setItalic(Element element, boolean z) {
        element.setAttribute(o6o.f79410t, z ? "italic" : "normal");
    }

    public static void setJustification(Paragraph paragraph, Element element) {
        String justification = AbstractWordUtils.getJustification(paragraph.getJustification());
        if (AbstractWordUtils.isNotEmpty(justification)) {
            element.setAttribute("text-align", justification);
        }
    }

    public static void setLanguage(CharacterRun characterRun, Element element) {
        if (characterRun.getLanguageCode() != 0) {
            String language = AbstractWordUtils.getLanguage(characterRun.getLanguageCode());
            if (AbstractWordUtils.isNotEmpty(language)) {
                element.setAttribute("language", language);
            }
        }
    }

    public static void setParagraphProperties(Paragraph paragraph, Element element) {
        setIndent(paragraph, element);
        setJustification(paragraph, element);
        setBorder(element, paragraph.getBottomBorder(), "bottom");
        setBorder(element, paragraph.getLeftBorder(), "left");
        setBorder(element, paragraph.getRightBorder(), gon.f71288n0);
        setBorder(element, paragraph.getTopBorder(), OneDriverConstants.TOP);
        if (paragraph.pageBreakBefore()) {
            element.setAttribute("break-before", "page");
        }
        element.setAttribute("hyphenate", String.valueOf(paragraph.isAutoHyphenated()));
        if (paragraph.keepOnPage()) {
            element.setAttribute("keep-together.within-page", NotificationDisplayHandler.STRATEGY_ALWAYS);
        }
        if (paragraph.keepWithNext()) {
            element.setAttribute("keep-with-next.within-page", NotificationDisplayHandler.STRATEGY_ALWAYS);
        }
        element.setAttribute("linefeed-treatment", "preserve");
        element.setAttribute("white-space-collapse", "false");
    }

    public static void setPictureProperties(Picture picture, Element element) {
        int horizontalScalingFactor = picture.getHorizontalScalingFactor();
        int verticalScalingFactor = picture.getVerticalScalingFactor();
        if (horizontalScalingFactor > 0) {
            element.setAttribute("content-width", (((picture.getDxaGoal() * horizontalScalingFactor) / 1000) / 20) + ExtUnits.UNIT_PT);
        } else {
            element.setAttribute("content-width", (picture.getDxaGoal() / 20) + ExtUnits.UNIT_PT);
        }
        if (verticalScalingFactor > 0) {
            element.setAttribute("content-height", (((picture.getDyaGoal() * verticalScalingFactor) / 1000) / 20) + ExtUnits.UNIT_PT);
        } else {
            element.setAttribute("content-height", (picture.getDyaGoal() / 20) + ExtUnits.UNIT_PT);
        }
        if (horizontalScalingFactor <= 0 || verticalScalingFactor <= 0) {
            element.setAttribute("scaling", "uniform");
        } else {
            element.setAttribute("scaling", "non-uniform");
        }
        element.setAttribute("vertical-align", "text-bottom");
        if (picture.getDyaCropTop() == 0 && picture.getDxaCropRight() == 0 && picture.getDyaCropBottom() == 0 && picture.getDxaCropLeft() == 0) {
            return;
        }
        element.setAttribute("clip", "rect(" + (picture.getDyaCropTop() / 20) + "pt, " + (picture.getDxaCropRight() / 20) + "pt, " + (picture.getDyaCropBottom() / 20) + "pt, " + (picture.getDxaCropLeft() / 20) + "pt)");
        element.setAttribute("overflow", CellUtil.HIDDEN);
    }

    public static void setTableCellProperties(TableRow tableRow, TableCell tableCell, Element element, boolean z, boolean z2, boolean z3, boolean z4) {
        element.setAttribute("width", (tableCell.getWidth() / 1440.0f) + "in");
        element.setAttribute("padding-start", (((float) tableRow.getGapHalf()) / 1440.0f) + "in");
        element.setAttribute("padding-end", (((float) tableRow.getGapHalf()) / 1440.0f) + "in");
        BorderCode topBorder = (tableCell.getBrcTop() == null || tableCell.getBrcTop().getBorderType() == 0) ? z ? tableRow.getTopBorder() : tableRow.getHorizontalBorder() : tableCell.getBrcTop();
        BorderCode bottomBorder = (tableCell.getBrcBottom() == null || tableCell.getBrcBottom().getBorderType() == 0) ? z2 ? tableRow.getBottomBorder() : tableRow.getHorizontalBorder() : tableCell.getBrcBottom();
        BorderCode leftBorder = (tableCell.getBrcLeft() == null || tableCell.getBrcLeft().getBorderType() == 0) ? z3 ? tableRow.getLeftBorder() : tableRow.getVerticalBorder() : tableCell.getBrcLeft();
        BorderCode rightBorder = (tableCell.getBrcRight() == null || tableCell.getBrcRight().getBorderType() == 0) ? z4 ? tableRow.getRightBorder() : tableRow.getVerticalBorder() : tableCell.getBrcRight();
        setBorder(element, bottomBorder, "bottom");
        setBorder(element, leftBorder, "left");
        setBorder(element, rightBorder, gon.f71288n0);
        setBorder(element, topBorder, OneDriverConstants.TOP);
    }

    public static void setTableRowProperties(TableRow tableRow, Element element) {
        if (tableRow.getRowHeight() > 0) {
            element.setAttribute("height", (tableRow.getRowHeight() / 1440.0f) + "in");
        }
        if (tableRow.cantSplit()) {
            return;
        }
        element.setAttribute("keep-together.within-column", NotificationDisplayHandler.STRATEGY_ALWAYS);
    }
}
