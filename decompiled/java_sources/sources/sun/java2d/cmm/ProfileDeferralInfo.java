package sun.java2d.cmm;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes16.dex */
public class ProfileDeferralInfo extends InputStream {
    public int colorSpaceType;
    public String filename;
    public int numComponents;
    public int profileClass;

    public ProfileDeferralInfo(String str, int i, int i2, int i3) {
        this.filename = str;
        this.colorSpaceType = i;
        this.numComponents = i2;
        this.profileClass = i3;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return 0;
    }
}
