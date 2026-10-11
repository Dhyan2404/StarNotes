package org.apache.poi.convert.hwpf;

import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sunia.HTREnginev2.b7n;
import com.sunia.HTREnginev2.gon;
import java.awt.geom.Rectangle2D;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeSet;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.convert.AbstractConverter;
import org.apache.poi.convert.IndentLimit;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.hssf.record.crypto.Biff8EncryptionKey;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.HWPFDocumentCore;
import org.apache.poi.hwpf.HWPFOldDocument;
import org.apache.poi.hwpf.OldWordFileFormatException;
import org.apache.poi.hwpf.usermodel.BorderCode;
import org.apache.poi.hwpf.usermodel.CharacterRun;
import org.apache.poi.hwpf.usermodel.HWPFList;
import org.apache.poi.hwpf.usermodel.Paragraph;
import org.apache.poi.hwpf.usermodel.Section;
import org.apache.poi.hwpf.usermodel.Table;
import org.apache.poi.hwpf.usermodel.TableCell;
import org.apache.poi.hwpf.usermodel.TableRow;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.util.ExtUnits;

/* loaded from: classes12.dex */
public class HWPFWordToHtmlUtils extends WordToHtmlUtils {
    public static final String EMPTY = "";
    public static final int TABLE_CELL_DEFAULT_HEIGHT = 960;
    public static final int TABLE_ROW_DEFAULT_HEIGHT = 360;

    /* loaded from: classes12.dex */
    public static class CHPAbstractType {
        static final byte KUL_BY_WORD = 2;
        static final byte KUL_DASH = 7;
        static final byte KUL_DASHED_HEAVY = 23;
        static final byte KUL_DASH_LONG = 39;
        static final byte KUL_DASH_LONG_HEAVY = 55;
        static final byte KUL_DOT = 8;
        static final byte KUL_DOTTED = 4;
        static final byte KUL_DOTTED_HEAVY = 20;
        static final byte KUL_DOT_DASH = 9;
        static final byte KUL_DOT_DASH_HEAVY = 25;
        static final byte KUL_DOT_DOT_DASH = 10;
        static final byte KUL_DOT_DOT_DASH_HEAVY = 26;
        static final byte KUL_DOUBLE = 3;
        static final byte KUL_HIDDEN = 5;
        static final byte KUL_NONE = 0;
        static final byte KUL_SINGLE = 1;
        static final byte KUL_THICK = 6;
        static final byte KUL_WAVE = 11;
        static final byte KUL_WAVE_DOUBLE = 43;
        static final byte KUL_WAVE_HEAVY = 27;
    }

    /* loaded from: classes12.dex */
    public static class NumberingState {
        private final Map<String, Integer> levels = new HashMap();

        public void clear() {
            this.levels.clear();
        }
    }

    public static void addBold(boolean z, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("font-weight:");
        sb2.append(z ? "bold" : "normal");
        sb2.append(AndroidTreeView.f47214k);
        sb.append(sb2.toString());
    }

    public static void addBorder(BorderCode borderCode, String str, StringBuilder sb) {
        if (borderCode == null || borderCode.isEmpty()) {
            return;
        }
        if (WordToHtmlUtils.isEmpty(str)) {
            sb.append("border:");
        } else {
            sb.append("border-");
            sb.append(str);
        }
        sb.append(":");
        if (borderCode.getLineWidth() < 8) {
            sb.append("thin");
        } else {
            sb.append(getBorderWidth(borderCode));
        }
        sb.append(' ');
        sb.append(getBorderType(borderCode));
        sb.append(' ');
        sb.append(getColor(borderCode.getColor()));
        sb.append(';');
    }

    public static void addCharactersProperties(CharacterRun characterRun, StringBuilder sb) {
        addBorder(characterRun.getBorder(), "", sb);
        if (characterRun.isCapitalized()) {
            sb.append("text-transform:uppercase;");
        }
        if (characterRun.getIco24() != -1) {
            sb.append("color:" + getColor24(characterRun.getIco24()) + AndroidTreeView.f47214k);
        }
        if (characterRun.isHighlighted()) {
            sb.append("background-color:" + getColor(characterRun.getHighlightedColor()) + AndroidTreeView.f47214k);
        }
        if (characterRun.isStrikeThrough()) {
            sb.append("text-decoration:line-through;");
        }
        if (characterRun.isShadowed()) {
            sb.append("text-shadow:" + (characterRun.getFontSize() / 24) + "px;");
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
        addUnderLineStype(sb, characterRun);
        if (characterRun.isVanished()) {
            sb.append("visibility:hidden;");
        }
    }

    public static void addFontFamily(String str, StringBuilder sb) {
        if (WordToHtmlUtils.isEmpty(str)) {
            return;
        }
        sb.append("font-family:" + str + AndroidTreeView.f47214k);
    }

    public static void addFontSize(int i, StringBuilder sb) {
        sb.append("font-size:");
        sb.append(i);
        sb.append(AbstractConverter.getFontUnit());
        sb.append(';');
    }

    public static void addIndent(Paragraph paragraph, StringBuilder sb, float f) {
        double twipsToEM = ExtUnits.twipsToEM(paragraph.getFirstLineIndent() * f);
        addLimitIndentEM(sb, "text-indent:", twipsToEM);
        double twipsToPx = ExtUnits.twipsToPx(paragraph.getIndentFromLeft() * f);
        if (twipsToEM < 0.0d) {
            twipsToPx += ExtUnits.emToPX(twipsToEM);
        }
        addLimitIndentPX(sb, "margin-left:", twipsToPx);
        addLimitIndentPX(sb, "margin-right:", ExtUnits.twipsToPx(paragraph.getIndentFromRight() * f));
        addLimitIndentPX(sb, "margin-top:", ExtUnits.twipsToPx(paragraph.getSpacingBefore()));
        addLimitIndentPX(sb, "margin-bottom:", ExtUnits.twipsToPx(paragraph.getSpacingAfter()));
    }

    public static void addJustification(Paragraph paragraph, StringBuilder sb) {
        String justification = getJustification(paragraph.getJustification());
        if (WordToHtmlUtils.isNotEmpty(justification)) {
            sb.append("text-align:" + justification + AndroidTreeView.f47214k);
        }
    }

    public static boolean addLimitIndentEM(StringBuilder sb, String str, double d) {
        if (d <= 0.0d) {
            return false;
        }
        sb.append(str);
        sb.append(ExtUnits.format(IndentLimit.getLimitEM(d)));
        sb.append(ExtUnits.UNIT_EM);
        sb.append(';');
        return true;
    }

    public static boolean addLimitIndentPX(StringBuilder sb, String str, double d) {
        if (d <= 0.0d) {
            return false;
        }
        sb.append(str);
        sb.append(ExtUnits.format(IndentLimit.getLimitPX(d)));
        sb.append(ExtUnits.UNIT_PX);
        sb.append(';');
        return true;
    }

    public static void addParagraphProperties(Paragraph paragraph, StringBuilder sb, float f) {
        addIndent(paragraph, sb, f);
        addJustification(paragraph, sb);
        addBorder(paragraph.getBottomBorder(), "bottom", sb);
        addBorder(paragraph.getLeftBorder(), "left", sb);
        addBorder(paragraph.getRightBorder(), gon.f71288n0, sb);
        addBorder(paragraph.getTopBorder(), OneDriverConstants.TOP, sb);
        if (paragraph.pageBreakBefore()) {
            sb.append("break-before:page;");
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("hyphenate:");
        sb2.append(paragraph.isAutoHyphenated() ? "auto" : "none");
        sb2.append(AndroidTreeView.f47214k);
        sb.append(sb2.toString());
        if (paragraph.keepOnPage()) {
            sb.append("keep-together.within-page:always;");
        }
        if (paragraph.keepWithNext()) {
            sb.append("keep-with-next.within-page:always;");
        }
    }

    public static void addTableCellProperties(TableRow tableRow, TableCell tableCell, boolean z, boolean z2, boolean z3, boolean z4, StringBuilder sb, int i, float f) {
        int width = tableCell.getWidth() > 0 ? tableCell.getWidth() : TABLE_CELL_DEFAULT_HEIGHT;
        sb.append("width:");
        sb.append(ExtUnits.format((width * 100.0f) / i));
        sb.append("%;");
        addLimitIndentPX(sb, "padding-start:", ExtUnits.twipsToPx(tableRow.getGapHalf() * f));
        addLimitIndentPX(sb, "padding-end:", ExtUnits.twipsToPx(tableRow.getGapHalf() * f));
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
        int rowHeight = tableRow.getRowHeight();
        addLimitIndentEM(sb, "min-height:", ExtUnits.twipsToEM(rowHeight > 0 ? rowHeight : 360.0d));
        if (tableRow.cantSplit()) {
            return;
        }
        sb.append("keep-together:always;");
    }

    private static void addUnderLineStype(StringBuilder sb, CharacterRun characterRun) {
        if (characterRun.getUnderlineCode() <= 0) {
            return;
        }
        sb.append("text-decoration:underline;");
        int underlineCode = characterRun.getUnderlineCode();
        if (underlineCode == 3) {
            sb.append("text-decoration-style:double;");
            return;
        }
        if (underlineCode != 4 && underlineCode != 20) {
            if (underlineCode != 23 && underlineCode != 39) {
                if (underlineCode != 43) {
                    if (underlineCode != 55) {
                        if (underlineCode != 26) {
                            if (underlineCode != 27) {
                                switch (underlineCode) {
                                    case 7:
                                        break;
                                    case 8:
                                    case 9:
                                    case 10:
                                        break;
                                    case 11:
                                        break;
                                    default:
                                        return;
                                }
                            }
                        }
                    }
                }
                sb.append("text-decoration-style:wavy;");
                return;
            }
            sb.append("text-decoration-style:dashed;");
            return;
        }
        sb.append("text-decoration-style:dotted;");
    }

    public static int[] buildTableCellEdgesArray(Table table) {
        TreeSet treeSet = new TreeSet();
        for (int i = 0; i < table.numRows(); i++) {
            TableRow row = table.getRow(i);
            for (int i2 = 0; i2 < row.numCells(); i2++) {
                TableCell cell = row.getCell(i2);
                treeSet.add(Integer.valueOf(cell.getLeftEdge()));
                treeSet.add(Integer.valueOf(cell.getLeftEdge() + cell.getWidth()));
            }
        }
        Integer[] numArr = (Integer[]) treeSet.toArray(new Integer[0]);
        int[] iArr = new int[numArr.length];
        for (int i3 = 0; i3 < numArr.length; i3++) {
            iArr[i3] = numArr[i3].intValue();
        }
        return iArr;
    }

    public static String getBorderType(BorderCode borderCode) {
        if (borderCode == null) {
            throw new IllegalArgumentException("borderCode is null");
        }
        switch (borderCode.getBorderType()) {
            case 3:
                return "double";
            case 4:
            case 5:
            case 20:
            default:
                return "solid";
            case 6:
                return "dotted";
            case 7:
            case 8:
                return "dashed";
            case 9:
                return "dotted";
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
                return "double";
            case 22:
            case 23:
                return "dashed";
            case 24:
                return "ridge";
            case 25:
                return "grooved";
        }
    }

    public static String getBorderWidth(BorderCode borderCode) {
        return ExtUnits.format(borderCode.getLineWidth() / 8.0f) + ExtUnits.UNIT_PX;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [int] */
    public static String getBulletText(NumberingState numberingState, HWPFList hWPFList, char c) {
        int startAt;
        StringBuilder sb = new StringBuilder();
        for (char c2 : hWPFList.getNumberText(c).toCharArray()) {
            if (c2 < 9) {
                int lsid = hWPFList.getLsid();
                String str = lsid + "#" + ((int) c2);
                if (hWPFList.isStartAtOverriden(c2) || !numberingState.levels.containsKey(str)) {
                    startAt = hWPFList.getStartAt(c2);
                    numberingState.levels.put(str, Integer.valueOf(startAt));
                } else {
                    startAt = ((Integer) numberingState.levels.get(str)).intValue();
                    if (c == c2) {
                        startAt++;
                        numberingState.levels.put(str, Integer.valueOf(startAt));
                    }
                }
                if (c == c2) {
                    while (true) {
                        c2++;
                        if (c2 >= 9) {
                            break;
                        }
                        numberingState.levels.remove(lsid + "#" + ((int) c2));
                    }
                }
                sb.append(NumberFormatter.getNumber(startAt, hWPFList.getNumberFormat(c)));
            } else {
                sb.append(c2);
            }
        }
        byte typeOfCharFollowingTheNumber = hWPFList.getTypeOfCharFollowingTheNumber(c);
        if (typeOfCharFollowingTheNumber == 0 || typeOfCharFollowingTheNumber == 1) {
            sb.append(Constants.UNICODECHAR_NO_BREAK_SPACE);
        }
        return sb.toString();
    }

    public static String getColor(int i) {
        switch (i) {
            case 2:
                return "blue";
            case 3:
                return "cyan";
            case 4:
                return "green";
            case 5:
                return "magenta";
            case 6:
                return "red";
            case 7:
                return "yellow";
            case 8:
                return "white";
            case 9:
                return "darkblue";
            case 10:
                return "darkcyan";
            case 11:
                return "darkgreen";
            case 12:
                return "darkmagenta";
            case 13:
                return "darkred";
            case 14:
                return "darkyellow";
            case 15:
                return "darkgray";
            case 16:
                return "lightgray";
            default:
                return "black";
        }
    }

    public static String getColor24(int i) {
        if (i == -1) {
            throw new IllegalArgumentException("This colorref is empty");
        }
        int i2 = i & 16777215;
        int i3 = ((i2 & 16711680) >> 16) | ((i2 & 255) << 16) | (65280 & i2);
        switch (i3) {
            case 0:
                return "black";
            case 128:
                return "navy";
            case 255:
                return "blue";
            case 32768:
                return "green";
            case b7n.f65484e /* 32896 */:
                return "teal";
            case 65280:
                return "lime";
            case 65535:
                return "aqua";
            case 8388608:
                return "maroon";
            case 8388736:
                return "purple";
            case 8421376:
                return "olive";
            case 8421504:
                return "gray";
            case 12632256:
                return "silver";
            case 16711680:
                return "red";
            case 16711935:
                return "fuchsia";
            case 16776960:
                return "yellow";
            case 16777215:
                return "white";
            default:
                StringBuilder sb = new StringBuilder("#");
                String hexString = Integer.toHexString(i3);
                for (int length = hexString.length(); length < 6; length++) {
                    sb.append('0');
                }
                sb.append(hexString);
                return sb.toString();
        }
    }

    public static String getJustification(int i) {
        switch (i) {
            case 0:
                return gon.f71290o0;
            case 1:
                return "center";
            case 2:
                return "end";
            case 3:
            case 4:
                return "justify";
            case 5:
                return "center";
            case 6:
                return "left";
            case 7:
                return gon.f71290o0;
            case 8:
                return "end";
            case 9:
                return "justify";
            default:
                return "";
        }
    }

    public static String getLanguage(int i) {
        if (i == 1024) {
            return "";
        }
        if (i == 1033) {
            return "en-us";
        }
        if (i == 1049) {
            return "ru-ru";
        }
        if (i == 2057) {
            return "en-uk";
        }
        WordToHtmlUtils.LOG.atWarn().log("Unknown or unmapped language code: {}", Unbox.box(i));
        return "";
    }

    public static String getListItemNumberLabel(int i, int i2) {
        if (i2 != 0) {
            WordToHtmlUtils.LOG.atInfo().log("NYI: toListItemNumberLabel(): {}", Unbox.box(i2));
        }
        return String.valueOf(i);
    }

    public static String getOpacity(int i) {
        int i2 = (int) ((i & 4278190080L) >>> 24);
        if (i2 == 0 || i2 == 255) {
            return ".0";
        }
        return "" + (i2 / 255.0f);
    }

    public static String getSectionStyle(Section section) {
        StringBuilder sb = new StringBuilder();
        if (section.getNumColumns() > 1) {
            sb.append("column-count:");
            sb.append(section.getNumColumns());
            sb.append(AndroidTreeView.f47214k);
            if (section.isColumnsEvenlySpaced()) {
                double twipsToPx = ExtUnits.twipsToPx(section.getDistanceBetweenColumns());
                sb.append("column-gap:");
                sb.append(ExtUnits.format(twipsToPx));
                sb.append("px;");
            } else {
                sb.append("column-gap:24px;");
            }
        }
        return sb.toString();
    }

    public static int getTableCellTotalWidth(TableRow tableRow) {
        int numCells = tableRow.numCells();
        int i = 0;
        for (int i2 = 0; i2 < numCells; i2++) {
            int width = tableRow.getCell(i2).getWidth();
            if (width <= 0) {
                width = TABLE_CELL_DEFAULT_HEIGHT;
            }
            i += width;
        }
        return i;
    }

    public static HWPFDocumentCore loadDoc(DirectoryNode directoryNode) throws IOException {
        try {
            return new HWPFDocument(directoryNode);
        } catch (OldWordFileFormatException unused) {
            return new HWPFOldDocument(directoryNode);
        }
    }

    private static HWPFDocumentCore loadOldDoc(POIFSFileSystem pOIFSFileSystem) throws IOException {
        try {
            return new HWPFOldDocument(pOIFSFileSystem);
        } catch (Exception e) {
            CloseUtils.close(pOIFSFileSystem);
            throw e;
        }
    }

    public static void readSectionPageSize(Section section, Rectangle2D rectangle2D) {
        double twipsToPx = ExtUnits.twipsToPx(section.getMarginLeft());
        double twipsToPx2 = ExtUnits.twipsToPx(section.getMarginTop());
        rectangle2D.setRect(twipsToPx, twipsToPx2, (ExtUnits.twipsToPx(section.getPageWidth()) - twipsToPx) - ExtUnits.twipsToPx(section.getMarginRight()), (ExtUnits.twipsToPx(section.getPageHeight()) - twipsToPx2) - ExtUnits.twipsToPx(section.getMarginBottom()));
    }

    public static HWPFDocumentCore loadDoc(File file, String str) throws IOException {
        boolean z = true;
        POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(file, true);
        if (str != null) {
            Biff8EncryptionKey.setCurrentUserPassword(str);
        } else {
            z = false;
        }
        try {
            try {
                return loadDoc(pOIFSFileSystem);
            } catch (Exception e) {
                CloseUtils.close(pOIFSFileSystem);
                throw e;
            }
        } finally {
            if (z) {
                Biff8EncryptionKey.setCurrentUserPassword(null);
            }
        }
    }

    private static HWPFDocumentCore loadDoc(POIFSFileSystem pOIFSFileSystem) throws IOException {
        try {
            return new HWPFDocument(pOIFSFileSystem);
        } catch (OldWordFileFormatException unused) {
            return loadOldDoc(pOIFSFileSystem);
        } catch (Exception e) {
            CloseUtils.close(pOIFSFileSystem);
            throw e;
        }
    }
}
