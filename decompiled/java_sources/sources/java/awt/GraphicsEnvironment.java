package java.awt;

import java.awt.GraphicsEnvironment;
import java.awt.image.BufferedImage;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Locale;
import sun.awt.PlatformGraphicsInfo;
import sun.font.FontManagerFactory;

/* loaded from: classes4.dex */
public abstract class GraphicsEnvironment {
    private static Boolean defaultHeadless;
    private static Boolean headless;

    /* loaded from: classes4.dex */
    public static final class LocalGE {
        static final GraphicsEnvironment INSTANCE = createGE();

        private LocalGE() {
        }

        private static GraphicsEnvironment createGE() {
            GraphicsEnvironment createGE = PlatformGraphicsInfo.createGE();
            GraphicsEnvironment.isHeadless();
            return createGE;
        }
    }

    public static void checkHeadless() throws HeadlessException {
        if (isHeadless()) {
            throw new HeadlessException();
        }
    }

    public static String getHeadlessMessage() {
        if (headless == null) {
            getHeadlessProperty();
        }
        if (defaultHeadless != Boolean.TRUE) {
            return null;
        }
        return PlatformGraphicsInfo.getDefaultHeadlessMessage();
    }

    private static boolean getHeadlessProperty() {
        if (headless == null) {
            AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sunia.HTREnginev2.z4h
                @Override // java.security.PrivilegedAction
                public final Object run() {
                    Void lambda$getHeadlessProperty$0;
                    lambda$getHeadlessProperty$0 = GraphicsEnvironment.lambda$getHeadlessProperty$0();
                    return lambda$getHeadlessProperty$0;
                }
            });
        }
        return headless.booleanValue();
    }

    public static GraphicsEnvironment getLocalGraphicsEnvironment() {
        return LocalGE.INSTANCE;
    }

    public static boolean isHeadless() {
        return getHeadlessProperty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Void lambda$getHeadlessProperty$0() {
        String property = System.getProperty("java.awt.headless");
        if (property != null) {
            headless = Boolean.valueOf(property);
            return null;
        }
        Boolean valueOf = Boolean.valueOf(PlatformGraphicsInfo.getDefaultHeadlessProperty());
        defaultHeadless = valueOf;
        headless = valueOf;
        return null;
    }

    public abstract Graphics2D createGraphics(BufferedImage bufferedImage);

    public abstract Font[] getAllFonts();

    public abstract String[] getAvailableFontFamilyNames();

    public abstract String[] getAvailableFontFamilyNames(Locale locale);

    public Point getCenterPoint() throws HeadlessException {
        Rectangle usableBounds = AndroidGraphicsEnvironment.getUsableBounds(getDefaultScreenDevice());
        return new Point((usableBounds.width / 2) + usableBounds.f97732x, (usableBounds.height / 2) + usableBounds.f97733y);
    }

    public abstract GraphicsDevice getDefaultScreenDevice() throws HeadlessException;

    public Rectangle getMaximumWindowBounds() throws HeadlessException {
        return AndroidGraphicsEnvironment.getUsableBounds(getDefaultScreenDevice());
    }

    public abstract GraphicsDevice[] getScreenDevices() throws HeadlessException;

    public boolean isHeadlessInstance() {
        return getHeadlessProperty();
    }

    public void preferLocaleFonts() {
        FontManagerFactory.getInstance().preferLocaleFonts();
    }

    public void preferProportionalFonts() {
        FontManagerFactory.getInstance().preferProportionalFonts();
    }

    public boolean registerFont(Font font) {
        if (font != null) {
            return FontManagerFactory.getInstance().registerFont(font);
        }
        throw new NullPointerException("font cannot be null.");
    }
}
