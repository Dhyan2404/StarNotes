package org.apache.poi.hemf.record.emfplus;

import com.sunia.HTREnginev2.gon;
import java.awt.Shape;
import java.awt.geom.Area;
import java.awt.geom.Path2D;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hemf.draw.HemfDrawProperties;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hemf.record.emfplus.HemfPlusHeader;
import org.apache.poi.hemf.record.emfplus.HemfPlusObject;
import org.apache.poi.hemf.record.emfplus.HemfPlusPath;
import org.apache.poi.hemf.record.emfplus.HemfPlusRegion;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HemfPlusRegion {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    /* loaded from: classes12.dex */
    public static class EmfPlusRegion implements HemfPlusObject.EmfPlusObjectData {
        private final HemfPlusHeader.EmfPlusGraphicsVersion graphicsVersion = new HemfPlusHeader.EmfPlusGraphicsVersion();
        private EmfPlusRegionNodeData regionNode;

        /* JADX INFO: Access modifiers changed from: private */
        public void setRegionNode(EmfPlusRegionNodeData emfPlusRegionNodeData) {
            this.regionNode = emfPlusRegionNodeData;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public void applyObject(HemfGraphics hemfGraphics, List<? extends HemfPlusObject.EmfPlusObjectData> list) {
            HemfDrawProperties properties = hemfGraphics.getProperties();
            Shape shape = this.regionNode.getShape();
            properties.setPath(shape == null ? null : new Path2D.Double(shape));
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("graphicsVersion", new Supplier() { // from class: com.sunia.HTREnginev2.muh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusRegion.EmfPlusRegion.this.getGraphicsVersion();
                }
            }, "regionNode", new Supplier() { // from class: com.sunia.HTREnginev2.nuh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusRegion.EmfPlusRegion.this.getRegionNode();
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public HemfPlusHeader.EmfPlusGraphicsVersion getGraphicsVersion() {
            return this.graphicsVersion;
        }

        public EmfPlusRegionNodeData getRegionNode() {
            return this.regionNode;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public long init(LittleEndianInputStream littleEndianInputStream, long j, HemfPlusObject.EmfPlusObjectType emfPlusObjectType, int i) throws IOException {
            long init = this.graphicsVersion.init(littleEndianInputStream);
            littleEndianInputStream.readInt();
            return init + 4 + HemfPlusRegion.readNode(littleEndianInputStream, new Consumer() { // from class: com.sunia.HTREnginev2.ouh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfPlusRegion.EmfPlusRegion.this.setRegionNode((HemfPlusRegion.EmfPlusRegionNodeData) obj);
                }
            });
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public HemfPlusObject.EmfPlusObjectType getGenericRecordType() {
            return HemfPlusObject.EmfPlusObjectType.REGION;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusRegionEmpty implements EmfPlusRegionNodeData {
        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return null;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRegion.EmfPlusRegionNodeData
        public Shape getShape() {
            return new Rectangle2D.Double(0.0d, 0.0d, 0.0d, 0.0d);
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRegion.EmfPlusRegionNodeData
        public long init(LittleEndianInputStream littleEndianInputStream) throws IOException {
            return 0L;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public EmfPlusRegionNodeDataType getGenericRecordType() {
            return EmfPlusRegionNodeDataType.EMPTY;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusRegionInfinite implements EmfPlusRegionNodeData {
        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return null;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRegion.EmfPlusRegionNodeData
        public Shape getShape() {
            return null;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRegion.EmfPlusRegionNodeData
        public long init(LittleEndianInputStream littleEndianInputStream) throws IOException {
            return 0L;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public EmfPlusRegionNodeDataType getGenericRecordType() {
            return EmfPlusRegionNodeDataType.INFINITE;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusRegionNode implements EmfPlusRegionNodeData {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private EmfPlusRegionNodeData left;
        private EmfPlusRegionNodeDataType nodeType;
        private EmfPlusRegionNodeData right;

        /* JADX INFO: Access modifiers changed from: private */
        public void setLeft(EmfPlusRegionNodeData emfPlusRegionNodeData) {
            this.left = emfPlusRegionNodeData;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRight(EmfPlusRegionNodeData emfPlusRegionNodeData) {
            this.right = emfPlusRegionNodeData;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("nodeType", new Supplier() { // from class: com.sunia.HTREnginev2.ruh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusRegion.EmfPlusRegionNode.this.getNodeType();
                }
            }, "left", new Supplier() { // from class: com.sunia.HTREnginev2.suh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusRegion.EmfPlusRegionNode.this.getLeft();
                }
            }, gon.f71288n0, new Supplier() { // from class: com.sunia.HTREnginev2.tuh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusRegion.EmfPlusRegionNode.this.getRight();
                }
            });
        }

        public EmfPlusRegionNodeData getLeft() {
            return this.left;
        }

        public EmfPlusRegionNodeDataType getNodeType() {
            return this.nodeType;
        }

        public EmfPlusRegionNodeData getRight() {
            return this.right;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRegion.EmfPlusRegionNodeData
        public Shape getShape() {
            boolean z = this.nodeType == EmfPlusRegionNodeDataType.COMPLEMENT;
            Shape shape = (z ? this.right : this.left).getShape();
            Shape shape2 = (z ? this.left : this.right).getShape();
            if (shape == null) {
                return shape2;
            }
            if (shape2 == null) {
                return shape;
            }
            Area area = new Area(shape);
            this.nodeType.operation.accept(area, new Area(shape2));
            return area;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRegion.EmfPlusRegionNodeData
        public long init(LittleEndianInputStream littleEndianInputStream) throws IOException {
            return HemfPlusRegion.readNode(littleEndianInputStream, new Consumer() { // from class: com.sunia.HTREnginev2.puh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfPlusRegion.EmfPlusRegionNode.this.setLeft((HemfPlusRegion.EmfPlusRegionNodeData) obj);
                }
            }) + HemfPlusRegion.readNode(littleEndianInputStream, new Consumer() { // from class: com.sunia.HTREnginev2.quh
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HemfPlusRegion.EmfPlusRegionNode.this.setRight((HemfPlusRegion.EmfPlusRegionNodeData) obj);
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRegion.EmfPlusRegionNodeData
        public void setNodeType(EmfPlusRegionNodeDataType emfPlusRegionNodeDataType) {
            this.nodeType = emfPlusRegionNodeDataType;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public EmfPlusRegionNodeDataType getGenericRecordType() {
            return this.nodeType;
        }
    }

    /* loaded from: classes12.dex */
    public interface EmfPlusRegionNodeData extends GenericRecord {
        Shape getShape();

        long init(LittleEndianInputStream littleEndianInputStream) throws IOException;

        default void setNodeType(EmfPlusRegionNodeDataType emfPlusRegionNodeDataType) {
        }
    }

    /* loaded from: classes12.dex */
    public enum EmfPlusRegionNodeDataType {
        AND(1, new Supplier() { // from class: com.sunia.HTREnginev2.uuh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusRegion.EmfPlusRegionNode();
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zuh
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((Area) obj).intersect((Area) obj2);
            }
        }),
        OR(2, new Supplier() { // from class: com.sunia.HTREnginev2.uuh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusRegion.EmfPlusRegionNode();
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.avh
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((Area) obj).add((Area) obj2);
            }
        }),
        XOR(3, new Supplier() { // from class: com.sunia.HTREnginev2.uuh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusRegion.EmfPlusRegionNode();
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bvh
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((Area) obj).exclusiveOr((Area) obj2);
            }
        }),
        EXCLUDE(4, new Supplier() { // from class: com.sunia.HTREnginev2.uuh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusRegion.EmfPlusRegionNode();
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cvh
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((Area) obj).subtract((Area) obj2);
            }
        }),
        COMPLEMENT(5, new Supplier() { // from class: com.sunia.HTREnginev2.uuh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusRegion.EmfPlusRegionNode();
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cvh
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((Area) obj).subtract((Area) obj2);
            }
        }),
        RECT(268435456, new Supplier() { // from class: com.sunia.HTREnginev2.vuh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusRegion.EmfPlusRegionRect();
            }
        }, null),
        PATH(268435457, new Supplier() { // from class: com.sunia.HTREnginev2.wuh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusRegion.EmfPlusRegionPath();
            }
        }, null),
        EMPTY(268435458, new Supplier() { // from class: com.sunia.HTREnginev2.xuh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusRegion.EmfPlusRegionEmpty();
            }
        }, null),
        INFINITE(268435459, new Supplier() { // from class: com.sunia.HTREnginev2.yuh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusRegion.EmfPlusRegionInfinite();
            }
        }, null);

        public final Supplier<EmfPlusRegionNodeData> constructor;

        /* renamed from: id */
        public final int f111369id;
        public final BiConsumer<Area, Area> operation;

        EmfPlusRegionNodeDataType(int i, Supplier supplier, BiConsumer biConsumer) {
            this.f111369id = i;
            this.constructor = supplier;
            this.operation = biConsumer;
        }

        public static EmfPlusRegionNodeDataType valueOf(int i) {
            for (EmfPlusRegionNodeDataType emfPlusRegionNodeDataType : values()) {
                if (emfPlusRegionNodeDataType.f111369id == i) {
                    return emfPlusRegionNodeDataType;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusRegionPath extends HemfPlusPath.EmfPlusPath implements EmfPlusRegionNodeData {
        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRegion.EmfPlusRegionNodeData
        public Shape getShape() {
            return getPath();
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRegion.EmfPlusRegionNodeData
        public long init(LittleEndianInputStream littleEndianInputStream) throws IOException {
            return super.init(littleEndianInputStream, littleEndianInputStream.readInt(), HemfPlusObject.EmfPlusObjectType.PATH, 0) + 4;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusPath.EmfPlusPath, org.apache.poi.common.usermodel.GenericRecord
        public EmfPlusRegionNodeDataType getGenericRecordType() {
            return EmfPlusRegionNodeDataType.PATH;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusRegionRect implements EmfPlusRegionNodeData {
        private final Rectangle2D rect = new Rectangle2D.Double();

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return this.rect;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("rect", new Supplier() { // from class: com.sunia.HTREnginev2.dvh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfPlusRegion.EmfPlusRegionRect.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRegion.EmfPlusRegionNodeData
        public Shape getShape() {
            return this.rect;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRegion.EmfPlusRegionNodeData
        public long init(LittleEndianInputStream littleEndianInputStream) {
            return HemfPlusDraw.readRectF(littleEndianInputStream, this.rect);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public EmfPlusRegionNodeDataType getGenericRecordType() {
            return EmfPlusRegionNodeDataType.RECT;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long readNode(LittleEndianInputStream littleEndianInputStream, Consumer<EmfPlusRegionNodeData> consumer) throws IOException {
        EmfPlusRegionNodeDataType valueOf = EmfPlusRegionNodeDataType.valueOf(littleEndianInputStream.readInt());
        EmfPlusRegionNodeData emfPlusRegionNodeData = valueOf.constructor.get();
        consumer.accept(emfPlusRegionNodeData);
        emfPlusRegionNodeData.setNodeType(valueOf);
        return emfPlusRegionNodeData.init(littleEndianInputStream) + 4;
    }
}
