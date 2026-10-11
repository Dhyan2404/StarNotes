package org.apache.poi.ss.util;

import androidx.core.text.util.LocalePreferences;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellCopyContext;
import org.apache.poi.ss.usermodel.CellCopyPolicy;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Color;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Hyperlink;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.VerticalAlignment;
import org.apache.poi.ss.usermodel.Workbook;
import org.scribe.model.ParameterList;

/* loaded from: classes13.dex */
public final class CellUtil {
    public static final String ALIGNMENT = "alignment";
    public static final String FILL_PATTERN = "fillPattern";
    public static final String FONT = "font";
    public static final String ROTATION = "rotation";
    public static final String VERTICAL_ALIGNMENT = "verticalAlignment";
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) CellUtil.class);
    public static final String BOTTOM_BORDER_COLOR = "bottomBorderColor";
    public static final String LEFT_BORDER_COLOR = "leftBorderColor";
    public static final String RIGHT_BORDER_COLOR = "rightBorderColor";
    public static final String TOP_BORDER_COLOR = "topBorderColor";
    public static final String FILL_FOREGROUND_COLOR = "fillForegroundColor";
    public static final String FILL_BACKGROUND_COLOR = "fillBackgroundColor";
    public static final String INDENTION = "indention";
    public static final String DATA_FORMAT = "dataFormat";
    private static final Set<String> shortValues = Collections.unmodifiableSet(new HashSet(Arrays.asList(BOTTOM_BORDER_COLOR, LEFT_BORDER_COLOR, RIGHT_BORDER_COLOR, TOP_BORDER_COLOR, FILL_FOREGROUND_COLOR, FILL_BACKGROUND_COLOR, INDENTION, DATA_FORMAT, "rotation")));
    public static final String FILL_FOREGROUND_COLOR_COLOR = "fillForegroundColorColor";
    public static final String FILL_BACKGROUND_COLOR_COLOR = "fillBackgroundColorColor";
    private static final Set<String> colorValues = Collections.unmodifiableSet(new HashSet(Arrays.asList(FILL_FOREGROUND_COLOR_COLOR, FILL_BACKGROUND_COLOR_COLOR)));
    private static final Set<String> intValues = Collections.unmodifiableSet(new HashSet(Collections.singletonList("font")));
    public static final String LOCKED = "locked";
    public static final String HIDDEN = "hidden";
    public static final String WRAP_TEXT = "wrapText";
    public static final String SHRINK_TO_FIT = "shrinkToFit";
    public static final String QUOTE_PREFIXED = "quotePrefixed";
    private static final Set<String> booleanValues = Collections.unmodifiableSet(new HashSet(Arrays.asList(LOCKED, HIDDEN, WRAP_TEXT, SHRINK_TO_FIT, QUOTE_PREFIXED)));
    public static final String BORDER_BOTTOM = "borderBottom";
    public static final String BORDER_LEFT = "borderLeft";
    public static final String BORDER_RIGHT = "borderRight";
    public static final String BORDER_TOP = "borderTop";
    private static final Set<String> borderTypeValues = Collections.unmodifiableSet(new HashSet(Arrays.asList(BORDER_BOTTOM, BORDER_LEFT, BORDER_RIGHT, BORDER_TOP)));
    private static final UnicodeMapping[] unicodeMappings = {m69589um("alpha", "α"), m69589um("beta", "β"), m69589um("gamma", "γ"), m69589um("delta", "δ"), m69589um("epsilon", "ε"), m69589um("zeta", "ζ"), m69589um("eta", "η"), m69589um("theta", "θ"), m69589um("iota", "ι"), m69589um("kappa", "κ"), m69589um("lambda", "λ"), m69589um(LocalePreferences.TemperatureUnit.f5706a, "μ"), m69589um("nu", "ν"), m69589um("xi", "ξ"), m69589um("omicron", "ο")};

    /* renamed from: org.apache.poi.ss.util.CellUtil$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C198491 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType;

        static {
            int[] iArr = new int[CellType.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$CellType = iArr;
            try {
                iArr[CellType.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.FORMULA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BLANK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.ERROR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public static final class UnicodeMapping {
        public final String entityName;
        public final String resolvedValue;

        public UnicodeMapping(String str, String str2) {
            this.entityName = ParameterList.f115951c + str + AndroidTreeView.f47214k;
            this.resolvedValue = str2;
        }
    }

    private CellUtil() {
    }

    public static void copyCell(Cell cell, Cell cell2, CellCopyPolicy cellCopyPolicy, CellCopyContext cellCopyContext) {
        if (cellCopyPolicy.isCopyCellValue()) {
            if (cell != null) {
                CellType cellType = cell.getCellType();
                if (cellType == CellType.FORMULA && !cellCopyPolicy.isCopyCellFormula()) {
                    cellType = cell.getCachedFormulaResultType();
                }
                switch (C198491.$SwitchMap$org$apache$poi$ss$usermodel$CellType[cellType.ordinal()]) {
                    case 1:
                        if (!DateUtil.isCellDateFormatted(cell)) {
                            cell2.setCellValue(cell.getNumericCellValue());
                            break;
                        } else {
                            cell2.setCellValue(cell.getDateCellValue());
                            break;
                        }
                    case 2:
                        cell2.setCellValue(cell.getRichStringCellValue());
                        break;
                    case 3:
                        cell2.setCellFormula(cell.getCellFormula());
                        break;
                    case 4:
                        cell2.setBlank();
                        break;
                    case 5:
                        cell2.setCellValue(cell.getBooleanCellValue());
                        break;
                    case 6:
                        cell2.setCellErrorValue(cell.getErrorCellValue());
                        break;
                    default:
                        throw new IllegalArgumentException("Invalid cell type " + cell.getCellType());
                }
            } else {
                cell2.setBlank();
            }
        }
        if (cellCopyPolicy.isCopyCellStyle() && cell != null) {
            if (cell.getSheet() == null || cell2.getSheet() == null || cell2.getSheet().getWorkbook() != cell.getSheet().getWorkbook()) {
                CellStyle cellStyle = cell.getCellStyle();
                CellStyle mappedStyle = cellCopyContext == null ? null : cellCopyContext.getMappedStyle(cellStyle);
                if (mappedStyle == null) {
                    mappedStyle = cell2.getSheet().getWorkbook().createCellStyle();
                    mappedStyle.cloneStyleFrom(cellStyle);
                    if (cellCopyContext != null) {
                        cellCopyContext.putMappedStyle(cellStyle, mappedStyle);
                    }
                }
                cell2.setCellStyle(mappedStyle);
            } else {
                cell2.setCellStyle(cell.getCellStyle());
            }
        }
        Hyperlink hyperlink = cell == null ? null : cell.getHyperlink();
        if (cellCopyPolicy.isMergeHyperlink()) {
            if (hyperlink != null) {
                if (!(hyperlink instanceof Duplicatable)) {
                    throw new IllegalStateException("srcCell hyperlink is not an instance of Duplicatable");
                }
                cell2.setHyperlink((Hyperlink) ((Duplicatable) hyperlink).copy());
                return;
            }
            return;
        }
        if (cellCopyPolicy.isCopyHyperlink()) {
            if (hyperlink == null) {
                cell2.setHyperlink(null);
            } else {
                if (!(hyperlink instanceof Duplicatable)) {
                    throw new IllegalStateException("srcCell hyperlink is not an instance of Duplicatable");
                }
                cell2.setHyperlink((Hyperlink) ((Duplicatable) hyperlink).copy());
            }
        }
    }

    public static Cell createCell(Row row, int i, String str, CellStyle cellStyle) {
        Cell cell = getCell(row, i);
        cell.setCellValue(cell.getRow().getSheet().getWorkbook().getCreationHelper().createRichTextString(str));
        if (cellStyle != null) {
            cell.setCellStyle(cellStyle);
        }
        return cell;
    }

    private static boolean getBoolean(Map<String, Object> map, String str) {
        Object obj = map.get(str);
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return false;
    }

    private static BorderStyle getBorderStyle(Map<String, Object> map, String str) {
        Object obj = map.get(str);
        if (obj instanceof BorderStyle) {
            return (BorderStyle) obj;
        }
        if (obj instanceof Short) {
            LOGGER.atWarn().log("Deprecation warning: CellUtil properties map uses Short values for {}. Should use BorderStyle enums instead.", str);
            return BorderStyle.valueOf(((Short) obj).shortValue());
        }
        if (obj == null) {
            return BorderStyle.NONE;
        }
        throw new IllegalStateException("Unexpected border style class. Must be BorderStyle or Short (deprecated).");
    }

    public static Cell getCell(Row row, int i) {
        Cell cell = row.getCell(i);
        return cell == null ? row.createCell(i) : cell;
    }

    private static Color getColor(Map<String, Object> map, String str) {
        Object obj = map.get(str);
        if (obj instanceof Color) {
            return (Color) obj;
        }
        return null;
    }

    private static FillPatternType getFillPattern(Map<String, Object> map, String str) {
        Object obj = map.get(str);
        if (obj instanceof FillPatternType) {
            return (FillPatternType) obj;
        }
        if (obj instanceof Short) {
            LOGGER.atWarn().log("Deprecation warning: CellUtil properties map uses Short values for {}. Should use FillPatternType enums instead.", str);
            return FillPatternType.forInt(((Short) obj).shortValue());
        }
        if (obj == null) {
            return FillPatternType.NO_FILL;
        }
        throw new IllegalStateException("Unexpected fill pattern style class. Must be FillPatternType or Short (deprecated).");
    }

    private static Map<String, Object> getFormatProperties(CellStyle cellStyle) {
        HashMap hashMap = new HashMap();
        put(hashMap, ALIGNMENT, cellStyle.getAlignment());
        put(hashMap, VERTICAL_ALIGNMENT, cellStyle.getVerticalAlignment());
        put(hashMap, BORDER_BOTTOM, cellStyle.getBorderBottom());
        put(hashMap, BORDER_LEFT, cellStyle.getBorderLeft());
        put(hashMap, BORDER_RIGHT, cellStyle.getBorderRight());
        put(hashMap, BORDER_TOP, cellStyle.getBorderTop());
        put(hashMap, BOTTOM_BORDER_COLOR, Short.valueOf(cellStyle.getBottomBorderColor()));
        put(hashMap, DATA_FORMAT, Short.valueOf(cellStyle.getDataFormat()));
        put(hashMap, FILL_PATTERN, cellStyle.getFillPattern());
        put(hashMap, FILL_FOREGROUND_COLOR, Short.valueOf(cellStyle.getFillForegroundColor()));
        put(hashMap, FILL_BACKGROUND_COLOR, Short.valueOf(cellStyle.getFillBackgroundColor()));
        put(hashMap, FILL_FOREGROUND_COLOR_COLOR, cellStyle.getFillForegroundColorColor());
        put(hashMap, FILL_BACKGROUND_COLOR_COLOR, cellStyle.getFillBackgroundColorColor());
        put(hashMap, "font", Integer.valueOf(cellStyle.getFontIndex()));
        put(hashMap, HIDDEN, Boolean.valueOf(cellStyle.getHidden()));
        put(hashMap, INDENTION, Short.valueOf(cellStyle.getIndention()));
        put(hashMap, LEFT_BORDER_COLOR, Short.valueOf(cellStyle.getLeftBorderColor()));
        put(hashMap, LOCKED, Boolean.valueOf(cellStyle.getLocked()));
        put(hashMap, RIGHT_BORDER_COLOR, Short.valueOf(cellStyle.getRightBorderColor()));
        put(hashMap, "rotation", Short.valueOf(cellStyle.getRotation()));
        put(hashMap, TOP_BORDER_COLOR, Short.valueOf(cellStyle.getTopBorderColor()));
        put(hashMap, WRAP_TEXT, Boolean.valueOf(cellStyle.getWrapText()));
        put(hashMap, SHRINK_TO_FIT, Boolean.valueOf(cellStyle.getShrinkToFit()));
        put(hashMap, QUOTE_PREFIXED, Boolean.valueOf(cellStyle.getQuotePrefixed()));
        return hashMap;
    }

    private static HorizontalAlignment getHorizontalAlignment(Map<String, Object> map, String str) {
        Object obj = map.get(str);
        if (obj instanceof HorizontalAlignment) {
            return (HorizontalAlignment) obj;
        }
        if (obj instanceof Short) {
            LOGGER.atWarn().log("Deprecation warning: CellUtil properties map used a Short value for {}. Should use HorizontalAlignment enums instead.", str);
            return HorizontalAlignment.forInt(((Short) obj).shortValue());
        }
        if (obj == null) {
            return HorizontalAlignment.GENERAL;
        }
        throw new IllegalStateException("Unexpected horizontal alignment style class. Must be HorizontalAlignment or Short (deprecated).");
    }

    private static int getInt(Map<String, Object> map, String str) {
        Object obj = map.get(str);
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        return 0;
    }

    public static Row getRow(int i, Sheet sheet) {
        Row row = sheet.getRow(i);
        return row == null ? sheet.createRow(i) : row;
    }

    private static short getShort(Map<String, Object> map, String str) {
        Object obj = map.get(str);
        if (obj instanceof Number) {
            return ((Number) obj).shortValue();
        }
        return (short) 0;
    }

    private static VerticalAlignment getVerticalAlignment(Map<String, Object> map, String str) {
        Object obj = map.get(str);
        if (obj instanceof VerticalAlignment) {
            return (VerticalAlignment) obj;
        }
        if (obj instanceof Short) {
            LOGGER.atWarn().log("Deprecation warning: CellUtil properties map used a Short value for {}. Should use VerticalAlignment enums instead.", str);
            return VerticalAlignment.forInt(((Short) obj).shortValue());
        }
        if (obj == null) {
            return VerticalAlignment.BOTTOM;
        }
        throw new IllegalStateException("Unexpected vertical alignment style class. Must be VerticalAlignment or Short (deprecated).");
    }

    private static Short nullableShort(Map<String, Object> map, String str) {
        Object obj = map.get(str);
        if (obj instanceof Short) {
            return (Short) obj;
        }
        if (obj instanceof Number) {
            return Short.valueOf(((Number) obj).shortValue());
        }
        return null;
    }

    private static void put(Map<String, Object> map, String str, Object obj) {
        map.put(str, obj);
    }

    private static void putAll(Map<String, Object> map, Map<String, Object> map2) {
        for (String str : map.keySet()) {
            if (shortValues.contains(str)) {
                map2.put(str, nullableShort(map, str));
            } else if (colorValues.contains(str)) {
                map2.put(str, getColor(map, str));
            } else if (intValues.contains(str)) {
                map2.put(str, Integer.valueOf(getInt(map, str)));
            } else if (booleanValues.contains(str)) {
                map2.put(str, Boolean.valueOf(getBoolean(map, str)));
            } else if (borderTypeValues.contains(str)) {
                map2.put(str, getBorderStyle(map, str));
            } else if (ALIGNMENT.equals(str)) {
                map2.put(str, getHorizontalAlignment(map, str));
            } else if (VERTICAL_ALIGNMENT.equals(str)) {
                map2.put(str, getVerticalAlignment(map, str));
            } else if (FILL_PATTERN.equals(str)) {
                map2.put(str, getFillPattern(map, str));
            } else {
                LOGGER.atInfo().log("Ignoring unrecognized CellUtil format properties key: {}", str);
            }
        }
    }

    public static void setAlignment(Cell cell, HorizontalAlignment horizontalAlignment) {
        setCellStyleProperty(cell, ALIGNMENT, horizontalAlignment);
    }

    public static void setCellStyleProperties(Cell cell, Map<String, Object> map) {
        setCellStyleProperties(cell, map, false);
    }

    public static void setCellStyleProperty(Cell cell, String str, Object obj) {
        Map singletonMap;
        boolean z = true;
        if (FILL_FOREGROUND_COLOR_COLOR.equals(str) && obj == null) {
            singletonMap = new HashMap();
            singletonMap.put(FILL_FOREGROUND_COLOR_COLOR, null);
            singletonMap.put(FILL_FOREGROUND_COLOR, null);
        } else if (FILL_BACKGROUND_COLOR_COLOR.equals(str) && obj == null) {
            singletonMap = new HashMap();
            singletonMap.put(FILL_BACKGROUND_COLOR_COLOR, null);
            singletonMap.put(FILL_BACKGROUND_COLOR, null);
        } else {
            singletonMap = Collections.singletonMap(str, obj);
            z = false;
        }
        setCellStyleProperties(cell, singletonMap, z);
    }

    public static void setFont(Cell cell, Font font) {
        Workbook workbook = cell.getSheet().getWorkbook();
        int index = font.getIndex();
        if (!workbook.getFontAt(index).equals(font)) {
            throw new IllegalArgumentException("Font does not belong to this workbook");
        }
        setCellStyleProperty(cell, "font", Integer.valueOf(index));
    }

    private static void setFormatProperties(CellStyle cellStyle, Workbook workbook, Map<String, Object> map) {
        cellStyle.setAlignment(getHorizontalAlignment(map, ALIGNMENT));
        cellStyle.setVerticalAlignment(getVerticalAlignment(map, VERTICAL_ALIGNMENT));
        cellStyle.setBorderBottom(getBorderStyle(map, BORDER_BOTTOM));
        cellStyle.setBorderLeft(getBorderStyle(map, BORDER_LEFT));
        cellStyle.setBorderRight(getBorderStyle(map, BORDER_RIGHT));
        cellStyle.setBorderTop(getBorderStyle(map, BORDER_TOP));
        cellStyle.setBottomBorderColor(getShort(map, BOTTOM_BORDER_COLOR));
        cellStyle.setDataFormat(getShort(map, DATA_FORMAT));
        cellStyle.setFillPattern(getFillPattern(map, FILL_PATTERN));
        Short nullableShort = nullableShort(map, FILL_FOREGROUND_COLOR);
        if (nullableShort != null) {
            cellStyle.setFillForegroundColor(nullableShort.shortValue());
        }
        Short nullableShort2 = nullableShort(map, FILL_BACKGROUND_COLOR);
        if (nullableShort2 != null) {
            cellStyle.setFillBackgroundColor(nullableShort2.shortValue());
        }
        Color color = getColor(map, FILL_FOREGROUND_COLOR_COLOR);
        Color color2 = getColor(map, FILL_BACKGROUND_COLOR_COLOR);
        if (color != null) {
            try {
                cellStyle.setFillForegroundColor(color);
            } catch (IllegalArgumentException e) {
                LOGGER.atDebug().log("Mismatched FillForegroundColor instance used", e);
            }
        }
        if (color2 != null) {
            try {
                cellStyle.setFillBackgroundColor(color2);
            } catch (IllegalArgumentException e2) {
                LOGGER.atDebug().log("Mismatched FillBackgroundColor instance used", e2);
            }
        }
        cellStyle.setFont(workbook.getFontAt(getInt(map, "font")));
        cellStyle.setHidden(getBoolean(map, HIDDEN));
        cellStyle.setIndention(getShort(map, INDENTION));
        cellStyle.setLeftBorderColor(getShort(map, LEFT_BORDER_COLOR));
        cellStyle.setLocked(getBoolean(map, LOCKED));
        cellStyle.setRightBorderColor(getShort(map, RIGHT_BORDER_COLOR));
        cellStyle.setRotation(getShort(map, "rotation"));
        cellStyle.setTopBorderColor(getShort(map, TOP_BORDER_COLOR));
        cellStyle.setWrapText(getBoolean(map, WRAP_TEXT));
        cellStyle.setShrinkToFit(getBoolean(map, SHRINK_TO_FIT));
        cellStyle.setQuotePrefixed(getBoolean(map, QUOTE_PREFIXED));
    }

    public static void setVerticalAlignment(Cell cell, VerticalAlignment verticalAlignment) {
        setCellStyleProperty(cell, VERTICAL_ALIGNMENT, verticalAlignment);
    }

    private static boolean styleMapsMatch(Map<String, Object> map, Map<String, Object> map2, boolean z) {
        HashMap hashMap = new HashMap(map);
        HashMap hashMap2 = new HashMap(map2);
        Object remove = hashMap.remove(FILL_BACKGROUND_COLOR_COLOR);
        Object remove2 = hashMap2.remove(FILL_BACKGROUND_COLOR_COLOR);
        Object remove3 = hashMap.remove(FILL_FOREGROUND_COLOR_COLOR);
        Object remove4 = hashMap2.remove(FILL_FOREGROUND_COLOR_COLOR);
        if (hashMap.equals(hashMap2)) {
            return ((!z && remove2 == null) || Objects.equals(remove, remove2)) && ((!z && remove4 == null) || Objects.equals(remove3, remove4));
        }
        return false;
    }

    public static Cell translateUnicodeValues(Cell cell) {
        String string = cell.getRichStringCellValue().getString();
        String lowerCase = string.toLowerCase(Locale.ROOT);
        boolean z = false;
        for (UnicodeMapping unicodeMapping : unicodeMappings) {
            String str = unicodeMapping.entityName;
            if (lowerCase.contains(str)) {
                string = string.replaceAll(str, unicodeMapping.resolvedValue);
                z = true;
            }
        }
        if (z) {
            cell.setCellValue(cell.getRow().getSheet().getWorkbook().getCreationHelper().createRichTextString(string));
        }
        return cell;
    }

    /* renamed from: um */
    private static UnicodeMapping m69589um(String str, String str2) {
        return new UnicodeMapping(str, str2);
    }

    private static void setCellStyleProperties(Cell cell, Map<String, Object> map, boolean z) {
        CellStyle cellStyle;
        Workbook workbook = cell.getSheet().getWorkbook();
        Map<String, Object> formatProperties = getFormatProperties(cell.getCellStyle());
        if (map.containsKey(FILL_FOREGROUND_COLOR_COLOR) && map.get(FILL_FOREGROUND_COLOR_COLOR) == null) {
            formatProperties.remove(FILL_FOREGROUND_COLOR);
        }
        if (map.containsKey(FILL_FOREGROUND_COLOR) && !map.containsKey(FILL_FOREGROUND_COLOR_COLOR)) {
            formatProperties.remove(FILL_FOREGROUND_COLOR_COLOR);
        }
        if (map.containsKey(FILL_BACKGROUND_COLOR_COLOR) && map.get(FILL_BACKGROUND_COLOR_COLOR) == null) {
            formatProperties.remove(FILL_BACKGROUND_COLOR);
        }
        if (map.containsKey(FILL_BACKGROUND_COLOR) && !map.containsKey(FILL_BACKGROUND_COLOR_COLOR)) {
            formatProperties.remove(FILL_BACKGROUND_COLOR_COLOR);
        }
        putAll(map, formatProperties);
        int numCellStyles = workbook.getNumCellStyles();
        int i = 0;
        while (true) {
            if (i >= numCellStyles) {
                cellStyle = null;
                break;
            }
            cellStyle = workbook.getCellStyleAt(i);
            if (styleMapsMatch(getFormatProperties(cellStyle), formatProperties, z)) {
                break;
            } else {
                i++;
            }
        }
        if (cellStyle == null) {
            cellStyle = workbook.createCellStyle();
            setFormatProperties(cellStyle, workbook, formatProperties);
        }
        cell.setCellStyle(cellStyle);
    }

    public static Cell createCell(Row row, int i, String str) {
        return createCell(row, i, str, null);
    }
}
