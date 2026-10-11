package com.sunia.HTREnginev2;

import java.util.Collection;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.geometry.euclidean.twod.Euclidean2D;
import org.apache.commons.math3.geometry.euclidean.twod.Vector2D;
import org.apache.commons.math3.geometry.euclidean.twod.hull.ConvexHull2D;
import org.apache.commons.math3.geometry.euclidean.twod.hull.ConvexHullGenerator2D;
import org.apache.commons.math3.geometry.hull.ConvexHull;
import org.apache.commons.math3.util.MathUtils;

/* renamed from: com.sunia.HTREnginev2.w2 */
/* loaded from: classes12.dex */
public abstract class AbstractC14583w2 implements ConvexHullGenerator2D {

    /* renamed from: c */
    public static final double f88150c = 1.0E-10d;

    /* renamed from: a */
    public final double f88151a;

    /* renamed from: b */
    public final boolean f88152b;

    public AbstractC14583w2(boolean z) {
        this(z, 1.0E-10d);
    }

    public abstract Collection<Vector2D> findHullVertices(Collection<Vector2D> collection);

    public double getTolerance() {
        return this.f88151a;
    }

    public boolean isIncludeCollinearPoints() {
        return this.f88152b;
    }

    public AbstractC14583w2(boolean z, double d) {
        this.f88152b = z;
        this.f88151a = d;
    }

    @Override // org.apache.commons.math3.geometry.hull.ConvexHullGenerator
    /* renamed from: generate, reason: merged with bridge method [inline-methods] */
    public ConvexHull<Euclidean2D, Vector2D> generate2(Collection<Vector2D> collection) throws NullArgumentException, ConvergenceException {
        MathUtils.checkNotNull(collection);
        if (collection.size() >= 2) {
            collection = findHullVertices(collection);
        }
        try {
            return new ConvexHull2D((Vector2D[]) collection.toArray(new Vector2D[collection.size()]), this.f88151a);
        } catch (MathIllegalArgumentException unused) {
            throw new ConvergenceException();
        }
    }
}
