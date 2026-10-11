package sun.awt;

import java.awt.AndroidGraphicsEnvironment;
import java.awt.AndroidToolkit;
import java.awt.GraphicsEnvironment;
import java.awt.Toolkit;

/* loaded from: classes16.dex */
public class PlatformGraphicsInfo {
    public static GraphicsEnvironment createGE() {
        return new AndroidGraphicsEnvironment();
    }

    public static Toolkit createToolkit() {
        return new AndroidToolkit();
    }

    public static String getDefaultHeadlessMessage() {
        return "\nThe application does not have desktop access,\nbut this program performed an operation which requires it.";
    }

    public static boolean getDefaultHeadlessProperty() {
        return false;
    }
}
