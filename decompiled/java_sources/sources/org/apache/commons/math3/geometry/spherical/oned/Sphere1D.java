package org.apache.commons.math3.geometry.spherical.oned;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Space;

/* loaded from: classes12.dex */
public class Sphere1D implements Serializable, Space {
    private static final long serialVersionUID = 20131218;

    /* loaded from: classes12.dex */
    public static class NoSubSpaceException extends MathUnsupportedOperationException {
        private static final long serialVersionUID = 20140225;

        public NoSubSpaceException() {
            super(LocalizedFormats.NOT_SUPPORTED_IN_DIMENSION_N, 1);
        }
    }

    /* renamed from: org.apache.commons.math3.geometry.spherical.oned.Sphere1D$b */
    /* loaded from: classes12.dex */
    public static class C19146b {

        /* renamed from: a */
        public static final Sphere1D f108426a = new Sphere1D();
    }

    public static Sphere1D getInstance() {
        return C19146b.f108426a;
    }

    private Object readResolve() {
        return C19146b.f108426a;
    }

    @Override // org.apache.commons.math3.geometry.Space
    public int getDimension() {
        return 1;
    }

    @Override // org.apache.commons.math3.geometry.Space
    public Space getSubSpace() throws NoSubSpaceException {
        throw new NoSubSpaceException();
    }

    private Sphere1D() {
    }
}
