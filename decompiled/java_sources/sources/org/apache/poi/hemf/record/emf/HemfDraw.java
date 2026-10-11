package org.apache.poi.hemf.record.emf;

import com.sunia.HTREnginev2.gon;
import java.awt.Shape;
import java.awt.geom.Arc2D;
import java.awt.geom.Dimension2D;
import java.awt.geom.Path2D;
import java.awt.geom.PathIterator;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Supplier;
import java.util.stream.IntStream;
import org.apache.poi.hemf.draw.HemfDrawProperties;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hemf.record.emf.HemfDraw;
import org.apache.poi.hemf.record.emf.HemfRecord;
import org.apache.poi.hwmf.draw.HwmfGraphics;
import org.apache.poi.hwmf.record.HwmfDraw;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public final class HemfDraw {

    /* loaded from: classes12.dex */
    public static class EmfAbortPath implements HemfRecordWithoutProperties {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            HemfDrawProperties properties = hemfGraphics.getProperties();
            properties.setPath(null);
            properties.setUsePathBracket(false);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.abortPath;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return 0L;
        }

        public String toString() {
            return "{}";
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfArc extends HwmfDraw.WmfArc implements HemfRecord {
        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$draw$0(Path2D path2D) {
            path2D.append((Shape) getShape(), false);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.draw(new Consumer() { // from class: com.sunia.HTREnginev2.vgh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfDraw.EmfArc.this.lambda$draw$0((Path2D) obj);
                }
            }, getFillDrawStyle());
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.arc;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return HemfDraw.readRectL(littleEndianInputStream, this.bounds) + HemfDraw.readPointL(littleEndianInputStream, this.startPoint) + HemfDraw.readPointL(littleEndianInputStream, this.endPoint);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfArcTo extends HwmfDraw.WmfArc implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void calcBounds(HemfRecord.RenderBounds renderBounds) {
            Rectangle2D bounds = renderBounds.getBounds();
            if (bounds.isEmpty()) {
                bounds.setRect(this.bounds);
            } else {
                bounds.add(this.bounds);
            }
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            final Arc2D shape = getShape();
            hemfGraphics.draw(new Consumer() { // from class: com.sunia.HTREnginev2.wgh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((Path2D) obj).append((Shape) Arc2D.this, true);
                }
            }, getFillDrawStyle());
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.arcTo;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return HemfDraw.readRectL(littleEndianInputStream, this.bounds) + HemfDraw.readPointL(littleEndianInputStream, this.startPoint) + HemfDraw.readPointL(littleEndianInputStream, this.endPoint);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfBeginPath implements HemfRecordWithoutProperties {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            HemfDrawProperties properties = hemfGraphics.getProperties();
            properties.setPath(new Path2D.Double());
            properties.setUsePathBracket(true);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.beginPath;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return 0L;
        }

        public String toString() {
            return "{}";
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfChord extends HwmfDraw.WmfChord implements HemfRecord {
        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$draw$0(Path2D path2D) {
            path2D.append((Shape) getShape(), false);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.draw(new Consumer() { // from class: com.sunia.HTREnginev2.xgh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfDraw.EmfChord.this.lambda$draw$0((Path2D) obj);
                }
            }, getFillDrawStyle());
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.chord;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return HemfDraw.readRectL(littleEndianInputStream, this.bounds) + HemfDraw.readPointL(littleEndianInputStream, this.startPoint) + HemfDraw.readPointL(littleEndianInputStream, this.endPoint);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfCloseFigure implements HemfRecordWithoutProperties {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            HemfDrawProperties properties = hemfGraphics.getProperties();
            Path2D path = properties.getPath();
            if (path == null || path.getCurrentPoint() == null) {
                return;
            }
            path.closePath();
            properties.setLocation(path.getCurrentPoint());
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.closeFigure;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return 0L;
        }

        public String toString() {
            return "{}";
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfEllipse extends HwmfDraw.WmfEllipse implements HemfRecord {
        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$draw$0(Path2D path2D) {
            path2D.append((Shape) getShape(), false);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.draw(new Consumer() { // from class: com.sunia.HTREnginev2.ygh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfDraw.EmfEllipse.this.lambda$draw$0((Path2D) obj);
                }
            }, HwmfGraphics.FillDrawStyle.FILL_DRAW);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.ellipse;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return HemfDraw.readRectL(littleEndianInputStream, this.bounds);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfEndPath implements HemfRecordWithoutProperties {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.getProperties().setUsePathBracket(false);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.endPath;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return 0L;
        }

        public String toString() {
            return "{}";
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfFillPath extends EmfStrokePath {
        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfStrokePath, org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            Path2D path = hemfGraphics.getProperties().getPath();
            if (path.getCurrentPoint() == null) {
                return;
            }
            Path2D path2D = (Path2D) path.clone();
            path2D.closePath();
            path2D.setWindingRule(hemfGraphics.getProperties().getWindingRule());
            hemfGraphics.fill(path2D);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfStrokePath, org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.fillPath;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfFlattenPath implements HemfRecordWithoutProperties {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.flattenPath;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return 0L;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfLineTo extends HwmfDraw.WmfLineTo implements HemfRecord {
        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$draw$0(Path2D path2D) {
            path2D.lineTo(this.point.getX(), this.point.getY());
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void calcBounds(HemfRecord.RenderBounds renderBounds) {
            Rectangle2D bounds = renderBounds.getBounds();
            if (bounds.isEmpty()) {
                return;
            }
            bounds.add(this.point);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.draw(new Consumer() { // from class: com.sunia.HTREnginev2.zgh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfDraw.EmfLineTo.this.lambda$draw$0((Path2D) obj);
                }
            }, HwmfGraphics.FillDrawStyle.DRAW);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.lineTo;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return HemfDraw.readPointL(littleEndianInputStream, this.point);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPie extends HwmfDraw.WmfPie implements HemfRecord {
        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$draw$0(Path2D path2D) {
            path2D.append((Shape) getShape(), false);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.draw(new Consumer() { // from class: com.sunia.HTREnginev2.ahh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfDraw.EmfPie.this.lambda$draw$0((Path2D) obj);
                }
            }, getFillDrawStyle());
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.pie;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return HemfDraw.readRectL(littleEndianInputStream, this.bounds) + HemfDraw.readPointL(littleEndianInputStream, this.startPoint) + HemfDraw.readPointL(littleEndianInputStream, this.endPoint);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPolyBezier extends HwmfDraw.WmfPolygon implements HemfRecord {
        private final Rectangle2D bounds = new Rectangle2D.Double();

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$draw$0(Path2D path2D) {
            path2D.append(this.poly, !hasStartPoint());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return super.getGenericProperties();
        }

        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfPolygon
        public boolean addClose() {
            return false;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void calcBounds(HemfRecord.RenderBounds renderBounds) {
            Rectangle2D bounds = renderBounds.getBounds();
            if (bounds.isEmpty()) {
                bounds.setRect(this.bounds);
            } else {
                bounds.add(this.bounds);
            }
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.draw(new Consumer() { // from class: com.sunia.HTREnginev2.bhh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfDraw.EmfPolyBezier.this.lambda$draw$0((Path2D) obj);
                }
            }, getFillDrawStyle());
        }

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.polyBezier;
        }

        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfPolygon
        public HwmfGraphics.FillDrawStyle getFillDrawStyle() {
            return HwmfGraphics.FillDrawStyle.DRAW;
        }

        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfPolygon, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.chh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HemfDraw.EmfPolyBezier.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            }, "bounds", new Supplier() { // from class: com.sunia.HTREnginev2.dhh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfDraw.EmfPolyBezier.this.getBounds();
                }
            });
        }

        public boolean hasStartPoint() {
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x006a A[LOOP:0: B:6:0x0066->B:8:0x006a, LOOP_END] */
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long init(org.apache.poi.util.LittleEndianInputStream r24, long r25, long r27) throws java.io.IOException {
            /*
                r23 = this;
                r0 = r23
                r1 = r24
                java.awt.geom.Rectangle2D r2 = r0.bounds
                long r2 = org.apache.poi.hemf.record.emf.HemfDraw.readRectL(r1, r2)
                long r4 = r24.readUInt()
                int r4 = (int) r4
                r5 = 16384(0x4000, float:2.2959E-41)
                int r4 = java.lang.Math.min(r4, r5)
                r5 = 4
                long r2 = r2 + r5
                java.awt.geom.Path2D$Double r5 = new java.awt.geom.Path2D$Double
                int r6 = r4 + 2
                r7 = 0
                r5.<init>(r7, r6)
                r0.poly = r5
                r5 = 3
                java.awt.geom.Point2D[] r5 = new java.awt.geom.Point2D[r5]
                java.awt.geom.Point2D$Double r6 = new java.awt.geom.Point2D$Double
                r6.<init>()
                r5[r7] = r6
                java.awt.geom.Point2D$Double r6 = new java.awt.geom.Point2D$Double
                r6.<init>()
                r8 = 1
                r5[r8] = r6
                java.awt.geom.Point2D$Double r6 = new java.awt.geom.Point2D$Double
                r6.<init>()
                r9 = 2
                r5[r9] = r6
                boolean r6 = r23.hasStartPoint()
                if (r6 == 0) goto L5e
                if (r4 <= 0) goto L65
                r6 = r5[r7]
                long r10 = r0.readPoint(r1, r6)
                long r2 = r2 + r10
                java.awt.geom.Path2D r6 = r0.poly
                r10 = r5[r7]
                double r10 = r10.getX()
                r12 = r5[r7]
                double r12 = r12.getY()
                r6.moveTo(r10, r12)
                r6 = r8
                goto L66
            L5e:
                java.awt.geom.Path2D r6 = r0.poly
                r10 = 0
                r6.moveTo(r10, r10)
            L65:
                r6 = r7
            L66:
                int r10 = r6 + 2
                if (r10 >= r4) goto Lab
                r10 = r5[r7]
                long r10 = r0.readPoint(r1, r10)
                long r2 = r2 + r10
                r10 = r5[r8]
                long r10 = r0.readPoint(r1, r10)
                long r2 = r2 + r10
                r10 = r5[r9]
                long r10 = r0.readPoint(r1, r10)
                long r2 = r2 + r10
                java.awt.geom.Path2D r10 = r0.poly
                r11 = r5[r7]
                double r11 = r11.getX()
                r13 = r5[r7]
                double r13 = r13.getY()
                r15 = r5[r8]
                double r15 = r15.getX()
                r17 = r5[r8]
                double r17 = r17.getY()
                r19 = r5[r9]
                double r19 = r19.getX()
                r21 = r5[r9]
                double r21 = r21.getY()
                r10.curveTo(r11, r13, r15, r17, r19, r21)
                int r6 = r6 + 3
                goto L66
            Lab:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hemf.record.emf.HemfDraw.EmfPolyBezier.init(org.apache.poi.util.LittleEndianInputStream, long, long):long");
        }

        public long readPoint(LittleEndianInputStream littleEndianInputStream, Point2D point2D) {
            return HemfDraw.readPointL(littleEndianInputStream, point2D);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPolyBezier16 extends EmfPolyBezier {
        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolyBezier, org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.polyBezier16;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolyBezier
        public long readPoint(LittleEndianInputStream littleEndianInputStream, Point2D point2D) {
            return HemfDraw.readPointS(littleEndianInputStream, point2D);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPolyBezierTo extends EmfPolyBezier {
        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolyBezier, org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            HemfDraw.polyTo(hemfGraphics, this.poly, getFillDrawStyle());
        }

        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolyBezier, org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.polyBezierTo;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolyBezier
        public boolean hasStartPoint() {
            return false;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPolyBezierTo16 extends EmfPolyBezierTo {
        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolyBezierTo, org.apache.poi.hemf.record.emf.HemfDraw.EmfPolyBezier, org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.polyBezierTo16;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolyBezier
        public long readPoint(LittleEndianInputStream littleEndianInputStream, Point2D point2D) {
            return HemfDraw.readPointS(littleEndianInputStream, point2D);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPolyDraw extends HwmfDraw.WmfPolygon implements HemfRecord {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final Rectangle2D bounds = new Rectangle2D.Double();

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$draw$0(Path2D path2D) {
            path2D.append((Shape) this.poly, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return super.getGenericProperties();
        }

        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfPolygon
        public boolean addClose() {
            return false;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void calcBounds(HemfRecord.RenderBounds renderBounds) {
            Rectangle2D bounds = renderBounds.getBounds();
            if (bounds.isEmpty()) {
                bounds.setRect(this.bounds);
            } else {
                bounds.add(this.bounds);
            }
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.draw(new Consumer() { // from class: com.sunia.HTREnginev2.ghh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfDraw.EmfPolyDraw.this.lambda$draw$0((Path2D) obj);
                }
            }, getFillDrawStyle());
        }

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.polyDraw;
        }

        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfPolygon
        public HwmfGraphics.FillDrawStyle getFillDrawStyle() {
            return HwmfGraphics.FillDrawStyle.DRAW;
        }

        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfPolygon, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.ehh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HemfDraw.EmfPolyDraw.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            }, "bounds", new Supplier() { // from class: com.sunia.HTREnginev2.fhh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfDraw.EmfPolyDraw.this.getBounds();
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            long readRectL = HemfDraw.readRectL(littleEndianInputStream, this.bounds);
            int readUInt = (int) littleEndianInputStream.readUInt();
            long j3 = readRectL + 4;
            Point2D[] point2DArr = new Point2D[readUInt];
            int i = 0;
            for (int i2 = 0; i2 < readUInt; i2++) {
                Point2D.Double r8 = new Point2D.Double();
                point2DArr[i2] = r8;
                j3 += readPoint(littleEndianInputStream, r8);
            }
            this.poly = new Path2D.Double(0, readUInt);
            while (i < readUInt) {
                int readUByte = littleEndianInputStream.readUByte();
                int i3 = readUByte & 6;
                if (i3 == 2) {
                    this.poly.lineTo(point2DArr[i].getX(), point2DArr[i].getY());
                } else if (i3 == 4) {
                    littleEndianInputStream.readUByte();
                    readUByte = littleEndianInputStream.readUByte();
                    int i4 = i + 2;
                    if (i4 >= readUInt) {
                        throw new IllegalStateException("Points index causes index out of bounds");
                    }
                    Path2D path2D = this.poly;
                    double x = point2DArr[i].getX();
                    double y = point2DArr[i].getY();
                    int i5 = i + 1;
                    path2D.curveTo(x, y, point2DArr[i5].getX(), point2DArr[i5].getY(), point2DArr[i4].getX(), point2DArr[i4].getY());
                    i = i4;
                } else if (i3 == 6) {
                    this.poly.moveTo(point2DArr[i].getX(), point2DArr[i].getY());
                }
                if ((readUByte & 1) == 1) {
                    this.poly.closePath();
                }
                i++;
            }
            return j3 + readUInt;
        }

        public long readPoint(LittleEndianInputStream littleEndianInputStream, Point2D point2D) {
            return HemfDraw.readPointL(littleEndianInputStream, point2D);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPolyDraw16 extends EmfPolyDraw {
        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolyDraw, org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.polyDraw16;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolyDraw
        public long readPoint(LittleEndianInputStream littleEndianInputStream, Point2D point2D) {
            return HemfDraw.readPointS(littleEndianInputStream, point2D);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPolyPolygon extends HwmfDraw.WmfPolyPolygon implements HemfRecord {
        private final Rectangle2D bounds = new Rectangle2D.Double();

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return super.getGenericProperties();
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            final Shape shape = getShape(hemfGraphics);
            if (shape == null) {
                return;
            }
            hemfGraphics.draw(new Consumer() { // from class: com.sunia.HTREnginev2.jhh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((Path2D) obj).append(Shape.this, false);
                }
            }, getFillDrawStyle());
        }

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.polyPolygon;
        }

        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfPolyPolygon, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.hhh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HemfDraw.EmfPolyPolygon.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            }, "bounds", new Supplier() { // from class: com.sunia.HTREnginev2.ihh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfDraw.EmfPolyPolygon.this.getBounds();
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            long j3;
            long readRectL = HemfDraw.readRectL(littleEndianInputStream, this.bounds);
            long readUInt = littleEndianInputStream.readUInt();
            Math.min(16384L, littleEndianInputStream.readUInt());
            int i = (int) readUInt;
            long[] jArr = new long[i];
            long j4 = readRectL + 8 + (4 * readUInt);
            int i2 = 0;
            for (int i3 = 0; i3 < readUInt; i3++) {
                jArr[i3] = littleEndianInputStream.readUInt();
            }
            Point2D.Double r4 = new Point2D.Double();
            int i4 = 0;
            while (i4 < i) {
                long j5 = jArr[i4];
                Path2D.Double r11 = new Path2D.Double(i2, (int) j5);
                int i5 = i2;
                while (i5 < j5) {
                    j4 += readPoint(littleEndianInputStream, r4);
                    if (i5 == 0) {
                        j3 = j5;
                        r11.moveTo(r4.getX(), r4.getY());
                    } else {
                        j3 = j5;
                        r11.lineTo(r4.getX(), r4.getY());
                    }
                    i5++;
                    j5 = j3;
                }
                if (isClosed()) {
                    r11.closePath();
                }
                this.polyList.add(r11);
                i4++;
                i2 = 0;
            }
            return j4;
        }

        public long readPoint(LittleEndianInputStream littleEndianInputStream, Point2D point2D) {
            return HemfDraw.readPointL(littleEndianInputStream, point2D);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPolyPolygon16 extends EmfPolyPolygon {
        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolyPolygon, org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.polyPolygon16;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolyPolygon
        public long readPoint(LittleEndianInputStream littleEndianInputStream, Point2D point2D) {
            return HemfDraw.readPointS(littleEndianInputStream, point2D);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPolyPolyline extends EmfPolyPolygon {
        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolyPolygon, org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.polyPolyline;
        }

        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfPolyPolygon
        public HwmfGraphics.FillDrawStyle getFillDrawStyle() {
            return HwmfGraphics.FillDrawStyle.DRAW;
        }

        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfPolyPolygon
        public boolean isClosed() {
            return false;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPolyPolyline16 extends EmfPolyPolyline {
        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolyPolyline, org.apache.poi.hemf.record.emf.HemfDraw.EmfPolyPolygon, org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.polyPolyline16;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolyPolygon
        public long readPoint(LittleEndianInputStream littleEndianInputStream, Point2D point2D) {
            return HemfDraw.readPointS(littleEndianInputStream, point2D);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPolygon extends HwmfDraw.WmfPolygon implements HemfRecord {
        private final Rectangle2D bounds = new Rectangle2D.Double();

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$draw$0(Path2D path2D) {
            path2D.append((Shape) this.poly, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return super.getGenericProperties();
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void calcBounds(HemfRecord.RenderBounds renderBounds) {
            Rectangle2D bounds = renderBounds.getBounds();
            if (bounds.isEmpty()) {
                bounds.setRect(this.bounds);
            } else {
                bounds.add(this.bounds);
            }
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.draw(new Consumer() { // from class: com.sunia.HTREnginev2.khh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfDraw.EmfPolygon.this.lambda$draw$0((Path2D) obj);
                }
            }, getFillDrawStyle());
        }

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.polygon;
        }

        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfPolygon
        public HwmfGraphics.FillDrawStyle getFillDrawStyle() {
            return HwmfGraphics.FillDrawStyle.FILL_DRAW;
        }

        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfPolygon, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.lhh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = HemfDraw.EmfPolygon.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            }, "bounds", new Supplier() { // from class: com.sunia.HTREnginev2.mhh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfDraw.EmfPolygon.this.getBounds();
                }
            });
        }

        public boolean hasStartPoint() {
            return true;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            long readRectL = HemfDraw.readRectL(littleEndianInputStream, this.bounds);
            int min = Math.min((int) littleEndianInputStream.readUInt(), 16384);
            long j3 = readRectL + 4;
            this.poly = new Path2D.Double(0, min);
            Point2D.Double r11 = new Point2D.Double();
            for (int i = 0; i < min; i++) {
                j3 += readPoint(littleEndianInputStream, r11);
                if (i != 0) {
                    this.poly.lineTo(r11.getX(), r11.getY());
                } else if (hasStartPoint()) {
                    this.poly.moveTo(r11.getX(), r11.getY());
                } else {
                    this.poly.moveTo(0.0d, 0.0d);
                    this.poly.lineTo(r11.getX(), r11.getY());
                }
            }
            if (min > 0 && addClose()) {
                this.poly.closePath();
            }
            return j3;
        }

        public long readPoint(LittleEndianInputStream littleEndianInputStream, Point2D point2D) {
            return HemfDraw.readPointL(littleEndianInputStream, point2D);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPolygon16 extends EmfPolygon {
        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolygon, org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.polygon16;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolygon
        public long readPoint(LittleEndianInputStream littleEndianInputStream, Point2D point2D) {
            return HemfDraw.readPointS(littleEndianInputStream, point2D);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPolyline extends EmfPolygon {
        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfPolygon
        public boolean addClose() {
            return false;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolygon, org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.polyline;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolygon, org.apache.poi.hwmf.record.HwmfDraw.WmfPolygon
        public HwmfGraphics.FillDrawStyle getFillDrawStyle() {
            return HwmfGraphics.FillDrawStyle.DRAW;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPolyline16 extends EmfPolyline {
        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolyline, org.apache.poi.hemf.record.emf.HemfDraw.EmfPolygon, org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.polyline16;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolygon
        public long readPoint(LittleEndianInputStream littleEndianInputStream, Point2D point2D) {
            return HemfDraw.readPointS(littleEndianInputStream, point2D);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPolylineTo extends EmfPolyline {
        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolygon, org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            HemfDraw.polyTo(hemfGraphics, this.poly, getFillDrawStyle());
        }

        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolyline, org.apache.poi.hemf.record.emf.HemfDraw.EmfPolygon, org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.polylineTo;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolygon
        public boolean hasStartPoint() {
            return false;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPolylineTo16 extends EmfPolylineTo {
        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolylineTo, org.apache.poi.hemf.record.emf.HemfDraw.EmfPolyline, org.apache.poi.hemf.record.emf.HemfDraw.EmfPolygon, org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.polylineTo16;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfPolygon
        public long readPoint(LittleEndianInputStream littleEndianInputStream, Point2D point2D) {
            return HemfDraw.readPointS(littleEndianInputStream, point2D);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfRectangle extends HwmfDraw.WmfRectangle implements HemfRecord {
        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$draw$0(Path2D path2D) {
            path2D.append((Shape) HwmfDraw.normalizeBounds(this.bounds), false);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void calcBounds(HemfRecord.RenderBounds renderBounds) {
            Rectangle2D bounds = renderBounds.getBounds();
            if (bounds.isEmpty()) {
                bounds.setRect(this.bounds);
            } else {
                bounds.add(this.bounds);
            }
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.draw(new Consumer() { // from class: com.sunia.HTREnginev2.nhh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfDraw.EmfRectangle.this.lambda$draw$0((Path2D) obj);
                }
            }, HwmfGraphics.FillDrawStyle.FILL_DRAW);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.rectangle;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return HemfDraw.readRectL(littleEndianInputStream, this.bounds);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfRoundRect extends HwmfDraw.WmfRoundRect implements HemfRecord {
        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$draw$0(Path2D path2D) {
            path2D.append((Shape) getShape(), false);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void calcBounds(HemfRecord.RenderBounds renderBounds) {
            Rectangle2D bounds = renderBounds.getBounds();
            if (bounds.isEmpty()) {
                bounds.setRect(this.bounds);
            } else {
                bounds.add(this.bounds);
            }
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.draw(new Consumer() { // from class: com.sunia.HTREnginev2.ohh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfDraw.EmfRoundRect.this.lambda$draw$0((Path2D) obj);
                }
            }, HwmfGraphics.FillDrawStyle.FILL_DRAW);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.roundRect;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            long readRectL = HemfDraw.readRectL(littleEndianInputStream, this.bounds);
            this.corners.setSize((int) littleEndianInputStream.readUInt(), (int) littleEndianInputStream.readUInt());
            return readRectL + 8;
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSelectObject extends HwmfDraw.WmfSelectObject implements HemfRecord {
        private static final int[] IDX_MASKS = IntStream.rangeClosed(Integer.MIN_VALUE, -2147483629).toArray();
        private static final String[] IDX_NAMES = {"WHITE_BRUSH", "LTGRAY_BRUSH", "GRAY_BRUSH", "DKGRAY_BRUSH", "BLACK_BRUSH", "NULL_BRUSH", "WHITE_PEN", "BLACK_PEN", "NULL_PEN", "INVALID", "OEM_FIXED_FONT", "ANSI_FIXED_FONT", "ANSI_VAR_FONT", "SYSTEM_FONT", "DEVICE_DEFAULT_FONT", "DEFAULT_PALETTE", "SYSTEM_FIXED_FONT", "DEFAULT_GUI_FONT", "DC_BRUSH", "DC_PEN"};

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.selectObject;
        }

        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfSelectObject, org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("objectIndex", GenericRecordUtil.getEnumBitsAsString(new Supplier() { // from class: com.sunia.HTREnginev2.phh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfDraw.EmfSelectObject.this.getObjectIndex());
                }
            }, IDX_MASKS, IDX_NAMES));
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            this.objectIndex = littleEndianInputStream.readInt();
            return 4L;
        }

        @Override // org.apache.poi.hwmf.record.HwmfDraw.WmfSelectObject
        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetMoveToEx extends HwmfDraw.WmfMoveTo implements HemfRecord {
        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$draw$0(Path2D path2D) {
            path2D.moveTo(this.point.getX(), this.point.getY());
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            hemfGraphics.draw(new Consumer() { // from class: com.sunia.HTREnginev2.qhh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfDraw.EmfSetMoveToEx.this.lambda$draw$0((Path2D) obj);
                }
            }, HwmfGraphics.FillDrawStyle.NONE);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setMoveToEx;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return HemfDraw.readPointL(littleEndianInputStream, this.point);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfSetPixelV extends HwmfDraw.WmfSetPixel implements HemfRecord {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.setPixelV;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return HemfDraw.readPointL(littleEndianInputStream, this.point) + this.colorRef.init(littleEndianInputStream);
        }

        @Override // org.apache.poi.hwmf.record.HwmfRecord, org.apache.poi.common.usermodel.GenericRecord
        public HemfRecordType getGenericRecordType() {
            return getEmfRecordType();
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfStrokeAndFillPath extends EmfStrokePath {
        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfStrokePath, org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            Path2D path = hemfGraphics.getProperties().getPath();
            path.closePath();
            path.setWindingRule(hemfGraphics.getProperties().getWindingRule());
            hemfGraphics.fill(path);
            hemfGraphics.draw(path);
        }

        @Override // org.apache.poi.hemf.record.emf.HemfDraw.EmfStrokePath, org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.strokeAndFillPath;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfStrokePath implements HemfRecord {
        protected final Rectangle2D bounds = new Rectangle2D.Double();

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void calcBounds(HemfRecord.RenderBounds renderBounds) {
            Rectangle2D bounds = renderBounds.getBounds();
            if (bounds.isEmpty()) {
                bounds.setRect(this.bounds);
            } else {
                bounds.add(this.bounds);
            }
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public void draw(HemfGraphics hemfGraphics) {
            Path2D path = hemfGraphics.getProperties().getPath();
            path.setWindingRule(hemfGraphics.getProperties().getWindingRule());
            hemfGraphics.draw(path);
        }

        public Rectangle2D getBounds() {
            return this.bounds;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.strokePath;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("bounds", new Supplier() { // from class: com.sunia.HTREnginev2.rhh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfDraw.EmfStrokePath.this.getBounds();
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            if (j == 0) {
                return 0L;
            }
            return HemfDraw.readRectL(littleEndianInputStream, this.bounds);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfWidenPath implements HemfRecordWithoutProperties {
        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public HemfRecordType getEmfRecordType() {
            return HemfRecordType.widenPath;
        }

        @Override // org.apache.poi.hemf.record.emf.HemfRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
            return 0L;
        }

        public String toString() {
            return "{}";
        }
    }

    private HemfDraw() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void polyTo(HemfGraphics hemfGraphics, Path2D path2D, HwmfGraphics.FillDrawStyle fillDrawStyle) {
        if (path2D.getCurrentPoint() == null) {
            return;
        }
        final PathIterator pathIterator = path2D.getPathIterator(null);
        pathIterator.next();
        if (pathIterator.isDone()) {
            return;
        }
        hemfGraphics.draw(new Consumer() { // from class: com.sunia.HTREnginev2.ugh
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((Path2D) obj).append(PathIterator.this, true);
            }
        }, fillDrawStyle);
    }

    public static long readDimensionFloat(LittleEndianInputStream littleEndianInputStream, Dimension2D dimension2D) {
        dimension2D.setSize(littleEndianInputStream.readFloat(), littleEndianInputStream.readFloat());
        return 8L;
    }

    public static long readDimensionInt(LittleEndianInputStream littleEndianInputStream, Dimension2D dimension2D) {
        dimension2D.setSize(littleEndianInputStream.readInt(), littleEndianInputStream.readInt());
        return 8L;
    }

    public static long readPointL(LittleEndianInputStream littleEndianInputStream, Point2D point2D) {
        point2D.setLocation(littleEndianInputStream.readInt(), littleEndianInputStream.readInt());
        return 8L;
    }

    public static long readPointS(LittleEndianInputStream littleEndianInputStream, Point2D point2D) {
        point2D.setLocation(littleEndianInputStream.readShort(), littleEndianInputStream.readShort());
        return 4L;
    }

    public static long readRectL(LittleEndianInputStream littleEndianInputStream, Rectangle2D rectangle2D) {
        double readInt = littleEndianInputStream.readInt();
        double readInt2 = littleEndianInputStream.readInt();
        rectangle2D.setRect(readInt, readInt2, littleEndianInputStream.readInt() - readInt, littleEndianInputStream.readInt() - readInt2);
        return 16L;
    }
}
