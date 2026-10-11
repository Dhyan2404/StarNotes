package org.apache.poi.hwpf.converter;

import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sunia.HTREnginev2.gon;
import org.apache.poi.hwpf.usermodel.BorderCode;
import org.apache.poi.hwpf.usermodel.CharacterRun;
import org.apache.poi.hwpf.usermodel.Paragraph;
import org.apache.poi.hwpf.usermodel.TableCell;
import org.apache.poi.hwpf.usermodel.TableRow;
import org.w3c.dom.Element;

/* loaded from: classes12.dex */
public class WordToHtmlUtils extends AbstractWordUtils {
    public static void addBold(boolean z, StringBuilder sb) {
        sb.append("font-weight:");
        sb.append(z ? "bold" : "normal");
        sb.append(AndroidTreeView.f47214k);
    }

    public static void addBorder(BorderCode borderCode, String str, StringBuilder sb) {
        if (borderCode == null || borderCode.isEmpty()) {
            return;
        }
        if (AbstractWordUtils.isEmpty(str)) {
            sb.append("border:");
        } else {
            sb.append("border-");
            sb.append(str);
        }
        sb.append(":");
        if (borderCode.getLineWidth() < 8) {
            sb.append("thin");
        } else {
            sb.append(AbstractWordUtils.getBorderWidth(borderCode));
        }
        sb.append(' ');
        sb.append(AbstractWordUtils.getBorderType(borderCode));
        sb.append(' ');
        sb.append(AbstractWordUtils.getColor(borderCode.getColor()));
        sb.append(';');
    }

    public static void addCharactersProperties(CharacterRun characterRun, StringBuilder sb) {
        addBorder(characterRun.getBorder(), "", sb);
        if (characterRun.isCapitalized()) {
            sb.append("text-transform:uppercase;");
        }
        if (characterRun.getIco24() != -1) {
            sb.append("color:");
            sb.append(AbstractWordUtils.getColor24(characterRun.getIco24()));
            sb.append(AndroidTreeView.f47214k);
        }
        if (characterRun.isHighlighted()) {
            sb.append("background-color:");
            sb.append(AbstractWordUtils.getColor(characterRun.getHighlightedColor()));
            sb.append(AndroidTreeView.f47214k);
        }
        if (characterRun.isStrikeThrough()) {
            sb.append("text-decoration:line-through;");
        }
        if (characterRun.isShadowed()) {
            sb.append("text-shadow:");
            sb.append(characterRun.getFontSize() / 24);
            sb.append("pt;");
        }
        if (characterRun.isSmallCaps()) {
            sb.append("font-variant:small-caps;");
        }
        if (characterRun.getSubSuperScriptIndex() == 1) {
            sb.append("vertical-align:super;");
            sb.append("font-size:smaller;");
        }
        if (characterRun.getSubSuperScriptIndex() == 2) {
            sb.append("vertical-align:sub;");
            sb.append("font-size:smaller;");
        }
        if (characterRun.getUnderlineCode() > 0) {
            sb.append("text-decoration:underline;");
        }
        if (characterRun.isVanished()) {
            sb.append("visibility:hidden;");
        }
    }

    public static void addFontFamily(String str, StringBuilder sb) {
        if (AbstractWordUtils.isEmpty(str)) {
            return;
        }
        sb.append("font-family:");
        sb.append(str);
        sb.append(AndroidTreeView.f47214k);
    }

    public static void addFontSize(int i, StringBuilder sb) {
        sb.append("font-size:");
        sb.append(i);
        sb.append("pt;");
    }

    public static void addIndent(Paragraph paragraph, StringBuilder sb) {
        addIndent(sb, "text-indent", paragraph.getFirstLineIndent());
        addIndent(sb, "margin-left", paragraph.getIndentFromLeft());
        addIndent(sb, "margin-right", paragraph.getIndentFromRight());
        addIndent(sb, "margin-top", paragraph.getSpacingBefore());
        addIndent(sb, "margin-bottom", paragraph.getSpacingAfter());
    }

    public static void addJustification(Paragraph paragraph, StringBuilder sb) {
        String justification = AbstractWordUtils.getJustification(paragraph.getJustification());
        if (AbstractWordUtils.isNotEmpty(justification)) {
            sb.append("text-align:");
            sb.append(justification);
            sb.append(AndroidTreeView.f47214k);
        }
    }

    public static void addParagraphProperties(Paragraph paragraph, StringBuilder sb) {
        addIndent(paragraph, sb);
        addJustification(paragraph, sb);
        addBorder(paragraph.getBottomBorder(), "bottom", sb);
        addBorder(paragraph.getLeftBorder(), "left", sb);
        addBorder(paragraph.getRightBorder(), gon.f71288n0, sb);
        addBorder(paragraph.getTopBorder(), OneDriverConstants.TOP, sb);
        if (paragraph.pageBreakBefore()) {
            sb.append("break-before:page;");
        }
        sb.append("hyphenate:");
        sb.append(paragraph.isAutoHyphenated() ? "auto" : "none");
        sb.append(AndroidTreeView.f47214k);
        if (paragraph.keepOnPage()) {
            sb.append("keep-together.within-page:always;");
        }
        if (paragraph.keepWithNext()) {
            sb.append("keep-with-next.within-page:always;");
        }
    }

    public static void addTableCellProperties(TableRow tableRow, TableCell tableCell, boolean z, boolean z2, boolean z3, boolean z4, StringBuilder sb) {
        sb.append("width:");
        sb.append(tableCell.getWidth() / 1440.0f);
        sb.append("in;");
        sb.append("padding-start:");
        sb.append(tableRow.getGapHalf() / 1440.0f);
        sb.append("in;");
        sb.append("padding-end:");
        sb.append(tableRow.getGapHalf() / 1440.0f);
        sb.append("in;");
        BorderCode topBorder = (tableCell.getBrcTop() == null || tableCell.getBrcTop().getBorderType() == 0) ? z ? tableRow.getTopBorder() : tableRow.getHorizontalBorder() : tableCell.getBrcTop();
        BorderCode bottomBorder = (tableCell.getBrcBottom() == null || tableCell.getBrcBottom().getBorderType() == 0) ? z2 ? tableRow.getBottomBorder() : tableRow.getHorizontalBorder() : tableCell.getBrcBottom();
        BorderCode leftBorder = (tableCell.getBrcLeft() == null || tableCell.getBrcLeft().getBorderType() == 0) ? z3 ? tableRow.getLeftBorder() : tableRow.getVerticalBorder() : tableCell.getBrcLeft();
        BorderCode rightBorder = (tableCell.getBrcRight() == null || tableCell.getBrcRight().getBorderType() == 0) ? z4 ? tableRow.getRightBorder() : tableRow.getVerticalBorder() : tableCell.getBrcRight();
        addBorder(bottomBorder, "bottom", sb);
        addBorder(leftBorder, "left", sb);
        addBorder(rightBorder, gon.f71288n0, sb);
        addBorder(topBorder, OneDriverConstants.TOP, sb);
    }

    public static void addTableRowProperties(TableRow tableRow, StringBuilder sb) {
        if (tableRow.getRowHeight() > 0) {
            sb.append("height:");
            sb.append(tableRow.getRowHeight() / 1440.0f);
            sb.append("in;");
        }
        if (tableRow.cantSplit()) {
            return;
        }
        sb.append("keep-together:always;");
    }

    public static void compactSpans(Element element) {
        AbstractWordUtils.compactChildNodesR(element, gon.f71297s);
    }

    private static void addIndent(StringBuilder sb, String str, int i) {
        if (i == 0) {
            return;
        }
        sb.append(str);
        sb.append(":");
        sb.append(i / 1440.0f);
        sb.append("in;");
    }
}
