package com.sunia.HTREnginev2;

import com.graphbuilder.curve.MultiPath;
import com.graphbuilder.curve.ShapeMultiPath;
import java.awt.geom.AffineTransform;
import java.awt.geom.PathIterator;

/* loaded from: classes4.dex */
public class dmm implements PathIterator {

    /* renamed from: a */
    public final int f68017a;

    /* renamed from: b */
    public final int f68018b;

    /* renamed from: c */
    public final AffineTransform f68019c;

    /* renamed from: d */
    public final ShapeMultiPath f68020d;

    /* renamed from: e */
    public final int f68021e;

    /* renamed from: f */
    public int f68022f = 0;

    public dmm(ShapeMultiPath shapeMultiPath, AffineTransform affineTransform) {
        this.f68020d = shapeMultiPath;
        int[] basisVectors = shapeMultiPath.getBasisVectors();
        this.f68017a = basisVectors[0];
        this.f68018b = basisVectors[1];
        this.f68019c = affineTransform;
        this.f68021e = shapeMultiPath.getWindingRule();
    }

    @Override // java.awt.geom.PathIterator
    public int currentSegment(float[] fArr) {
        double[] dArr = this.f68020d.get(this.f68022f);
        fArr[0] = (float) dArr[this.f68017a];
        fArr[1] = (float) dArr[this.f68018b];
        if (this.f68022f > 0 && dArr == this.f68020d.get(0)) {
            return 4;
        }
        AffineTransform affineTransform = this.f68019c;
        if (affineTransform != null) {
            affineTransform.transform(fArr, 0, fArr, 0, 1);
        }
        return this.f68020d.getType(this.f68022f) == MultiPath.MOVE_TO ? 0 : 1;
    }

    @Override // java.awt.geom.PathIterator
    public int getWindingRule() {
        return this.f68021e;
    }

    @Override // java.awt.geom.PathIterator
    public boolean isDone() {
        return this.f68022f >= this.f68020d.getNumPoints();
    }

    @Override // java.awt.geom.PathIterator
    public void next() {
        this.f68022f++;
    }

    @Override // java.awt.geom.PathIterator
    public int currentSegment(double[] dArr) {
        double[] dArr2 = this.f68020d.get(this.f68022f);
        dArr[0] = dArr2[this.f68017a];
        dArr[1] = dArr2[this.f68018b];
        if (this.f68022f > 0 && dArr2 == this.f68020d.get(0)) {
            return 4;
        }
        AffineTransform affineTransform = this.f68019c;
        if (affineTransform != null) {
            affineTransform.transform(dArr, 0, dArr, 0, 1);
        }
        return this.f68020d.getType(this.f68022f) == MultiPath.MOVE_TO ? 0 : 1;
    }
}
