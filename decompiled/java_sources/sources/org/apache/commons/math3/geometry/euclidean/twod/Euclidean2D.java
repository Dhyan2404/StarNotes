package org.apache.commons.math3.geometry.euclidean.twod;

import java.io.Serializable;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.euclidean.oned.Euclidean1D;

/* loaded from: classes12.dex */
public class Euclidean2D implements Serializable, Space {
    private static final long serialVersionUID = 4793432849757649566L;

    /* renamed from: org.apache.commons.math3.geometry.euclidean.twod.Euclidean2D$b */
    /* loaded from: classes12.dex */
    public static class C19116b {

        /* renamed from: a */
        public static final Euclidean2D f108300a = new Euclidean2D();
    }

    public static Euclidean2D getInstance() {
        return C19116b.f108300a;
    }

    private Object readResolve() {
        return C19116b.f108300a;
    }

    @Override // org.apache.commons.math3.geometry.Space
    public int getDimension() {
        return 2;
    }

    private Euclidean2D() {
    }

    @Override // org.apache.commons.math3.geometry.Space
    public Euclidean1D getSubSpace() {
        return Euclidean1D.getInstance();
    }
}
