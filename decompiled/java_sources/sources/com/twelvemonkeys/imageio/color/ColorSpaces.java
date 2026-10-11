package com.twelvemonkeys.imageio.color;

import com.google.android.gms.common.Scopes;
import com.twelvemonkeys.imageio.color.ICCProfileSanitizer;
import com.twelvemonkeys.io.FileUtil;
import com.twelvemonkeys.lang.Platform;
import com.twelvemonkeys.lang.SystemUtil;
import com.twelvemonkeys.lang.Validate;
import com.twelvemonkeys.util.LRUHashMap;
import java.awt.color.ColorSpace;
import java.awt.color.ICC_ColorSpace;
import java.awt.color.ICC_Profile;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Map;
import java.util.Properties;

/* loaded from: classes10.dex */
public final class ColorSpaces {
    public static final int CS_ADOBE_RGB_1998 = 5000;
    public static final int CS_GENERIC_CMYK = 5001;

    /* renamed from: a */
    public static final boolean f94013a = "true".equalsIgnoreCase(System.getProperty("com.twelvemonkeys.imageio.color.debug"));

    /* renamed from: b */
    public static final ICCProfileSanitizer f94014b = ICCProfileSanitizer.Factory.m60444a();

    /* renamed from: c */
    public static WeakReference<ICC_Profile> f94015c = new WeakReference<>(null);

    /* renamed from: d */
    public static WeakReference<ICC_Profile> f94016d = new WeakReference<>(null);

    /* renamed from: e */
    public static final Map<C16944c, ICC_ColorSpace> f94017e = new LRUHashMap(10);

    /* renamed from: com.twelvemonkeys.imageio.color.ColorSpaces$a */
    /* loaded from: classes10.dex */
    public static class C16942a {

        /* renamed from: a */
        public static final byte[] f94018a = ICC_Profile.getInstance(1001).getData(1751474532);
    }

    /* renamed from: com.twelvemonkeys.imageio.color.ColorSpaces$b */
    /* loaded from: classes10.dex */
    public static class C16943b {

        /* renamed from: a */
        public static final byte[] f94019a = ICC_Profile.getInstance(1003).getData(1751474532);
    }

    /* renamed from: com.twelvemonkeys.imageio.color.ColorSpaces$c */
    /* loaded from: classes10.dex */
    public static final class C16944c {

        /* renamed from: a */
        public final byte[] f94020a;

        public C16944c(byte[] bArr) {
            this.f94020a = bArr;
        }

        public boolean equals(Object obj) {
            return (obj instanceof C16944c) && Arrays.equals(this.f94020a, ((C16944c) obj).f94020a);
        }

        public int hashCode() {
            return Arrays.hashCode(this.f94020a);
        }
    }

    /* renamed from: com.twelvemonkeys.imageio.color.ColorSpaces$d */
    /* loaded from: classes10.dex */
    public static class C16945d {

        /* renamed from: a */
        public static final byte[] f94021a = ICC_Profile.getInstance(1004).getData(1751474532);
    }

    /* renamed from: com.twelvemonkeys.imageio.color.ColorSpaces$e */
    /* loaded from: classes10.dex */
    public static class C16946e {

        /* renamed from: a */
        public static final byte[] f94022a = ICC_Profile.getInstance(1002).getData(1751474532);
    }

    /* renamed from: com.twelvemonkeys.imageio.color.ColorSpaces$f */
    /* loaded from: classes10.dex */
    public static class C16947f {

        /* renamed from: a */
        public static final Properties f94023a = m60442b();

        /* renamed from: a */
        public static String m60441a(String str) {
            return f94023a.getProperty(str);
        }

        /* renamed from: b */
        public static Properties m60442b() {
            Properties properties;
            try {
                properties = SystemUtil.loadProperties(ColorSpaces.class, "com/twelvemonkeys/imageio/color/icc_profiles_" + Platform.m60724os().m60725id());
            } catch (IOException | SecurityException e) {
                System.err.printf("Warning: Could not load system default ICC profile locations from %s, will use bundled fallback profiles.\n", e.getMessage());
                if (ColorSpaces.f94013a) {
                    e.printStackTrace();
                }
                properties = null;
            }
            Properties properties2 = new Properties(properties);
            try {
                properties2.putAll(SystemUtil.loadProperties(ColorSpaces.class, "com/twelvemonkeys/imageio/color/icc_profiles"));
            } catch (IOException | SecurityException unused) {
            }
            if (ColorSpaces.f94013a) {
                System.out.println("User ICC profiles: " + properties2);
                System.out.println("System ICC profiles : " + properties);
            }
            return properties2;
        }
    }

    /* renamed from: com.twelvemonkeys.imageio.color.ColorSpaces$g */
    /* loaded from: classes10.dex */
    public static class C16948g {

        /* renamed from: a */
        public static final byte[] f94024a = ICC_Profile.getInstance(1000).getData(1751474532);
    }

    /* renamed from: a */
    public static ICC_ColorSpace m60432a(ICC_Profile iCC_Profile, byte[] bArr) {
        ICC_ColorSpace iCC_ColorSpace;
        C16944c c16944c = new C16944c(bArr);
        Map<C16944c, ICC_ColorSpace> map = f94017e;
        synchronized (map) {
            iCC_ColorSpace = map.get(c16944c);
            if (iCC_ColorSpace == null) {
                iCC_ColorSpace = new ICC_ColorSpace(iCC_Profile);
                iCC_ColorSpace.fromRGB(new float[]{1.0f, 0.0f, 0.0f});
                map.put(c16944c, iCC_ColorSpace);
            }
        }
        return iCC_ColorSpace;
    }

    /* renamed from: b */
    public static ICC_ColorSpace m60433b(int i, byte[] bArr) {
        if (i == 5 && Arrays.equals(bArr, C16948g.f94024a)) {
            return (ICC_ColorSpace) ColorSpace.getInstance(1000);
        }
        if (i == 6 && Arrays.equals(bArr, C16943b.f94019a)) {
            return (ICC_ColorSpace) ColorSpace.getInstance(1003);
        }
        if (i == 13 && Arrays.equals(bArr, C16946e.f94022a)) {
            return (ICC_ColorSpace) ColorSpace.getInstance(1002);
        }
        if (i == 5 && Arrays.equals(bArr, C16945d.f94021a)) {
            return (ICC_ColorSpace) ColorSpace.getInstance(1004);
        }
        if (i == 0 && Arrays.equals(bArr, C16942a.f94018a)) {
            return (ICC_ColorSpace) ColorSpace.getInstance(1001);
        }
        return null;
    }

    /* renamed from: c */
    public static boolean m60434c(ICC_Profile iCC_Profile) {
        Validate.notNull(iCC_Profile, Scopes.PROFILE);
        return iCC_Profile.getData(1751474532)[64] != 0;
    }

    public static ICC_ColorSpace createColorSpace(ICC_Profile iCC_Profile) {
        Validate.notNull(iCC_Profile, Scopes.PROFILE);
        byte[] data = iCC_Profile.getData(1751474532);
        ICC_ColorSpace m60433b = m60433b(iCC_Profile.getColorSpaceType(), data);
        if (m60433b != null) {
            return m60433b;
        }
        if (data[64] != 0) {
            data[64] = 0;
            ICC_ColorSpace m60433b2 = m60433b(iCC_Profile.getColorSpaceType(), data);
            if (m60433b2 != null) {
                return m60433b2;
            }
            f94014b.mo55516a(iCC_Profile, data);
        } else {
            f94014b.mo55516a(iCC_Profile, null);
        }
        return m60432a(iCC_Profile, data);
    }

    /* renamed from: d */
    public static ICC_Profile m60435d(String str) {
        InputStream resourceAsStream = ColorSpaces.class.getResourceAsStream(str);
        if (resourceAsStream == null) {
            return null;
        }
        if (f94013a) {
            System.out.println("Loading profile from classpath resource: " + str);
        }
        try {
            return ICC_Profile.getInstance(resourceAsStream);
        } catch (IOException e) {
            if (f94013a) {
                e.printStackTrace();
            }
            return null;
        } finally {
            FileUtil.close(resourceAsStream);
        }
    }

    /* renamed from: e */
    public static ICC_Profile m60436e(String str) {
        if (str == null) {
            return null;
        }
        if (f94013a) {
            System.out.println("Loading profile from: " + str);
        }
        try {
            return ICC_Profile.getInstance(str);
        } catch (IOException | SecurityException e) {
            if (!f94013a) {
                return null;
            }
            e.printStackTrace();
            return null;
        }
    }

    public static ColorSpace getColorSpace(int i) {
        ICC_Profile iCC_Profile;
        if (i == 5000) {
            synchronized (ColorSpaces.class) {
                iCC_Profile = f94015c.get();
                if (iCC_Profile == null) {
                    iCC_Profile = m60436e(C16947f.m60441a("ADOBE_RGB_1998"));
                    if (iCC_Profile == null && (iCC_Profile = m60435d("/profiles/ClayRGB1998.icc")) == null) {
                        throw new IllegalStateException("Could not read AdobeRGB1998 profile");
                    }
                    f94015c = new WeakReference<>(iCC_Profile);
                }
            }
            return createColorSpace(iCC_Profile);
        }
        if (i != 5001) {
            return ColorSpace.getInstance(i);
        }
        synchronized (ColorSpaces.class) {
            ICC_Profile iCC_Profile2 = f94016d.get();
            if (iCC_Profile2 == null) {
                iCC_Profile2 = m60436e(C16947f.m60441a("GENERIC_CMYK"));
                if (iCC_Profile2 == null) {
                    if (f94013a) {
                        System.out.println("Using fallback profile");
                    }
                    return CMYKColorSpace.getInstance();
                }
                f94016d = new WeakReference<>(iCC_Profile2);
            }
            return createColorSpace(iCC_Profile2);
        }
    }

    public static boolean isCS_sRGB(ICC_Profile iCC_Profile) {
        Validate.notNull(iCC_Profile, Scopes.PROFILE);
        return iCC_Profile.getColorSpaceType() == 5 && Arrays.equals(iCC_Profile.getData(1751474532), C16948g.f94024a);
    }

    public static ICC_Profile validateProfile(ICC_Profile iCC_Profile) {
        createColorSpace(iCC_Profile);
        return iCC_Profile;
    }
}
