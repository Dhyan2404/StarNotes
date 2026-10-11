package org.apache.poi.hslf.usermodel;

import java.awt.geom.AffineTransform;
import java.awt.geom.Path2D;
import java.awt.geom.PathIterator;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.util.ArrayList;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.ddf.AbstractEscherOptRecord;
import org.apache.poi.ddf.EscherArrayProperty;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherSimpleProperty;
import org.apache.poi.sl.usermodel.FreeformShape;
import org.apache.poi.sl.usermodel.ShapeContainer;
import org.apache.poi.sl.usermodel.ShapeType;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public final class HSLFFreeformShape extends HSLFAutoShape implements FreeformShape<HSLFShape, HSLFTextParagraph> {
    private static final Logger LOG = LogManager.getLogger((Class<?>) HSLFFreeformShape.class);

    /* loaded from: classes12.dex */
    public enum ShapePath {
        LINES(0),
        LINES_CLOSED(1),
        CURVES(2),
        CURVES_CLOSED(3),
        COMPLEX(4);

        private final int flag;

        ShapePath(int i) {
            this.flag = i;
        }

        public int getFlag() {
            return this.flag;
        }

        public static ShapePath valueOf(int i) {
            for (ShapePath shapePath : values()) {
                if (shapePath.flag == i) {
                    return shapePath;
                }
            }
            return null;
        }
    }

    public HSLFFreeformShape(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(escherContainerRecord, shapeContainer);
    }

    @Override // org.apache.poi.sl.usermodel.FreeformShape
    public Path2D getPath() {
        Path2D.Double r0 = new Path2D.Double();
        getGeometry(r0);
        Rectangle2D bounds2D = r0.getBounds2D();
        Rectangle2D anchor = getAnchor();
        AffineTransform affineTransform = new AffineTransform();
        affineTransform.translate(anchor.getX(), anchor.getY());
        affineTransform.scale(anchor.getWidth() / bounds2D.getWidth(), anchor.getHeight() / bounds2D.getHeight());
        r0.transform(affineTransform);
        return r0;
    }

    @Override // org.apache.poi.sl.usermodel.FreeformShape
    public int setPath(Path2D path2D) {
        boolean z;
        Rectangle2D bounds2D = path2D.getBounds2D();
        PathIterator pathIterator = path2D.getPathIterator(null);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        boolean z2 = false;
        int i2 = 0;
        while (!pathIterator.isDone()) {
            double[] dArr = new double[6];
            int currentSegment = pathIterator.currentSegment(dArr);
            if (currentSegment == 0) {
                z = z2;
                arrayList2.add(new Point2D.Double(dArr[0], dArr[1]));
                arrayList.add(HSLFAutoShape.SEGMENTINFO_MOVETO);
            } else if (currentSegment != 1) {
                if (currentSegment == 2) {
                    z = z2;
                    LOG.atWarn().log("SEG_QUADTO is not supported");
                } else if (currentSegment == 3) {
                    z = z2;
                    arrayList2.add(new Point2D.Double(dArr[i], dArr[1]));
                    arrayList2.add(new Point2D.Double(dArr[2], dArr[3]));
                    arrayList2.add(new Point2D.Double(dArr[4], dArr[5]));
                    arrayList.add(HSLFAutoShape.SEGMENTINFO_CUBICTO);
                    arrayList.add(HSLFAutoShape.SEGMENTINFO_ESCAPE2);
                } else if (currentSegment != 4) {
                    LOG.atWarn().log("Ignoring invalid segment type {}", Unbox.box(currentSegment));
                    z = z2;
                } else {
                    arrayList2.add(arrayList2.get(i));
                    byte[] bArr = HSLFAutoShape.SEGMENTINFO_LINETO;
                    arrayList.add(bArr);
                    arrayList.add(HSLFAutoShape.SEGMENTINFO_ESCAPE);
                    arrayList.add(bArr);
                    arrayList.add(HSLFAutoShape.SEGMENTINFO_CLOSE);
                    i2++;
                    z2 = true;
                    pathIterator.next();
                    i = 0;
                }
                z2 = z;
                pathIterator.next();
                i = 0;
            } else {
                z = z2;
                arrayList2.add(new Point2D.Double(dArr[0], dArr[1]));
                arrayList.add(HSLFAutoShape.SEGMENTINFO_LINETO);
                arrayList.add(HSLFAutoShape.SEGMENTINFO_ESCAPE);
            }
            i2++;
            z2 = z;
            pathIterator.next();
            i = 0;
        }
        if (!z2) {
            arrayList.add(HSLFAutoShape.SEGMENTINFO_LINETO);
        }
        arrayList.add(HSLFAutoShape.SEGMENTINFO_END);
        AbstractEscherOptRecord escherOptRecord = getEscherOptRecord();
        escherOptRecord.addEscherProperty(new EscherSimpleProperty(EscherPropertyTypes.GEOMETRY__SHAPEPATH, 4));
        EscherArrayProperty escherArrayProperty = new EscherArrayProperty(EscherPropertyTypes.GEOMETRY__VERTICES, true, 0);
        escherArrayProperty.setNumberOfElementsInArray(arrayList2.size());
        escherArrayProperty.setNumberOfElementsInMemory(arrayList2.size());
        escherArrayProperty.setSizeOfElements(8);
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            Point2D.Double r11 = (Point2D.Double) arrayList2.get(i3);
            byte[] bArr2 = new byte[8];
            LittleEndian.putInt(bArr2, 0, Units.pointsToMaster(r11.getX() - bounds2D.getX()));
            LittleEndian.putInt(bArr2, 4, Units.pointsToMaster(r11.getY() - bounds2D.getY()));
            escherArrayProperty.setElement(i3, bArr2);
        }
        escherOptRecord.addEscherProperty(escherArrayProperty);
        EscherArrayProperty escherArrayProperty2 = new EscherArrayProperty(EscherPropertyTypes.GEOMETRY__SEGMENTINFO, true, 0);
        escherArrayProperty2.setNumberOfElementsInArray(arrayList.size());
        escherArrayProperty2.setNumberOfElementsInMemory(arrayList.size());
        escherArrayProperty2.setSizeOfElements(2);
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            escherArrayProperty2.setElement(i4, (byte[]) arrayList.get(i4));
        }
        escherOptRecord.addEscherProperty(escherArrayProperty2);
        escherOptRecord.addEscherProperty(new EscherSimpleProperty(EscherPropertyTypes.GEOMETRY__RIGHT, Units.pointsToMaster(bounds2D.getWidth())));
        escherOptRecord.addEscherProperty(new EscherSimpleProperty(EscherPropertyTypes.GEOMETRY__BOTTOM, Units.pointsToMaster(bounds2D.getHeight())));
        escherOptRecord.sortProperties();
        setAnchor(bounds2D);
        return i2;
    }

    public HSLFFreeformShape(ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super((EscherContainerRecord) null, shapeContainer);
        createSpContainer(ShapeType.NOT_PRIMITIVE, shapeContainer instanceof HSLFGroupShape);
    }

    public HSLFFreeformShape() {
        this(null);
    }
}
