package org.apache.commons.math3.geometry.euclidean.twod.hull;

import com.sunia.HTREnginev2.AbstractC14583w2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.euclidean.twod.Euclidean2D;
import org.apache.commons.math3.geometry.euclidean.twod.Line;
import org.apache.commons.math3.geometry.euclidean.twod.Vector2D;
import org.apache.commons.math3.geometry.hull.ConvexHull;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public class MonotoneChain extends AbstractC14583w2 {

    /* renamed from: org.apache.commons.math3.geometry.euclidean.twod.hull.MonotoneChain$a */
    /* loaded from: classes12.dex */
    public class C19124a implements Comparator<Vector2D> {
        public C19124a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Vector2D vector2D, Vector2D vector2D2) {
            double tolerance = MonotoneChain.this.getTolerance();
            int compareTo = Precision.compareTo(vector2D.getX(), vector2D2.getX(), tolerance);
            return compareTo == 0 ? Precision.compareTo(vector2D.getY(), vector2D2.getY(), tolerance) : compareTo;
        }
    }

    public MonotoneChain() {
        this(false);
    }

    /* renamed from: a */
    public final void m67706a(Vector2D vector2D, List<Vector2D> list) {
        double tolerance = getTolerance();
        if (list.size() != 1 || list.get(0).distance((Vector<Euclidean2D>) vector2D) >= tolerance) {
            while (list.size() >= 2) {
                int size = list.size();
                Vector2D vector2D2 = list.get(size - 2);
                int i = size - 1;
                Vector2D vector2D3 = list.get(i);
                double offset = new Line(vector2D2, vector2D3, tolerance).getOffset((Vector<Euclidean2D>) vector2D);
                if (FastMath.abs(offset) >= tolerance) {
                    if (offset <= 0.0d) {
                        break;
                    } else {
                        list.remove(i);
                    }
                } else {
                    double distance = vector2D2.distance((Vector<Euclidean2D>) vector2D);
                    if (distance < tolerance || vector2D3.distance((Vector<Euclidean2D>) vector2D) < tolerance) {
                        return;
                    }
                    double distance2 = vector2D2.distance((Vector<Euclidean2D>) vector2D3);
                    if (isIncludeCollinearPoints()) {
                        if (distance < distance2) {
                            size = i;
                        }
                        list.add(size, vector2D);
                        return;
                    } else {
                        if (distance > distance2) {
                            list.remove(i);
                            list.add(vector2D);
                            return;
                        }
                        return;
                    }
                }
            }
            list.add(vector2D);
        }
    }

    @Override // com.sunia.HTREnginev2.AbstractC14583w2
    public Collection<Vector2D> findHullVertices(Collection<Vector2D> collection) {
        ArrayList arrayList = new ArrayList(collection);
        Collections.sort(arrayList, new C19124a());
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            m67706a((Vector2D) it2.next(), arrayList2);
        }
        ArrayList arrayList3 = new ArrayList();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            m67706a((Vector2D) arrayList.get(size), arrayList3);
        }
        ArrayList arrayList4 = new ArrayList((arrayList2.size() + arrayList3.size()) - 2);
        for (int i = 0; i < arrayList2.size() - 1; i++) {
            arrayList4.add(arrayList2.get(i));
        }
        for (int i2 = 0; i2 < arrayList3.size() - 1; i2++) {
            arrayList4.add(arrayList3.get(i2));
        }
        if (arrayList4.isEmpty() && !arrayList2.isEmpty()) {
            arrayList4.add(arrayList2.get(0));
        }
        return arrayList4;
    }

    @Override // com.sunia.HTREnginev2.AbstractC14583w2, org.apache.commons.math3.geometry.euclidean.twod.hull.ConvexHullGenerator2D, org.apache.commons.math3.geometry.hull.ConvexHullGenerator
    /* renamed from: generate */
    public /* bridge */ /* synthetic */ ConvexHull<Euclidean2D, Vector2D> generate2(Collection<Vector2D> collection) throws NullArgumentException, ConvergenceException {
        return super.generate2(collection);
    }

    @Override // com.sunia.HTREnginev2.AbstractC14583w2
    public /* bridge */ /* synthetic */ double getTolerance() {
        return super.getTolerance();
    }

    @Override // com.sunia.HTREnginev2.AbstractC14583w2
    public /* bridge */ /* synthetic */ boolean isIncludeCollinearPoints() {
        return super.isIncludeCollinearPoints();
    }

    public MonotoneChain(boolean z) {
        super(z);
    }

    public MonotoneChain(boolean z, double d) {
        super(z, d);
    }
}
