package com.graphbuilder.geom;

/* loaded from: classes4.dex */
public class PointFactory {
    public static Point2d create(double d, double d2) {
        return new C6932a(d, d2);
    }

    /* renamed from: com.graphbuilder.geom.PointFactory$a */
    /* loaded from: classes4.dex */
    public static class C6932a implements Point2d {

        /* renamed from: a */
        public double[] f38854a;

        public C6932a(double d, double d2) {
            this.f38854a = new double[]{d, d2};
        }

        @Override // com.graphbuilder.curve.Point
        public double[] getLocation() {
            return this.f38854a;
        }

        @Override // com.graphbuilder.geom.Point2d
        public double getX() {
            return this.f38854a[0];
        }

        @Override // com.graphbuilder.geom.Point2d
        public double getY() {
            return this.f38854a[1];
        }

        @Override // com.graphbuilder.curve.Point
        public void setLocation(double[] dArr) {
            double[] dArr2 = this.f38854a;
            dArr2[0] = dArr[0];
            dArr2[1] = dArr[1];
        }

        @Override // com.graphbuilder.geom.Point2d
        public void setLocation(double d, double d2) {
            double[] dArr = this.f38854a;
            dArr[0] = d;
            dArr[1] = d2;
        }
    }
}
