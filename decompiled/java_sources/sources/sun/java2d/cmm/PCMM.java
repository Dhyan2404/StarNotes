package sun.java2d.cmm;

import java.awt.color.ICC_Profile;

/* loaded from: classes16.dex */
public interface PCMM {
    ColorTransform createTransform(ICC_Profile iCC_Profile, int i, int i2);

    ColorTransform createTransform(ColorTransform[] colorTransformArr);

    void freeProfile(Profile profile);

    void getProfileData(Profile profile, byte[] bArr);

    int getProfileSize(Profile profile);

    void getTagData(Profile profile, int i, byte[] bArr);

    int getTagSize(Profile profile, int i);

    Profile loadProfile(byte[] bArr);

    void setTagData(Profile profile, int i, byte[] bArr);
}
