package org.apache.poi.hwmf.record;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.geom.Arc2D;
import java.awt.geom.Area;
import java.awt.geom.Dimension2D;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Line2D;
import java.awt.geom.Path2D;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.geom.RoundRectangle2D;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hwmf.draw.HwmfGraphics;
import org.apache.poi.hwmf.record.HwmfDraw;
import org.apache.poi.util.Dimension2DDouble;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public final class HwmfDraw {

    /* renamed from: org.apache.poi.hwmf.record.HwmfDraw$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C195511 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$hwmf$draw$HwmfGraphics$FillDrawStyle;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$hwmf$record$HwmfRecordType;

        static {
            int[] iArr = new int[HwmfRecordType.values().length];
            $SwitchMap$org$apache$poi$hwmf$record$HwmfRecordType = iArr;
            try {
                iArr[HwmfRecordType.arc.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfRecordType[HwmfRecordType.chord.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfRecordType[HwmfRecordType.pie.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[HwmfGraphics.FillDrawStyle.values().length];
            $SwitchMap$org$apache$poi$hwmf$draw$HwmfGraphics$FillDrawStyle = iArr2;
            try {
                iArr2[HwmfGraphics.FillDrawStyle.DRAW.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$draw$HwmfGraphics$FillDrawStyle[HwmfGraphics.FillDrawStyle.FILL.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$draw$HwmfGraphics$FillDrawStyle[HwmfGraphics.FillDrawStyle.FILL_DRAW.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfArc implements HwmfRecord {
        protected final Point2D startPoint = new Point2D.Double();
        protected final Point2D endPoint = new Point2D.Double();
        protected final Rectangle2D bounds = new Rectangle2D.Double();

        /* JADX WARN: Enum visitor error
        jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'CHORD' uses external variables
        	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
        	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
        	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
        	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
        	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
        	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
         */
        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* loaded from: classes12.dex */
        public static final class WmfArcClosure {
            private static final /* synthetic */ WmfArcClosure[] $VALUES;
            public static final WmfArcClosure ARC;
            public static final WmfArcClosure CHORD;
            public static final WmfArcClosure PIE;
            public final int awtType;
            public final HwmfGraphics.FillDrawStyle drawStyle;
            public final HwmfRecordType recordType;

            static {
                WmfArcClosure wmfArcClosure = new WmfArcClosure("ARC", 0, HwmfRecordType.arc, 0, HwmfGraphics.FillDrawStyle.DRAW);
                ARC = wmfArcClosure;
                HwmfRecordType hwmfRecordType = HwmfRecordType.chord;
                HwmfGraphics.FillDrawStyle fillDrawStyle = HwmfGraphics.FillDrawStyle.FILL_DRAW;
                WmfArcClosure wmfArcClosure2 = new WmfArcClosure("CHORD", 1, hwmfRecordType, 1, fillDrawStyle);
                CHORD = wmfArcClosure2;
                WmfArcClosure wmfArcClosure3 = new WmfArcClosure("PIE", 2, HwmfRecordType.pie, 2, fillDrawStyle);
                PIE = wmfArcClosure3;
                $VALUES = new WmfArcClosure[]{wmfArcClosure, wmfArcClosure2, wmfArcClosure3};
            }

            private WmfArcClosure(String str, int i, HwmfRecordType hwmfRecordType, int i2, HwmfGraphics.FillDrawStyle fillDrawStyle) {
                this.recordType = hwmfRecordType;
                this.awtType = i2;
                this.drawStyle = fillDrawStyle;
            }

            public static WmfArcClosure valueOf(String str) {
                return (WmfArcClosure) Enum.valueOf(WmfArcClosure.class, str);
            }

            public static WmfArcClosure[] values() {
                return (WmfArcClosure[]) $VALUES.clone();
            }
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            getFillDrawStyle().handler.accept(hwmfGraphics, getShape());
        }

        public WmfArcClosure getArcClosure() {
            int i = C195511.$SwitchMap$org$apache$poi$hwmf$record$HwmfRecordType[getWmfRecordType().ordinal()];
            return i != 2 ? i != 3 ? WmfArcClosure.ARC : WmfArcClosure.PIE : WmfArcClosure.CHORD;
        }

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        public Point2D getEndPoint() {
            return this.endPoint;
        }

        public HwmfGraphics.FillDrawStyle getFillDrawStyle() {
            return getArcClosure().drawStyle;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            final Arc2D shape = getShape();
            Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.a2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfDraw.WmfArc.this.getStartPoint();
                }
            };
            Supplier supplier2 = new Supplier() { // from class: com.sunia.HTREnginev2.b2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfDraw.WmfArc.this.getEndPoint();
                }
            };
            shape.getClass();
            return GenericRecordUtil.getGenericProperties("startPoint", supplier, "endPoint", supplier2, "startAngle", new Supplier() { // from class: com.sunia.HTREnginev2.c2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Double.valueOf(Arc2D.this.getAngleStart());
                }
            }, "extentAngle", new Supplier() { // from class: com.sunia.HTREnginev2.d2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Double.valueOf(Arc2D.this.getAngleExtent());
                }
            }, "bounds", new Supplier() { // from class: com.sunia.HTREnginev2.e2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfDraw.WmfArc.this.getBounds();
                }
            });
        }

        public Arc2D getShape() {
            double degrees = Math.toDegrees(Math.atan2(-(this.startPoint.getY() - this.bounds.getCenterY()), this.startPoint.getX() - this.bounds.getCenterX()));
            double degrees2 = Math.toDegrees(Math.atan2(-(this.endPoint.getY() - this.bounds.getCenterY()), this.endPoint.getX() - this.bounds.getCenterX())) - degrees;
            double d = degrees2 + (degrees2 > 0.0d ? 0 : 360);
            if (degrees < 0.0d) {
                degrees += 360.0d;
            }
            return new Arc2D.Double(this.bounds.getX(), this.bounds.getY(), this.bounds.getWidth(), this.bounds.getHeight(), degrees, d, getArcClosure().awtType);
        }

        public Point2D getStartPoint() {
            return this.startPoint;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.arc;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            HwmfDraw.readPointS(littleEndianInputStream, this.endPoint);
            HwmfDraw.readPointS(littleEndianInputStream, this.startPoint);
            HwmfDraw.readBounds(littleEndianInputStream, this.bounds);
            return 16;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfChord extends WmfArc {
        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfArc, org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.chord;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfEllipse implements HwmfRecord {
        protected final Rectangle2D bounds = new Rectangle2D.Double();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.fill(getShape());
        }

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("bounds", new Supplier() { // from class: com.sunia.HTREnginev2.f2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfDraw.WmfEllipse.this.getBounds();
                }
            });
        }

        public Ellipse2D getShape() {
            return new Ellipse2D.Double(this.bounds.getX(), this.bounds.getY(), this.bounds.getWidth(), this.bounds.getHeight());
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.ellipse;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            return HwmfDraw.readBounds(littleEndianInputStream, this.bounds);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfFrameRegion implements HwmfRecord {
        protected int brushIndex;
        protected final Dimension2D frame = new Dimension2DDouble();
        protected int regionIndex;

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.applyObjectTableEntry(this.brushIndex);
            hwmfGraphics.applyObjectTableEntry(this.regionIndex);
            Rectangle bounds = hwmfGraphics.getProperties().getRegion().getBounds();
            Area area = new Area(new Rectangle2D.Double(bounds.getX() - this.frame.getWidth(), bounds.getY() - this.frame.getHeight(), bounds.getWidth() + (this.frame.getWidth() * 2.0d), (this.frame.getHeight() * 2.0d) + bounds.getHeight()));
            area.subtract(new Area(bounds));
            hwmfGraphics.fill(area);
        }

        public int getBrushIndex() {
            return this.brushIndex;
        }

        public Dimension2D getFrame() {
            return this.frame;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("regionIndex", new Supplier() { // from class: com.sunia.HTREnginev2.g2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HwmfDraw.WmfFrameRegion.this.getRegionIndex());
                }
            }, "brushIndex", new Supplier() { // from class: com.sunia.HTREnginev2.h2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HwmfDraw.WmfFrameRegion.this.getBrushIndex());
                }
            }, TypedValues.AttributesType.S_FRAME, new Supplier() { // from class: com.sunia.HTREnginev2.i2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfDraw.WmfFrameRegion.this.getFrame();
                }
            });
        }

        public int getRegionIndex() {
            return this.regionIndex;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.frameRegion;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.regionIndex = littleEndianInputStream.readUShort();
            this.brushIndex = littleEndianInputStream.readUShort();
            this.frame.setSize(littleEndianInputStream.readShort(), littleEndianInputStream.readShort());
            return 8;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfLineTo implements HwmfRecord {
        protected final Point2D point = new Point2D.Double();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.draw(new Line2D.Double(hwmfGraphics.getProperties().getLocation(), this.point));
            hwmfGraphics.getProperties().setLocation(this.point);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("point", new Supplier() { // from class: com.sunia.HTREnginev2.j2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfDraw.WmfLineTo.this.getPoint();
                }
            });
        }

        public Point2D getPoint() {
            return this.point;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.lineTo;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            return HwmfDraw.readPointS(littleEndianInputStream, this.point);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfMoveTo implements HwmfRecord {
        protected final Point2D point = new Point2D.Double();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.getProperties().setLocation(this.point);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("point", new Supplier() { // from class: com.sunia.HTREnginev2.k2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfDraw.WmfMoveTo.this.getPoint();
                }
            });
        }

        public Point2D getPoint() {
            return this.point;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.moveTo;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            return HwmfDraw.readPointS(littleEndianInputStream, this.point);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfPie extends WmfArc {
        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfArc, org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.pie;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfPolyPolygon implements HwmfRecord {
        protected final List<Path2D> polyList = new ArrayList();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            Shape shape = getShape(hwmfGraphics);
            if (shape == null) {
                return;
            }
            int i = C195511.$SwitchMap$org$apache$poi$hwmf$draw$HwmfGraphics$FillDrawStyle[getFillDrawStyle().ordinal()];
            if (i == 1) {
                hwmfGraphics.draw(shape);
                return;
            }
            if (i == 2) {
                hwmfGraphics.fill(shape);
            } else {
                if (i != 3) {
                    return;
                }
                hwmfGraphics.fill(shape);
                hwmfGraphics.draw(shape);
            }
        }

        public HwmfGraphics.FillDrawStyle getFillDrawStyle() {
            return HwmfGraphics.FillDrawStyle.FILL_DRAW;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("polyList", new Supplier() { // from class: com.sunia.HTREnginev2.l2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfDraw.WmfPolyPolygon.this.getPolyList();
                }
            });
        }

        public List<Path2D> getPolyList() {
            return this.polyList;
        }

        public Shape getShape(HwmfGraphics hwmfGraphics) {
            int windingRule = hwmfGraphics.getProperties().getWindingRule();
            if (!isClosed()) {
                Path2D.Double r0 = new Path2D.Double();
                r0.setWindingRule(windingRule);
                Iterator<Path2D> it2 = this.polyList.iterator();
                while (it2.hasNext()) {
                    r0.append((Shape) it2.next(), false);
                }
                return r0;
            }
            Iterator<Path2D> it3 = this.polyList.iterator();
            Area area = null;
            while (it3.hasNext()) {
                Path2D path2D = (Path2D) it3.next().clone();
                path2D.setWindingRule(windingRule);
                Area area2 = new Area(path2D);
                if (area == null) {
                    area = area2;
                } else {
                    area.exclusiveOr(area2);
                }
            }
            return area;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.polyPolygon;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            int readUShort = littleEndianInputStream.readUShort();
            int[] iArr = new int[readUShort];
            int i2 = 2;
            for (int i3 = 0; i3 < readUShort; i3++) {
                iArr[i3] = littleEndianInputStream.readUShort();
                i2 += 2;
            }
            for (int i4 = 0; i4 < readUShort; i4++) {
                int i5 = iArr[i4];
                Path2D.Double r3 = new Path2D.Double(0, i5);
                for (int i6 = 0; i6 < i5; i6++) {
                    short readShort = littleEndianInputStream.readShort();
                    short readShort2 = littleEndianInputStream.readShort();
                    i2 += 4;
                    if (i6 == 0) {
                        r3.moveTo(readShort, readShort2);
                    } else {
                        r3.lineTo(readShort, readShort2);
                    }
                }
                r3.closePath();
                this.polyList.add(r3);
            }
            return i2;
        }

        public boolean isClosed() {
            return true;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfPolygon implements HwmfRecord {
        protected Path2D poly;

        public boolean addClose() {
            return true;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            Path2D path2D = (Path2D) this.poly.clone();
            path2D.setWindingRule(hwmfGraphics.getProperties().getWindingRule());
            getFillDrawStyle().handler.accept(hwmfGraphics, path2D);
        }

        public HwmfGraphics.FillDrawStyle getFillDrawStyle() {
            return HwmfGraphics.FillDrawStyle.FILL;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("poly", new Supplier() { // from class: com.sunia.HTREnginev2.m2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfDraw.WmfPolygon.this.getPoly();
                }
            });
        }

        public Path2D getPoly() {
            return this.poly;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.polygon;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            short readShort = littleEndianInputStream.readShort();
            this.poly = new Path2D.Double(0, readShort);
            for (int i2 = 0; i2 < readShort; i2++) {
                short readShort2 = littleEndianInputStream.readShort();
                short readShort3 = littleEndianInputStream.readShort();
                if (i2 == 0) {
                    this.poly.moveTo(readShort2, readShort3);
                } else {
                    this.poly.lineTo(readShort2, readShort3);
                }
            }
            if (readShort > 0 && addClose()) {
                this.poly.closePath();
            }
            return (readShort * 4) + 2;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfPolyline extends WmfPolygon {
        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfPolygon
        public boolean addClose() {
            return false;
        }

        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfPolygon
        public HwmfGraphics.FillDrawStyle getFillDrawStyle() {
            return HwmfGraphics.FillDrawStyle.DRAW;
        }

        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfPolygon, org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.polyline;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfRectangle implements HwmfRecord {
        protected final Rectangle2D bounds = new Rectangle2D.Double();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.fill(this.bounds);
        }

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("bounds", new Supplier() { // from class: com.sunia.HTREnginev2.n2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfDraw.WmfRectangle.this.getBounds();
                }
            });
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.rectangle;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            return HwmfDraw.readBounds(littleEndianInputStream, this.bounds);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfRoundRect implements HwmfRecord {
        protected final Dimension2D corners = new Dimension2DDouble();
        protected final Rectangle2D bounds = new Rectangle2D.Double();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.fill(getShape());
        }

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        public Dimension2D getCorners() {
            return this.corners;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("bounds", new Supplier() { // from class: com.sunia.HTREnginev2.o2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfDraw.WmfRoundRect.this.getBounds();
                }
            }, "corners", new Supplier() { // from class: com.sunia.HTREnginev2.p2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfDraw.WmfRoundRect.this.getCorners();
                }
            });
        }

        public RoundRectangle2D getShape() {
            return new RoundRectangle2D.Double(this.bounds.getX(), this.bounds.getY(), this.bounds.getWidth(), this.bounds.getHeight(), this.corners.getWidth(), this.corners.getHeight());
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.roundRect;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.corners.setSize(littleEndianInputStream.readShort(), littleEndianInputStream.readShort());
            return HwmfDraw.readBounds(littleEndianInputStream, this.bounds) + 4;
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSelectObject implements HwmfRecord {
        protected int objectIndex;

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.applyObjectTableEntry(this.objectIndex);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("objectIndex", new Supplier() { // from class: com.sunia.HTREnginev2.q2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HwmfDraw.WmfSelectObject.this.getObjectIndex());
                }
            });
        }

        public int getObjectIndex() {
            return this.objectIndex;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.selectObject;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            this.objectIndex = littleEndianInputStream.readUShort();
            return 2;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class WmfSetPixel implements HwmfRecord {
        protected final HwmfColorRef colorRef = new HwmfColorRef();
        protected final Point2D point = new Point2D.Double();

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public void draw(HwmfGraphics hwmfGraphics) {
            hwmfGraphics.fill(new Rectangle2D.Double(this.point.getX(), this.point.getY(), 1.0d, 1.0d));
        }

        public HwmfColorRef getColorRef() {
            return this.colorRef;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("colorRef", new Supplier() { // from class: com.sunia.HTREnginev2.r2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfDraw.WmfSetPixel.this.getColorRef();
                }
            }, "point", new Supplier() { // from class: com.sunia.HTREnginev2.s2i
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HwmfDraw.WmfSetPixel.this.getPoint();
                }
            });
        }

        public Point2D getPoint() {
            return this.point;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public HwmfRecordType getWmfRecordType() {
            return HwmfRecordType.setPixel;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord
        public int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException {
            return this.colorRef.init(littleEndianInputStream) + HwmfDraw.readPointS(littleEndianInputStream, this.point);
        }
    }

    private HwmfDraw() {
    }

    @Internal
    public static Rectangle2D normalizeBounds(Rectangle2D rectangle2D) {
        if (rectangle2D.getWidth() < 0.0d || rectangle2D.getHeight() < 0.0d) {
            return new Rectangle2D.Double(rectangle2D.getWidth() >= 0.0d ? rectangle2D.getMinX() : rectangle2D.getMaxX(), rectangle2D.getHeight() >= 0.0d ? rectangle2D.getMinY() : rectangle2D.getMaxY(), Math.abs(rectangle2D.getWidth()), Math.abs(rectangle2D.getHeight()));
        }
        return rectangle2D;
    }

    public static int readBounds(LittleEndianInputStream littleEndianInputStream, Rectangle2D rectangle2D) {
        short readShort = littleEndianInputStream.readShort();
        short readShort2 = littleEndianInputStream.readShort();
        short readShort3 = littleEndianInputStream.readShort();
        short readShort4 = littleEndianInputStream.readShort();
        rectangle2D.setRect(Math.min((int) readShort4, (int) readShort2), Math.min((int) readShort3, (int) readShort), Math.abs((readShort4 - readShort2) - 1), Math.abs((readShort3 - readShort) - 1));
        return 8;
    }

    public static int readPointS(LittleEndianInputStream littleEndianInputStream, Point2D point2D) {
        point2D.setLocation(littleEndianInputStream.readShort(), littleEndianInputStream.readShort());
        return 4;
    }

    public static int readRectS(LittleEndianInputStream littleEndianInputStream, Rectangle2D rectangle2D) {
        short readShort = littleEndianInputStream.readShort();
        short readShort2 = littleEndianInputStream.readShort();
        short readShort3 = littleEndianInputStream.readShort();
        short readShort4 = littleEndianInputStream.readShort();
        rectangle2D.setRect(Math.min((int) readShort, (int) readShort3), Math.min((int) readShort2, (int) readShort4), Math.abs((readShort - readShort3) - 1), Math.abs((readShort2 - readShort4) - 1));
        return 8;
    }
}
