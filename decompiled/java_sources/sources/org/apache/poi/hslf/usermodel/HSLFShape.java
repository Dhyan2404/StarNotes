package org.apache.poi.hslf.usermodel;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;
import java.util.Iterator;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ddf.AbstractEscherOptRecord;
import org.apache.poi.ddf.EscherChildAnchorRecord;
import org.apache.poi.ddf.EscherClientAnchorRecord;
import org.apache.poi.ddf.EscherClientDataRecord;
import org.apache.poi.ddf.EscherColorRef;
import org.apache.poi.ddf.EscherComplexProperty;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherProperty;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ddf.EscherRecordTypes;
import org.apache.poi.ddf.EscherSimpleProperty;
import org.apache.poi.ddf.EscherSpRecord;
import org.apache.poi.ddf.EscherTextboxRecord;
import org.apache.poi.hslf.record.HSLFEscherClientDataRecord;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.sl.draw.DrawFactory;
import org.apache.poi.sl.usermodel.FillStyle;
import org.apache.poi.sl.usermodel.PresetColor;
import org.apache.poi.sl.usermodel.Shape;
import org.apache.poi.sl.usermodel.ShapeContainer;
import org.apache.poi.sl.usermodel.ShapeType;
import org.apache.poi.sl.usermodel.Sheet;
import org.apache.poi.util.RecordFormatException;
import org.apache.poi.util.Removal;
import org.apache.poi.util.StringUtil;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public abstract class HSLFShape implements Shape<HSLFShape, HSLFTextParagraph> {
    private static final Logger LOG = LogManager.getLogger((Class<?>) HSLFShape.class);
    private EscherContainerRecord _escherContainer;
    private HSLFFill _fill;
    private final ShapeContainer<HSLFShape, HSLFTextParagraph> _parent;
    private HSLFSheet _sheet;

    /* renamed from: org.apache.poi.hslf.usermodel.HSLFShape$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194621 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ddf$EscherColorRef$SysIndexProcedure;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ddf$EscherColorRef$SysIndexSource;

        static {
            int[] iArr = new int[EscherColorRef.SysIndexProcedure.values().length];
            $SwitchMap$org$apache$poi$ddf$EscherColorRef$SysIndexProcedure = iArr;
            try {
                iArr[EscherColorRef.SysIndexProcedure.DARKEN_COLOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherColorRef$SysIndexProcedure[EscherColorRef.SysIndexProcedure.LIGHTEN_COLOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[EscherColorRef.SysIndexSource.values().length];
            $SwitchMap$org$apache$poi$ddf$EscherColorRef$SysIndexSource = iArr2;
            try {
                iArr2[EscherColorRef.SysIndexSource.FILL_COLOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherColorRef$SysIndexSource[EscherColorRef.SysIndexSource.LINE_OR_FILL_COLOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherColorRef$SysIndexSource[EscherColorRef.SysIndexSource.LINE_COLOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherColorRef$SysIndexSource[EscherColorRef.SysIndexSource.SHADOW_COLOR.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherColorRef$SysIndexSource[EscherColorRef.SysIndexSource.CURRENT_OR_LAST_COLOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherColorRef$SysIndexSource[EscherColorRef.SysIndexSource.FILL_BACKGROUND_COLOR.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherColorRef$SysIndexSource[EscherColorRef.SysIndexSource.LINE_BACKGROUND_COLOR.ordinal()] = 7;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherColorRef$SysIndexSource[EscherColorRef.SysIndexSource.FILL_OR_LINE_COLOR.ordinal()] = 8;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public HSLFShape(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        this._escherContainer = escherContainerRecord;
        this._parent = shapeContainer;
    }

    private Color applySysIndexProcedure(EscherColorRef escherColorRef, Color color) {
        EscherColorRef.SysIndexProcedure sysIndexProcedure = escherColorRef.getSysIndexProcedure();
        if (color == null || sysIndexProcedure == null) {
            return color;
        }
        int i = C194621.$SwitchMap$org$apache$poi$ddf$EscherColorRef$SysIndexProcedure[sysIndexProcedure.ordinal()];
        if (i == 1) {
            double d = escherColorRef.getRGB()[2] / 255.0d;
            return new Color(Math.toIntExact(Math.round(color.getRed() * d)), Math.toIntExact(Math.round(color.getGreen() * d)), Math.toIntExact(Math.round(color.getBlue() * d)));
        }
        if (i != 2) {
            return color;
        }
        double d2 = (255 - escherColorRef.getRGB()[2]) / 255.0d;
        return new Color(Math.toIntExact(Math.round(color.getRed() + ((255 - r0) * d2))), Math.toIntExact(Math.round(color.getGreen() + ((255 - r1) * d2))), Math.toIntExact(Math.round(color.getBlue() + ((255 - r8) * d2))));
    }

    public static <T extends EscherRecord> T getEscherChild(EscherContainerRecord escherContainerRecord, int i) {
        return (T) escherContainerRecord.getChildById((short) i);
    }

    @Removal(version = "5.0.0")
    @Deprecated
    public static <T extends EscherProperty> T getEscherProperty(AbstractEscherOptRecord abstractEscherOptRecord, int i) {
        if (abstractEscherOptRecord == null) {
            return null;
        }
        return (T) abstractEscherOptRecord.lookup(i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private Color getSysIndexColor(EscherColorRef escherColorRef) {
        EscherColorRef.SysIndexSource sysIndexSource = escherColorRef.getSysIndexSource();
        if (sysIndexSource == null) {
            PresetColor valueOfNativeId = PresetColor.valueOfNativeId(escherColorRef.getSysIndex());
            if (valueOfNativeId != null) {
                return valueOfNativeId.color;
            }
            return null;
        }
        switch (C194621.$SwitchMap$org$apache$poi$ddf$EscherColorRef$SysIndexSource[sysIndexSource.ordinal()]) {
            case 1:
                return getColor(EscherPropertyTypes.FILL__FILLCOLOR, EscherPropertyTypes.FILL__FILLOPACITY);
            case 2:
                Color color = this instanceof HSLFSimpleShape ? getColor(EscherPropertyTypes.LINESTYLE__COLOR, EscherPropertyTypes.LINESTYLE__OPACITY) : null;
                return color == null ? getColor(EscherPropertyTypes.FILL__FILLCOLOR, EscherPropertyTypes.FILL__FILLOPACITY) : color;
            case 3:
                if (this instanceof HSLFSimpleShape) {
                    return getColor(EscherPropertyTypes.LINESTYLE__COLOR, EscherPropertyTypes.LINESTYLE__OPACITY);
                }
                return null;
            case 4:
                if (this instanceof HSLFSimpleShape) {
                    return ((HSLFSimpleShape) this).getShadowColor();
                }
                return null;
            case 5:
            default:
                return null;
            case 6:
                return getColor(EscherPropertyTypes.FILL__FILLBACKCOLOR, EscherPropertyTypes.FILL__FILLOPACITY);
            case 7:
                if (this instanceof HSLFSimpleShape) {
                    return ((HSLFSimpleShape) this).getLineBackgroundColor();
                }
                return null;
            case 8:
                Color color2 = getColor(EscherPropertyTypes.FILL__FILLCOLOR, EscherPropertyTypes.FILL__FILLOPACITY);
                return (color2 == null && (this instanceof HSLFSimpleShape)) ? getColor(EscherPropertyTypes.LINESTYLE__COLOR, EscherPropertyTypes.LINESTYLE__OPACITY) : color2;
        }
    }

    @Removal(version = "5.0.0")
    @Deprecated
    public static void setEscherProperty(AbstractEscherOptRecord abstractEscherOptRecord, short s, int i) {
        Iterator<EscherProperty> it2 = abstractEscherOptRecord.getEscherProperties().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            } else if (it2.next().getPropertyNumber() == s) {
                it2.remove();
                break;
            }
        }
        if (i != -1) {
            abstractEscherOptRecord.addEscherProperty(new EscherSimpleProperty(s, i));
            abstractEscherOptRecord.sortProperties();
        }
    }

    public void afterInsert(HSLFSheet hSLFSheet) {
        HSLFFill hSLFFill = this._fill;
        if (hSLFFill != null) {
            hSLFFill.afterInsert(hSLFSheet);
        }
    }

    public EscherContainerRecord createSpContainer(boolean z) {
        if (this._escherContainer == null) {
            EscherContainerRecord escherContainerRecord = new EscherContainerRecord();
            this._escherContainer = escherContainerRecord;
            escherContainerRecord.setOptions((short) 15);
        }
        return this._escherContainer;
    }

    @Override // org.apache.poi.sl.usermodel.Shape
    public void draw(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        DrawFactory.getInstance(graphics2D).drawShape(graphics2D, this, rectangle2D);
    }

    public double getAlpha(EscherPropertyTypes escherPropertyTypes) {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) getEscherProperty(getEscherOptRecord(), escherPropertyTypes);
        return Units.fixedPointToDouble(escherSimpleProperty == null ? 65536 : escherSimpleProperty.getPropertyValue());
    }

    @Override // org.apache.poi.sl.usermodel.Shape, org.apache.poi.sl.usermodel.PlaceableShape
    public Rectangle2D getAnchor() {
        int dx1;
        int row1;
        int i;
        int i2;
        int flags = ((EscherSpRecord) getEscherChild(EscherSpRecord.RECORD_ID)).getFlags();
        EscherChildAnchorRecord escherChildAnchorRecord = (EscherChildAnchorRecord) getEscherChild(EscherChildAnchorRecord.RECORD_ID);
        boolean z = (flags & 2) != 0;
        if (!z || escherChildAnchorRecord == null) {
            if (z) {
                LOG.atWarn().log("EscherSpRecord.FLAG_CHILD is set but EscherChildAnchorRecord was not found");
            }
            short s = EscherClientAnchorRecord.RECORD_ID;
            EscherClientAnchorRecord escherClientAnchorRecord = (EscherClientAnchorRecord) getEscherChild(s);
            if (escherClientAnchorRecord == null) {
                throw new RecordFormatException("Could not read record 'CLIENT_ANCHOR' with record-id: " + ((int) s));
            }
            short col1 = escherClientAnchorRecord.getCol1();
            short flag = escherClientAnchorRecord.getFlag();
            dx1 = escherClientAnchorRecord.getDx1();
            row1 = escherClientAnchorRecord.getRow1();
            i = col1;
            i2 = flag;
        } else {
            i = escherChildAnchorRecord.getDx1();
            i2 = escherChildAnchorRecord.getDy1();
            dx1 = escherChildAnchorRecord.getDx2();
            row1 = escherChildAnchorRecord.getDy2();
        }
        return new Rectangle2D.Double(i == -1 ? -1.0d : Units.masterToPoints(i), i2 == -1 ? -1.0d : Units.masterToPoints(i2), dx1 == -1 ? -1.0d : Units.masterToPoints(dx1 - i), row1 == -1 ? -1.0d : Units.masterToPoints(row1 - i2));
    }

    public HSLFEscherClientDataRecord getClientData(boolean z) {
        short s = EscherClientDataRecord.RECORD_ID;
        HSLFEscherClientDataRecord hSLFEscherClientDataRecord = (HSLFEscherClientDataRecord) getEscherChild(s);
        if (hSLFEscherClientDataRecord != null || !z) {
            return hSLFEscherClientDataRecord;
        }
        HSLFEscherClientDataRecord hSLFEscherClientDataRecord2 = new HSLFEscherClientDataRecord();
        hSLFEscherClientDataRecord2.setOptions((short) 15);
        hSLFEscherClientDataRecord2.setRecordId(s);
        getSpContainer().addChildBefore(hSLFEscherClientDataRecord2, EscherTextboxRecord.RECORD_ID);
        return hSLFEscherClientDataRecord2;
    }

    public <T extends Record> T getClientDataRecord(int i) {
        List<? extends Record> clientRecords = getClientRecords();
        if (clientRecords == null) {
            return null;
        }
        Iterator<? extends Record> it2 = clientRecords.iterator();
        while (it2.hasNext()) {
            T t = (T) it2.next();
            if (t.getRecordType() == i) {
                return t;
            }
        }
        return null;
    }

    public List<? extends Record> getClientRecords() {
        HSLFEscherClientDataRecord clientData = getClientData(false);
        if (clientData == null) {
            return null;
        }
        return clientData.getHSLFChildRecords();
    }

    public Color getColor(EscherPropertyTypes escherPropertyTypes, EscherPropertyTypes escherPropertyTypes2) {
        Color color;
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) getEscherProperty(getEscherOptRecord(), escherPropertyTypes);
        if (escherSimpleProperty == null) {
            color = getColor(escherPropertyTypes);
        } else {
            color = getColor(new EscherColorRef(escherSimpleProperty.getPropertyValue()));
        }
        if (color == null) {
            return null;
        }
        return new Color(color.getRed(), color.getGreen(), color.getBlue(), (int) (getAlpha(escherPropertyTypes2) * 255.0d));
    }

    public AbstractEscherOptRecord getEscherOptRecord() {
        AbstractEscherOptRecord abstractEscherOptRecord = (AbstractEscherOptRecord) getEscherChild(EscherRecordTypes.OPT);
        return abstractEscherOptRecord == null ? (AbstractEscherOptRecord) getEscherChild(EscherRecordTypes.USER_DEFINED) : abstractEscherOptRecord;
    }

    public HSLFFill getFill() {
        if (this._fill == null) {
            this._fill = new HSLFFill(this);
        }
        return this._fill;
    }

    public FillStyle getFillStyle() {
        return getFill().getFillStyle();
    }

    public boolean getFlipHorizontal() {
        return (((EscherSpRecord) getEscherChild(EscherSpRecord.RECORD_ID)).getFlags() & 64) != 0;
    }

    public boolean getFlipVertical() {
        return (((EscherSpRecord) getEscherChild(EscherSpRecord.RECORD_ID)).getFlags() & 128) != 0;
    }

    @Override // org.apache.poi.sl.usermodel.Shape
    public ShapeContainer<HSLFShape, HSLFTextParagraph> getParent() {
        return this._parent;
    }

    public double getRotation() {
        return Units.fixedPointToDouble(getEscherProperty(EscherPropertyTypes.TRANSFORM__ROTATION));
    }

    @Override // org.apache.poi.sl.usermodel.Shape
    public int getShapeId() {
        EscherSpRecord escherSpRecord = (EscherSpRecord) getEscherChild(EscherSpRecord.RECORD_ID);
        if (escherSpRecord == null) {
            return 0;
        }
        return escherSpRecord.getShapeId();
    }

    @Override // org.apache.poi.sl.usermodel.Shape
    public String getShapeName() {
        EscherComplexProperty escherComplexProperty = (EscherComplexProperty) getEscherProperty(getEscherOptRecord(), EscherPropertyTypes.GROUPSHAPE__SHAPENAME);
        if (escherComplexProperty != null) {
            byte[] complexData = escherComplexProperty.getComplexData();
            return StringUtil.getFromUnicodeLE0Terminated(complexData, 0, complexData.length / 2);
        }
        return getShapeType().nativeName + " " + getShapeId();
    }

    public ShapeType getShapeType() {
        return ShapeType.forId(((EscherSpRecord) getEscherChild(EscherSpRecord.RECORD_ID)).getShapeType(), false);
    }

    public EscherContainerRecord getSpContainer() {
        return this._escherContainer;
    }

    public boolean isPlaceholder() {
        return false;
    }

    public final void moveTo(double d, double d2) {
        Rectangle2D anchor = getAnchor();
        anchor.setRect(d, d2, anchor.getWidth(), anchor.getHeight());
        setAnchor(anchor);
    }

    public void setAnchor(Rectangle2D rectangle2D) {
        int pointsToMaster = Units.pointsToMaster(rectangle2D.getX());
        int pointsToMaster2 = Units.pointsToMaster(rectangle2D.getY());
        int pointsToMaster3 = Units.pointsToMaster(rectangle2D.getWidth() + rectangle2D.getX());
        int pointsToMaster4 = Units.pointsToMaster(rectangle2D.getHeight() + rectangle2D.getY());
        if ((((EscherSpRecord) getEscherChild(EscherSpRecord.RECORD_ID)).getFlags() & 2) != 0) {
            EscherChildAnchorRecord escherChildAnchorRecord = (EscherChildAnchorRecord) getEscherChild(EscherChildAnchorRecord.RECORD_ID);
            escherChildAnchorRecord.setDx1(pointsToMaster);
            escherChildAnchorRecord.setDy1(pointsToMaster2);
            escherChildAnchorRecord.setDx2(pointsToMaster3);
            escherChildAnchorRecord.setDy2(pointsToMaster4);
            return;
        }
        EscherClientAnchorRecord escherClientAnchorRecord = (EscherClientAnchorRecord) getEscherChild(EscherClientAnchorRecord.RECORD_ID);
        escherClientAnchorRecord.setCol1((short) pointsToMaster);
        escherClientAnchorRecord.setFlag((short) pointsToMaster2);
        escherClientAnchorRecord.setDx1((short) pointsToMaster3);
        escherClientAnchorRecord.setRow1((short) pointsToMaster4);
    }

    public void setFlipHorizontal(boolean z) {
        EscherSpRecord escherSpRecord = (EscherSpRecord) getEscherChild(EscherSpRecord.RECORD_ID);
        escherSpRecord.setFlags(escherSpRecord.getFlags() | 64);
    }

    public void setFlipVertical(boolean z) {
        EscherSpRecord escherSpRecord = (EscherSpRecord) getEscherChild(EscherSpRecord.RECORD_ID);
        escherSpRecord.setFlags(escherSpRecord.getFlags() | 128);
    }

    public void setRotation(double d) {
        setEscherProperty(EscherPropertyTypes.TRANSFORM__ROTATION, Units.doubleToFixedPoint(d % 360.0d));
    }

    public void setShapeId(int i) {
        EscherSpRecord escherSpRecord = (EscherSpRecord) getEscherChild(EscherSpRecord.RECORD_ID);
        if (escherSpRecord != null) {
            escherSpRecord.setShapeId(i);
        }
    }

    public void setShapeType(ShapeType shapeType) {
        EscherSpRecord escherSpRecord = (EscherSpRecord) getEscherChild(EscherSpRecord.RECORD_ID);
        escherSpRecord.setShapeType((short) shapeType.nativeId);
        escherSpRecord.setVersion((short) 2);
    }

    public void setSheet(HSLFSheet hSLFSheet) {
        this._sheet = hSLFSheet;
    }

    /* JADX WARN: Type inference failed for: r5v2, types: [org.apache.poi.hslf.usermodel.HSLFSheet] */
    public Color toRGB(int i) {
        int i2 = (i >> 24) & 255;
        int i3 = (i >> 16) & 255;
        int i4 = (i >> 8) & 255;
        int i5 = (i >> 0) & 255;
        if (i2 != 254 && i2 != 255) {
            int color = getSheet().getColorScheme().getColor(i2);
            i5 = (color >> 0) & 255;
            i4 = (color >> 8) & 255;
            i3 = (color >> 16) & 255;
        }
        return new Color(i5, i4, i3);
    }

    public static <T extends EscherRecord> T getEscherChild(EscherContainerRecord escherContainerRecord, EscherRecordTypes escherRecordTypes) {
        return (T) getEscherChild(escherContainerRecord, escherRecordTypes.typeID);
    }

    public static <T extends EscherProperty> T getEscherProperty(AbstractEscherOptRecord abstractEscherOptRecord, EscherPropertyTypes escherPropertyTypes) {
        if (abstractEscherOptRecord == null) {
            return null;
        }
        return (T) abstractEscherOptRecord.lookup(escherPropertyTypes);
    }

    @Override // org.apache.poi.sl.usermodel.Shape
    public Sheet<HSLFShape, HSLFTextParagraph> getSheet() {
        return this._sheet;
    }

    public <T extends EscherRecord> T getEscherChild(int i) {
        return (T) this._escherContainer.getChildById((short) i);
    }

    public int getEscherProperty(short s) {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) getEscherProperty(getEscherOptRecord(), s);
        if (escherSimpleProperty == null) {
            return 0;
        }
        return escherSimpleProperty.getPropertyValue();
    }

    public <T extends EscherRecord> T getEscherChild(EscherRecordTypes escherRecordTypes) {
        return (T) getEscherChild(escherRecordTypes.typeID);
    }

    public int getEscherProperty(EscherPropertyTypes escherPropertyTypes) {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) getEscherProperty(getEscherOptRecord(), escherPropertyTypes);
        if (escherSimpleProperty == null) {
            return 0;
        }
        return escherSimpleProperty.getPropertyValue();
    }

    public static void setEscherProperty(AbstractEscherOptRecord abstractEscherOptRecord, EscherPropertyTypes escherPropertyTypes, int i) {
        setEscherProperty(abstractEscherOptRecord, escherPropertyTypes, false, i);
    }

    public static void setEscherProperty(AbstractEscherOptRecord abstractEscherOptRecord, EscherPropertyTypes escherPropertyTypes, boolean z, int i) {
        Iterator<EscherProperty> it2 = abstractEscherOptRecord.getEscherProperties().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            } else if (it2.next().getPropertyNumber() == escherPropertyTypes.propNumber) {
                it2.remove();
                break;
            }
        }
        if (i != -1) {
            abstractEscherOptRecord.addEscherProperty(new EscherSimpleProperty(escherPropertyTypes, false, z, i));
            abstractEscherOptRecord.sortProperties();
        }
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [org.apache.poi.hslf.usermodel.HSLFSheet] */
    public Color getColor(EscherColorRef escherColorRef) {
        boolean hasPaletteIndexFlag = escherColorRef.hasPaletteIndexFlag();
        boolean hasPaletteRGBFlag = escherColorRef.hasPaletteRGBFlag();
        boolean hasSystemRGBFlag = escherColorRef.hasSystemRGBFlag();
        boolean hasSchemeIndexFlag = escherColorRef.hasSchemeIndexFlag();
        boolean hasSysIndexFlag = escherColorRef.hasSysIndexFlag();
        int[] rgb = escherColorRef.getRGB();
        ?? sheet = getSheet();
        if (hasSchemeIndexFlag && sheet != 0) {
            int color = sheet.getColorScheme().getColor(escherColorRef.getSchemeIndex());
            rgb[0] = (color >> 0) & 255;
            rgb[1] = (color >> 8) & 255;
            rgb[2] = (color >> 16) & 255;
        } else if (!hasPaletteIndexFlag && !hasPaletteRGBFlag && !hasSystemRGBFlag && hasSysIndexFlag) {
            return applySysIndexProcedure(escherColorRef, getSysIndexColor(escherColorRef));
        }
        return new Color(rgb[0], rgb[1], rgb[2]);
    }

    @Removal(version = "5.0.0")
    @Deprecated
    public int getEscherProperty(short s, int i) {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) getEscherProperty(getEscherOptRecord(), s);
        return escherSimpleProperty == null ? i : escherSimpleProperty.getPropertyValue();
    }

    public int getEscherProperty(EscherPropertyTypes escherPropertyTypes, int i) {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) getEscherProperty(getEscherOptRecord(), escherPropertyTypes);
        return escherSimpleProperty == null ? i : escherSimpleProperty.getPropertyValue();
    }

    @Removal(version = "5.0.0")
    @Deprecated
    public void setEscherProperty(short s, int i) {
        setEscherProperty(getEscherOptRecord(), s, i);
    }

    public void setEscherProperty(EscherPropertyTypes escherPropertyTypes, int i) {
        setEscherProperty(getEscherOptRecord(), escherPropertyTypes, i);
    }

    public Color getColor(EscherPropertyTypes escherPropertyTypes) {
        return Color.WHITE;
    }
}
