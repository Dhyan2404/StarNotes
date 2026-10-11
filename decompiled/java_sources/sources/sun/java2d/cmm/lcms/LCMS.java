package sun.java2d.cmm.lcms;

import java.awt.color.CMMException;
import java.awt.color.ICC_Profile;
import java.security.AccessController;
import java.security.PrivilegedAction;
import sun.java2d.cmm.ColorTransform;
import sun.java2d.cmm.PCMM;
import sun.java2d.cmm.Profile;
import sun.java2d.cmm.lcms.LCMSProfile;

/* loaded from: classes16.dex */
public class LCMS implements PCMM {
    private static LCMS theLcms;

    private LCMS() {
    }

    public static void colorConvert(LCMSTransform lCMSTransform, LCMSImageLayout lCMSImageLayout, LCMSImageLayout lCMSImageLayout2) {
    }

    private static long createNativeTransform(long[] jArr, int i, int i2, boolean z, int i3, boolean z2, Object obj) {
        return 0L;
    }

    public static long createTransform(LCMSProfile[] lCMSProfileArr, int i, int i2, boolean z, int i3, boolean z2, Object obj) {
        long[] jArr = new long[lCMSProfileArr.length];
        for (int i4 = 0; i4 < lCMSProfileArr.length; i4++) {
            LCMSProfile lCMSProfile = lCMSProfileArr[i4];
            if (lCMSProfile != null) {
                jArr[i4] = lCMSProfile.getLcmsPtr();
            } else {
                throw new CMMException("Unknown profile ID");
            }
        }
        return createNativeTransform(jArr, i, i2, z, i3, z2, obj);
    }

    private LCMSProfile getLcmsProfile(Profile profile) {
        if (profile instanceof LCMSProfile) {
            return (LCMSProfile) profile;
        }
        throw new CMMException("Invalid profile: " + profile);
    }

    public static synchronized PCMM getModule() {
        synchronized (LCMS.class) {
            LCMS lcms = theLcms;
            if (lcms != null) {
                return lcms;
            }
            AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: sun.java2d.cmm.lcms.LCMS.1
                @Override // java.security.PrivilegedAction
                public Object run() {
                    return null;
                }
            });
            initLCMS(LCMSTransform.class, LCMSImageLayout.class, ICC_Profile.class);
            LCMS lcms2 = new LCMS();
            theLcms = lcms2;
            return lcms2;
        }
    }

    private void getProfileDataNative(long j, byte[] bArr) {
    }

    public static synchronized LCMSProfile getProfileID(ICC_Profile iCC_Profile) {
        synchronized (LCMS.class) {
        }
        return null;
    }

    private int getProfileSizeNative(long j) {
        return 0;
    }

    public static byte[] getTagNative(long j, int i) {
        return null;
    }

    public static void initLCMS(Class<?> cls, Class<?> cls2, Class<?> cls3) {
    }

    private static long loadProfileNative(byte[] bArr, Object obj) {
        return 0L;
    }

    private void setTagDataNative(long j, int i, byte[] bArr) {
    }

    @Override // sun.java2d.cmm.PCMM
    public void freeProfile(Profile profile) {
    }

    @Override // sun.java2d.cmm.PCMM
    public void getProfileData(Profile profile, byte[] bArr) {
        synchronized (profile) {
            getProfileDataNative(getLcmsProfile(profile).getLcmsPtr(), bArr);
        }
    }

    @Override // sun.java2d.cmm.PCMM
    public int getProfileSize(Profile profile) {
        int profileSizeNative;
        synchronized (profile) {
            profileSizeNative = getProfileSizeNative(getLcmsProfile(profile).getLcmsPtr());
        }
        return profileSizeNative;
    }

    @Override // sun.java2d.cmm.PCMM
    public void getTagData(Profile profile, int i, byte[] bArr) {
        LCMSProfile lcmsProfile = getLcmsProfile(profile);
        synchronized (lcmsProfile) {
            LCMSProfile.TagData tag = lcmsProfile.getTag(i);
            if (tag != null) {
                tag.copyDataTo(bArr);
            }
        }
    }

    @Override // sun.java2d.cmm.PCMM
    public int getTagSize(Profile profile, int i) {
        int size;
        LCMSProfile lcmsProfile = getLcmsProfile(profile);
        synchronized (lcmsProfile) {
            LCMSProfile.TagData tag = lcmsProfile.getTag(i);
            size = tag == null ? 0 : tag.getSize();
        }
        return size;
    }

    @Override // sun.java2d.cmm.PCMM
    public Profile loadProfile(byte[] bArr) {
        Object obj = new Object();
        long loadProfileNative = loadProfileNative(bArr, obj);
        if (loadProfileNative != 0) {
            return new LCMSProfile(loadProfileNative, obj);
        }
        return null;
    }

    @Override // sun.java2d.cmm.PCMM
    public synchronized void setTagData(Profile profile, int i, byte[] bArr) {
        LCMSProfile lcmsProfile = getLcmsProfile(profile);
        synchronized (lcmsProfile) {
            lcmsProfile.clearTagCache();
            setTagDataNative(lcmsProfile.getLcmsPtr(), i, bArr);
        }
    }

    @Override // sun.java2d.cmm.PCMM
    public ColorTransform createTransform(ICC_Profile iCC_Profile, int i, int i2) {
        return new LCMSTransform(iCC_Profile, i, i);
    }

    @Override // sun.java2d.cmm.PCMM
    public synchronized ColorTransform createTransform(ColorTransform[] colorTransformArr) {
        return new LCMSTransform(colorTransformArr);
    }
}
