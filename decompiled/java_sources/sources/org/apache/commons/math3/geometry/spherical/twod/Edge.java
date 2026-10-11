package org.apache.commons.math3.geometry.spherical.twod;

import java.util.List;
import org.apache.commons.math3.geometry.euclidean.threed.Vector3D;
import org.apache.commons.math3.geometry.spherical.oned.Arc;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class Edge {

    /* renamed from: a */
    public final Vertex f108432a;

    /* renamed from: b */
    public Vertex f108433b;

    /* renamed from: c */
    public final double f108434c;

    /* renamed from: d */
    public final Circle f108435d;

    public Edge(Vertex vertex, Vertex vertex2, double d, Circle circle) {
        this.f108432a = vertex;
        this.f108433b = vertex2;
        this.f108434c = d;
        this.f108435d = circle;
        vertex.m67807c(this);
        vertex2.m67806b(this);
    }

    /* renamed from: a */
    public final Vertex m67796a(Vertex vertex, Vertex vertex2, double d, List<Edge> list, Circle circle) {
        if (d <= this.f108435d.getTolerance()) {
            return vertex;
        }
        vertex2.m67805a(circle);
        list.add(new Edge(vertex, vertex2, d, this.f108435d));
        return vertex2;
    }

    /* renamed from: b */
    public void m67797b(Edge edge) {
        Vertex start = edge.getStart();
        this.f108433b = start;
        start.m67806b(this);
        this.f108433b.m67805a(getCircle());
    }

    /* renamed from: c */
    public void m67798c(Circle circle, List<Edge> list, List<Edge> list2) {
        double phase = this.f108435d.getPhase(this.f108432a.getLocation().getVector());
        Arc insideArc = this.f108435d.getInsideArc(circle);
        double normalizeAngle = MathUtils.normalizeAngle(insideArc.getInf(), 3.141592653589793d + phase) - phase;
        double size = normalizeAngle + insideArc.getSize();
        double d = size - 6.283185307179586d;
        double tolerance = this.f108435d.getTolerance();
        Vertex vertex = this.f108432a;
        if (d >= this.f108434c - tolerance) {
            list2.add(this);
            return;
        }
        if (d >= 0.0d) {
            vertex = m67796a(vertex, new Vertex(new S2Point(this.f108435d.getPointAt(phase + d))), d, list2, circle);
        } else {
            d = 0.0d;
        }
        double d2 = this.f108434c;
        if (normalizeAngle >= d2 - tolerance) {
            if (d >= 0.0d) {
                m67796a(vertex, this.f108433b, d2 - d, list, circle);
                return;
            } else {
                list.add(this);
                return;
            }
        }
        double d3 = phase + normalizeAngle;
        Vertex m67796a = m67796a(vertex, new Vertex(new S2Point(this.f108435d.getPointAt(d3))), normalizeAngle - d, list, circle);
        double d4 = this.f108434c;
        if (size >= d4 - tolerance) {
            m67796a(m67796a, this.f108433b, d4 - normalizeAngle, list2, circle);
        } else {
            m67796a(m67796a(m67796a, new Vertex(new S2Point(this.f108435d.getPointAt(d3))), normalizeAngle - normalizeAngle, list2, circle), this.f108433b, this.f108434c - normalizeAngle, list, circle);
        }
    }

    public Circle getCircle() {
        return this.f108435d;
    }

    public Vertex getEnd() {
        return this.f108433b;
    }

    public double getLength() {
        return this.f108434c;
    }

    public Vector3D getPointAt(double d) {
        Circle circle = this.f108435d;
        return circle.getPointAt(d + circle.getPhase(this.f108432a.getLocation().getVector()));
    }

    public Vertex getStart() {
        return this.f108432a;
    }
}
