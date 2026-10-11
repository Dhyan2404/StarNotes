package java.awt.color;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamException;
import java.io.OutputStream;
import java.io.Serializable;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.StringTokenizer;
import org.apache.commons.lang3.SystemUtils;
import sun.java2d.cmm.CMSManager;
import sun.java2d.cmm.PCMM;
import sun.java2d.cmm.Profile;
import sun.java2d.cmm.ProfileActivator;
import sun.java2d.cmm.ProfileDataVerifier;
import sun.java2d.cmm.ProfileDeferralInfo;
import sun.java2d.cmm.ProfileDeferralMgr;

/* loaded from: classes4.dex */
public class ICC_Profile implements Serializable {
    public static final int CLASS_ABSTRACT = 5;
    public static final int CLASS_COLORSPACECONVERSION = 4;
    public static final int CLASS_DEVICELINK = 3;
    public static final int CLASS_DISPLAY = 1;
    public static final int CLASS_INPUT = 0;
    public static final int CLASS_NAMEDCOLOR = 6;
    public static final int CLASS_OUTPUT = 2;
    private static ICC_Profile GRAYprofile = null;
    private static ICC_Profile LINEAR_RGBprofile = null;
    private static ICC_Profile PYCCprofile = null;
    private static ICC_Profile XYZprofile = null;
    public static final int icAbsoluteColorimetric = 3;
    public static final int icCurveCount = 8;
    public static final int icCurveData = 12;
    public static final int icHdrAttributes = 56;
    public static final int icHdrCmmId = 4;
    public static final int icHdrColorSpace = 16;
    public static final int icHdrCreator = 80;
    public static final int icHdrDate = 24;
    public static final int icHdrDeviceClass = 12;
    public static final int icHdrFlags = 44;
    public static final int icHdrIlluminant = 68;
    public static final int icHdrMagic = 36;
    public static final int icHdrManufacturer = 48;
    public static final int icHdrModel = 52;
    public static final int icHdrPcs = 20;
    public static final int icHdrPlatform = 40;
    public static final int icHdrProfileID = 84;
    public static final int icHdrRenderingIntent = 64;
    public static final int icHdrSize = 0;
    public static final int icHdrVersion = 8;
    public static final int icICCAbsoluteColorimetric = 3;
    public static final int icMediaRelativeColorimetric = 1;
    public static final int icPerceptual = 0;
    public static final int icRelativeColorimetric = 1;
    public static final int icSaturation = 2;
    public static final int icSigAToB0Tag = 1093812784;
    public static final int icSigAToB1Tag = 1093812785;
    public static final int icSigAToB2Tag = 1093812786;
    public static final int icSigAbstractClass = 1633842036;
    public static final int icSigBToA0Tag = 1110589744;
    public static final int icSigBToA1Tag = 1110589745;
    public static final int icSigBToA2Tag = 1110589746;
    public static final int icSigBlueColorantTag = 1649957210;
    public static final int icSigBlueMatrixColumnTag = 1649957210;
    public static final int icSigBlueTRCTag = 1649693251;
    public static final int icSigCalibrationDateTimeTag = 1667329140;
    public static final int icSigCharTargetTag = 1952543335;
    public static final int icSigChromaticAdaptationTag = 1667785060;
    public static final int icSigChromaticityTag = 1667789421;
    public static final int icSigCmyData = 1129142560;
    public static final int icSigCmykData = 1129142603;
    public static final int icSigColorSpaceClass = 1936744803;
    public static final int icSigColorantOrderTag = 1668051567;
    public static final int icSigColorantTableTag = 1668051572;
    public static final int icSigCopyrightTag = 1668313716;
    public static final int icSigCrdInfoTag = 1668441193;
    public static final int icSigDeviceMfgDescTag = 1684893284;
    public static final int icSigDeviceModelDescTag = 1684890724;
    public static final int icSigDeviceSettingsTag = 1684371059;
    public static final int icSigDisplayClass = 1835955314;
    public static final int icSigGamutTag = 1734438260;
    public static final int icSigGrayData = 1196573017;
    public static final int icSigGrayTRCTag = 1800688195;
    public static final int icSigGreenColorantTag = 1733843290;
    public static final int icSigGreenMatrixColumnTag = 1733843290;
    public static final int icSigGreenTRCTag = 1733579331;
    public static final int icSigHead = 1751474532;
    public static final int icSigHlsData = 1212961568;
    public static final int icSigHsvData = 1213421088;
    public static final int icSigInputClass = 1935896178;
    public static final int icSigLabData = 1281450528;
    public static final int icSigLinkClass = 1818848875;
    public static final int icSigLuminanceTag = 1819635049;
    public static final int icSigLuvData = 1282766368;
    public static final int icSigMeasurementTag = 1835360627;
    public static final int icSigMediaBlackPointTag = 1651208308;
    public static final int icSigMediaWhitePointTag = 2004119668;
    public static final int icSigNamedColor2Tag = 1852009522;
    public static final int icSigNamedColorClass = 1852662636;
    public static final int icSigOutputClass = 1886549106;
    public static final int icSigOutputResponseTag = 1919251312;
    public static final int icSigPreview0Tag = 1886545200;
    public static final int icSigPreview1Tag = 1886545201;
    public static final int icSigPreview2Tag = 1886545202;
    public static final int icSigProfileDescriptionTag = 1684370275;
    public static final int icSigProfileSequenceDescTag = 1886610801;
    public static final int icSigPs2CRD0Tag = 1886610480;
    public static final int icSigPs2CRD1Tag = 1886610481;
    public static final int icSigPs2CRD2Tag = 1886610482;
    public static final int icSigPs2CRD3Tag = 1886610483;
    public static final int icSigPs2CSATag = 1886597747;
    public static final int icSigPs2RenderingIntentTag = 1886597737;
    public static final int icSigRedColorantTag = 1918392666;
    public static final int icSigRedMatrixColumnTag = 1918392666;
    public static final int icSigRedTRCTag = 1918128707;
    public static final int icSigRgbData = 1380401696;
    public static final int icSigScreeningDescTag = 1935897188;
    public static final int icSigScreeningTag = 1935897198;
    public static final int icSigSpace2CLR = 843271250;
    public static final int icSigSpace3CLR = 860048466;
    public static final int icSigSpace4CLR = 876825682;
    public static final int icSigSpace5CLR = 893602898;
    public static final int icSigSpace6CLR = 910380114;
    public static final int icSigSpace7CLR = 927157330;
    public static final int icSigSpace8CLR = 943934546;
    public static final int icSigSpace9CLR = 960711762;
    public static final int icSigSpaceACLR = 1094929490;
    public static final int icSigSpaceBCLR = 1111706706;
    public static final int icSigSpaceCCLR = 1128483922;
    public static final int icSigSpaceDCLR = 1145261138;
    public static final int icSigSpaceECLR = 1162038354;
    public static final int icSigSpaceFCLR = 1178815570;
    public static final int icSigTechnologyTag = 1952801640;
    public static final int icSigUcrBgTag = 1650877472;
    public static final int icSigViewingCondDescTag = 1987405156;
    public static final int icSigViewingConditionsTag = 1986618743;
    public static final int icSigXYZData = 1482250784;
    public static final int icSigYCbCrData = 1497588338;
    public static final int icSigYxyData = 1501067552;
    public static final int icTagReserved = 4;
    public static final int icTagType = 0;
    public static final int icXYZNumberX = 8;
    private static ICC_Profile sRGBprofile = null;
    private static final long serialVersionUID = -3938515861990936766L;
    private transient Profile cmmProfile;
    private transient ProfileDeferralInfo deferralInfo;
    private int iccProfileSerializedDataVersion = 1;
    private transient ProfileActivator profileActivator;
    private transient ICC_Profile resolvedDeserializedProfile;

    public ICC_Profile(Profile profile) {
        this.cmmProfile = profile;
    }

    public static ICC_Profile getDeferredInstance(ProfileDeferralInfo profileDeferralInfo) {
        if (!ProfileDeferralMgr.deferring) {
            return getStandardProfile(profileDeferralInfo.filename);
        }
        int i = profileDeferralInfo.colorSpaceType;
        return i == 5 ? new ICC_ProfileRGB(profileDeferralInfo) : i == 6 ? new ICC_ProfileGray(profileDeferralInfo) : new ICC_Profile(profileDeferralInfo);
    }

    public static ICC_Profile getInstance(byte[] bArr) {
        ICC_Profile iCC_Profile;
        if (ProfileDeferralMgr.deferring) {
            ProfileDeferralMgr.activateProfiles();
        }
        ProfileDataVerifier.verify(bArr);
        try {
            Profile loadProfile = CMSManager.getModule().loadProfile(bArr);
            try {
                if (getColorSpaceType(loadProfile) == 6 && getData(loadProfile, icSigMediaWhitePointTag) != null && getData(loadProfile, icSigGrayTRCTag) != null) {
                    iCC_Profile = new ICC_ProfileGray(loadProfile);
                } else if (getColorSpaceType(loadProfile) == 5 && getData(loadProfile, icSigMediaWhitePointTag) != null && getData(loadProfile, 1918392666) != null && getData(loadProfile, 1733843290) != null && getData(loadProfile, 1649957210) != null && getData(loadProfile, icSigRedTRCTag) != null && getData(loadProfile, icSigGreenTRCTag) != null && getData(loadProfile, icSigBlueTRCTag) != null) {
                    iCC_Profile = new ICC_ProfileRGB(loadProfile);
                } else {
                    iCC_Profile = new ICC_Profile(loadProfile);
                }
                return iCC_Profile;
            } catch (CMMException unused) {
                return new ICC_Profile(loadProfile);
            }
        } catch (CMMException unused2) {
            throw new IllegalArgumentException("Invalid ICC Profile Data");
        }
    }

    public static byte[] getProfileDataFromStream(InputStream inputStream) throws IOException {
        int i = 128;
        byte[] bArr = new byte[128];
        int i2 = 128;
        int i3 = 0;
        while (i2 != 0) {
            int read = inputStream.read(bArr, i3, i2);
            if (read < 0) {
                return null;
            }
            i3 += read;
            i2 -= read;
        }
        if (bArr[36] != 97 || bArr[37] != 99 || bArr[38] != 115 || bArr[39] != 112) {
            return null;
        }
        int i4 = ((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        byte[] bArr2 = new byte[i4];
        System.arraycopy(bArr, 0, bArr2, 0, 128);
        int i5 = i4 - 128;
        while (i5 != 0) {
            int read2 = inputStream.read(bArr2, i, i5);
            if (read2 < 0) {
                return null;
            }
            i += read2;
            i5 -= read2;
        }
        return bArr2;
    }

    private static File getProfileFile(String str) {
        String property;
        String property2;
        File file = new File(str);
        if (file.isAbsolute()) {
            if (file.isFile()) {
                return file;
            }
            return null;
        }
        if (!file.isFile() && (property2 = System.getProperty("java.iccprofile.path")) != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(property2, File.pathSeparator);
            while (stringTokenizer.hasMoreTokens() && (file == null || !file.isFile())) {
                String nextToken = stringTokenizer.nextToken();
                File file2 = new File(nextToken + File.separatorChar + str);
                file = !isChildOf(file2, nextToken) ? null : file2;
            }
        }
        if ((file == null || !file.isFile()) && (property = System.getProperty("java.class.path")) != null) {
            StringTokenizer stringTokenizer2 = new StringTokenizer(property, File.pathSeparator);
            while (stringTokenizer2.hasMoreTokens() && (file == null || !file.isFile())) {
                file = new File(stringTokenizer2.nextToken() + File.separatorChar + str);
            }
        }
        if (file == null || !file.isFile()) {
            file = getStandardProfileFile(str);
        }
        if (file == null || !file.isFile()) {
            return null;
        }
        return file;
    }

    private static ICC_Profile getStandardProfile(final String str) {
        return (ICC_Profile) AccessController.doPrivileged(new PrivilegedAction<ICC_Profile>() { // from class: java.awt.color.ICC_Profile.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public ICC_Profile run() {
                try {
                    return ICC_Profile.getInstance(str);
                } catch (IOException unused) {
                    throw new IllegalArgumentException("Can't load standard profile: " + str);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static File getStandardProfileFile(String str) {
        String str2 = System.getProperty(SystemUtils.f107424e) + File.separatorChar + "lib" + File.separatorChar + "cmm";
        File file = new File(str2 + File.separatorChar + str);
        if (file.isFile() && isChildOf(file, str2)) {
            return file;
        }
        return null;
    }

    public static int iccCStoJCS(int i) {
        switch (i) {
            case icSigSpace2CLR /* 843271250 */:
                return 12;
            case icSigSpace3CLR /* 860048466 */:
                return 13;
            case icSigSpace4CLR /* 876825682 */:
                return 14;
            case icSigSpace5CLR /* 893602898 */:
                return 15;
            case icSigSpace6CLR /* 910380114 */:
                return 16;
            case icSigSpace7CLR /* 927157330 */:
                return 17;
            case icSigSpace8CLR /* 943934546 */:
                return 18;
            case icSigSpace9CLR /* 960711762 */:
                return 19;
            case icSigSpaceACLR /* 1094929490 */:
                return 20;
            case icSigSpaceBCLR /* 1111706706 */:
                return 21;
            case icSigSpaceCCLR /* 1128483922 */:
                return 22;
            case icSigCmyData /* 1129142560 */:
                return 11;
            case icSigCmykData /* 1129142603 */:
                return 9;
            case icSigSpaceDCLR /* 1145261138 */:
                return 23;
            case icSigSpaceECLR /* 1162038354 */:
                return 24;
            case icSigSpaceFCLR /* 1178815570 */:
                return 25;
            case icSigGrayData /* 1196573017 */:
                return 6;
            case icSigHlsData /* 1212961568 */:
                return 8;
            case icSigHsvData /* 1213421088 */:
                return 7;
            case icSigLabData /* 1281450528 */:
                return 1;
            case icSigLuvData /* 1282766368 */:
                return 2;
            case icSigRgbData /* 1380401696 */:
                return 5;
            case icSigXYZData /* 1482250784 */:
                return 0;
            case icSigYCbCrData /* 1497588338 */:
                return 3;
            case icSigYxyData /* 1501067552 */:
                return 4;
            default:
                throw new IllegalArgumentException("Unknown color space");
        }
    }

    public static int intFromBigEndian(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public static void intToBigEndian(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >> 24);
        bArr[i2 + 1] = (byte) (i >> 16);
        bArr[i2 + 2] = (byte) (i >> 8);
        bArr[i2 + 3] = (byte) i;
    }

    private static boolean isChildOf(File file, String str) {
        try {
            String canonicalPath = new File(str).getCanonicalPath();
            String str2 = File.separator;
            if (!canonicalPath.endsWith(str2)) {
                canonicalPath = canonicalPath + str2;
            }
            return file.getCanonicalPath().startsWith(canonicalPath);
        } catch (IOException unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void readObject(java.io.ObjectInputStream r5) throws java.io.IOException, java.lang.ClassNotFoundException {
        /*
            r4 = this;
            r5.defaultReadObject()
            java.lang.Object r0 = r5.readObject()
            java.lang.String r0 = (java.lang.String) r0
            java.lang.Object r5 = r5.readObject()
            byte[] r5 = (byte[]) r5
            r1 = 0
            if (r0 == 0) goto L4c
            java.lang.String r2 = "CS_sRGB"
            boolean r2 = r0.equals(r2)
            r3 = 1
            if (r2 == 0) goto L20
            r1 = 1000(0x3e8, float:1.401E-42)
        L1d:
            r0 = r1
            r1 = r3
            goto L4d
        L20:
            java.lang.String r2 = "CS_CIEXYZ"
            boolean r2 = r0.equals(r2)
            if (r2 == 0) goto L2b
            r1 = 1001(0x3e9, float:1.403E-42)
            goto L1d
        L2b:
            java.lang.String r2 = "CS_PYCC"
            boolean r2 = r0.equals(r2)
            if (r2 == 0) goto L36
            r1 = 1002(0x3ea, float:1.404E-42)
            goto L1d
        L36:
            java.lang.String r2 = "CS_GRAY"
            boolean r2 = r0.equals(r2)
            if (r2 == 0) goto L41
            r1 = 1003(0x3eb, float:1.406E-42)
            goto L1d
        L41:
            java.lang.String r2 = "CS_LINEAR_RGB"
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L4c
            r1 = 1004(0x3ec, float:1.407E-42)
            goto L1d
        L4c:
            r0 = r1
        L4d:
            if (r1 == 0) goto L56
            java.awt.color.ICC_Profile r5 = getInstance(r0)
            r4.resolvedDeserializedProfile = r5
            goto L5c
        L56:
            java.awt.color.ICC_Profile r5 = getInstance(r5)
            r4.resolvedDeserializedProfile = r5
        L5c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.color.ICC_Profile.readObject(java.io.ObjectInputStream):void");
    }

    public static short shortFromBigEndian(byte[] bArr, int i) {
        return (short) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    public static void shortToBigEndian(short s, byte[] bArr, int i) {
        bArr[i] = (byte) (s >> 8);
        bArr[i + 1] = (byte) s;
    }

    private static boolean standardProfileExists(final String str) {
        return ((Boolean) AccessController.doPrivileged(new PrivilegedAction<Boolean>() { // from class: java.awt.color.ICC_Profile.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public Boolean run() {
                return Boolean.valueOf(ICC_Profile.getStandardProfileFile(str) != null);
            }
        })).booleanValue();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        String str = this == sRGBprofile ? "CS_sRGB" : this == XYZprofile ? "CS_CIEXYZ" : this == PYCCprofile ? "CS_PYCC" : this == GRAYprofile ? "CS_GRAY" : this == LINEAR_RGBprofile ? "CS_LINEAR_RGB" : null;
        byte[] data = str == null ? getData() : null;
        objectOutputStream.writeObject(str);
        objectOutputStream.writeObject(data);
    }

    public void activateDeferredProfile() throws ProfileDataException {
        final String str = this.deferralInfo.filename;
        this.profileActivator = null;
        this.deferralInfo = null;
        FileInputStream fileInputStream = (FileInputStream) AccessController.doPrivileged(new PrivilegedAction<FileInputStream>() { // from class: java.awt.color.ICC_Profile.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public FileInputStream run() {
                File standardProfileFile = ICC_Profile.getStandardProfileFile(str);
                if (standardProfileFile == null) {
                    return null;
                }
                try {
                    return new FileInputStream(standardProfileFile);
                } catch (FileNotFoundException unused) {
                    return null;
                }
            }
        });
        if (fileInputStream == null) {
            throw new ProfileDataException("Cannot open file " + str);
        }
        try {
            byte[] profileDataFromStream = getProfileDataFromStream(fileInputStream);
            fileInputStream.close();
            if (profileDataFromStream == null) {
                throw new ProfileDataException("Invalid ICC Profile Data" + str);
            }
            try {
                this.cmmProfile = CMSManager.getModule().loadProfile(profileDataFromStream);
            } catch (CMMException e) {
                ProfileDataException profileDataException = new ProfileDataException("Invalid ICC Profile Data" + str);
                profileDataException.initCause(e);
                throw profileDataException;
            }
        } catch (IOException e2) {
            ProfileDataException profileDataException2 = new ProfileDataException("Invalid ICC Profile Data" + str);
            profileDataException2.initCause(e2);
            throw profileDataException2;
        }
    }

    public void finalize() {
        if (this.cmmProfile != null) {
            CMSManager.getModule().freeProfile(this.cmmProfile);
            return;
        }
        ProfileActivator profileActivator = this.profileActivator;
        if (profileActivator != null) {
            ProfileDeferralMgr.unregisterDeferral(profileActivator);
        }
    }

    public int getColorSpaceType() {
        ProfileDeferralInfo profileDeferralInfo = this.deferralInfo;
        if (profileDeferralInfo != null) {
            return profileDeferralInfo.colorSpaceType;
        }
        return getColorSpaceType(this.cmmProfile);
    }

    public byte[] getData() {
        if (ProfileDeferralMgr.deferring) {
            ProfileDeferralMgr.activateProfiles();
        }
        PCMM module = CMSManager.getModule();
        byte[] bArr = new byte[module.getProfileSize(this.cmmProfile)];
        module.getProfileData(this.cmmProfile, bArr);
        return bArr;
    }

    public float getGamma(int i) {
        if (intFromBigEndian(getData(i), 8) == 1) {
            return (shortFromBigEndian(r1, 12) & 65535) / 256.0f;
        }
        throw new ProfileDataException("TRC is not a gamma");
    }

    public int getMajorVersion() {
        return getData(1751474532)[8];
    }

    public float[] getMediaWhitePoint() {
        return getXYZTag(icSigMediaWhitePointTag);
    }

    public int getMinorVersion() {
        return getData(1751474532)[9];
    }

    public int getNumComponents() {
        ProfileDeferralInfo profileDeferralInfo = this.deferralInfo;
        if (profileDeferralInfo != null) {
            return profileDeferralInfo.numComponents;
        }
        switch (intFromBigEndian(getData(1751474532), 16)) {
            case icSigSpace2CLR /* 843271250 */:
                return 2;
            case icSigSpace3CLR /* 860048466 */:
            case icSigCmyData /* 1129142560 */:
            case icSigHlsData /* 1212961568 */:
            case icSigHsvData /* 1213421088 */:
            case icSigLabData /* 1281450528 */:
            case icSigLuvData /* 1282766368 */:
            case icSigRgbData /* 1380401696 */:
            case icSigXYZData /* 1482250784 */:
            case icSigYCbCrData /* 1497588338 */:
            case icSigYxyData /* 1501067552 */:
                return 3;
            case icSigSpace4CLR /* 876825682 */:
            case icSigCmykData /* 1129142603 */:
                return 4;
            case icSigSpace5CLR /* 893602898 */:
                return 5;
            case icSigSpace6CLR /* 910380114 */:
                return 6;
            case icSigSpace7CLR /* 927157330 */:
                return 7;
            case icSigSpace8CLR /* 943934546 */:
                return 8;
            case icSigSpace9CLR /* 960711762 */:
                return 9;
            case icSigSpaceACLR /* 1094929490 */:
                return 10;
            case icSigSpaceBCLR /* 1111706706 */:
                return 11;
            case icSigSpaceCCLR /* 1128483922 */:
                return 12;
            case icSigSpaceDCLR /* 1145261138 */:
                return 13;
            case icSigSpaceECLR /* 1162038354 */:
                return 14;
            case icSigSpaceFCLR /* 1178815570 */:
                return 15;
            case icSigGrayData /* 1196573017 */:
                return 1;
            default:
                throw new ProfileDataException("invalid ICC color space");
        }
    }

    public int getPCSType() {
        if (ProfileDeferralMgr.deferring) {
            ProfileDeferralMgr.activateProfiles();
        }
        return getPCSType(this.cmmProfile);
    }

    public int getProfileClass() {
        ProfileDeferralInfo profileDeferralInfo = this.deferralInfo;
        if (profileDeferralInfo != null) {
            return profileDeferralInfo.profileClass;
        }
        switch (intFromBigEndian(getData(1751474532), 12)) {
            case icSigAbstractClass /* 1633842036 */:
                return 5;
            case icSigLinkClass /* 1818848875 */:
                return 3;
            case icSigDisplayClass /* 1835955314 */:
                return 1;
            case icSigNamedColorClass /* 1852662636 */:
                return 6;
            case icSigOutputClass /* 1886549106 */:
                return 2;
            case icSigInputClass /* 1935896178 */:
                return 0;
            case icSigColorSpaceClass /* 1936744803 */:
                return 4;
            default:
                throw new IllegalArgumentException("Unknown profile class");
        }
    }

    public int getRenderingIntent() {
        return intFromBigEndian(getData(1751474532), 64) & 65535;
    }

    public short[] getTRC(int i) {
        byte[] data = getData(i);
        int intFromBigEndian = intFromBigEndian(data, 8);
        if (intFromBigEndian == 1) {
            throw new ProfileDataException("TRC is not a table");
        }
        short[] sArr = new short[intFromBigEndian];
        int i2 = 0;
        int i3 = 12;
        while (i2 < intFromBigEndian) {
            sArr[i2] = shortFromBigEndian(data, i3);
            i2++;
            i3 += 2;
        }
        return sArr;
    }

    public float[] getXYZTag(int i) {
        byte[] data = getData(i);
        float[] fArr = new float[3];
        int i2 = 0;
        int i3 = 8;
        while (i2 < 3) {
            fArr[i2] = intFromBigEndian(data, i3) / 65536.0f;
            i2++;
            i3 += 4;
        }
        return fArr;
    }

    public Object readResolve() throws ObjectStreamException {
        return this.resolvedDeserializedProfile;
    }

    public void setData(int i, byte[] bArr) {
        if (ProfileDeferralMgr.deferring) {
            ProfileDeferralMgr.activateProfiles();
        }
        CMSManager.getModule().setTagData(this.cmmProfile, i, bArr);
    }

    public void setRenderingIntent(int i) {
        byte[] data = getData(1751474532);
        intToBigEndian(i, data, 64);
        setData(1751474532, data);
    }

    public void write(String str) throws IOException {
        byte[] data = getData();
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        fileOutputStream.write(data);
        fileOutputStream.close();
    }

    public ICC_Profile(ProfileDeferralInfo profileDeferralInfo) {
        this.deferralInfo = profileDeferralInfo;
        ProfileActivator profileActivator = new ProfileActivator() { // from class: java.awt.color.ICC_Profile.1
            @Override // sun.java2d.cmm.ProfileActivator
            public void activate() throws ProfileDataException {
                ICC_Profile.this.activateDeferredProfile();
            }
        };
        this.profileActivator = profileActivator;
        ProfileDeferralMgr.registerDeferral(profileActivator);
    }

    public static int getColorSpaceType(Profile profile) {
        return iccCStoJCS(intFromBigEndian(getData(profile, 1751474532), 16));
    }

    public static int getPCSType(Profile profile) {
        return iccCStoJCS(intFromBigEndian(getData(profile, 1751474532), 20));
    }

    public void write(OutputStream outputStream) throws IOException {
        outputStream.write(getData());
    }

    public byte[] getData(int i) {
        if (ProfileDeferralMgr.deferring) {
            ProfileDeferralMgr.activateProfiles();
        }
        return getData(this.cmmProfile, i);
    }

    public static byte[] getData(Profile profile, int i) {
        try {
            PCMM module = CMSManager.getModule();
            byte[] bArr = new byte[module.getTagSize(profile, i)];
            module.getTagData(profile, i, bArr);
            return bArr;
        } catch (CMMException unused) {
            return null;
        }
    }

    public static ICC_Profile getInstance(int i) {
        ICC_Profile iCC_Profile;
        switch (i) {
            case 1000:
                synchronized (ICC_Profile.class) {
                    if (sRGBprofile == null) {
                        sRGBprofile = getDeferredInstance(new ProfileDeferralInfo("sRGB.pf", 5, 3, 1));
                    }
                    iCC_Profile = sRGBprofile;
                }
                return iCC_Profile;
            case 1001:
                synchronized (ICC_Profile.class) {
                    if (XYZprofile == null) {
                        XYZprofile = getDeferredInstance(new ProfileDeferralInfo("CIEXYZ.pf", 0, 3, 1));
                    }
                    iCC_Profile = XYZprofile;
                }
                return iCC_Profile;
            case 1002:
                synchronized (ICC_Profile.class) {
                    if (PYCCprofile == null) {
                        if (standardProfileExists("PYCC.pf")) {
                            PYCCprofile = getDeferredInstance(new ProfileDeferralInfo("PYCC.pf", 13, 3, 1));
                        } else {
                            throw new IllegalArgumentException("Can't load standard profile: PYCC.pf");
                        }
                    }
                    iCC_Profile = PYCCprofile;
                }
                return iCC_Profile;
            case 1003:
                synchronized (ICC_Profile.class) {
                    if (GRAYprofile == null) {
                        GRAYprofile = getDeferredInstance(new ProfileDeferralInfo("GRAY.pf", 6, 1, 1));
                    }
                    iCC_Profile = GRAYprofile;
                }
                return iCC_Profile;
            case 1004:
                synchronized (ICC_Profile.class) {
                    if (LINEAR_RGBprofile == null) {
                        LINEAR_RGBprofile = getDeferredInstance(new ProfileDeferralInfo("LINEAR_RGB.pf", 5, 3, 1));
                    }
                    iCC_Profile = LINEAR_RGBprofile;
                }
                return iCC_Profile;
            default:
                throw new IllegalArgumentException("Unknown color space");
        }
    }

    public static ICC_Profile getInstance(String str) throws IOException {
        File profileFile = getProfileFile(str);
        FileInputStream fileInputStream = profileFile != null ? new FileInputStream(profileFile) : null;
        if (fileInputStream != null) {
            ICC_Profile iCC_Profile = getInstance(fileInputStream);
            fileInputStream.close();
            return iCC_Profile;
        }
        throw new IOException("Cannot open file " + str);
    }

    public static ICC_Profile getInstance(InputStream inputStream) throws IOException {
        if (inputStream instanceof ProfileDeferralInfo) {
            return getDeferredInstance((ProfileDeferralInfo) inputStream);
        }
        byte[] profileDataFromStream = getProfileDataFromStream(inputStream);
        if (profileDataFromStream != null) {
            return getInstance(profileDataFromStream);
        }
        throw new IllegalArgumentException("Invalid ICC Profile Data");
    }
}
