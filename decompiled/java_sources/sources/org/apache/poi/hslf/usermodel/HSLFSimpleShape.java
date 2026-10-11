package org.apache.poi.hslf.usermodel;

import java.awt.Color;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ddf.AbstractEscherOptRecord;
import org.apache.poi.ddf.EscherChildAnchorRecord;
import org.apache.poi.ddf.EscherClientAnchorRecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherOptRecord;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ddf.EscherSimpleProperty;
import org.apache.poi.ddf.EscherSpRecord;
import org.apache.poi.sl.draw.DrawPaint;
import org.apache.poi.sl.draw.geom.CustomGeometry;
import org.apache.poi.sl.draw.geom.PresetGeometries;
import org.apache.poi.sl.usermodel.Hyperlink;
import org.apache.poi.sl.usermodel.LineDecoration;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.sl.usermodel.Placeholder;
import org.apache.poi.sl.usermodel.Shadow;
import org.apache.poi.sl.usermodel.ShapeContainer;
import org.apache.poi.sl.usermodel.ShapeType;
import org.apache.poi.sl.usermodel.SimpleShape;
import org.apache.poi.sl.usermodel.StrokeStyle;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public abstract class HSLFSimpleShape extends HSLFShape implements SimpleShape<HSLFShape, HSLFTextParagraph> {
    public static final double DEFAULT_LINE_WIDTH = 0.75d;
    protected HSLFHyperlink _hyperlink;
    private static final Logger LOG = LogManager.getLogger((Class<?>) HSLFSimpleShape.class);
    protected static final EscherPropertyTypes[] ADJUST_VALUES = {EscherPropertyTypes.GEOMETRY__ADJUSTVALUE, EscherPropertyTypes.GEOMETRY__ADJUST2VALUE, EscherPropertyTypes.GEOMETRY__ADJUST3VALUE, EscherPropertyTypes.GEOMETRY__ADJUST4VALUE, EscherPropertyTypes.GEOMETRY__ADJUST5VALUE, EscherPropertyTypes.GEOMETRY__ADJUST6VALUE, EscherPropertyTypes.GEOMETRY__ADJUST7VALUE, EscherPropertyTypes.GEOMETRY__ADJUST8VALUE, EscherPropertyTypes.GEOMETRY__ADJUST9VALUE, EscherPropertyTypes.GEOMETRY__ADJUST10VALUE};

    /* renamed from: org.apache.poi.hslf.usermodel.HSLFSimpleShape$4 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194684 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$ShapeType;

        static {
            int[] iArr = new int[ShapeType.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$ShapeType = iArr;
            try {
                iArr[ShapeType.ARC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$ShapeType[ShapeType.BLOCK_ARC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$ShapeType[ShapeType.CHORD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$ShapeType[ShapeType.PIE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$ShapeType[ShapeType.CIRCULAR_ARROW.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$ShapeType[ShapeType.LEFT_CIRCULAR_ARROW.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$ShapeType[ShapeType.LEFT_RIGHT_CIRCULAR_ARROW.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$ShapeType[ShapeType.MATH_NOT_EQUAL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public HSLFSimpleShape(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(escherContainerRecord, shapeContainer);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShape
    public EscherContainerRecord createSpContainer(boolean z) {
        EscherRecord escherClientAnchorRecord;
        EscherContainerRecord createSpContainer = super.createSpContainer(z);
        createSpContainer.setRecordId(EscherContainerRecord.SP_CONTAINER);
        EscherSpRecord escherSpRecord = new EscherSpRecord();
        escherSpRecord.setFlags(z ? 2562 : 2560);
        createSpContainer.addChildRecord(escherSpRecord);
        EscherOptRecord escherOptRecord = new EscherOptRecord();
        escherOptRecord.setRecordId(EscherOptRecord.RECORD_ID);
        createSpContainer.addChildRecord(escherOptRecord);
        if (z) {
            escherClientAnchorRecord = new EscherChildAnchorRecord();
        } else {
            escherClientAnchorRecord = new EscherClientAnchorRecord();
            byte[] bArr = new byte[16];
            LittleEndian.putUShort(bArr, 0, 0);
            LittleEndian.putUShort(bArr, 2, 0);
            LittleEndian.putInt(bArr, 4, 8);
            escherClientAnchorRecord.fillFields(bArr, 0, null);
        }
        createSpContainer.addChildRecord(escherClientAnchorRecord);
        return createSpContainer;
    }

    @Override // org.apache.poi.sl.usermodel.SimpleShape
    public Color getFillColor() {
        return getFill().getForegroundColor();
    }

    public CustomGeometry getGeometry() {
        PresetGeometries presetGeometries = PresetGeometries.getInstance();
        ShapeType shapeType = getShapeType();
        String ooxmlName = shapeType != null ? shapeType.getOoxmlName() : null;
        CustomGeometry customGeometry = presetGeometries.get(ooxmlName);
        if (customGeometry == null) {
            if (ooxmlName == null) {
                ooxmlName = shapeType != null ? shapeType.toString() : "<unknown>";
            }
            LOG.atWarn().log("No preset shape definition for shapeType: {}", ooxmlName);
        }
        return customGeometry;
    }

    public Color getLineBackgroundColor() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__NOLINEDRAWDASH);
        if (escherSimpleProperty == null || (escherSimpleProperty.getPropertyValue() & 8) != 0) {
            return getColor(EscherPropertyTypes.LINESTYLE__BACKCOLOR, EscherPropertyTypes.LINESTYLE__OPACITY);
        }
        return null;
    }

    public StrokeStyle.LineCap getLineCap() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__LINEENDCAPSTYLE);
        return escherSimpleProperty == null ? StrokeStyle.LineCap.FLAT : StrokeStyle.LineCap.fromNativeId(escherSimpleProperty.getPropertyValue());
    }

    public Color getLineColor() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__NOLINEDRAWDASH);
        if (escherSimpleProperty == null || (escherSimpleProperty.getPropertyValue() & 8) != 0) {
            return getColor(EscherPropertyTypes.LINESTYLE__COLOR, EscherPropertyTypes.LINESTYLE__OPACITY);
        }
        return null;
    }

    public StrokeStyle.LineCompound getLineCompound() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__LINESTYLE);
        return escherSimpleProperty == null ? StrokeStyle.LineCompound.SINGLE : StrokeStyle.LineCompound.fromNativeId(escherSimpleProperty.getPropertyValue());
    }

    public StrokeStyle.LineDash getLineDash() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__LINEDASHING);
        return escherSimpleProperty == null ? StrokeStyle.LineDash.SOLID : StrokeStyle.LineDash.fromNativeId(escherSimpleProperty.getPropertyValue());
    }

    @Override // org.apache.poi.sl.usermodel.SimpleShape
    public LineDecoration getLineDecoration() {
        return new LineDecoration() { // from class: org.apache.poi.hslf.usermodel.HSLFSimpleShape.3
            @Override // org.apache.poi.sl.usermodel.LineDecoration
            public LineDecoration.DecorationSize getHeadLength() {
                return HSLFSimpleShape.this.getLineHeadLength();
            }

            @Override // org.apache.poi.sl.usermodel.LineDecoration
            public LineDecoration.DecorationShape getHeadShape() {
                return HSLFSimpleShape.this.getLineHeadDecoration();
            }

            @Override // org.apache.poi.sl.usermodel.LineDecoration
            public LineDecoration.DecorationSize getHeadWidth() {
                return HSLFSimpleShape.this.getLineHeadWidth();
            }

            @Override // org.apache.poi.sl.usermodel.LineDecoration
            public LineDecoration.DecorationSize getTailLength() {
                return HSLFSimpleShape.this.getLineTailLength();
            }

            @Override // org.apache.poi.sl.usermodel.LineDecoration
            public LineDecoration.DecorationShape getTailShape() {
                return HSLFSimpleShape.this.getLineTailDecoration();
            }

            @Override // org.apache.poi.sl.usermodel.LineDecoration
            public LineDecoration.DecorationSize getTailWidth() {
                return HSLFSimpleShape.this.getLineTailWidth();
            }
        };
    }

    public LineDecoration.DecorationShape getLineHeadDecoration() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__LINESTARTARROWHEAD);
        if (escherSimpleProperty == null) {
            return null;
        }
        return LineDecoration.DecorationShape.fromNativeId(escherSimpleProperty.getPropertyValue());
    }

    public LineDecoration.DecorationSize getLineHeadLength() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__LINESTARTARROWLENGTH);
        if (escherSimpleProperty == null) {
            return null;
        }
        return LineDecoration.DecorationSize.fromNativeId(escherSimpleProperty.getPropertyValue());
    }

    public LineDecoration.DecorationSize getLineHeadWidth() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__LINESTARTARROWWIDTH);
        if (escherSimpleProperty == null) {
            return null;
        }
        return LineDecoration.DecorationSize.fromNativeId(escherSimpleProperty.getPropertyValue());
    }

    public LineDecoration.DecorationShape getLineTailDecoration() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__LINEENDARROWHEAD);
        if (escherSimpleProperty == null) {
            return null;
        }
        return LineDecoration.DecorationShape.fromNativeId(escherSimpleProperty.getPropertyValue());
    }

    public LineDecoration.DecorationSize getLineTailLength() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__LINEENDARROWLENGTH);
        if (escherSimpleProperty == null) {
            return null;
        }
        return LineDecoration.DecorationSize.fromNativeId(escherSimpleProperty.getPropertyValue());
    }

    public LineDecoration.DecorationSize getLineTailWidth() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__LINEENDARROWWIDTH);
        if (escherSimpleProperty == null) {
            return null;
        }
        return LineDecoration.DecorationSize.fromNativeId(escherSimpleProperty.getPropertyValue());
    }

    public double getLineWidth() {
        if (((EscherSimpleProperty) HSLFShape.getEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__LINEWIDTH)) == null) {
            return 0.75d;
        }
        return Units.toPoints(r2.getPropertyValue());
    }

    @Override // org.apache.poi.sl.usermodel.SimpleShape
    public Placeholder getPlaceholder() {
        return getPlaceholderDetails().getPlaceholder();
    }

    @Override // org.apache.poi.sl.usermodel.SimpleShape
    public Shadow<HSLFShape, HSLFTextParagraph> getShadow() {
        AbstractEscherOptRecord escherOptRecord = getEscherOptRecord();
        if (escherOptRecord == null || escherOptRecord.lookup(EscherPropertyTypes.SHADOWSTYLE__TYPE) == null) {
            return null;
        }
        return new Shadow<HSLFShape, HSLFTextParagraph>() { // from class: org.apache.poi.hslf.usermodel.HSLFSimpleShape.2
            @Override // org.apache.poi.sl.usermodel.Shadow
            public double getAngle() {
                return HSLFSimpleShape.this.getShadowAngle();
            }

            @Override // org.apache.poi.sl.usermodel.Shadow
            public double getBlur() {
                return 0.0d;
            }

            @Override // org.apache.poi.sl.usermodel.Shadow
            public double getDistance() {
                return HSLFSimpleShape.this.getShadowDistance();
            }

            @Override // org.apache.poi.sl.usermodel.Shadow
            public PaintStyle.SolidPaint getFillStyle() {
                return DrawPaint.createSolidPaint(HSLFSimpleShape.this.getShadowColor());
            }

            @Override // org.apache.poi.sl.usermodel.Shadow
            public SimpleShape<HSLFShape, HSLFTextParagraph> getShadowParent() {
                return HSLFSimpleShape.this;
            }
        };
    }

    public double getShadowAngle() {
        AbstractEscherOptRecord escherOptRecord = getEscherOptRecord();
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(escherOptRecord, EscherPropertyTypes.SHADOWSTYLE__OFFSETX);
        return Math.toDegrees(Math.atan2(((EscherSimpleProperty) HSLFShape.getEscherProperty(escherOptRecord, EscherPropertyTypes.SHADOWSTYLE__OFFSETY)) != null ? r5.getPropertyValue() : 0, escherSimpleProperty == null ? 0 : escherSimpleProperty.getPropertyValue()));
    }

    public Color getShadowColor() {
        Color color = getColor(EscherPropertyTypes.SHADOWSTYLE__COLOR, EscherPropertyTypes.SHADOWSTYLE__OPACITY);
        return color == null ? Color.black : color;
    }

    public double getShadowDistance() {
        AbstractEscherOptRecord escherOptRecord = getEscherOptRecord();
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(escherOptRecord, EscherPropertyTypes.SHADOWSTYLE__OFFSETX);
        return Units.toPoints((long) Math.hypot(escherSimpleProperty == null ? 0 : escherSimpleProperty.getPropertyValue(), ((EscherSimpleProperty) HSLFShape.getEscherProperty(escherOptRecord, EscherPropertyTypes.SHADOWSTYLE__OFFSETY)) != null ? r4.getPropertyValue() : 0));
    }

    @Override // org.apache.poi.sl.usermodel.SimpleShape
    public StrokeStyle getStrokeStyle() {
        return new StrokeStyle() { // from class: org.apache.poi.hslf.usermodel.HSLFSimpleShape.1
            @Override // org.apache.poi.sl.usermodel.StrokeStyle
            public StrokeStyle.LineCap getLineCap() {
                return null;
            }

            @Override // org.apache.poi.sl.usermodel.StrokeStyle
            public StrokeStyle.LineCompound getLineCompound() {
                return HSLFSimpleShape.this.getLineCompound();
            }

            @Override // org.apache.poi.sl.usermodel.StrokeStyle
            public StrokeStyle.LineDash getLineDash() {
                return HSLFSimpleShape.this.getLineDash();
            }

            @Override // org.apache.poi.sl.usermodel.StrokeStyle
            public double getLineWidth() {
                return HSLFSimpleShape.this.getLineWidth();
            }

            @Override // org.apache.poi.sl.usermodel.StrokeStyle
            public PaintStyle getPaint() {
                return DrawPaint.createSolidPaint(HSLFSimpleShape.this.getLineColor());
            }
        };
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShape, org.apache.poi.sl.usermodel.SimpleShape
    public boolean isPlaceholder() {
        return false;
    }

    @Override // org.apache.poi.sl.usermodel.SimpleShape
    public void setFillColor(Color color) {
        getFill().setForegroundColor(color);
    }

    public void setHyperlink(HSLFHyperlink hSLFHyperlink) {
        this._hyperlink = hSLFHyperlink;
    }

    public void setLineBackgroundColor(Color color) {
        AbstractEscherOptRecord escherOptRecord = getEscherOptRecord();
        if (color == null) {
            HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.LINESTYLE__NOLINEDRAWDASH, 524288);
            escherOptRecord.removeEscherProperty(EscherPropertyTypes.LINESTYLE__BACKCOLOR);
        } else {
            HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.LINESTYLE__BACKCOLOR, new Color(color.getBlue(), color.getGreen(), color.getRed(), 0).getRGB());
            HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.LINESTYLE__NOLINEDRAWDASH, 1572888);
        }
    }

    public void setLineCap(StrokeStyle.LineCap lineCap) {
        HSLFShape.setEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__LINEENDCAPSTYLE, lineCap == StrokeStyle.LineCap.FLAT ? -1 : lineCap.nativeId);
    }

    public void setLineColor(Color color) {
        AbstractEscherOptRecord escherOptRecord = getEscherOptRecord();
        if (color == null) {
            HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.LINESTYLE__NOLINEDRAWDASH, 524288);
            return;
        }
        HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.LINESTYLE__COLOR, new Color(color.getBlue(), color.getGreen(), color.getRed(), 0).getRGB());
        HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.LINESTYLE__NOLINEDRAWDASH, 1572888);
    }

    public void setLineCompound(StrokeStyle.LineCompound lineCompound) {
        HSLFShape.setEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__LINESTYLE, lineCompound == StrokeStyle.LineCompound.SINGLE ? -1 : lineCompound.nativeId);
    }

    public void setLineDash(StrokeStyle.LineDash lineDash) {
        HSLFShape.setEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__LINEDASHING, lineDash == StrokeStyle.LineDash.SOLID ? -1 : lineDash.nativeId);
    }

    public void setLineHeadDecoration(LineDecoration.DecorationShape decorationShape) {
        HSLFShape.setEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__LINESTARTARROWHEAD, decorationShape == null ? -1 : decorationShape.nativeId);
    }

    public void setLineHeadLength(LineDecoration.DecorationSize decorationSize) {
        HSLFShape.setEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__LINESTARTARROWLENGTH, decorationSize == null ? -1 : decorationSize.nativeId);
    }

    public void setLineHeadWidth(LineDecoration.DecorationSize decorationSize) {
        HSLFShape.setEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__LINESTARTARROWWIDTH, decorationSize == null ? -1 : decorationSize.nativeId);
    }

    public void setLineTailDecoration(LineDecoration.DecorationShape decorationShape) {
        HSLFShape.setEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__LINEENDARROWHEAD, decorationShape == null ? -1 : decorationShape.nativeId);
    }

    public void setLineTailLength(LineDecoration.DecorationSize decorationSize) {
        HSLFShape.setEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__LINEENDARROWLENGTH, decorationSize == null ? -1 : decorationSize.nativeId);
    }

    public void setLineTailWidth(LineDecoration.DecorationSize decorationSize) {
        HSLFShape.setEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__LINEENDARROWWIDTH, decorationSize == null ? -1 : decorationSize.nativeId);
    }

    public void setLineWidth(double d) {
        HSLFShape.setEscherProperty(getEscherOptRecord(), EscherPropertyTypes.LINESTYLE__LINEWIDTH, Units.toEMU(d));
    }

    @Override // org.apache.poi.sl.usermodel.SimpleShape
    public void setPlaceholder(Placeholder placeholder) {
        getPlaceholderDetails().setPlaceholder(placeholder);
    }

    @Override // org.apache.poi.sl.usermodel.SimpleShape
    public void setStrokeStyle(Object... objArr) {
        if (objArr.length == 0) {
            setLineColor(null);
            return;
        }
        for (Object obj : objArr) {
            if (obj instanceof Number) {
                setLineWidth(((Number) obj).doubleValue());
            } else if (obj instanceof StrokeStyle.LineCap) {
                setLineCap((StrokeStyle.LineCap) obj);
            } else if (obj instanceof StrokeStyle.LineDash) {
                setLineDash((StrokeStyle.LineDash) obj);
            } else if (obj instanceof StrokeStyle.LineCompound) {
                setLineCompound((StrokeStyle.LineCompound) obj);
            } else if (obj instanceof Color) {
                setLineColor((Color) obj);
            }
        }
    }

    @Override // org.apache.poi.sl.usermodel.SimpleShape
    public Hyperlink<HSLFShape, HSLFTextParagraph> createHyperlink() {
        if (this._hyperlink == null) {
            this._hyperlink = HSLFHyperlink.createHyperlink(this);
        }
        return this._hyperlink;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0048, code lost:
    
        if (r1 == 2) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0059, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0051, code lost:
    
        if (r1 != 4) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0056, code lost:
    
        if (r1 != 2) goto L31;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x0044. Please report as an issue. */
    @Override // org.apache.poi.sl.draw.geom.IAdjustableShape
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.poi.sl.draw.geom.Guide getAdjustValue(java.lang.String r6) {
        /*
            r5 = this;
            r0 = 0
            if (r6 == 0) goto L9f
            java.lang.String r1 = "adj([1-9]|10)?"
            boolean r1 = r6.matches(r1)
            if (r1 != 0) goto Ld
            goto L9f
        Ld:
            java.lang.String r1 = "adj"
            java.lang.String r2 = ""
            java.lang.String r6 = r6.replace(r1, r2)
            boolean r1 = r6.isEmpty()
            if (r1 == 0) goto L1d
            java.lang.String r6 = "1"
        L1d:
            int r1 = java.lang.Integer.parseInt(r6)
            r2 = 1
            if (r1 < r2) goto L88
            r3 = 10
            if (r1 > r3) goto L88
            org.apache.poi.ddf.EscherPropertyTypes[] r3 = org.apache.poi.hslf.usermodel.HSLFSimpleShape.ADJUST_VALUES
            int r4 = r1 + (-1)
            r3 = r3[r4]
            r4 = -1
            int r3 = r5.getEscherProperty(r3, r4)
            if (r3 != r4) goto L36
            return r0
        L36:
            int[] r0 = org.apache.poi.hslf.usermodel.HSLFSimpleShape.C194684.$SwitchMap$org$apache$poi$sl$usermodel$ShapeType
            org.apache.poi.sl.usermodel.ShapeType r5 = r5.getShapeType()
            int r5 = r5.ordinal()
            r5 = r0[r5]
            r0 = 2
            r4 = 0
            switch(r5) {
                case 1: goto L54;
                case 2: goto L54;
                case 3: goto L54;
                case 4: goto L54;
                case 5: goto L4b;
                case 6: goto L4b;
                case 7: goto L4b;
                case 8: goto L48;
                default: goto L47;
            }
        L47:
            goto L5b
        L48:
            if (r1 != r0) goto L59
            goto L5a
        L4b:
            if (r1 == r0) goto L5a
            r5 = 3
            if (r1 == r5) goto L5a
            r5 = 4
            if (r1 != r5) goto L59
            goto L5a
        L54:
            if (r1 == r2) goto L5a
            if (r1 != r0) goto L59
            goto L5a
        L59:
            r2 = r4
        L5a:
            r4 = r2
        L5b:
            org.apache.poi.sl.draw.geom.Guide r5 = new org.apache.poi.sl.draw.geom.Guide
            r5.<init>()
            r5.setName(r6)
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = "val "
            r6.append(r0)
            double r0 = (double) r3
            if (r4 == 0) goto L73
            r2 = 4679240012837945344(0x40f0000000000000, double:65536.0)
            goto L78
        L73:
            r2 = 4617047446555209923(0x40130c30c30c30c3, double:4.761904761904762)
        L78:
            double r0 = r0 * r2
            double r0 = java.lang.Math.rint(r0)
            r6.append(r0)
            java.lang.String r6 = r6.toString()
            r5.setFmla(r6)
            return r5
        L88:
            org.apache.poi.hslf.exceptions.HSLFException r5 = new org.apache.poi.hslf.exceptions.HSLFException
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = "invalid adjust value: "
            r6.append(r0)
            r6.append(r1)
            java.lang.String r6 = r6.toString()
            r5.<init>(r6)
            throw r5
        L9f:
            org.apache.logging.log4j.Logger r5 = org.apache.poi.hslf.usermodel.HSLFSimpleShape.LOG
            org.apache.logging.log4j.LogBuilder r5 = r5.atInfo()
            java.lang.String r1 = "Adjust value '{}' not supported. Using default value."
            r5.log(r1, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hslf.usermodel.HSLFSimpleShape.getAdjustValue(java.lang.String):org.apache.poi.sl.draw.geom.Guide");
    }

    @Override // org.apache.poi.sl.usermodel.SimpleShape
    public Hyperlink<HSLFShape, HSLFTextParagraph> getHyperlink() {
        return this._hyperlink;
    }

    @Override // org.apache.poi.sl.usermodel.SimpleShape
    public HSLFShapePlaceholderDetails getPlaceholderDetails() {
        return new HSLFShapePlaceholderDetails(this);
    }
}
