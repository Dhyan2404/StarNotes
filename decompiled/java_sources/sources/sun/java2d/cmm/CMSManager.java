package sun.java2d.cmm;

import com.google.android.material.motion.MotionUtils;
import java.awt.color.ColorSpace;
import java.awt.color.ICC_Profile;
import java.io.PrintStream;

/* loaded from: classes16.dex */
public class CMSManager {
    public static ColorSpace GRAYspace;
    public static ColorSpace LINEAR_RGBspace;
    private static PCMM cmmImpl;

    public static synchronized boolean canCreateModule() {
        boolean z;
        synchronized (CMSManager.class) {
            z = cmmImpl == null;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002f A[Catch: all -> 0x0060, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0003, B:9:0x0009, B:25:0x0018, B:13:0x002f, B:14:0x0034, B:16:0x003c, B:18:0x004b, B:19:0x0054, B:22:0x0058, B:23:0x005f), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003c A[Catch: all -> 0x0060, TryCatch #0 {, blocks: (B:4:0x0003, B:9:0x0009, B:25:0x0018, B:13:0x002f, B:14:0x0034, B:16:0x003c, B:18:0x004b, B:19:0x0054, B:22:0x0058, B:23:0x005f), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0058 A[Catch: all -> 0x0060, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0003, B:9:0x0009, B:25:0x0018, B:13:0x002f, B:14:0x0034, B:16:0x003c, B:18:0x004b, B:19:0x0054, B:22:0x0058, B:23:0x005f), top: B:3:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized sun.java2d.cmm.PCMM getModule() {
        /*
            java.lang.Class<sun.java2d.cmm.CMSManager> r0 = sun.java2d.cmm.CMSManager.class
            monitor-enter(r0)
            sun.java2d.cmm.PCMM r1 = sun.java2d.cmm.CMSManager.cmmImpl     // Catch: java.lang.Throwable -> L60
            if (r1 == 0) goto L9
            monitor-exit(r0)
            return r1
        L9:
            sun.security.action.GetPropertyAction r1 = new sun.security.action.GetPropertyAction     // Catch: java.lang.Throwable -> L60
            java.lang.String r2 = "sun.java2d.cmm"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L60
            java.lang.Object r1 = java.security.AccessController.doPrivileged(r1)     // Catch: java.lang.Throwable -> L60
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L60
            if (r1 == 0) goto L2c
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch: java.lang.ReflectiveOperationException -> L2c java.lang.Throwable -> L60
            r2 = 0
            java.lang.Class[] r3 = new java.lang.Class[r2]     // Catch: java.lang.ReflectiveOperationException -> L2c java.lang.Throwable -> L60
            java.lang.reflect.Constructor r1 = r1.getConstructor(r3)     // Catch: java.lang.ReflectiveOperationException -> L2c java.lang.Throwable -> L60
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.ReflectiveOperationException -> L2c java.lang.Throwable -> L60
            java.lang.Object r1 = r1.newInstance(r2)     // Catch: java.lang.ReflectiveOperationException -> L2c java.lang.Throwable -> L60
            sun.java2d.cmm.CMMServiceProvider r1 = (sun.java2d.cmm.CMMServiceProvider) r1     // Catch: java.lang.ReflectiveOperationException -> L2c java.lang.Throwable -> L60
            goto L2d
        L2c:
            r1 = 0
        L2d:
            if (r1 != 0) goto L34
            sun.java2d.cmm.lcms.LcmsServiceProvider r1 = new sun.java2d.cmm.lcms.LcmsServiceProvider     // Catch: java.lang.Throwable -> L60
            r1.<init>()     // Catch: java.lang.Throwable -> L60
        L34:
            sun.java2d.cmm.PCMM r1 = r1.getColorManagementModule()     // Catch: java.lang.Throwable -> L60
            sun.java2d.cmm.CMSManager.cmmImpl = r1     // Catch: java.lang.Throwable -> L60
            if (r1 == 0) goto L58
            sun.security.action.GetPropertyAction r1 = new sun.security.action.GetPropertyAction     // Catch: java.lang.Throwable -> L60
            java.lang.String r2 = "sun.java2d.cmm.trace"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L60
            java.lang.Object r1 = java.security.AccessController.doPrivileged(r1)     // Catch: java.lang.Throwable -> L60
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L60
            if (r1 == 0) goto L54
            sun.java2d.cmm.CMSManager$CMMTracer r1 = new sun.java2d.cmm.CMSManager$CMMTracer     // Catch: java.lang.Throwable -> L60
            sun.java2d.cmm.PCMM r2 = sun.java2d.cmm.CMSManager.cmmImpl     // Catch: java.lang.Throwable -> L60
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L60
            sun.java2d.cmm.CMSManager.cmmImpl = r1     // Catch: java.lang.Throwable -> L60
        L54:
            sun.java2d.cmm.PCMM r1 = sun.java2d.cmm.CMSManager.cmmImpl     // Catch: java.lang.Throwable -> L60
            monitor-exit(r0)
            return r1
        L58:
            java.awt.color.CMMException r1 = new java.awt.color.CMMException     // Catch: java.lang.Throwable -> L60
            java.lang.String r2 = "Cannot initialize Color Management System.No CM module found"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L60
            throw r1     // Catch: java.lang.Throwable -> L60
        L60:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.java2d.cmm.CMSManager.getModule():sun.java2d.cmm.PCMM");
    }

    /* loaded from: classes16.dex */
    public static class CMMTracer implements PCMM {
        String cName;
        PCMM tcmm;

        public CMMTracer(PCMM pcmm) {
            this.tcmm = pcmm;
            this.cName = pcmm.getClass().getName();
        }

        private static String signatureToString(int i) {
            return String.format("%c%c%c%c", Character.valueOf((char) ((i >> 24) & 255)), Character.valueOf((char) ((i >> 16) & 255)), Character.valueOf((char) ((i >> 8) & 255)), Character.valueOf((char) (i & 255)));
        }

        @Override // sun.java2d.cmm.PCMM
        public ColorTransform createTransform(ICC_Profile iCC_Profile, int i, int i2) {
            System.err.println(this.cName + ".createTransform(ICC_Profile,int,int)");
            return this.tcmm.createTransform(iCC_Profile, i, i2);
        }

        @Override // sun.java2d.cmm.PCMM
        public void freeProfile(Profile profile) {
            System.err.printf(this.cName + ".freeProfile(ID=%s)\n", profile.toString());
            this.tcmm.freeProfile(profile);
        }

        @Override // sun.java2d.cmm.PCMM
        public void getProfileData(Profile profile, byte[] bArr) {
            System.err.print(this.cName + ".getProfileData(ID=" + profile + ") ");
            System.err.println("requested " + bArr.length + " byte(s)");
            this.tcmm.getProfileData(profile, bArr);
        }

        @Override // sun.java2d.cmm.PCMM
        public int getProfileSize(Profile profile) {
            System.err.print(this.cName + ".getProfileSize(ID=" + profile + MotionUtils.f31762d);
            int profileSize = this.tcmm.getProfileSize(profile);
            System.err.println("=" + profileSize);
            return profileSize;
        }

        @Override // sun.java2d.cmm.PCMM
        public void getTagData(Profile profile, int i, byte[] bArr) {
            System.err.printf(this.cName + ".getTagData(ID=%x, TagSig=%s)", profile, signatureToString(i));
            System.err.println(" requested " + bArr.length + " byte(s)");
            this.tcmm.getTagData(profile, i, bArr);
        }

        @Override // sun.java2d.cmm.PCMM
        public int getTagSize(Profile profile, int i) {
            System.err.printf(this.cName + ".getTagSize(ID=%x, TagSig=%s)", profile, signatureToString(i));
            int tagSize = this.tcmm.getTagSize(profile, i);
            System.err.println("=" + tagSize);
            return tagSize;
        }

        @Override // sun.java2d.cmm.PCMM
        public Profile loadProfile(byte[] bArr) {
            System.err.print(this.cName + ".loadProfile");
            Profile loadProfile = this.tcmm.loadProfile(bArr);
            System.err.printf("(ID=%s)\n", loadProfile.toString());
            return loadProfile;
        }

        @Override // sun.java2d.cmm.PCMM
        public void setTagData(Profile profile, int i, byte[] bArr) {
            System.err.print(this.cName + ".setTagData(ID=" + profile + ", TagSig=" + i + MotionUtils.f31762d);
            PrintStream printStream = System.err;
            StringBuilder sb = new StringBuilder();
            sb.append(" sending ");
            sb.append(bArr.length);
            sb.append(" byte(s)");
            printStream.println(sb.toString());
            this.tcmm.setTagData(profile, i, bArr);
        }

        @Override // sun.java2d.cmm.PCMM
        public ColorTransform createTransform(ColorTransform[] colorTransformArr) {
            System.err.println(this.cName + ".createTransform(ColorTransform[])");
            return this.tcmm.createTransform(colorTransformArr);
        }
    }
}
