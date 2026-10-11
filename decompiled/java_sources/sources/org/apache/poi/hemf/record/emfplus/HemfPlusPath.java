package org.apache.poi.hemf.record.emfplus;

import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sunia.HTREnginev2.poh;
import com.sunia.HTREnginev2.roh;
import com.sunia.HTREnginev2.soh;
import java.awt.geom.Path2D;
import java.awt.geom.Point2D;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.function.BiFunction;
import java.util.function.IntFunction;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hemf.record.emfplus.HemfPlusDraw;
import org.apache.poi.hemf.record.emfplus.HemfPlusHeader;
import org.apache.poi.hemf.record.emfplus.HemfPlusObject;
import org.apache.poi.hemf.record.emfplus.HemfPlusPath;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HemfPlusPath {

    /* renamed from: org.apache.poi.hemf.record.emfplus.HemfPlusPath$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194491 {

        /* renamed from: $SwitchMap$org$apache$poi$hemf$record$emfplus$HemfPlusPath$EmfPlusPathPointType */
        static final /* synthetic */ int[] f111359xb75a973b;

        static {
            int[] iArr = new int[EmfPlusPathPointType.values().length];
            f111359xb75a973b = iArr;
            try {
                iArr[EmfPlusPathPointType.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f111359xb75a973b[EmfPlusPathPointType.LINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f111359xb75a973b[EmfPlusPathPointType.BEZIER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusPath implements HemfPlusObject.EmfPlusObjectData, HemfPlusDraw.EmfPlusCompressed, HemfPlusDraw.EmfPlusRelativePosition {
        private final HemfPlusHeader.EmfPlusGraphicsVersion graphicsVersion = new HemfPlusHeader.EmfPlusGraphicsVersion();
        private Point2D[] pathPoints;
        private int pointFlags;
        private byte[] pointTypes;
        private static final BitField RLE_COMPRESSED = BitFieldFactory.getInstance(4096);
        private static final BitField POINT_TYPE_DASHED = BitFieldFactory.getInstance(16);
        private static final BitField POINT_TYPE_MARKER = BitFieldFactory.getInstance(32);
        private static final BitField POINT_TYPE_CLOSE = BitFieldFactory.getInstance(128);
        private static final BitField POINT_TYPE_ENUM = BitFieldFactory.getInstance(15);
        private static final BitField POINT_RLE_BEZIER = BitFieldFactory.getInstance(128);
        private static final BitField POINT_RLE_COUNT = BitFieldFactory.getInstance(63);
        private static final int[] FLAGS_MASKS = {2048, 4096, 16384};
        private static final String[] FLAGS_NAMES = {"RELATIVE_POSITION", "RLE_COMPRESSED", "FORMAT_COMPRESSED"};
        private static final int[] TYPE_MASKS = {16, 32, 128};
        private static final String[] TYPE_NAMES = {"DASHED", "MARKER", "CLOSE"};

        /* JADX INFO: Access modifiers changed from: private */
        public GenericRecord getGenericPoint(final int i) {
            return new GenericRecord() { // from class: com.sunia.HTREnginev2.trh
                @Override // org.apache.poi.common.usermodel.GenericRecord
                public final Map getGenericProperties() {
                    Map lambda$getGenericPoint$3;
                    lambda$getGenericPoint$3 = HemfPlusPath.EmfPlusPath.this.lambda$getGenericPoint$3(i);
                    return lambda$getGenericPoint$3;
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<GenericRecord> getGenericPoints() {
            return (List) IntStream.range(0, this.pathPoints.length).mapToObj(new IntFunction() { // from class: com.sunia.HTREnginev2.srh
                @Override // java.util.function.IntFunction
                public final Object apply(int i) {
                    GenericRecord genericPoint;
                    genericPoint = HemfPlusPath.EmfPlusPath.this.getGenericPoint(i);
                    return genericPoint;
                }
            }).collect(Collectors.toList());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Map lambda$getGenericPoint$3(final int i) {
            return GenericRecordUtil.getGenericProperties("flags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.mrh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Number lambda$null$0;
                    lambda$null$0 = HemfPlusPath.EmfPlusPath.this.lambda$null$0(i);
                    return lambda$null$0;
                }
            }, TYPE_MASKS, TYPE_NAMES), "type", new Supplier() { // from class: com.sunia.HTREnginev2.nrh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$null$1;
                    lambda$null$1 = HemfPlusPath.EmfPlusPath.this.lambda$null$1(i);
                    return lambda$null$1;
                }
            }, "point", new Supplier() { // from class: com.sunia.HTREnginev2.orh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$null$2;
                    lambda$null$2 = HemfPlusPath.EmfPlusPath.this.lambda$null$2(i);
                    return lambda$null$2;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Number lambda$null$0(int i) {
            return Byte.valueOf(this.pointTypes[i]);
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public void applyObject(HemfGraphics hemfGraphics, List<? extends HemfPlusObject.EmfPlusObjectData> list) {
            hemfGraphics.getProperties().setPath(getPath());
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusCompressed, org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusRelativePosition
        public int getFlags() {
            return this.pointFlags;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("graphicsVersion", new Supplier() { // from class: com.sunia.HTREnginev2.prh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusPath.EmfPlusPath.this.getGraphicsVersion();
                }
            }, "flags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.qrh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusPath.EmfPlusPath.this.getFlags());
                }
            }, FLAGS_MASKS, FLAGS_NAMES), PointConstant.POINT_FILE_END, new Supplier() { // from class: com.sunia.HTREnginev2.rrh
                @Override // java.util.function.Supplier
                public final Object get() {
                    List genericPoints;
                    genericPoints = HemfPlusPath.EmfPlusPath.this.getGenericPoints();
                    return genericPoints;
                }
            });
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Enum getGenericRecordType() {
            return HemfPlusObject.EmfPlusObjectType.PATH;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public HemfPlusHeader.EmfPlusGraphicsVersion getGraphicsVersion() {
            return this.graphicsVersion;
        }

        public Path2D getPath() {
            return getPath(1);
        }

        /* renamed from: getPoint, reason: merged with bridge method [inline-methods] */
        public Point2D lambda$null$2(int i) {
            return this.pathPoints[i];
        }

        /* renamed from: getPointType, reason: merged with bridge method [inline-methods] */
        public EmfPlusPathPointType lambda$null$1(int i) {
            return EmfPlusPathPointType.values()[POINT_TYPE_ENUM.getValue(this.pointTypes[i])];
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public long init(LittleEndianInputStream littleEndianInputStream, long j, HemfPlusObject.EmfPlusObjectType emfPlusObjectType, int i) throws IOException {
            long init = this.graphicsVersion.init(littleEndianInputStream);
            int readInt = littleEndianInputStream.readInt();
            this.pointFlags = littleEndianInputStream.readShort();
            littleEndianInputStream.skipFully(2);
            long j2 = init + 8;
            BiFunction pohVar = isRelativePosition() ? new poh() : isCompressed() ? new roh() : new soh();
            this.pathPoints = new Point2D[readInt];
            int i2 = 0;
            for (int i3 = 0; i3 < readInt; i3++) {
                this.pathPoints[i3] = new Point2D.Double();
                j2 += ((Integer) pohVar.apply(littleEndianInputStream, this.pathPoints[i3])).intValue();
            }
            this.pointTypes = new byte[readInt];
            if (RLE_COMPRESSED.isSet(this.pointFlags)) {
                while (i2 < readInt) {
                    int value = POINT_RLE_COUNT.getValue(littleEndianInputStream.readByte());
                    Arrays.fill(this.pointTypes, readInt, readInt + value, littleEndianInputStream.readByte());
                    i2 += value;
                    j2 += 2;
                }
            } else {
                littleEndianInputStream.readFully(this.pointTypes);
                j2 += readInt;
            }
            int i4 = (int) ((4 - (j2 % 4)) % 4);
            littleEndianInputStream.skipFully(i4);
            return j2 + i4;
        }

        public boolean isPointClosed(int i) {
            return POINT_TYPE_CLOSE.isSet(this.pointTypes[i]);
        }

        public boolean isPointDashed(int i) {
            return POINT_TYPE_DASHED.isSet(this.pointTypes[i]);
        }

        public boolean isPointMarker(int i) {
            return POINT_TYPE_MARKER.isSet(this.pointTypes[i]);
        }

        public Path2D getPath(int i) {
            Path2D.Double r14 = new Path2D.Double(i);
            int i2 = 0;
            while (true) {
                Point2D[] point2DArr = this.pathPoints;
                if (i2 >= point2DArr.length) {
                    return r14;
                }
                Point2D point2D = point2DArr[i2];
                int i3 = C194491.f111359xb75a973b[lambda$null$1(i2).ordinal()];
                if (i3 == 1) {
                    r14.moveTo(point2D.getX(), point2D.getY());
                } else if (i3 == 2) {
                    r14.lineTo(point2D.getX(), point2D.getY());
                } else if (i3 == 3) {
                    Point2D[] point2DArr2 = this.pathPoints;
                    int i4 = i2 + 1;
                    Point2D point2D2 = point2DArr2[i4];
                    int i5 = i4 + 1;
                    Point2D point2D3 = point2DArr2[i5];
                    r14.curveTo(point2D.getX(), point2D.getY(), point2D2.getX(), point2D2.getY(), point2D3.getX(), point2D3.getY());
                    i2 = i5;
                }
                if (isPointClosed(i2)) {
                    r14.closePath();
                }
                i2++;
            }
        }
    }

    /* loaded from: classes12.dex */
    public enum EmfPlusPathPointType {
        START,
        LINE,
        UNUSED,
        BEZIER
    }
}
