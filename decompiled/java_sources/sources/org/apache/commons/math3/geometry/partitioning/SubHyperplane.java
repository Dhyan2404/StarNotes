package org.apache.commons.math3.geometry.partitioning;

import org.apache.commons.math3.geometry.Space;

/* loaded from: classes12.dex */
public interface SubHyperplane<S extends Space> {

    /* loaded from: classes12.dex */
    public static class SplitSubHyperplane<U extends Space> {

        /* renamed from: a */
        public final SubHyperplane<U> f108378a;

        /* renamed from: b */
        public final SubHyperplane<U> f108379b;

        public SplitSubHyperplane(SubHyperplane<U> subHyperplane, SubHyperplane<U> subHyperplane2) {
            this.f108378a = subHyperplane;
            this.f108379b = subHyperplane2;
        }

        public SubHyperplane<U> getMinus() {
            return this.f108379b;
        }

        public SubHyperplane<U> getPlus() {
            return this.f108378a;
        }

        public Side getSide() {
            SubHyperplane<U> subHyperplane = this.f108378a;
            if (subHyperplane == null || subHyperplane.isEmpty()) {
                SubHyperplane<U> subHyperplane2 = this.f108379b;
                return (subHyperplane2 == null || subHyperplane2.isEmpty()) ? Side.HYPER : Side.MINUS;
            }
            SubHyperplane<U> subHyperplane3 = this.f108379b;
            return (subHyperplane3 == null || subHyperplane3.isEmpty()) ? Side.PLUS : Side.BOTH;
        }
    }

    SubHyperplane<S> copySelf();

    Hyperplane<S> getHyperplane();

    double getSize();

    boolean isEmpty();

    SubHyperplane<S> reunite(SubHyperplane<S> subHyperplane);

    @Deprecated
    Side side(Hyperplane<S> hyperplane);

    SplitSubHyperplane<S> split(Hyperplane<S> hyperplane);
}
