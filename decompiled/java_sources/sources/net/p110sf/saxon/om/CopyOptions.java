package net.p110sf.saxon.om;

/* loaded from: classes11.dex */
public abstract class CopyOptions {
    public static final int ALL_NAMESPACES = 2;
    public static final int FOR_UPDATE = 8;
    public static final int TYPE_ANNOTATIONS = 4;

    public static int getStartDocumentProperties(int i) {
        return includes(i, 8) ? 32768 : 0;
    }

    public static boolean includes(int i, int i2) {
        return (i & i2) == i2;
    }
}
