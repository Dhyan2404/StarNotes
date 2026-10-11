package net.p110sf.saxon;

import net.p110sf.saxon.java.JavaPlatform;

/* loaded from: classes11.dex */
public final class Version {

    /* renamed from: a */
    public static final int f98867a = 11;

    /* renamed from: b */
    public static final int f98868b = 4;

    /* renamed from: c */
    public static final int f98869c = 72811;

    /* renamed from: d */
    public static final String f98870d = "2021-10-05";

    /* renamed from: e */
    public static final String f98871e = "2022-07-28";
    public static Platform platform = new JavaPlatform();
    public static String softwareEdition = "HE";

    public static String getMajorReleaseDate() {
        return f98870d;
    }

    public static String getProductName() {
        return "SAXON";
    }

    public static String getProductTitle() {
        return getProductName() + '-' + getSoftwarePlatform() + '-' + softwareEdition + ' ' + getProductVersion() + " from Saxonica";
    }

    public static String getProductVariantAndVersion(String str) {
        return str + " " + getProductVersion();
    }

    public static String getProductVendor() {
        return "Saxonica";
    }

    public static String getProductVersion() {
        return "11.4";
    }

    public static String getReleaseDate() {
        return f98871e;
    }

    public static String getSoftwarePlatform() {
        return "J";
    }

    public static int[] getStructuredVersionNumber() {
        return new int[]{11, 4, f98869c};
    }

    public static String getWebSiteAddress() {
        return "http://www.saxonica.com/";
    }

    public static void main(String[] strArr) {
        System.err.println(getProductTitle() + " (build " + f98869c + ')');
        if (strArr.length <= 0 || !strArr[0].equals("-resources")) {
            return;
        }
        platform.showEmbeddedResources();
    }
}
