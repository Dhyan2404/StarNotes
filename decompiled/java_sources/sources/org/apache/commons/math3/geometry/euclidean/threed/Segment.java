package org.apache.commons.math3.geometry.euclidean.threed;

/* loaded from: classes12.dex */
public class Segment {

    /* renamed from: a */
    public final Vector3D f108286a;

    /* renamed from: b */
    public final Vector3D f108287b;

    /* renamed from: c */
    public final Line f108288c;

    public Segment(Vector3D vector3D, Vector3D vector3D2, Line line) {
        this.f108286a = vector3D;
        this.f108287b = vector3D2;
        this.f108288c = line;
    }

    public Vector3D getEnd() {
        return this.f108287b;
    }

    public Line getLine() {
        return this.f108288c;
    }

    public Vector3D getStart() {
        return this.f108286a;
    }
}
