package org.apache.commons.math3.geometry.euclidean.threed;

/* loaded from: classes12.dex */
public final class RotationOrder {
    public static final RotationOrder XYX;
    public static final RotationOrder XYZ;
    public static final RotationOrder XZX;
    public static final RotationOrder XZY;
    public static final RotationOrder YXY;
    public static final RotationOrder YXZ;
    public static final RotationOrder YZX;
    public static final RotationOrder YZY;
    public static final RotationOrder ZXY;
    public static final RotationOrder ZXZ;
    public static final RotationOrder ZYX;
    public static final RotationOrder ZYZ;

    /* renamed from: a */
    public final String f108282a;

    /* renamed from: b */
    public final Vector3D f108283b;

    /* renamed from: c */
    public final Vector3D f108284c;

    /* renamed from: d */
    public final Vector3D f108285d;

    static {
        Vector3D vector3D = Vector3D.PLUS_I;
        Vector3D vector3D2 = Vector3D.PLUS_J;
        Vector3D vector3D3 = Vector3D.PLUS_K;
        XYZ = new RotationOrder("XYZ", vector3D, vector3D2, vector3D3);
        XZY = new RotationOrder("XZY", vector3D, vector3D3, vector3D2);
        YXZ = new RotationOrder("YXZ", vector3D2, vector3D, vector3D3);
        YZX = new RotationOrder("YZX", vector3D2, vector3D3, vector3D);
        ZXY = new RotationOrder("ZXY", vector3D3, vector3D, vector3D2);
        ZYX = new RotationOrder("ZYX", vector3D3, vector3D2, vector3D);
        XYX = new RotationOrder("XYX", vector3D, vector3D2, vector3D);
        XZX = new RotationOrder("XZX", vector3D, vector3D3, vector3D);
        YXY = new RotationOrder("YXY", vector3D2, vector3D, vector3D2);
        YZY = new RotationOrder("YZY", vector3D2, vector3D3, vector3D2);
        ZXZ = new RotationOrder("ZXZ", vector3D3, vector3D, vector3D3);
        ZYZ = new RotationOrder("ZYZ", vector3D3, vector3D2, vector3D3);
    }

    public RotationOrder(String str, Vector3D vector3D, Vector3D vector3D2, Vector3D vector3D3) {
        this.f108282a = str;
        this.f108283b = vector3D;
        this.f108284c = vector3D2;
        this.f108285d = vector3D3;
    }

    public Vector3D getA1() {
        return this.f108283b;
    }

    public Vector3D getA2() {
        return this.f108284c;
    }

    public Vector3D getA3() {
        return this.f108285d;
    }

    public String toString() {
        return this.f108282a;
    }
}
