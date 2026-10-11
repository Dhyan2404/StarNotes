package org.apache.commons.math3.geometry.spherical.twod;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes12.dex */
public class Vertex {

    /* renamed from: a */
    public final S2Point f108438a;

    /* renamed from: b */
    public Edge f108439b = null;

    /* renamed from: c */
    public Edge f108440c = null;

    /* renamed from: d */
    public final List<Circle> f108441d = new ArrayList();

    public Vertex(S2Point s2Point) {
        this.f108438a = s2Point;
    }

    /* renamed from: a */
    public void m67805a(Circle circle) {
        this.f108441d.add(circle);
    }

    /* renamed from: b */
    public void m67806b(Edge edge) {
        this.f108439b = edge;
        m67805a(edge.getCircle());
    }

    /* renamed from: c */
    public void m67807c(Edge edge) {
        this.f108440c = edge;
        m67805a(edge.getCircle());
    }

    /* renamed from: d */
    public Circle m67808d(Vertex vertex) {
        for (Circle circle : this.f108441d) {
            Iterator<Circle> it2 = vertex.f108441d.iterator();
            while (it2.hasNext()) {
                if (circle == it2.next()) {
                    return circle;
                }
            }
        }
        return null;
    }

    public Edge getIncoming() {
        return this.f108439b;
    }

    public S2Point getLocation() {
        return this.f108438a;
    }

    public Edge getOutgoing() {
        return this.f108440c;
    }
}
