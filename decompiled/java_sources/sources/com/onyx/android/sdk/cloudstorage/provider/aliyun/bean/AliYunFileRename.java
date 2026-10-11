package com.onyx.android.sdk.cloudstorage.provider.aliyun.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.cloudstorage.constans.Constants;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.utils.AliYunConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileRename;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;", "()V", "checkNameMode", "", "getCheckNameMode", "()Ljava/lang/String;", "setCheckNameMode", "(Ljava/lang/String;)V", "name", "getName", "setName", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AliYunFileRename extends AliYunFileBase {

    @JSONField(alternateNames = {Constants.ALI_YUN_CHECK_NAME_MODE})
    @NotNull
    private String checkNameMode = AliYunConstant.CHECK_NAME_MODE_REFUSE;

    @Nullable
    private String name;

    @NotNull
    public final String getCheckNameMode() {
        return this.checkNameMode;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    public final void setCheckNameMode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.checkNameMode = str;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }
}
