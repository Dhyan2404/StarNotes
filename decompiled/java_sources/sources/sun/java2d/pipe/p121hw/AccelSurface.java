package sun.java2d.pipe.p121hw;

import java.awt.Rectangle;
import sun.java2d.Surface;

/* loaded from: classes16.dex */
public interface AccelSurface extends BufferedContextProvider, Surface {
    public static final int FLIP_BACKBUFFER = 4;
    public static final int RT_PLAIN = 2;
    public static final int RT_TEXTURE = 5;
    public static final int TEXTURE = 3;
    public static final int UNDEFINED = 0;
    public static final int WINDOW = 1;

    Rectangle getBounds();

    Rectangle getNativeBounds();

    long getNativeOps();

    long getNativeResource(int i);

    int getType();

    boolean isSurfaceLost();

    boolean isValid();

    void markDirty();
}
