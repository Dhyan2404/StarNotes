package java.awt.color;

import sun.java2d.cmm.Profile;
import sun.java2d.cmm.ProfileDeferralInfo;

/* loaded from: classes4.dex */
public class ICC_ProfileGray extends ICC_Profile {
    static final long serialVersionUID = -1124721290732002649L;

    public ICC_ProfileGray(Profile profile) {
        super(profile);
    }

    public float getGamma() {
        return super.getGamma(ICC_Profile.icSigGrayTRCTag);
    }

    @Override // java.awt.color.ICC_Profile
    public float[] getMediaWhitePoint() {
        return super.getMediaWhitePoint();
    }

    public short[] getTRC() {
        return super.getTRC(ICC_Profile.icSigGrayTRCTag);
    }

    public ICC_ProfileGray(ProfileDeferralInfo profileDeferralInfo) {
        super(profileDeferralInfo);
    }
}
