package org.apache.commons.math3.geometry.spherical.twod;

import java.io.Serializable;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.spherical.oned.Sphere1D;

/* loaded from: classes12.dex */
public class Sphere2D implements Serializable, Space {
    private static final long serialVersionUID = 20131218;

    /* renamed from: org.apache.commons.math3.geometry.spherical.twod.Sphere2D$b */
    /* loaded from: classes12.dex */
    public static class C19150b {

        /* renamed from: a */
        public static final Sphere2D f108436a = new Sphere2D();
    }

    public static Sphere2D getInstance() {
        return C19150b.f108436a;
    }

    private Object readResolve() {
        return C19150b.f108436a;
    }

    @Override // org.apache.commons.math3.geometry.Space
    public int getDimension() {
        return 2;
    }

    private Sphere2D() {
    }

    @Override // org.apache.commons.math3.geometry.Space
    public Sphere1D getSubSpace() {
        return Sphere1D.getInstance();
    }
}
