package org.apache.poi.hslf.model;

import com.alibaba.fastjson2.JSONB;
import java.awt.geom.Point2D;
import org.apache.poi.ddf.AbstractEscherOptRecord;
import org.apache.poi.ddf.EscherArrayProperty;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherSimpleProperty;
import org.apache.poi.hslf.usermodel.HSLFAutoShape;
import org.apache.poi.hslf.usermodel.HSLFGroupShape;
import org.apache.poi.hslf.usermodel.HSLFShape;
import org.apache.poi.hslf.usermodel.HSLFTextParagraph;
import org.apache.poi.sl.usermodel.ShapeContainer;
import org.apache.poi.sl.usermodel.ShapeType;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public final class Polygon extends HSLFAutoShape {
    public Polygon(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(escherContainerRecord, shapeContainer);
    }

    private float findBiggest(float[] fArr) {
        float f = Float.MIN_VALUE;
        for (float f2 : fArr) {
            if (f2 > f) {
                f = f2;
            }
        }
        return f;
    }

    private float findSmallest(float[] fArr) {
        float f = Float.MAX_VALUE;
        for (float f2 : fArr) {
            if (f2 < f) {
                f = f2;
            }
        }
        return f;
    }

    public void setPoints(float[] fArr, float[] fArr2) {
        float findBiggest = findBiggest(fArr);
        float findBiggest2 = findBiggest(fArr2);
        float findSmallest = findSmallest(fArr);
        float findSmallest2 = findSmallest(fArr2);
        AbstractEscherOptRecord escherOptRecord = getEscherOptRecord();
        escherOptRecord.addEscherProperty(new EscherSimpleProperty(EscherPropertyTypes.GEOMETRY__RIGHT, Units.pointsToMaster(findBiggest - findSmallest)));
        escherOptRecord.addEscherProperty(new EscherSimpleProperty(EscherPropertyTypes.GEOMETRY__BOTTOM, Units.pointsToMaster(findBiggest2 - findSmallest2)));
        for (int i = 0; i < fArr.length; i++) {
            fArr[i] = fArr[i] + (-findSmallest);
            fArr2[i] = fArr2[i] + (-findSmallest2);
        }
        int length = fArr.length;
        EscherArrayProperty escherArrayProperty = new EscherArrayProperty(EscherPropertyTypes.GEOMETRY__VERTICES, false, 0);
        int i2 = length + 1;
        escherArrayProperty.setNumberOfElementsInArray(i2);
        escherArrayProperty.setNumberOfElementsInMemory(i2);
        escherArrayProperty.setSizeOfElements(65520);
        for (int i3 = 0; i3 < length; i3++) {
            byte[] bArr = new byte[4];
            LittleEndian.putShort(bArr, 0, (short) Units.pointsToMaster(fArr[i3]));
            LittleEndian.putShort(bArr, 2, (short) Units.pointsToMaster(fArr2[i3]));
            escherArrayProperty.setElement(i3, bArr);
        }
        byte[] bArr2 = new byte[4];
        LittleEndian.putShort(bArr2, 0, (short) Units.pointsToMaster(fArr[0]));
        LittleEndian.putShort(bArr2, 2, (short) Units.pointsToMaster(fArr2[0]));
        escherArrayProperty.setElement(length, bArr2);
        escherOptRecord.addEscherProperty(escherArrayProperty);
        EscherArrayProperty escherArrayProperty2 = new EscherArrayProperty(EscherPropertyTypes.GEOMETRY__SEGMENTINFO, false, 0);
        escherArrayProperty2.setSizeOfElements(2);
        int i4 = (length * 2) + 4;
        escherArrayProperty2.setNumberOfElementsInArray(i4);
        escherArrayProperty2.setNumberOfElementsInMemory(i4);
        escherArrayProperty2.setElement(0, new byte[]{0, 64});
        escherArrayProperty2.setElement(1, new byte[]{0, JSONB.Constants.BC_TIMESTAMP_SECONDS});
        for (int i5 = 0; i5 < length; i5++) {
            int i6 = i5 * 2;
            escherArrayProperty2.setElement(i6 + 2, new byte[]{1, 0});
            escherArrayProperty2.setElement(i6 + 3, new byte[]{0, JSONB.Constants.BC_TIMESTAMP_SECONDS});
        }
        escherArrayProperty2.setElement(escherArrayProperty2.getNumberOfElementsInArray() - 2, new byte[]{1, 96});
        escherArrayProperty2.setElement(escherArrayProperty2.getNumberOfElementsInArray() - 1, new byte[]{0, Byte.MIN_VALUE});
        escherOptRecord.addEscherProperty(escherArrayProperty2);
        escherOptRecord.sortProperties();
    }

    public Polygon(ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super((EscherContainerRecord) null, shapeContainer);
        createSpContainer(ShapeType.NOT_PRIMITIVE, shapeContainer instanceof HSLFGroupShape);
    }

    public Polygon() {
        this(null);
    }

    public void setPoints(Point2D[] point2DArr) {
        float[] fArr = new float[point2DArr.length];
        float[] fArr2 = new float[point2DArr.length];
        for (int i = 0; i < point2DArr.length; i++) {
            fArr[i] = (float) point2DArr[i].getX();
            fArr2[i] = (float) point2DArr[i].getY();
        }
        setPoints(fArr, fArr2);
    }
}
