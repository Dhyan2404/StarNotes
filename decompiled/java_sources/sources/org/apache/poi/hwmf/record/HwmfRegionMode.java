package org.apache.poi.hwmf.record;

import java.awt.Shape;
import java.awt.geom.Area;
import java.util.function.BiFunction;
import org.apache.poi.hwmf.record.HwmfRegionMode;

/* loaded from: classes12.dex */
public enum HwmfRegionMode {
    RGN_AND(1, new BiFunction() { // from class: com.sunia.HTREnginev2.p9i
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            Shape andOp;
            andOp = HwmfRegionMode.andOp((Shape) obj, (Shape) obj2);
            return andOp;
        }
    }),
    RGN_OR(2, new BiFunction() { // from class: com.sunia.HTREnginev2.q9i
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            Shape orOp;
            orOp = HwmfRegionMode.orOp((Shape) obj, (Shape) obj2);
            return orOp;
        }
    }),
    RGN_XOR(3, new BiFunction() { // from class: com.sunia.HTREnginev2.r9i
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            Shape xorOp;
            xorOp = HwmfRegionMode.xorOp((Shape) obj, (Shape) obj2);
            return xorOp;
        }
    }),
    RGN_DIFF(4, new BiFunction() { // from class: com.sunia.HTREnginev2.s9i
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            Shape diffOp;
            diffOp = HwmfRegionMode.diffOp((Shape) obj, (Shape) obj2);
            return diffOp;
        }
    }),
    RGN_COPY(5, new BiFunction() { // from class: com.sunia.HTREnginev2.t9i
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            Shape copyOp;
            copyOp = HwmfRegionMode.copyOp((Shape) obj, (Shape) obj2);
            return copyOp;
        }
    }),
    RGN_COMPLEMENT(-1, new BiFunction() { // from class: com.sunia.HTREnginev2.u9i
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            Shape complementOp;
            complementOp = HwmfRegionMode.complementOp((Shape) obj, (Shape) obj2);
            return complementOp;
        }
    });

    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final int flag;

    /* renamed from: op */
    private final BiFunction<Shape, Shape, Shape> f111439op;

    HwmfRegionMode(int i, BiFunction biFunction) {
        this.flag = i;
        this.f111439op = biFunction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Shape andOp(Shape shape, Shape shape2) {
        if (shape2.getBounds2D().isEmpty()) {
            return shape;
        }
        if (shape == null) {
            return shape2;
        }
        Area area = new Area(shape);
        area.intersect(new Area(shape2));
        return area.getBounds2D().isEmpty() ? shape2 : area;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Shape complementOp(Shape shape, Shape shape2) {
        if (shape2.getBounds2D().isEmpty()) {
            return shape;
        }
        if (shape == null) {
            return shape2;
        }
        Area area = new Area(shape2);
        area.subtract(new Area(shape));
        return area;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Shape copyOp(Shape shape, Shape shape2) {
        if (shape2 == null || shape2.getBounds2D().isEmpty()) {
            return null;
        }
        return shape2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Shape diffOp(Shape shape, Shape shape2) {
        if (shape2.getBounds2D().isEmpty()) {
            return shape;
        }
        if (shape == null) {
            return shape2;
        }
        Area area = new Area(shape);
        area.subtract(new Area(shape2));
        return area;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Shape orOp(Shape shape, Shape shape2) {
        if (shape2.getBounds2D().isEmpty()) {
            return shape;
        }
        if (shape == null) {
            return shape2;
        }
        Area area = new Area(shape);
        area.add(new Area(shape2));
        return area;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Shape xorOp(Shape shape, Shape shape2) {
        if (shape2.getBounds2D().isEmpty()) {
            return shape;
        }
        if (shape == null) {
            return shape2;
        }
        Area area = new Area(shape);
        area.exclusiveOr(new Area(shape2));
        return area;
    }

    public Shape applyOp(Shape shape, Shape shape2) {
        return this.f111439op.apply(shape, shape2);
    }

    public int getFlag() {
        return this.flag;
    }

    public static HwmfRegionMode valueOf(int i) {
        for (HwmfRegionMode hwmfRegionMode : values()) {
            if (hwmfRegionMode.flag == i) {
                return hwmfRegionMode;
            }
        }
        return null;
    }
}
