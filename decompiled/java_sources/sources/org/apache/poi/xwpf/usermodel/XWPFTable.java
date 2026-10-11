package org.apache.poi.xwpf.usermodel;

import com.sunia.HTREnginev2.C13471a5;
import com.sunia.HTREnginev2.C13513b5;
import com.sunia.HTREnginev2.C13551c5;
import com.sunia.HTREnginev2.C14742z4;
import com.sunia.HTREnginev2.aan;
import com.sunia.HTREnginev2.ban;
import com.sunia.HTREnginev2.can;
import com.sunia.HTREnginev2.dan;
import com.sunia.HTREnginev2.ean;
import com.sunia.HTREnginev2.fan;
import com.sunia.HTREnginev2.gan;
import com.sunia.HTREnginev2.han;
import com.sunia.HTREnginev2.ian;
import com.sunia.HTREnginev2.jan;
import com.sunia.HTREnginev2.kan;
import com.sunia.HTREnginev2.lan;
import com.sunia.HTREnginev2.man;
import com.sunia.HTREnginev2.nan;
import com.sunia.HTREnginev2.w9n;
import com.sunia.HTREnginev2.x9n;
import com.sunia.HTREnginev2.y9n;
import com.sunia.HTREnginev2.z9n;
import java.io.Closeable;
import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Units;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBorder;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRow;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblBorders;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblCellMar;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTc;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STBorder;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STJcTable;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth;

/* loaded from: classes13.dex */
public class XWPFTable implements IBodyElement, ISDTContents, Closeable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String DEFAULT_PERCENTAGE_WIDTH = "100%";
    public static final String REGEX_PERCENTAGE = "[0-9]+(\\.[0-9]+)?%";
    public static final String REGEX_WIDTH_VALUE = "auto|[0-9]+|[0-9]+(\\.[0-9]+)?%";
    private static final HashMap<Integer, XWPFBorderType> stBorderTypeMap;
    private static final EnumMap<XWPFBorderType, STBorder.Enum> xwpfBorderTypeMap;
    private CTTbl ctTbl;
    protected IBody part;
    protected final List<XWPFTableRow> tableRows;
    protected StringBuilder text;

    /* renamed from: org.apache.poi.xwpf.usermodel.XWPFTable$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199931 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border;

        static {
            int[] iArr = new int[Border.values().length];
            $SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border = iArr;
            try {
                iArr[Border.INSIDE_V.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border[Border.INSIDE_H.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border[Border.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border[Border.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border[Border.RIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border[Border.BOTTOM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public enum Border {
        INSIDE_V,
        INSIDE_H,
        LEFT,
        TOP,
        BOTTOM,
        RIGHT
    }

    /* loaded from: classes13.dex */
    public enum XWPFBorderType {
        NIL,
        NONE,
        SINGLE,
        THICK,
        DOUBLE,
        DOTTED,
        DASHED,
        DOT_DASH,
        DOT_DOT_DASH,
        TRIPLE,
        THIN_THICK_SMALL_GAP,
        THICK_THIN_SMALL_GAP,
        THIN_THICK_THIN_SMALL_GAP,
        THIN_THICK_MEDIUM_GAP,
        THICK_THIN_MEDIUM_GAP,
        THIN_THICK_THIN_MEDIUM_GAP,
        THIN_THICK_LARGE_GAP,
        THICK_THIN_LARGE_GAP,
        THIN_THICK_THIN_LARGE_GAP,
        WAVE,
        DOUBLE_WAVE,
        DASH_SMALL_GAP,
        DASH_DOT_STROKED,
        THREE_D_EMBOSS,
        THREE_D_ENGRAVE,
        OUTSET,
        INSET
    }

    static {
        EnumMap<XWPFBorderType, STBorder.Enum> enumMap = new EnumMap<>((Class<XWPFBorderType>) XWPFBorderType.class);
        xwpfBorderTypeMap = enumMap;
        XWPFBorderType xWPFBorderType = XWPFBorderType.NIL;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType, (XWPFBorderType) STBorder.NIL);
        XWPFBorderType xWPFBorderType2 = XWPFBorderType.NONE;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType2, (XWPFBorderType) STBorder.NONE);
        XWPFBorderType xWPFBorderType3 = XWPFBorderType.SINGLE;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType3, (XWPFBorderType) STBorder.SINGLE);
        XWPFBorderType xWPFBorderType4 = XWPFBorderType.THICK;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType4, (XWPFBorderType) STBorder.THICK);
        XWPFBorderType xWPFBorderType5 = XWPFBorderType.DOUBLE;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType5, (XWPFBorderType) STBorder.DOUBLE);
        XWPFBorderType xWPFBorderType6 = XWPFBorderType.DOTTED;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType6, (XWPFBorderType) STBorder.DOTTED);
        XWPFBorderType xWPFBorderType7 = XWPFBorderType.DASHED;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType7, (XWPFBorderType) STBorder.DASHED);
        XWPFBorderType xWPFBorderType8 = XWPFBorderType.DOT_DASH;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType8, (XWPFBorderType) STBorder.DOT_DASH);
        XWPFBorderType xWPFBorderType9 = XWPFBorderType.DOT_DOT_DASH;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType9, (XWPFBorderType) STBorder.DOT_DOT_DASH);
        XWPFBorderType xWPFBorderType10 = XWPFBorderType.TRIPLE;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType10, (XWPFBorderType) STBorder.TRIPLE);
        XWPFBorderType xWPFBorderType11 = XWPFBorderType.THIN_THICK_SMALL_GAP;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType11, (XWPFBorderType) STBorder.THIN_THICK_SMALL_GAP);
        XWPFBorderType xWPFBorderType12 = XWPFBorderType.THICK_THIN_SMALL_GAP;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType12, (XWPFBorderType) STBorder.THICK_THIN_SMALL_GAP);
        XWPFBorderType xWPFBorderType13 = XWPFBorderType.THIN_THICK_THIN_SMALL_GAP;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType13, (XWPFBorderType) STBorder.THIN_THICK_THIN_SMALL_GAP);
        XWPFBorderType xWPFBorderType14 = XWPFBorderType.THIN_THICK_MEDIUM_GAP;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType14, (XWPFBorderType) STBorder.THIN_THICK_MEDIUM_GAP);
        XWPFBorderType xWPFBorderType15 = XWPFBorderType.THICK_THIN_MEDIUM_GAP;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType15, (XWPFBorderType) STBorder.THICK_THIN_MEDIUM_GAP);
        XWPFBorderType xWPFBorderType16 = XWPFBorderType.THIN_THICK_THIN_MEDIUM_GAP;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType16, (XWPFBorderType) STBorder.THIN_THICK_THIN_MEDIUM_GAP);
        XWPFBorderType xWPFBorderType17 = XWPFBorderType.THIN_THICK_LARGE_GAP;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType17, (XWPFBorderType) STBorder.THIN_THICK_LARGE_GAP);
        XWPFBorderType xWPFBorderType18 = XWPFBorderType.THICK_THIN_LARGE_GAP;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType18, (XWPFBorderType) STBorder.THICK_THIN_LARGE_GAP);
        XWPFBorderType xWPFBorderType19 = XWPFBorderType.THIN_THICK_THIN_LARGE_GAP;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType19, (XWPFBorderType) STBorder.THIN_THICK_THIN_LARGE_GAP);
        XWPFBorderType xWPFBorderType20 = XWPFBorderType.WAVE;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType20, (XWPFBorderType) STBorder.WAVE);
        XWPFBorderType xWPFBorderType21 = XWPFBorderType.DOUBLE_WAVE;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType21, (XWPFBorderType) STBorder.DOUBLE_WAVE);
        XWPFBorderType xWPFBorderType22 = XWPFBorderType.DASH_SMALL_GAP;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType22, (XWPFBorderType) STBorder.DASH_SMALL_GAP);
        XWPFBorderType xWPFBorderType23 = XWPFBorderType.DASH_DOT_STROKED;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType23, (XWPFBorderType) STBorder.DASH_DOT_STROKED);
        XWPFBorderType xWPFBorderType24 = XWPFBorderType.THREE_D_EMBOSS;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType24, (XWPFBorderType) STBorder.THREE_D_EMBOSS);
        XWPFBorderType xWPFBorderType25 = XWPFBorderType.THREE_D_ENGRAVE;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType25, (XWPFBorderType) STBorder.THREE_D_ENGRAVE);
        XWPFBorderType xWPFBorderType26 = XWPFBorderType.OUTSET;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType26, (XWPFBorderType) STBorder.OUTSET);
        XWPFBorderType xWPFBorderType27 = XWPFBorderType.INSET;
        enumMap.put((EnumMap<XWPFBorderType, STBorder.Enum>) xWPFBorderType27, (XWPFBorderType) STBorder.INSET);
        HashMap<Integer, XWPFBorderType> hashMap = new HashMap<>();
        stBorderTypeMap = hashMap;
        hashMap.put(1, xWPFBorderType);
        hashMap.put(2, xWPFBorderType2);
        hashMap.put(3, xWPFBorderType3);
        hashMap.put(4, xWPFBorderType4);
        hashMap.put(5, xWPFBorderType5);
        hashMap.put(6, xWPFBorderType6);
        hashMap.put(7, xWPFBorderType7);
        hashMap.put(8, xWPFBorderType8);
        hashMap.put(9, xWPFBorderType9);
        hashMap.put(10, xWPFBorderType10);
        hashMap.put(11, xWPFBorderType11);
        hashMap.put(12, xWPFBorderType12);
        hashMap.put(13, xWPFBorderType13);
        hashMap.put(14, xWPFBorderType14);
        hashMap.put(15, xWPFBorderType15);
        hashMap.put(16, xWPFBorderType16);
        hashMap.put(17, xWPFBorderType17);
        hashMap.put(18, xWPFBorderType18);
        hashMap.put(19, xWPFBorderType19);
        hashMap.put(20, xWPFBorderType20);
        hashMap.put(21, xWPFBorderType21);
        hashMap.put(22, xWPFBorderType22);
        hashMap.put(23, xWPFBorderType23);
        hashMap.put(24, xWPFBorderType24);
        hashMap.put(25, xWPFBorderType25);
        hashMap.put(26, xWPFBorderType26);
        hashMap.put(27, xWPFBorderType27);
    }

    public XWPFTable(CTTbl cTTbl, IBody iBody, int i, int i2) {
        this(cTTbl, iBody);
        for (int i3 = 0; i3 < i; i3++) {
            XWPFTableRow createRow = getRow(i3) == null ? createRow() : getRow(i3);
            for (int i4 = 0; i4 < i2; i4++) {
                if (createRow.getCell(i4) == null) {
                    createRow.createCell();
                }
            }
        }
    }

    private void addColumn(XWPFTableRow xWPFTableRow, int i) {
        if (i > 0) {
            for (int i2 = 0; i2 < i; i2++) {
                xWPFTableRow.createCell();
            }
        }
    }

    private void cleanupTblBorders() {
        CTTblPr tblPr = getTblPr(false);
        if (tblPr == null || !tblPr.isSetTblBorders()) {
            return;
        }
        CTTblBorders tblBorders = tblPr.getTblBorders();
        if (tblBorders.isSetInsideH() || tblBorders.isSetInsideV() || tblBorders.isSetTop() || tblBorders.isSetBottom() || tblBorders.isSetLeft() || tblBorders.isSetRight()) {
            return;
        }
        tblPr.unsetTblBorders();
    }

    private void createEmptyTable(CTTbl cTTbl) {
        cTTbl.addNewTr().addNewTc().addNewP();
        CTTblPr addNewTblPr = cTTbl.addNewTblPr();
        addNewTblPr.addNewTblW().setW(BigInteger.valueOf(0L));
        addNewTblPr.getTblW().setType(STTblWidth.AUTO);
        CTTblBorders addNewTblBorders = addNewTblPr.addNewTblBorders();
        CTBorder addNewBottom = addNewTblBorders.addNewBottom();
        STBorder.Enum r0 = STBorder.SINGLE;
        addNewBottom.setVal(r0);
        addNewTblBorders.addNewInsideH().setVal(r0);
        addNewTblBorders.addNewInsideV().setVal(r0);
        addNewTblBorders.addNewLeft().setVal(r0);
        addNewTblBorders.addNewRight().setVal(r0);
        addNewTblBorders.addNewTop().setVal(r0);
    }

    private String getBorderColor(Border border) {
        CTBorder tblBorder = getTblBorder(false, border);
        if (tblBorder == null || !tblBorder.isSetColor()) {
            return null;
        }
        return tblBorder.xgetColor().getStringValue();
    }

    private int getBorderSize(Border border) {
        CTBorder tblBorder = getTblBorder(false, border);
        if (tblBorder == null || !tblBorder.isSetSz()) {
            return -1;
        }
        return tblBorder.getSz().intValue();
    }

    private int getBorderSpace(Border border) {
        CTBorder tblBorder = getTblBorder(false, border);
        if (tblBorder == null || !tblBorder.isSetSpace()) {
            return -1;
        }
        return tblBorder.getSpace().intValue();
    }

    private XWPFBorderType getBorderType(Border border) {
        CTBorder tblBorder = getTblBorder(false, border);
        if (tblBorder != null) {
            return stBorderTypeMap.get(Integer.valueOf(tblBorder.getVal().intValue()));
        }
        return null;
    }

    private int getCellMargin(Function<CTTblCellMar, CTTblWidth> function) {
        CTTblWidth apply;
        CTTblCellMar tblCellMar = getTblPr().getTblCellMar();
        if (tblCellMar == null || (apply = function.apply(tblCellMar)) == null) {
            return 0;
        }
        return (int) Units.toDXA(POIXMLUnits.parseLength(apply.xgetW()));
    }

    private CTTblBorders getTblBorders(boolean z) {
        CTTblPr tblPr = getTblPr(z);
        if (tblPr == null) {
            return null;
        }
        if (tblPr.isSetTblBorders()) {
            return tblPr.getTblBorders();
        }
        if (z) {
            return tblPr.addNewTblBorders();
        }
        return null;
    }

    private CTTblPr getTblPr() {
        return getTblPr(true);
    }

    private void removeBorder(Border border) {
        Function w9nVar;
        Consumer consumer;
        switch (C199931.$SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border[border.ordinal()]) {
            case 1:
                w9nVar = new w9n();
                consumer = new Consumer() { // from class: com.sunia.HTREnginev2.cuo
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((CTTblBorders) obj).unsetInsideV();
                    }
                };
                break;
            case 2:
                w9nVar = new y9n();
                consumer = new Consumer() { // from class: com.sunia.HTREnginev2.buo
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((CTTblBorders) obj).unsetInsideH();
                    }
                };
                break;
            case 3:
                w9nVar = new ban();
                consumer = new Consumer() { // from class: com.sunia.HTREnginev2.duo
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((CTTblBorders) obj).unsetLeft();
                    }
                };
                break;
            case 4:
                w9nVar = new ean();
                consumer = new Consumer() { // from class: com.sunia.HTREnginev2.euo
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((CTTblBorders) obj).unsetTop();
                    }
                };
                break;
            case 5:
                w9nVar = new han();
                consumer = new Consumer() { // from class: com.sunia.HTREnginev2.fuo
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((CTTblBorders) obj).unsetRight();
                    }
                };
                break;
            case 6:
                w9nVar = new kan();
                consumer = new Consumer() { // from class: com.sunia.HTREnginev2.sto
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((CTTblBorders) obj).unsetBottom();
                    }
                };
                break;
            default:
                return;
        }
        CTTblBorders tblBorders = getTblBorders(false);
        if (tblBorders == null || !((Boolean) w9nVar.apply(tblBorders)).booleanValue()) {
            return;
        }
        consumer.accept(tblBorders);
        cleanupTblBorders();
    }

    private void setBorder(Border border, XWPFBorderType xWPFBorderType, int i, int i2, String str) {
        CTBorder tblBorder = getTblBorder(true, border);
        tblBorder.setVal(xwpfBorderTypeMap.get(xWPFBorderType));
        tblBorder.setSz(BigInteger.valueOf(i));
        tblBorder.setSpace(BigInteger.valueOf(i2));
        tblBorder.setColor(str);
    }

    private void setCellMargin(CTTblCellMar cTTblCellMar, Function<CTTblCellMar, Boolean> function, Function<CTTblCellMar, CTTblWidth> function2, Function<CTTblCellMar, CTTblWidth> function3, Consumer<CTTblCellMar> consumer, int i) {
        if (i == 0) {
            if (function.apply(cTTblCellMar).booleanValue()) {
                consumer.accept(cTTblCellMar);
            }
        } else {
            if (!function.apply(cTTblCellMar).booleanValue()) {
                function2 = function3;
            }
            CTTblWidth apply = function2.apply(cTTblCellMar);
            apply.setType(STTblWidth.DXA);
            apply.setW(BigInteger.valueOf(i));
        }
    }

    public static void setWidthPercentage(CTTblWidth cTTblWidth, String str) {
        cTTblWidth.setType(STTblWidth.PCT);
        if (str.matches(REGEX_PERCENTAGE)) {
            cTTblWidth.setW(BigInteger.valueOf(Math.round(Double.parseDouble(str.substring(0, str.length() - 1)) * 50.0d)));
            return;
        }
        if (str.matches("[0-9]+")) {
            cTTblWidth.setW(new BigInteger(str));
            return;
        }
        throw new IllegalStateException("setWidthPercentage(): Width value must be a percentage (\"33.3%\" or an integer, was \"" + str + "\"");
    }

    public static void setWidthValue(String str, CTTblWidth cTTblWidth) {
        if (!str.matches(REGEX_WIDTH_VALUE)) {
            throw new IllegalStateException("Table width value \"" + str + "\" must match regular expression \"" + REGEX_WIDTH_VALUE + "\".");
        }
        if (str.matches("auto")) {
            cTTblWidth.setType(STTblWidth.AUTO);
            cTTblWidth.setW(BigInteger.ZERO);
        } else if (str.matches(REGEX_PERCENTAGE)) {
            setWidthPercentage(cTTblWidth, str);
        } else {
            cTTblWidth.setW(new BigInteger(str));
            cTTblWidth.setType(STTblWidth.DXA);
        }
    }

    public void addNewCol() {
        if (this.tableRows.isEmpty()) {
            createRow();
        }
        Iterator<XWPFTableRow> it2 = this.tableRows.iterator();
        while (it2.hasNext()) {
            it2.next().createCell();
        }
    }

    public void addRow(XWPFTableRow xWPFTableRow) {
        this.ctTbl.addNewTr();
        this.ctTbl.setTrArray(getNumberOfRows() - 1, xWPFTableRow.getCtRow());
        this.tableRows.add(xWPFTableRow);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        XmlBeanUtils.freeMemory(this.ctTbl);
        this.ctTbl = null;
        Iterator<XWPFTableRow> it2 = this.tableRows.iterator();
        while (it2.hasNext()) {
            XmlBeanUtils.close(it2.next());
        }
        this.tableRows.clear();
    }

    public XWPFTableRow createRow() {
        int sizeOfTcArray = this.ctTbl.sizeOfTrArray() > 0 ? this.ctTbl.getTrArray(0).sizeOfTcArray() : 0;
        XWPFTableRow xWPFTableRow = new XWPFTableRow(this.ctTbl.addNewTr(), this);
        addColumn(xWPFTableRow, sizeOfTcArray);
        this.tableRows.add(xWPFTableRow);
        return xWPFTableRow;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBodyElement
    public IBody getBody() {
        return this.part;
    }

    public String getBottomBorderColor() {
        return getBorderColor(Border.BOTTOM);
    }

    public int getBottomBorderSize() {
        return getBorderSize(Border.BOTTOM);
    }

    public int getBottomBorderSpace() {
        return getBorderSpace(Border.BOTTOM);
    }

    public XWPFBorderType getBottomBorderType() {
        return getBorderType(Border.BOTTOM);
    }

    @Internal
    public CTTbl getCTTbl() {
        return this.ctTbl;
    }

    public int getCellMarginBottom() {
        return getCellMargin(new C13513b5());
    }

    public int getCellMarginLeft() {
        return getCellMargin(new C13551c5());
    }

    public int getCellMarginRight() {
        return getCellMargin(new C13471a5());
    }

    public int getCellMarginTop() {
        return getCellMargin(new C14742z4());
    }

    public int getColBandSize() {
        CTTblPr tblPr = getTblPr();
        if (tblPr.isSetTblStyleColBandSize()) {
            return tblPr.getTblStyleColBandSize().getVal().intValue();
        }
        return 0;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBodyElement
    public BodyElementType getElementType() {
        return BodyElementType.TABLE;
    }

    public String getInsideHBorderColor() {
        return getBorderColor(Border.INSIDE_H);
    }

    public int getInsideHBorderSize() {
        return getBorderSize(Border.INSIDE_H);
    }

    public int getInsideHBorderSpace() {
        return getBorderSpace(Border.INSIDE_H);
    }

    public XWPFBorderType getInsideHBorderType() {
        return getBorderType(Border.INSIDE_H);
    }

    public String getInsideVBorderColor() {
        return getBorderColor(Border.INSIDE_V);
    }

    public int getInsideVBorderSize() {
        return getBorderSize(Border.INSIDE_V);
    }

    public int getInsideVBorderSpace() {
        return getBorderSpace(Border.INSIDE_V);
    }

    public XWPFBorderType getInsideVBorderType() {
        return getBorderType(Border.INSIDE_V);
    }

    public String getLeftBorderColor() {
        return getBorderColor(Border.LEFT);
    }

    public int getLeftBorderSize() {
        return getBorderSize(Border.LEFT);
    }

    public int getLeftBorderSpace() {
        return getBorderSpace(Border.LEFT);
    }

    public XWPFBorderType getLeftBorderType() {
        return getBorderType(Border.LEFT);
    }

    public int getNumberOfRows() {
        return this.ctTbl.sizeOfTrArray();
    }

    @Override // org.apache.poi.xwpf.usermodel.IBodyElement, org.apache.poi.xwpf.usermodel.IRunBody
    public POIXMLDocumentPart getPart() {
        IBody iBody = this.part;
        if (iBody != null) {
            return iBody.getPart();
        }
        return null;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBodyElement
    public BodyType getPartType() {
        return this.part.getPartType();
    }

    public String getRightBorderColor() {
        return getBorderColor(Border.RIGHT);
    }

    public int getRightBorderSize() {
        return getBorderSize(Border.RIGHT);
    }

    public int getRightBorderSpace() {
        return getBorderSpace(Border.RIGHT);
    }

    public XWPFBorderType getRightBorderType() {
        return getBorderType(Border.RIGHT);
    }

    public XWPFTableRow getRow(int i) {
        if (i < 0 || i >= this.ctTbl.sizeOfTrArray()) {
            return null;
        }
        return getRows().get(i);
    }

    public int getRowBandSize() {
        CTTblPr tblPr = getTblPr();
        if (tblPr.isSetTblStyleRowBandSize()) {
            return tblPr.getTblStyleRowBandSize().getVal().intValue();
        }
        return 0;
    }

    public List<XWPFTableRow> getRows() {
        return Collections.unmodifiableList(this.tableRows);
    }

    public String getStyleID() {
        CTString tblStyle;
        CTTblPr tblPr = this.ctTbl.getTblPr();
        if (tblPr == null || (tblStyle = tblPr.getTblStyle()) == null) {
            return null;
        }
        return tblStyle.getVal();
    }

    public TableRowAlign getTableAlignment() {
        CTTblPr tblPr = getTblPr(false);
        if (tblPr != null && tblPr.isSetJc()) {
            return TableRowAlign.valueOf(tblPr.getJc().getVal().intValue());
        }
        return null;
    }

    public CTBorder getTblBorder(boolean z, Border border) {
        Function w9nVar;
        Function nanVar;
        Function x9nVar;
        switch (C199931.$SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border[border.ordinal()]) {
            case 1:
                w9nVar = new w9n();
                nanVar = new nan();
                x9nVar = new x9n();
                break;
            case 2:
                w9nVar = new y9n();
                nanVar = new z9n();
                x9nVar = new aan();
                break;
            case 3:
                w9nVar = new ban();
                nanVar = new can();
                x9nVar = new dan();
                break;
            case 4:
                w9nVar = new ean();
                nanVar = new fan();
                x9nVar = new gan();
                break;
            case 5:
                w9nVar = new han();
                nanVar = new ian();
                x9nVar = new jan();
                break;
            case 6:
                w9nVar = new kan();
                nanVar = new lan();
                x9nVar = new man();
                break;
            default:
                return null;
        }
        CTTblBorders tblBorders = getTblBorders(z);
        if (tblBorders == null) {
            return null;
        }
        if (((Boolean) w9nVar.apply(tblBorders)).booleanValue()) {
            return (CTBorder) nanVar.apply(tblBorders);
        }
        if (z) {
            return (CTBorder) x9nVar.apply(tblBorders);
        }
        return null;
    }

    public String getText() {
        return this.text.toString();
    }

    public String getTopBorderColor() {
        return getBorderColor(Border.TOP);
    }

    public int getTopBorderSize() {
        return getBorderSize(Border.TOP);
    }

    public int getTopBorderSpace() {
        return getBorderSpace(Border.TOP);
    }

    public XWPFBorderType getTopBorderType() {
        return getBorderType(Border.TOP);
    }

    public int getWidth() {
        CTTblPr tblPr = getTblPr();
        if (tblPr.isSetTblW()) {
            return (int) Units.toDXA(POIXMLUnits.parseLength(tblPr.getTblW().xgetW()));
        }
        return -1;
    }

    public double getWidthDecimal() {
        if (getTblPr().isSetTblW()) {
            return getWidthDecimal(getTblPr().getTblW());
        }
        return 0.0d;
    }

    public TableWidthType getWidthType() {
        return getTblPr().isSetTblW() ? getWidthType(getTblPr().getTblW()) : TableWidthType.NIL;
    }

    public XWPFTableRow insertNewTableRow(int i) {
        if (i < 0 || i > this.tableRows.size()) {
            return null;
        }
        XWPFTableRow xWPFTableRow = new XWPFTableRow(this.ctTbl.insertNewTr(i), this);
        this.tableRows.add(i, xWPFTableRow);
        return xWPFTableRow;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBodyElement
    public void readDocument() {
        if (XmlBeanUtils.parseDocument()) {
            if (this.ctTbl.sizeOfTrArray() == 0) {
                createEmptyTable(this.ctTbl);
            }
            for (CTRow cTRow : this.ctTbl.getTrList()) {
                StringBuilder sb = new StringBuilder();
                this.tableRows.add(new XWPFTableRow(cTRow, this));
                Iterator<CTTc> it2 = cTRow.getTcList().iterator();
                while (it2.hasNext()) {
                    Iterator<CTP> it3 = it2.next().getPList().iterator();
                    while (it3.hasNext()) {
                        XWPFParagraph xWPFParagraph = new XWPFParagraph(it3.next(), this.part);
                        if (sb.length() > 0) {
                            sb.append('\t');
                        }
                        sb.append(xWPFParagraph.getText());
                    }
                }
                if (sb.length() > 0) {
                    this.text.append((CharSequence) sb);
                    this.text.append('\n');
                }
            }
        }
    }

    public void removeBorders() {
        CTTblPr tblPr = getTblPr(false);
        if (tblPr == null || !tblPr.isSetTblBorders()) {
            return;
        }
        tblPr.unsetTblBorders();
    }

    public void removeBottomBorder() {
        removeBorder(Border.BOTTOM);
    }

    public void removeInsideHBorder() {
        removeBorder(Border.INSIDE_H);
    }

    public void removeInsideVBorder() {
        removeBorder(Border.INSIDE_V);
    }

    public void removeLeftBorder() {
        removeBorder(Border.LEFT);
    }

    public void removeRightBorder() {
        removeBorder(Border.RIGHT);
    }

    public boolean removeRow(int i) throws IndexOutOfBoundsException {
        if (i < 0 || i >= this.tableRows.size()) {
            return false;
        }
        if (this.ctTbl.sizeOfTrArray() > 0) {
            this.ctTbl.removeTr(i);
        }
        this.tableRows.remove(i);
        return true;
    }

    public void removeTableAlignment() {
        CTTblPr tblPr = getTblPr(false);
        if (tblPr == null || !tblPr.isSetJc()) {
            return;
        }
        tblPr.unsetJc();
    }

    public void removeTopBorder() {
        removeBorder(Border.TOP);
    }

    public void setBottomBorder(XWPFBorderType xWPFBorderType, int i, int i2, String str) {
        setBorder(Border.BOTTOM, xWPFBorderType, i, i2, str);
    }

    public void setCellMargins(int i, int i2, int i3, int i4) {
        CTTblPr tblPr = getTblPr();
        CTTblCellMar tblCellMar = tblPr.isSetTblCellMar() ? tblPr.getTblCellMar() : tblPr.addNewTblCellMar();
        setCellMargin(tblCellMar, new Function() { // from class: com.sunia.HTREnginev2.guo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((CTTblCellMar) obj).isSetTop());
            }
        }, new C14742z4(), new Function() { // from class: com.sunia.HTREnginev2.vto
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTblCellMar) obj).addNewTop();
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.wto
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((CTTblCellMar) obj).unsetTop();
            }
        }, i);
        setCellMargin(tblCellMar, new Function() { // from class: com.sunia.HTREnginev2.xto
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((CTTblCellMar) obj).isSetLeft());
            }
        }, new C13551c5(), new Function() { // from class: com.sunia.HTREnginev2.yto
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTblCellMar) obj).addNewLeft();
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.zto
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((CTTblCellMar) obj).unsetLeft();
            }
        }, i2);
        setCellMargin(tblCellMar, new Function() { // from class: com.sunia.HTREnginev2.auo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((CTTblCellMar) obj).isSetBottom());
            }
        }, new C13513b5(), new Function() { // from class: com.sunia.HTREnginev2.huo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTblCellMar) obj).addNewBottom();
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.iuo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((CTTblCellMar) obj).unsetBottom();
            }
        }, i3);
        setCellMargin(tblCellMar, new Function() { // from class: com.sunia.HTREnginev2.juo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((CTTblCellMar) obj).isSetRight());
            }
        }, new C13471a5(), new Function() { // from class: com.sunia.HTREnginev2.tto
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CTTblCellMar) obj).addNewRight();
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.uto
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((CTTblCellMar) obj).unsetRight();
            }
        }, i4);
    }

    public void setColBandSize(int i) {
        CTTblPr tblPr = getTblPr();
        (tblPr.isSetTblStyleColBandSize() ? tblPr.getTblStyleColBandSize() : tblPr.addNewTblStyleColBandSize()).setVal(BigInteger.valueOf(i));
    }

    public void setInsideHBorder(XWPFBorderType xWPFBorderType, int i, int i2, String str) {
        setBorder(Border.INSIDE_H, xWPFBorderType, i, i2, str);
    }

    public void setInsideVBorder(XWPFBorderType xWPFBorderType, int i, int i2, String str) {
        setBorder(Border.INSIDE_V, xWPFBorderType, i, i2, str);
    }

    public void setLeftBorder(XWPFBorderType xWPFBorderType, int i, int i2, String str) {
        setBorder(Border.LEFT, xWPFBorderType, i, i2, str);
    }

    public void setRightBorder(XWPFBorderType xWPFBorderType, int i, int i2, String str) {
        setBorder(Border.RIGHT, xWPFBorderType, i, i2, str);
    }

    public void setRowBandSize(int i) {
        CTTblPr tblPr = getTblPr();
        (tblPr.isSetTblStyleRowBandSize() ? tblPr.getTblStyleRowBandSize() : tblPr.addNewTblStyleRowBandSize()).setVal(BigInteger.valueOf(i));
    }

    public void setStyleID(String str) {
        CTTblPr tblPr = getTblPr();
        CTString tblStyle = tblPr.getTblStyle();
        if (tblStyle == null) {
            tblStyle = tblPr.addNewTblStyle();
        }
        tblStyle.setVal(str);
    }

    public void setTableAlignment(TableRowAlign tableRowAlign) {
        CTTblPr tblPr = getTblPr(true);
        (tblPr.isSetJc() ? tblPr.getJc() : tblPr.addNewJc()).setVal(STJcTable.Enum.forInt(tableRowAlign.getValue()));
    }

    public void setTopBorder(XWPFBorderType xWPFBorderType, int i, int i2, String str) {
        setBorder(Border.TOP, xWPFBorderType, i, i2, str);
    }

    public void setWidth(int i) {
        CTTblPr tblPr = getTblPr();
        CTTblWidth tblW = tblPr.isSetTblW() ? tblPr.getTblW() : tblPr.addNewTblW();
        tblW.setW(new BigInteger(Integer.toString(i)));
        tblW.setType(STTblWidth.DXA);
    }

    public void setWidthType(TableWidthType tableWidthType) {
        setWidthType(tableWidthType, getTblPr().getTblW());
    }

    private CTTblPr getTblPr(boolean z) {
        if (this.ctTbl.getTblPr() != null) {
            return this.ctTbl.getTblPr();
        }
        if (z) {
            return this.ctTbl.addNewTblPr();
        }
        return null;
    }

    public static void setWidthType(TableWidthType tableWidthType, CTTblWidth cTTblWidth) {
        if (getWidthType(cTTblWidth).equals(tableWidthType)) {
            return;
        }
        STTblWidth.Enum stWidthType = tableWidthType.getStWidthType();
        cTTblWidth.setType(stWidthType);
        if (stWidthType.intValue() == 2) {
            setWidthPercentage(cTTblWidth, DEFAULT_PERCENTAGE_WIDTH);
        } else {
            cTTblWidth.setW(BigInteger.ZERO);
        }
    }

    public static double getWidthDecimal(CTTblWidth cTTblWidth) {
        STTblWidth.Enum type = cTTblWidth.getType();
        if (type != STTblWidth.DXA && type != STTblWidth.AUTO) {
            if (type == STTblWidth.PCT) {
                return Units.toDXA(POIXMLUnits.parseLength(cTTblWidth.xgetW())) / 50.0d;
            }
            return 0.0d;
        }
        return 0.0d + Units.toDXA(POIXMLUnits.parseLength(cTTblWidth.xgetW()));
    }

    public static TableWidthType getWidthType(CTTblWidth cTTblWidth) {
        STTblWidth.Enum type = cTTblWidth.getType();
        if (type == null) {
            type = STTblWidth.NIL;
            cTTblWidth.setType(type);
        }
        int intValue = type.intValue();
        if (intValue == 1) {
            return TableWidthType.NIL;
        }
        if (intValue == 2) {
            return TableWidthType.PCT;
        }
        if (intValue != 3) {
            return TableWidthType.AUTO;
        }
        return TableWidthType.DXA;
    }

    public XWPFTableRow getRow(CTRow cTRow) {
        for (int i = 0; i < getRows().size(); i++) {
            if (getRows().get(i).getCtRow() == cTRow) {
                return getRow(i);
            }
        }
        return null;
    }

    public boolean addRow(XWPFTableRow xWPFTableRow, int i) {
        if (i < 0 || i > this.tableRows.size()) {
            return false;
        }
        this.ctTbl.insertNewTr(i);
        this.ctTbl.setTrArray(i, xWPFTableRow.getCtRow());
        this.tableRows.add(i, xWPFTableRow);
        return true;
    }

    public XWPFTable(CTTbl cTTbl, IBody iBody) {
        this.text = new StringBuilder(64);
        this.tableRows = new ArrayList();
        this.part = iBody;
        this.ctTbl = cTTbl;
        readDocument();
    }

    public void setWidth(String str) {
        setWidthValue(str, getTblPr().getTblW());
    }
}
