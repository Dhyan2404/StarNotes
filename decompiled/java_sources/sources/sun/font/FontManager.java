package sun.font;

import java.awt.Font;
import java.awt.FontFormatException;
import java.io.File;

/* loaded from: classes16.dex */
public interface FontManager {
    public static final int LOGICAL_FALLBACK = 2;
    public static final int NO_FALLBACK = 0;
    public static final int PHYSICAL_FALLBACK = 1;

    Font2D createFont2D(File file, int i, boolean z, CreatedFontTracker createdFontTracker) throws FontFormatException;

    void deRegisterBadFont(Font2D font2D);

    Font2D findFont2D(String str, int i, int i2);

    Font2DHandle getNewComposite(String str, int i, Font2DHandle font2DHandle);

    void preferLocaleFonts();

    void preferProportionalFonts();

    boolean registerFont(Font font);

    boolean usingPerAppContextComposites();
}
