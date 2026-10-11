package sun.font;

import java.awt.Font;

/* loaded from: classes16.dex */
public abstract class FontAccess {
    private static FontAccess access;

    public static synchronized FontAccess getFontAccess() {
        FontAccess fontAccess;
        synchronized (FontAccess.class) {
            fontAccess = access;
        }
        return fontAccess;
    }

    public static synchronized void setFontAccess(FontAccess fontAccess) {
        synchronized (FontAccess.class) {
            if (access != null) {
                throw new InternalError("Attempt to set FontAccessor twice");
            }
            access = fontAccess;
        }
    }

    public abstract Font2D getFont2D(Font font);

    public abstract boolean isCreatedFont(Font font);

    public abstract void setCreatedFont(Font font);

    public abstract void setFont2D(Font font, Font2DHandle font2DHandle);
}
