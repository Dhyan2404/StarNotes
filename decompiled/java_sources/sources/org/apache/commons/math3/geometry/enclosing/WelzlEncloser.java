package org.apache.commons.math3.geometry.enclosing;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Space;

/* loaded from: classes12.dex */
public class WelzlEncloser<S extends Space, P extends Point<S>> implements Encloser<S, P> {

    /* renamed from: a */
    public final double f108230a;

    /* renamed from: b */
    public final SupportBallGenerator<S, P> f108231b;

    public WelzlEncloser(double d, SupportBallGenerator<S, P> supportBallGenerator) {
        this.f108230a = d;
        this.f108231b = supportBallGenerator;
    }

    /* renamed from: a */
    public final EnclosingBall<S, P> m67605a(List<P> list, int i, List<P> list2) {
        EnclosingBall<S, P> ballOnSupport = this.f108231b.ballOnSupport(list2);
        if (ballOnSupport.getSupportSize() <= ballOnSupport.getCenter().getSpace().getDimension()) {
            for (int i2 = 0; i2 < i; i2++) {
                P p = list.get(i2);
                if (!ballOnSupport.contains(p, this.f108230a)) {
                    list2.add(p);
                    ballOnSupport = m67605a(list, i2, list2);
                    list2.remove(list2.size() - 1);
                    for (int i3 = i2; i3 > 0; i3--) {
                        list.set(i3, list.get(i3 - 1));
                    }
                    list.set(0, p);
                }
            }
        }
        return ballOnSupport;
    }

    /* renamed from: b */
    public final EnclosingBall<S, P> m67606b(Iterable<P> iterable) {
        P next = iterable.iterator().next();
        List<P> arrayList = new ArrayList<>(next.getSpace().getDimension() + 1);
        List<P> arrayList2 = new ArrayList<>(next.getSpace().getDimension() + 1);
        arrayList.add(next);
        EnclosingBall enclosingBall = (EnclosingBall<S, P>) m67605a(arrayList, arrayList.size(), arrayList2);
        while (true) {
            P selectFarthest = selectFarthest(iterable, enclosingBall);
            if (enclosingBall.contains(selectFarthest, this.f108230a)) {
                return (EnclosingBall<S, P>) enclosingBall;
            }
            arrayList2.clear();
            arrayList2.add(selectFarthest);
            EnclosingBall m67605a = m67605a(arrayList, arrayList.size(), arrayList2);
            if (m67605a.getRadius() < enclosingBall.getRadius()) {
                throw new MathInternalError();
            }
            arrayList.add(0, selectFarthest);
            arrayList.subList(m67605a.getSupportSize(), arrayList.size()).clear();
            enclosingBall = (EnclosingBall<S, P>) m67605a;
        }
    }

    @Override // org.apache.commons.math3.geometry.enclosing.Encloser
    public EnclosingBall<S, P> enclose(Iterable<P> iterable) {
        return (iterable == null || !iterable.iterator().hasNext()) ? this.f108231b.ballOnSupport(new ArrayList()) : m67606b(iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public P selectFarthest(Iterable<P> iterable, EnclosingBall<S, P> enclosingBall) {
        P center = enclosingBall.getCenter();
        P p = null;
        double d = -1.0d;
        for (P p2 : iterable) {
            double distance = p2.distance(center);
            if (distance > d) {
                p = p2;
                d = distance;
            }
        }
        return p;
    }
}
