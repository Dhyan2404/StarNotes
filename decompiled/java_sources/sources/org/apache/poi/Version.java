package org.apache.poi;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.processor.XSLProcessorVersion;

/* loaded from: classes12.dex */
public class Version {
    private static final String RELEASE_DATE = "20231227";
    private static final String VERSION_STRING = "6.0.1";

    public static String getImplementationLanguage() {
        return XSLProcessorVersion.LANGUAGE;
    }

    public static String getProduct() {
        return "POI";
    }

    public static String getReleaseDate() {
        return RELEASE_DATE;
    }

    public static String getVersion() {
        return VERSION_STRING;
    }

    public static void main(String[] strArr) {
        System.out.println("Apache " + getProduct() + " " + getVersion() + " (" + getReleaseDate() + MotionUtils.f31762d);
    }
}
