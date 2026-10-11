package com.sunia.HTREnginev2;

import android.util.Base64;
import com.couchbase.lite.internal.utils.PlatformUtils;

/* loaded from: classes4.dex */
public final /* synthetic */ class m4l implements PlatformUtils.Base64Encoder {
    @Override // com.couchbase.lite.internal.utils.PlatformUtils.Base64Encoder
    public final String encodeToString(byte[] bArr) {
        String encodeToString;
        encodeToString = Base64.encodeToString(bArr, 0);
        return encodeToString;
    }
}
