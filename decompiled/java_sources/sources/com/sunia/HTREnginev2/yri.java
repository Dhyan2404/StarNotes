package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.google.android.gms.common.Scopes;
import com.twelvemonkeys.imageio.color.ICCProfileSanitizer;
import com.twelvemonkeys.lang.Validate;
import java.awt.color.ICC_Profile;
import java.util.Arrays;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* loaded from: classes10.dex */
public final class yri implements ICCProfileSanitizer {

    /* renamed from: a */
    public static final byte[] f91013a = {23, JSONB.Constants.BC_OBJECT_END, 5, JSONB.Constants.BC_DECIMAL_LONG};

    /* renamed from: b */
    public static boolean m58478b(ICC_Profile iCC_Profile, int i) {
        byte[] data = iCC_Profile.getData(i);
        if (data == null || !Arrays.equals(Arrays.copyOfRange(data, 0, 4), f91013a)) {
            return false;
        }
        data[0] = TarConstants.LF_PAX_EXTENDED_HEADER_UC;
        data[1] = 89;
        data[2] = 90;
        data[3] = 32;
        iCC_Profile.setData(i, data);
        return true;
    }

    @Override // com.twelvemonkeys.imageio.color.ICCProfileSanitizer
    /* renamed from: a */
    public void mo55516a(ICC_Profile iCC_Profile, byte[] bArr) {
        Validate.notNull(iCC_Profile, Scopes.PROFILE);
        if (bArr != null) {
            iCC_Profile.setData(1751474532, bArr);
        }
        if (m58478b(iCC_Profile, ICC_Profile.icSigMediaWhitePointTag)) {
            m58478b(iCC_Profile, 1918392666);
            m58478b(iCC_Profile, 1733843290);
            m58478b(iCC_Profile, 1649957210);
        }
    }
}
