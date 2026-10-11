package org.apache.poi.hslf.usermodel;

import java.awt.Color;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.ddf.AbstractEscherOptRecord;
import org.apache.poi.ddf.EscherArrayProperty;
import org.apache.poi.ddf.EscherBSERecord;
import org.apache.poi.ddf.EscherColorRef;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherRecordTypes;
import org.apache.poi.ddf.EscherSimpleProperty;
import org.apache.poi.hslf.usermodel.HSLFFill;
import org.apache.poi.hslf.usermodel.HSLFShape;
import org.apache.poi.sl.draw.DrawPaint;
import org.apache.poi.sl.usermodel.ColorStyle;
import org.apache.poi.sl.usermodel.FillStyle;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.sl.usermodel.Shape;
import org.apache.poi.sl.usermodel.Sheet;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public final class HSLFFill {
    static final int FILL_BACKGROUND = 9;
    static final int FILL_PATTERN = 1;
    static final int FILL_PICTURE = 3;
    static final int FILL_SHADE = 4;
    static final int FILL_SHADE_CENTER = 5;
    static final int FILL_SHADE_SCALE = 7;
    static final int FILL_SHADE_SHAPE = 6;
    static final int FILL_SHADE_TITLE = 8;
    static final int FILL_SOLID = 0;
    static final int FILL_TEXTURE = 2;
    private HSLFShape shape;
    private static final Logger LOG = LogManager.getLogger((Class<?>) HSLFFill.class);
    private static final BitField FILL_USE_RECOLOR_FILL_AS_PICTURE = BitFieldFactory.getInstance(4194304);
    private static final BitField FILL_USE_USE_SHAPE_ANCHOR = BitFieldFactory.getInstance(2097152);
    private static final BitField FILL_USE_FILLED = BitFieldFactory.getInstance(1048576);
    private static final BitField FILL_USE_HIT_TEST_FILL = BitFieldFactory.getInstance(524288);
    private static final BitField FILL_USE_FILL_SHAPE = BitFieldFactory.getInstance(262144);
    private static final BitField FILL_USE_FILL_USE_RECT = BitFieldFactory.getInstance(131072);
    private static final BitField FILL_USE_NO_FILL_HIT_TEST = BitFieldFactory.getInstance(65536);
    private static final BitField FILL_RECOLOR_FILL_AS_PICTURE = BitFieldFactory.getInstance(64);
    private static final BitField FILL_USE_SHAPE_ANCHOR = BitFieldFactory.getInstance(32);
    private static final BitField FILL_FILLED = BitFieldFactory.getInstance(16);
    private static final BitField FILL_HIT_TEST_FILL = BitFieldFactory.getInstance(8);
    private static final BitField FILL_FILL_SHAPE = BitFieldFactory.getInstance(4);
    private static final BitField FILL_FILL_USE_RECT = BitFieldFactory.getInstance(2);
    private static final BitField FILL_NO_FILL_HIT_TEST = BitFieldFactory.getInstance(1);

    /* renamed from: org.apache.poi.hslf.usermodel.HSLFFill$1 */
    /* loaded from: classes12.dex */
    public class C194551 implements PaintStyle.GradientPaint {
        final /* synthetic */ List val$colors;
        final /* synthetic */ List val$fractions;
        final /* synthetic */ PaintStyle.GradientPaint.GradientType val$gradientType;

        public C194551(List list, List list2, PaintStyle.GradientPaint.GradientType gradientType) {
            this.val$colors = list;
            this.val$fractions = list2;
            this.val$gradientType = gradientType;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ ColorStyle[] lambda$getGradientColors$0(int i) {
            return new ColorStyle[i];
        }

        /* JADX INFO: Access modifiers changed from: private */
        public ColorStyle wrapColor(Color color) {
            if (color == null) {
                return null;
            }
            return DrawPaint.createSolidPaint(color).getSolidColor();
        }

        @Override // org.apache.poi.sl.usermodel.PaintStyle.GradientPaint
        public double getGradientAngle() {
            return 90.0d - Units.fixedPointToDouble(HSLFFill.this.shape.getEscherProperty(EscherPropertyTypes.FILL__ANGLE));
        }

        @Override // org.apache.poi.sl.usermodel.PaintStyle.GradientPaint
        public ColorStyle[] getGradientColors() {
            return (ColorStyle[]) this.val$colors.stream().map(new Function() { // from class: org.apache.poi.hslf.usermodel.a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    ColorStyle wrapColor;
                    wrapColor = HSLFFill.C194551.this.wrapColor((Color) obj);
                    return wrapColor;
                }
            }).toArray(new IntFunction() { // from class: org.apache.poi.hslf.usermodel.b
                @Override // java.util.function.IntFunction
                public final Object apply(int i) {
                    ColorStyle[] lambda$getGradientColors$0;
                    lambda$getGradientColors$0 = HSLFFill.C194551.lambda$getGradientColors$0(i);
                    return lambda$getGradientColors$0;
                }
            });
        }

        @Override // org.apache.poi.sl.usermodel.PaintStyle.GradientPaint
        public float[] getGradientFractions() {
            float[] fArr = new float[this.val$fractions.size()];
            for (int i = 0; i < this.val$fractions.size(); i++) {
                fArr[i] = ((Float) this.val$fractions.get(i)).floatValue();
            }
            return fArr;
        }

        @Override // org.apache.poi.sl.usermodel.PaintStyle.GradientPaint
        public PaintStyle.GradientPaint.GradientType getGradientType() {
            return this.val$gradientType;
        }

        @Override // org.apache.poi.sl.usermodel.PaintStyle.GradientPaint
        public boolean isRotatedWithShape() {
            return HSLFFill.this.isRotatedWithShape();
        }
    }

    public HSLFFill(HSLFShape hSLFShape) {
        this.shape = hSLFShape;
    }

    private PaintStyle.GradientPaint getGradientPaint(PaintStyle.GradientPaint.GradientType gradientType) {
        AbstractEscherOptRecord escherOptRecord = this.shape.getEscherOptRecord();
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(escherOptRecord, EscherPropertyTypes.FILL__NOFILLHITTEST);
        int propertyValue = escherSimpleProperty == null ? 0 : escherSimpleProperty.getPropertyValue();
        if (FILL_USE_FILLED.isSet(propertyValue) && !FILL_FILLED.isSet(propertyValue)) {
            return null;
        }
        EscherArrayProperty escherArrayProperty = (EscherArrayProperty) HSLFShape.getEscherProperty(escherOptRecord, EscherPropertyTypes.FILL__SHADECOLORS);
        int numberOfElementsInArray = escherArrayProperty == null ? 0 : escherArrayProperty.getNumberOfElementsInArray();
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        if (numberOfElementsInArray == 0) {
            arrayList.add(getBackgroundColor());
            arrayList.add(getForegroundColor());
            arrayList2.add(Float.valueOf(0.0f));
            arrayList2.add(Float.valueOf(1.0f));
        } else {
            escherArrayProperty.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.c7h
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HSLFFill.this.lambda$getGradientPaint$1(arrayList, arrayList2, (byte[]) obj);
                }
            });
        }
        int fillFocus = getFillFocus();
        if (fillFocus == 100 || fillFocus == -100) {
            Collections.reverse(arrayList);
        } else if (fillFocus != 0) {
            if (fillFocus < 0) {
                fillFocus += 100;
            }
            ArrayList arrayList3 = new ArrayList(arrayList.subList(1, arrayList.size()));
            Collections.reverse(arrayList3);
            arrayList.addAll(0, arrayList3);
            ArrayList arrayList4 = new ArrayList();
            for (int size = arrayList2.size() - 2; size >= 0; size--) {
                arrayList4.add(Float.valueOf((float) (1.0d - ((((Float) arrayList2.get(size)).floatValue() * fillFocus) / 100.0d))));
            }
            for (int i = 0; i < arrayList2.size(); i++) {
                arrayList2.set(i, Float.valueOf((float) ((((Float) arrayList2.get(i)).floatValue() * fillFocus) / 100.0d)));
            }
            arrayList2.addAll(arrayList4);
        }
        return new C194551(arrayList, arrayList2, gradientType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v12, types: [org.apache.poi.hslf.usermodel.HSLFSheet] */
    public PaintStyle getPaintStyle() {
        AbstractEscherOptRecord escherOptRecord = this.shape.getEscherOptRecord();
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(escherOptRecord, EscherPropertyTypes.FILL__NOFILLHITTEST);
        int propertyValue = escherSimpleProperty == null ? 0 : escherSimpleProperty.getPropertyValue();
        EscherSimpleProperty escherSimpleProperty2 = (EscherSimpleProperty) HSLFShape.getEscherProperty(escherOptRecord, EscherPropertyTypes.SHAPE__MASTER);
        if (!FILL_USE_FILLED.isSet(propertyValue) && escherSimpleProperty2 != null) {
            final int propertyValue2 = escherSimpleProperty2.getPropertyValue();
            HSLFShape orElse = this.shape.getSheet().getMasterSheet().getShapes().stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.b7h
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$getPaintStyle$0;
                    lambda$getPaintStyle$0 = HSLFFill.lambda$getPaintStyle$0(propertyValue2, (HSLFShape) obj);
                    return lambda$getPaintStyle$0;
                }
            }).findFirst().orElse(null);
            if (orElse != null) {
                return orElse.getFillStyle().getPaint();
            }
            return null;
        }
        int fillType = getFillType();
        if (fillType == 0) {
            return DrawPaint.createSolidPaint(getForegroundColor());
        }
        switch (fillType) {
            case 2:
            case 3:
                return getTexturePaint();
            case 4:
            case 7:
                return getGradientPaint(PaintStyle.GradientPaint.GradientType.linear);
            case 5:
            case 8:
                return getGradientPaint(PaintStyle.GradientPaint.GradientType.circular);
            case 6:
                return getGradientPaint(PaintStyle.GradientPaint.GradientType.shape);
            case 9:
                return DrawPaint.createSolidPaint(getBackgroundColor());
            default:
                LOG.atWarn().log("unsupported fill type: {}", Unbox.box(fillType));
                return null;
        }
    }

    private PaintStyle.TexturePaint getTexturePaint() {
        final HSLFPictureData pictureData = getPictureData();
        if (pictureData == null) {
            return null;
        }
        return new PaintStyle.TexturePaint() { // from class: org.apache.poi.hslf.usermodel.HSLFFill.2
            @Override // org.apache.poi.sl.usermodel.PaintStyle.TexturePaint
            public int getAlpha() {
                return (int) (HSLFFill.this.shape.getAlpha(EscherPropertyTypes.FILL__FILLOPACITY) * 100000.0d);
            }

            @Override // org.apache.poi.sl.usermodel.PaintStyle.TexturePaint
            public String getContentType() {
                return pictureData.getContentType();
            }

            @Override // org.apache.poi.sl.usermodel.PaintStyle.TexturePaint
            public InputStream getImageData() {
                return new ByteArrayInputStream(pictureData.getData());
            }

            @Override // org.apache.poi.sl.usermodel.PaintStyle.TexturePaint
            public Shape getShape() {
                return HSLFFill.this.shape;
            }

            @Override // org.apache.poi.sl.usermodel.PaintStyle.TexturePaint
            public boolean isRotatedWithShape() {
                return HSLFFill.this.isRotatedWithShape();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isRotatedWithShape() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty((AbstractEscherOptRecord) this.shape.getEscherChild(EscherRecordTypes.USER_DEFINED), EscherPropertyTypes.FILL__NOFILLHITTEST);
        int propertyValue = escherSimpleProperty == null ? 0 : escherSimpleProperty.getPropertyValue();
        return FILL_USE_USE_SHAPE_ANCHOR.isSet(propertyValue) && FILL_USE_SHAPE_ANCHOR.isSet(propertyValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getGradientPaint$1(List list, List list2, byte[] bArr) {
        list.add(this.shape.getColor(new EscherColorRef(bArr, 0, 4)));
        list2.add(Float.valueOf((float) Units.fixedPointToDouble(LittleEndian.getInt(bArr, 4))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getPaintStyle$0(int i, HSLFShape hSLFShape) {
        return hSLFShape.getShapeId() == i;
    }

    public void afterInsert(HSLFSheet hSLFSheet) {
        EscherBSERecord escherBSERecord;
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(this.shape.getEscherOptRecord(), EscherPropertyTypes.FILL__PATTERNTEXTURE);
        if (escherSimpleProperty == null || (escherBSERecord = getEscherBSERecord(escherSimpleProperty.getPropertyValue())) == null) {
            return;
        }
        escherBSERecord.setRef(escherBSERecord.getRef() + 1);
    }

    public Color getBackgroundColor() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(this.shape.getEscherOptRecord(), EscherPropertyTypes.FILL__NOFILLHITTEST);
        int propertyValue = escherSimpleProperty == null ? 0 : escherSimpleProperty.getPropertyValue();
        BitField bitField = FILL_USE_FILLED;
        if (!bitField.isSet(propertyValue) || (bitField.isSet(propertyValue) && FILL_FILLED.isSet(propertyValue))) {
            return this.shape.getColor(EscherPropertyTypes.FILL__FILLBACKCOLOR, EscherPropertyTypes.FILL__FILLOPACITY);
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [org.apache.poi.hslf.usermodel.HSLFSlideShow] */
    public EscherBSERecord getEscherBSERecord(int i) {
        Sheet<HSLFShape, HSLFTextParagraph> sheet = this.shape.getSheet();
        if (sheet == null) {
            LOG.atDebug().log("Fill has not yet been assigned to a sheet");
            return null;
        }
        EscherContainerRecord escherContainerRecord = (EscherContainerRecord) HSLFShape.getEscherChild(sheet.getSlideShow().getDocumentRecord().getPPDrawingGroup().getDggContainer(), EscherContainerRecord.BSTORE_CONTAINER);
        if (escherContainerRecord != null) {
            return (EscherBSERecord) escherContainerRecord.getChild(i - 1);
        }
        LOG.atDebug().log("EscherContainerRecord.BSTORE_CONTAINER was not found ");
        return null;
    }

    public int getFillFocus() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(this.shape.getEscherOptRecord(), EscherPropertyTypes.FILL__FOCUS);
        if (escherSimpleProperty == null) {
            return 0;
        }
        return escherSimpleProperty.getPropertyValue();
    }

    public FillStyle getFillStyle() {
        return new FillStyle() { // from class: com.sunia.HTREnginev2.a7h
            @Override // org.apache.poi.sl.usermodel.FillStyle
            public final PaintStyle getPaint() {
                PaintStyle paintStyle;
                paintStyle = HSLFFill.this.getPaintStyle();
                return paintStyle;
            }
        };
    }

    public int getFillType() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(this.shape.getEscherOptRecord(), EscherPropertyTypes.FILL__FILLTYPE);
        if (escherSimpleProperty == null) {
            return 0;
        }
        return escherSimpleProperty.getPropertyValue();
    }

    public Color getForegroundColor() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(this.shape.getEscherOptRecord(), EscherPropertyTypes.FILL__NOFILLHITTEST);
        int propertyValue = escherSimpleProperty == null ? 0 : escherSimpleProperty.getPropertyValue();
        BitField bitField = FILL_USE_FILLED;
        if (!bitField.isSet(propertyValue) || (bitField.isSet(propertyValue) && FILL_FILLED.isSet(propertyValue))) {
            return this.shape.getColor(EscherPropertyTypes.FILL__FILLCOLOR, EscherPropertyTypes.FILL__FILLOPACITY);
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [org.apache.poi.hslf.usermodel.HSLFSlideShow] */
    public HSLFPictureData getPictureData() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(this.shape.getEscherOptRecord(), EscherPropertyTypes.FILL__PATTERNTEXTURE);
        if (escherSimpleProperty == null) {
            return null;
        }
        ?? slideShow = this.shape.getSheet().getSlideShow();
        List<HSLFPictureData> pictureData = slideShow.getPictureData();
        EscherContainerRecord escherContainerRecord = (EscherContainerRecord) HSLFShape.getEscherChild(slideShow.getDocumentRecord().getPPDrawingGroup().getDggContainer(), EscherContainerRecord.BSTORE_CONTAINER);
        int propertyValue = escherSimpleProperty.getPropertyValue();
        if (propertyValue == 0) {
            LOG.atWarn().log("no reference to picture data found ");
        } else {
            EscherBSERecord escherBSERecord = (EscherBSERecord) escherContainerRecord.getChild(propertyValue - 1);
            for (HSLFPictureData hSLFPictureData : pictureData) {
                if (hSLFPictureData.bse == escherBSERecord) {
                    return hSLFPictureData;
                }
            }
        }
        return null;
    }

    public void setBackgroundColor(Color color) {
        AbstractEscherOptRecord escherOptRecord = this.shape.getEscherOptRecord();
        if (color == null) {
            HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.FILL__FILLBACKCOLOR, -1);
        } else {
            HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.FILL__FILLBACKCOLOR, new Color(color.getBlue(), color.getGreen(), color.getRed(), 0).getRGB());
        }
    }

    public void setFillType(int i) {
        HSLFShape.setEscherProperty(this.shape.getEscherOptRecord(), EscherPropertyTypes.FILL__FILLTYPE, i);
    }

    public void setForegroundColor(Color color) {
        AbstractEscherOptRecord escherOptRecord = this.shape.getEscherOptRecord();
        EscherPropertyTypes escherPropertyTypes = EscherPropertyTypes.FILL__FILLOPACITY;
        escherOptRecord.removeEscherProperty(escherPropertyTypes);
        EscherPropertyTypes escherPropertyTypes2 = EscherPropertyTypes.FILL__FILLCOLOR;
        escherOptRecord.removeEscherProperty(escherPropertyTypes2);
        if (color != null) {
            HSLFShape.setEscherProperty(escherOptRecord, escherPropertyTypes2, new Color(color.getBlue(), color.getGreen(), color.getRed(), 0).getRGB());
            int alpha = color.getAlpha();
            if (alpha < 255) {
                HSLFShape.setEscherProperty(escherOptRecord, escherPropertyTypes, Units.doubleToFixedPoint(alpha / 255.0d));
            }
        }
        EscherPropertyTypes escherPropertyTypes3 = EscherPropertyTypes.FILL__NOFILLHITTEST;
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(escherOptRecord, escherPropertyTypes3);
        HSLFShape.setEscherProperty(escherOptRecord, escherPropertyTypes3, FILL_FILL_SHAPE.clear(FILL_USE_NO_FILL_HIT_TEST.set(FILL_USE_FILL_SHAPE.set(FILL_USE_FILLED.set(FILL_NO_FILL_HIT_TEST.setBoolean(FILL_FILLED.setBoolean(escherSimpleProperty == null ? 0 : escherSimpleProperty.getPropertyValue(), color != null), color != null))))));
    }

    public void setPictureData(HSLFPictureData hSLFPictureData) {
        EscherBSERecord escherBSERecord;
        HSLFShape.setEscherProperty(this.shape.getEscherOptRecord(), EscherPropertyTypes.FILL__PATTERNTEXTURE, true, hSLFPictureData == null ? 0 : hSLFPictureData.getIndex());
        if (hSLFPictureData == null || this.shape.getSheet() == null || (escherBSERecord = getEscherBSERecord(hSLFPictureData.getIndex())) == null) {
            return;
        }
        escherBSERecord.setRef(escherBSERecord.getRef() + 1);
    }
}
