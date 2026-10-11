package org.apache.commons.math3.geometry.euclidean.threed;

import java.io.Serializable;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.euclidean.twod.Euclidean2D;

/* loaded from: classes12.dex */
public class Euclidean3D implements Serializable, Space {
    private static final long serialVersionUID = 6249091865814886817L;

    /* renamed from: org.apache.commons.math3.geometry.euclidean.threed.Euclidean3D$b */
    /* loaded from: classes12.dex */
    public static class C19110b {

        /* renamed from: a */
        public static final Euclidean3D f108244a = new Euclidean3D();
    }

    public static Euclidean3D getInstance() {
        return C19110b.f108244a;
    }

    private Object readResolve() {
        return C19110b.f108244a;
    }

    @Override // org.apache.commons.math3.geometry.Space
    public int getDimension() {
        return 3;
    }

    private Euclidean3D() {
    }

    @Override // org.apache.commons.math3.geometry.Space
    public Euclidean2D getSubSpace() {
        return Euclidean2D.getInstance();
    }
}
