package org.apache.poi.hssf.converter;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sunia.HTREnginev2.gon;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
class AbstractExcelUtils {
    static final String EMPTY = "";
    private static final short EXCEL_COLUMN_WIDTH_FACTOR = 256;
    private static final int UNIT_OFFSET_LENGTH = 7;

    /* renamed from: org.apache.poi.hssf.converter.AbstractExcelUtils$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194911 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$BorderStyle;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$HorizontalAlignment;

        static {
            int[] iArr = new int[BorderStyle.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$BorderStyle = iArr;
            try {
                iArr[BorderStyle.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$BorderStyle[BorderStyle.DASH_DOT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$BorderStyle[BorderStyle.DASH_DOT_DOT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$BorderStyle[BorderStyle.DOTTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$BorderStyle[BorderStyle.HAIR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$BorderStyle[BorderStyle.MEDIUM_DASH_DOT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$BorderStyle[BorderStyle.MEDIUM_DASH_DOT_DOT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$BorderStyle[BorderStyle.SLANTED_DASH_DOT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$BorderStyle[BorderStyle.DASHED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$BorderStyle[BorderStyle.MEDIUM_DASHED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$BorderStyle[BorderStyle.DOUBLE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$BorderStyle[BorderStyle.THICK.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            int[] iArr2 = new int[HorizontalAlignment.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$HorizontalAlignment = iArr2;
            try {
                iArr2[HorizontalAlignment.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$HorizontalAlignment[HorizontalAlignment.CENTER_SELECTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$HorizontalAlignment[HorizontalAlignment.FILL.ordinal()] = 3;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$HorizontalAlignment[HorizontalAlignment.JUSTIFY.ordinal()] = 4;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$HorizontalAlignment[HorizontalAlignment.LEFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$HorizontalAlignment[HorizontalAlignment.RIGHT.ordinal()] = 6;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$HorizontalAlignment[HorizontalAlignment.GENERAL.ordinal()] = 7;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    public static void appendAlign(StringBuilder sb, HorizontalAlignment horizontalAlignment) {
        String align = getAlign(horizontalAlignment);
        if (isEmpty(align)) {
            return;
        }
        sb.append("text-align:");
        sb.append(align);
        sb.append(AndroidTreeView.f47214k);
    }

    public static CellRangeAddress[][] buildMergedRangesMap(Sheet sheet) {
        CellRangeAddress[][] cellRangeAddressArr = new CellRangeAddress[1];
        for (CellRangeAddress cellRangeAddress : sheet.getMergedRegions()) {
            int lastRow = cellRangeAddress.getLastRow() + 1;
            if (cellRangeAddressArr.length < lastRow) {
                cellRangeAddressArr = (CellRangeAddress[][]) Arrays.copyOf(cellRangeAddressArr, lastRow, CellRangeAddress[][].class);
            }
            for (int firstRow = cellRangeAddress.getFirstRow(); firstRow <= cellRangeAddress.getLastRow(); firstRow++) {
                int lastColumn = cellRangeAddress.getLastColumn() + 1;
                CellRangeAddress[] cellRangeAddressArr2 = cellRangeAddressArr[firstRow];
                if (cellRangeAddressArr2 == null) {
                    cellRangeAddressArr2 = new CellRangeAddress[lastColumn];
                    cellRangeAddressArr[firstRow] = cellRangeAddressArr2;
                } else if (cellRangeAddressArr2.length < lastColumn) {
                    cellRangeAddressArr2 = (CellRangeAddress[]) Arrays.copyOf(cellRangeAddressArr2, lastColumn, CellRangeAddress[].class);
                    cellRangeAddressArr[firstRow] = cellRangeAddressArr2;
                }
                Arrays.fill(cellRangeAddressArr2, cellRangeAddress.getFirstColumn(), cellRangeAddress.getLastColumn() + 1, cellRangeAddress);
            }
        }
        return cellRangeAddressArr;
    }

    public static String getAlign(HorizontalAlignment horizontalAlignment) {
        int i = C194911.$SwitchMap$org$apache$poi$ss$usermodel$HorizontalAlignment[horizontalAlignment.ordinal()];
        return (i == 1 || i == 2) ? "center" : i != 4 ? i != 5 ? i != 6 ? "" : gon.f71288n0 : "left" : "justify";
    }

    public static String getBorderStyle(BorderStyle borderStyle) {
        switch (C194911.$SwitchMap$org$apache$poi$ss$usermodel$BorderStyle[borderStyle.ordinal()]) {
            case 1:
                return "none";
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return "dotted";
            case 9:
            case 10:
                return "dashed";
            case 11:
                return "double";
            default:
                return "solid";
        }
    }

    public static String getBorderWidth(BorderStyle borderStyle) {
        int i = C194911.$SwitchMap$org$apache$poi$ss$usermodel$BorderStyle[borderStyle.ordinal()];
        return (i == 6 || i == 7 || i == 10) ? "2pt" : i != 12 ? "thin" : "thick";
    }

    public static String getColor(HSSFColor hSSFColor) {
        StringBuilder sb = new StringBuilder(7);
        sb.append('#');
        for (short s : hSSFColor.getTriplet()) {
            if (s < 10) {
                sb.append('0');
            }
            sb.append(Integer.toHexString(s));
        }
        String sb2 = sb.toString();
        return sb2.equals("#ffffff") ? "white" : sb2.equals("#c0c0c0") ? "silver" : sb2.equals("#808080") ? "gray" : sb2.equals("#000000") ? "black" : sb2;
    }

    public static int getColumnWidthInPx(int i) {
        return ((i / 256) * 7) + Math.round((i % 256) / 36.57143f);
    }

    public static CellRangeAddress getMergedRange(CellRangeAddress[][] cellRangeAddressArr, int i, int i2) {
        CellRangeAddress[] cellRangeAddressArr2 = i < cellRangeAddressArr.length ? cellRangeAddressArr[i] : null;
        if (cellRangeAddressArr2 == null || i2 >= cellRangeAddressArr2.length) {
            return null;
        }
        return cellRangeAddressArr2[i2];
    }

    public static boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public static boolean isNotEmpty(String str) {
        return !isEmpty(str);
    }

    public static HSSFWorkbook loadXls(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            HSSFWorkbook hSSFWorkbook = new HSSFWorkbook(fileInputStream);
            fileInputStream.close();
            return hSSFWorkbook;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
