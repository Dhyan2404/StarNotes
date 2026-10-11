package com.onyx.android.sdk.data.common.data;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/BroadCastConstant;", "", "()V", "ACTION_TOKEN_INVALID_ACTION", "", "ARGS_DATA", "CLOUD_STORAGE_DOWNLOADING_RESPONSE_ACTION", "KEY_JSON", "KEY_NAME", "RECEIVER_INTENT_COPY_ACTION", "RECEIVER_INTENT_CUT_ACTION", "RECEIVER_INTENT_RENAME_ACTION", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class BroadCastConstant {

    @NotNull
    public static final String ACTION_TOKEN_INVALID_ACTION = "token.invalid.action";

    @NotNull
    public static final String ARGS_DATA = "compat_m_args_data";

    @NotNull
    public static final String CLOUD_STORAGE_DOWNLOADING_RESPONSE_ACTION = "onyx.action.cloud.storage.DOWNLOADING_RESPONSE";

    @NotNull
    public static final BroadCastConstant INSTANCE = new BroadCastConstant();

    @NotNull
    public static final String KEY_JSON = "json";

    @NotNull
    public static final String KEY_NAME = "name";

    @NotNull
    public static final String RECEIVER_INTENT_COPY_ACTION = "com.onyx.intent.action.copy";

    @NotNull
    public static final String RECEIVER_INTENT_CUT_ACTION = "com.onyx.intent.action.cut";

    @NotNull
    public static final String RECEIVER_INTENT_RENAME_ACTION = "com.onyx.intent.action.rename";

    private BroadCastConstant() {
    }
}
