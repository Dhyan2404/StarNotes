package sun.font;

import java.awt.Font;
import java.awt.font.FontRenderContext;

/* loaded from: classes16.dex */
public abstract class TextSource {
    public static final boolean WITHOUT_CONTEXT = false;
    public static final boolean WITH_CONTEXT = true;

    public abstract int getBidiLevel();

    public abstract char[] getChars();

    public abstract int getContextLength();

    public abstract int getContextStart();

    public abstract CoreMetrics getCoreMetrics();

    public abstract FontRenderContext getFRC();

    public abstract Font getFont();

    public abstract int getLayoutFlags();

    public abstract int getLength();

    public abstract int getStart();

    public abstract TextSource getSubSource(int i, int i2, int i3);

    public abstract String toString(boolean z);
}
