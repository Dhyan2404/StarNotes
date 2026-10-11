package com.sunia.HTREnginev2;

import com.google.android.gms.common.Scopes;
import com.twelvemonkeys.imageio.color.ICCProfileSanitizer;
import com.twelvemonkeys.lang.Validate;
import java.awt.color.ICC_Profile;

/* loaded from: classes10.dex */
public final class lui implements ICCProfileSanitizer {
    @Override // com.twelvemonkeys.imageio.color.ICCProfileSanitizer
    /* renamed from: a */
    public void mo55516a(ICC_Profile iCC_Profile, byte[] bArr) {
        Validate.notNull(iCC_Profile, Scopes.PROFILE);
    }
}
