package org.apache.poi.hslf.usermodel;

import com.alibaba.fastjson2.JSONB;
import java.awt.Color;
import java.awt.Shape;
import java.awt.geom.Arc2D;
import java.awt.geom.Path2D;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.util.Iterator;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ddf.AbstractEscherOptRecord;
import org.apache.poi.ddf.EscherArrayProperty;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherSimpleProperty;
import org.apache.poi.hslf.usermodel.HSLFFreeformShape;
import org.apache.poi.sl.draw.geom.AdjustPoint;
import org.apache.poi.sl.draw.geom.ArcToCommand;
import org.apache.poi.sl.draw.geom.ClosePathCommand;
import org.apache.poi.sl.draw.geom.CurveToCommand;
import org.apache.poi.sl.draw.geom.CustomGeometry;
import org.apache.poi.sl.draw.geom.LineToCommand;
import org.apache.poi.sl.draw.geom.MoveToCommand;
import org.apache.poi.sl.draw.geom.Path;
import org.apache.poi.sl.usermodel.AutoShape;
import org.apache.poi.sl.usermodel.ShapeContainer;
import org.apache.poi.sl.usermodel.ShapeType;
import org.apache.poi.sl.usermodel.VerticalAlignment;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class HSLFAutoShape extends HSLFTextShape implements AutoShape<HSLFShape, HSLFTextParagraph> {
    private static final Logger LOG = LogManager.getLogger((Class<?>) HSLFAutoShape.class);
    static final byte[] SEGMENTINFO_MOVETO = {0, 64};
    static final byte[] SEGMENTINFO_LINETO = {0, JSONB.Constants.BC_TIMESTAMP_SECONDS};
    static final byte[] SEGMENTINFO_ESCAPE = {1, 0};
    static final byte[] SEGMENTINFO_ESCAPE2 = {1, 32};
    static final byte[] SEGMENTINFO_CUBICTO = {0, JSONB.Constants.BC_TIMESTAMP_MINUTES};
    static final byte[] SEGMENTINFO_CLOSE = {1, 96};
    static final byte[] SEGMENTINFO_END = {0, Byte.MIN_VALUE};
    private static final BitField PATH_INFO = BitFieldFactory.getInstance(57344);
    private static final BitField ESCAPE_INFO = BitFieldFactory.getInstance(7936);

    /* renamed from: org.apache.poi.hslf.usermodel.HSLFAutoShape$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194541 {

        /* renamed from: $SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo */
        static final /* synthetic */ int[] f111382xe61dcbdb;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$PathInfo;

        static {
            int[] iArr = new int[EscapeInfo.values().length];
            f111382xe61dcbdb = iArr;
            try {
                iArr[EscapeInfo.EXTENSION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.ANGLE_ELLIPSE_TO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.ANGLE_ELLIPSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.ARC_TO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.ARC.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.CLOCKWISE_ARC_TO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.CLOCKWISE_ARC.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.ELLIPTICAL_QUADRANT_X.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.ELLIPTICAL_QUADRANT_Y.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.QUADRATIC_BEZIER.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.NO_FILL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.NO_LINE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.AUTO_LINE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.AUTO_CURVE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.CORNER_LINE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.CORNER_CURVE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.SMOOTH_LINE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.SMOOTH_CURVE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.SYMMETRIC_LINE.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.SYMMETRIC_CURVE.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.FREEFORM.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.FILL_COLOR.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f111382xe61dcbdb[EscapeInfo.LINE_COLOR.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            int[] iArr2 = new int[PathInfo.values().length];
            $SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$PathInfo = iArr2;
            try {
                iArr2[PathInfo.escape.ordinal()] = 1;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$PathInfo[PathInfo.moveTo.ordinal()] = 2;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$PathInfo[PathInfo.lineTo.ordinal()] = 3;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$PathInfo[PathInfo.curveTo.ordinal()] = 4;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$PathInfo[PathInfo.close.ordinal()] = 5;
            } catch (NoSuchFieldError unused28) {
            }
        }
    }

    /* loaded from: classes12.dex */
    public enum EscapeInfo {
        EXTENSION(0),
        ANGLE_ELLIPSE_TO(1),
        ANGLE_ELLIPSE(2),
        ARC_TO(3),
        ARC(4),
        CLOCKWISE_ARC_TO(5),
        CLOCKWISE_ARC(6),
        ELLIPTICAL_QUADRANT_X(7),
        ELLIPTICAL_QUADRANT_Y(8),
        QUADRATIC_BEZIER(9),
        NO_FILL(10),
        NO_LINE(11),
        AUTO_LINE(12),
        AUTO_CURVE(13),
        CORNER_LINE(14),
        CORNER_CURVE(15),
        SMOOTH_LINE(16),
        SMOOTH_CURVE(17),
        SYMMETRIC_LINE(18),
        SYMMETRIC_CURVE(19),
        FREEFORM(20),
        FILL_COLOR(21),
        LINE_COLOR(22);

        private final int flag;

        EscapeInfo(int i) {
            this.flag = i;
        }

        public int getFlag() {
            return this.flag;
        }

        public static EscapeInfo valueOf(int i) {
            for (EscapeInfo escapeInfo : values()) {
                if (escapeInfo.flag == i) {
                    return escapeInfo;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public enum PathInfo {
        lineTo(0),
        curveTo(1),
        moveTo(2),
        close(3),
        end(4),
        escape(5),
        clientEscape(6);

        private final int flag;

        PathInfo(int i) {
            this.flag = i;
        }

        public int getFlag() {
            return this.flag;
        }

        public static PathInfo valueOf(int i) {
            for (PathInfo pathInfo : values()) {
                if (pathInfo.flag == i) {
                    return pathInfo;
                }
            }
            return null;
        }
    }

    public HSLFAutoShape(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(escherContainerRecord, shapeContainer);
    }

    private static String d2s(double d) {
        return Integer.toString((int) Math.rint(d));
    }

    private static AdjustPoint fillPoint(byte[] bArr, int[] iArr) {
        int i;
        int i2;
        if (bArr == null || iArr == null) {
            LOG.atWarn().log("Master bytes or points not set - ignore point");
            return null;
        }
        if ((bArr.length != 4 && bArr.length != 8) || iArr.length != 2) {
            LOG.atWarn().log("Invalid number of master bytes for a single point - ignore point");
            return null;
        }
        if (bArr.length == 4) {
            i = LittleEndian.getShort(bArr, 0);
            i2 = LittleEndian.getShort(bArr, 2);
        } else {
            i = LittleEndian.getInt(bArr, 0);
            i2 = LittleEndian.getInt(bArr, 4);
        }
        iArr[0] = i;
        iArr[1] = i2;
        return toPoint(iArr);
    }

    private static Rectangle2D getBounds(AbstractEscherOptRecord abstractEscherOptRecord, Path2D path2D) {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(abstractEscherOptRecord, EscherPropertyTypes.GEOMETRY__LEFT);
        EscherSimpleProperty escherSimpleProperty2 = (EscherSimpleProperty) HSLFShape.getEscherProperty(abstractEscherOptRecord, EscherPropertyTypes.GEOMETRY__RIGHT);
        EscherSimpleProperty escherSimpleProperty3 = (EscherSimpleProperty) HSLFShape.getEscherProperty(abstractEscherOptRecord, EscherPropertyTypes.GEOMETRY__TOP);
        EscherSimpleProperty escherSimpleProperty4 = (EscherSimpleProperty) HSLFShape.getEscherProperty(abstractEscherOptRecord, EscherPropertyTypes.GEOMETRY__BOTTOM);
        if (escherSimpleProperty == null || escherSimpleProperty2 == null || escherSimpleProperty3 == null || escherSimpleProperty4 == null) {
            return path2D.getBounds2D();
        }
        Rectangle2D.Double r9 = new Rectangle2D.Double();
        r9.setFrameFromDiagonal(new Point2D.Double(escherSimpleProperty.getPropertyValue(), escherSimpleProperty3.getPropertyValue()), new Point2D.Double(escherSimpleProperty2.getPropertyValue(), escherSimpleProperty4.getPropertyValue()));
        return r9;
    }

    private static EscapeInfo getEscapeInfo(byte[] bArr) {
        return EscapeInfo.valueOf(ESCAPE_INFO.getValue(LittleEndian.getUShort(bArr, 0)));
    }

    private static PathInfo getPathInfo(byte[] bArr) {
        return PathInfo.valueOf(PATH_INFO.getValue(LittleEndian.getUShort(bArr, 0)));
    }

    private static void handleClosedShape(AbstractEscherOptRecord abstractEscherOptRecord, Path path, Path2D path2D) {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(abstractEscherOptRecord, EscherPropertyTypes.GEOMETRY__SHAPEPATH);
        HSLFFreeformShape.ShapePath valueOf = HSLFFreeformShape.ShapePath.valueOf(escherSimpleProperty == null ? 1 : escherSimpleProperty.getPropertyValue());
        if (valueOf == HSLFFreeformShape.ShapePath.LINES_CLOSED || valueOf == HSLFFreeformShape.ShapePath.CURVES_CLOSED) {
            path.addCommand(new ClosePathCommand());
            path2D.closePath();
        }
    }

    private static void handleCurveTo(Iterator<byte[]> it2, int[] iArr, Path path, Path2D path2D) {
        if (it2.hasNext()) {
            handleMoveTo0(path, path2D);
            CurveToCommand curveToCommand = new CurveToCommand();
            int[] iArr2 = new int[6];
            AdjustPoint[] adjustPointArr = new AdjustPoint[3];
            for (int i = 0; it2.hasNext() && i < 3; i++) {
                adjustPointArr[i] = fillPoint(it2.next(), iArr);
                int i2 = i * 2;
                iArr2[i2] = iArr[0];
                iArr2[i2 + 1] = iArr[1];
            }
            curveToCommand.setPt1(adjustPointArr[0]);
            curveToCommand.setPt2(adjustPointArr[1]);
            curveToCommand.setPt3(adjustPointArr[2]);
            path.addCommand(curveToCommand);
            path2D.curveTo(iArr2[0], iArr2[1], iArr2[2], iArr2[3], iArr2[4], iArr2[5]);
        }
    }

    private static void handleEscapeInfo(Path path, Path2D path2D, byte[] bArr, Iterator<byte[]> it2) {
        EscapeInfo escapeInfo = getEscapeInfo(bArr);
        if (escapeInfo != null && C194541.f111382xe61dcbdb[escapeInfo.ordinal()] == 4) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            int[] iArr4 = new int[2];
            fillPoint(it2.next(), iArr);
            fillPoint(it2.next(), iArr2);
            fillPoint(it2.next(), iArr3);
            fillPoint(it2.next(), iArr4);
            Arc2D.Double r9 = new Arc2D.Double();
            Rectangle2D.Double r3 = new Rectangle2D.Double();
            r3.setFrameFromDiagonal(xy2p(iArr), xy2p(iArr2));
            r9.setFrame(r3);
            r9.setAngles(xy2p(iArr3), xy2p(iArr4));
            path2D.append((Shape) r9, true);
            ArcToCommand arcToCommand = new ArcToCommand();
            arcToCommand.setHR(d2s(r3.getHeight() / 2.0d));
            arcToCommand.setWR(d2s(r3.getWidth() / 2.0d));
            arcToCommand.setStAng(d2s((-r9.getAngleStart()) * 60000.0d));
            arcToCommand.setSwAng(d2s((-r9.getAngleExtent()) * 60000.0d));
            path.addCommand(arcToCommand);
        }
    }

    private static void handleLineTo(Iterator<byte[]> it2, int[] iArr, Path path, Path2D path2D) {
        if (it2.hasNext()) {
            handleMoveTo0(path, path2D);
            LineToCommand lineToCommand = new LineToCommand();
            lineToCommand.setPt(fillPoint(it2.next(), iArr));
            path.addCommand(lineToCommand);
            path2D.lineTo(iArr[0], iArr[1]);
        }
    }

    private static void handleMoveTo(Iterator<byte[]> it2, int[] iArr, Path path, Path2D path2D) {
        if (it2.hasNext()) {
            MoveToCommand moveToCommand = new MoveToCommand();
            moveToCommand.setPt(fillPoint(it2.next(), iArr));
            path.addCommand(moveToCommand);
            path2D.moveTo(iArr[0], iArr[1]);
        }
    }

    private static void handleMoveTo0(Path path, Path2D path2D) {
        if (path2D.getCurrentPoint() == null) {
            MoveToCommand moveToCommand = new MoveToCommand();
            AdjustPoint adjustPoint = new AdjustPoint();
            adjustPoint.setX("0");
            adjustPoint.setY("0");
            moveToCommand.setPt(adjustPoint);
            path.addCommand(moveToCommand);
            path2D.moveTo(0.0d, 0.0d);
        }
    }

    private static AdjustPoint toPoint(int[] iArr) {
        AdjustPoint adjustPoint = new AdjustPoint();
        adjustPoint.setX(Integer.toString(iArr[0]));
        adjustPoint.setY(Integer.toString(iArr[1]));
        return adjustPoint;
    }

    private static Point2D xy2p(int[] iArr) {
        return new Point2D.Double(iArr[0], iArr[1]);
    }

    public EscherContainerRecord createSpContainer(ShapeType shapeType, boolean z) {
        EscherContainerRecord createSpContainer = super.createSpContainer(z);
        setShapeType(shapeType);
        setEscherProperty(EscherPropertyTypes.PROTECTION__LOCKAGAINSTGROUPING, 262144);
        EscherPropertyTypes escherPropertyTypes = EscherPropertyTypes.FILL__FILLCOLOR;
        setEscherProperty(escherPropertyTypes, 134217732);
        setEscherProperty(escherPropertyTypes, 134217732);
        setEscherProperty(EscherPropertyTypes.FILL__FILLBACKCOLOR, 134217728);
        setEscherProperty(EscherPropertyTypes.FILL__NOFILLHITTEST, 1048592);
        setEscherProperty(EscherPropertyTypes.LINESTYLE__COLOR, 134217729);
        setEscherProperty(EscherPropertyTypes.LINESTYLE__NOLINEDRAWDASH, 524296);
        setEscherProperty(EscherPropertyTypes.SHADOWSTYLE__COLOR, 134217730);
        return createSpContainer;
    }

    public int getAdjustmentValue(int i) {
        if (i < 0 || i > 9) {
            throw new IllegalArgumentException("The index of an adjustment value must be in the [0, 9] range");
        }
        return getEscherProperty(HSLFSimpleShape.ADJUST_VALUES[i]);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFTextShape, org.apache.poi.hslf.usermodel.HSLFShape
    public Color getColor(EscherPropertyTypes escherPropertyTypes) {
        ShapeType shapeType;
        ShapeType shapeType2;
        String text;
        if (escherPropertyTypes == EscherPropertyTypes.LINESTYLE__COLOR) {
            AbstractEscherOptRecord escherOptRecord = getEscherOptRecord();
            if ((HSLFShape.getEscherProperty(escherOptRecord, EscherPropertyTypes.GEOMETRY__VERTICES) != null && HSLFShape.getEscherProperty(escherOptRecord, EscherPropertyTypes.GEOMETRY__SEGMENTINFO) != null) || (((shapeType = getShapeType()) != (shapeType2 = ShapeType.RECT) && shapeType != ShapeType.NOT_PRIMITIVE) || (shapeType == shapeType2 && ((text = getText()) == null || text.length() == 0)))) {
                return Color.BLACK;
            }
        }
        return super.getColor(escherPropertyTypes);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFSimpleShape, org.apache.poi.sl.usermodel.SimpleShape
    public CustomGeometry getGeometry() {
        return getGeometry(new Path2D.Double());
    }

    public void setAdjustmentValue(int i, int i2) {
        if (i < 0 || i > 9) {
            throw new IllegalArgumentException("The index of an adjustment value must be in the [0, 9] range");
        }
        setEscherProperty(HSLFSimpleShape.ADJUST_VALUES[i], i2);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFTextShape
    public void setDefaultTextProperties(HSLFTextParagraph hSLFTextParagraph) {
        setVerticalAlignment(VerticalAlignment.MIDDLE);
        setHorizontalCentered(Boolean.TRUE);
        setWordWrap(false);
    }

    public HSLFAutoShape(ShapeType shapeType, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(null, shapeContainer);
        createSpContainer(shapeType, shapeContainer instanceof HSLFGroupShape);
    }

    public CustomGeometry getGeometry(Path2D path2D) {
        CustomGeometry customGeometry = new CustomGeometry();
        AbstractEscherOptRecord escherOptRecord = getEscherOptRecord();
        EscherArrayProperty escherArrayProperty = (EscherArrayProperty) HSLFShape.getEscherProperty(escherOptRecord, EscherPropertyTypes.GEOMETRY__VERTICES);
        EscherArrayProperty escherArrayProperty2 = (EscherArrayProperty) HSLFShape.getEscherProperty(escherOptRecord, EscherPropertyTypes.GEOMETRY__SEGMENTINFO);
        if (escherArrayProperty == null) {
            LOG.atWarn().log("Freeform is missing GEOMETRY__VERTICES ");
            return super.getGeometry();
        }
        if (escherArrayProperty2 == null) {
            LOG.atWarn().log("Freeform is missing GEOMETRY__SEGMENTINFO ");
            return super.getGeometry();
        }
        Iterator<byte[]> it2 = escherArrayProperty.iterator();
        Iterator<byte[]> it3 = escherArrayProperty2.iterator();
        int[] iArr = new int[2];
        Path path = new Path();
        customGeometry.addPath(path);
        boolean z = false;
        while (it3.hasNext()) {
            byte[] next = it3.next();
            PathInfo pathInfo = getPathInfo(next);
            if (pathInfo != null) {
                int i = C194541.$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$PathInfo[pathInfo.ordinal()];
                if (i == 1) {
                    handleEscapeInfo(path, path2D, next, it2);
                } else if (i == 2) {
                    handleMoveTo(it2, iArr, path, path2D);
                } else if (i == 3) {
                    handleLineTo(it2, iArr, path, path2D);
                } else if (i == 4) {
                    handleCurveTo(it2, iArr, path, path2D);
                } else if (i == 5) {
                    if (path2D.getCurrentPoint() != null) {
                        path.addCommand(new ClosePathCommand());
                        path2D.closePath();
                    }
                    z = true;
                }
            }
        }
        if (!z) {
            handleClosedShape(escherOptRecord, path, path2D);
        }
        Rectangle2D bounds = getBounds(escherOptRecord, path2D);
        path.setW((int) Math.rint(bounds.getWidth()));
        path.setH((int) Math.rint(bounds.getHeight()));
        return customGeometry;
    }

    public HSLFAutoShape(ShapeType shapeType) {
        this(shapeType, (ShapeContainer<HSLFShape, HSLFTextParagraph>) null);
    }
}
