package com.twelvemonkeys.imageio.color;

import com.sunia.HTREnginev2.lui;
import com.sunia.HTREnginev2.yri;
import com.twelvemonkeys.lang.SystemUtil;
import java.awt.color.ICC_Profile;

/* loaded from: classes10.dex */
public interface ICCProfileSanitizer {

    /* loaded from: classes10.dex */
    public static class Factory {
        /* renamed from: a */
        public static ICCProfileSanitizer m60444a() {
            String property = System.getProperty("sun.java2d.cmm");
            ICCProfileSanitizer yriVar = ("sun.java2d.cmm.kcms.KcmsServiceProvider".equals(property) && SystemUtil.isClassAvailable("sun.java2d.cmm.kcms.CMM")) ? new yri() : ("sun.java2d.cmm.lcms.LcmsServiceProvider".equals(property) && SystemUtil.isClassAvailable("sun.java2d.cmm.lcms.LCMS")) ? new lui() : (SystemUtil.isClassAvailable("java.util.stream.Stream") || (SystemUtil.isClassAvailable("java.lang.invoke.CallSite") && !SystemUtil.isClassAvailable("sun.java2d.cmm.kcms.CMM"))) ? new lui() : new yri();
            if (ColorSpaces.f94013a) {
                System.out.println("ICC ProfileCleaner instance: " + yriVar.getClass().getName());
            }
            return yriVar;
        }
    }

    /* renamed from: a */
    void mo55516a(ICC_Profile iCC_Profile, byte[] bArr);
}
