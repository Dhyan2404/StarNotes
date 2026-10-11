package com.onyx.android.sdk.reader.utils;

import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0006H\u0086 J1\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\fH\u0086 ¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/utils/OnyxDrmUtils;", "", "()V", "decrypt", "", "encryptedData", "", "encryptedSize", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "setup", "", Constant.TAG_DEVICE_ID, "", "drmCertificate", "manifestBase64", "additionalDataBase64", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class OnyxDrmUtils {

    @NotNull
    public static final OnyxDrmUtils INSTANCE = new OnyxDrmUtils();

    static {
        System.loadLibrary("engine_sdk");
    }

    public final native int decrypt(@Nullable byte[] encryptedData, int encryptedSize, @Nullable byte[] result);

    public final native boolean setup(@Nullable String deviceId, @Nullable String drmCertificate, @Nullable String manifestBase64, @Nullable String additionalDataBase64);
}
