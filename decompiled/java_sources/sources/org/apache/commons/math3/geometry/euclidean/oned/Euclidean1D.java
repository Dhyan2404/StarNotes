package org.apache.commons.math3.geometry.euclidean.oned;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Space;

/* loaded from: classes12.dex */
public class Euclidean1D implements Serializable, Space {
    private static final long serialVersionUID = -1178039568877797126L;

    /* loaded from: classes12.dex */
    public static class NoSubSpaceException extends MathUnsupportedOperationException {
        private static final long serialVersionUID = 20140225;

        public NoSubSpaceException() {
            super(LocalizedFormats.NOT_SUPPORTED_IN_DIMENSION_N, 1);
        }
    }

    /* renamed from: org.apache.commons.math3.geometry.euclidean.oned.Euclidean1D$b */
    /* loaded from: classes12.dex */
    public static class C19107b {

        /* renamed from: a */
        public static final Euclidean1D f108232a = new Euclidean1D();
    }

    public static Euclidean1D getInstance() {
        return C19107b.f108232a;
    }

    private Object readResolve() {
        return C19107b.f108232a;
    }

    @Override // org.apache.commons.math3.geometry.Space
    public int getDimension() {
        return 1;
    }

    @Override // org.apache.commons.math3.geometry.Space
    public Space getSubSpace() throws NoSubSpaceException {
        throw new NoSubSpaceException();
    }

    private Euclidean1D() {
    }
}
