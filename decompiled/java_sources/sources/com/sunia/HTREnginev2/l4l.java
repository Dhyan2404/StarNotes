package com.sunia.HTREnginev2;

import com.couchbase.lite.internal.utils.PlatformUtils;
import com.couchbase.lite.internal.utils.PlatformUtilsDelegate;

/* loaded from: classes4.dex */
public final /* synthetic */ class l4l implements PlatformUtils.Base64Decoder {
    @Override // com.couchbase.lite.internal.utils.PlatformUtils.Base64Decoder
    public final byte[] decodeString(String str) {
        byte[] lambda$getDecoder$1;
        lambda$getDecoder$1 = PlatformUtilsDelegate.lambda$getDecoder$1(str);
        return lambda$getDecoder$1;
    }
}
