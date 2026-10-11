package com.onyx.android.sdk.cloudstorage.provider.aliyun.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.utils.AliYunConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u001a\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0004\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\b¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCreate;", "", "", "a", Constants.STRING_SIG, "getDriveId", "()Ljava/lang/String;", "setDriveId", "(Ljava/lang/String;)V", "driveId", "b", "getParentFileId", "setParentFileId", "parentFileId", "c", "getCheckNameMode", "setCheckNameMode", "checkNameMode", "d", "getName", "setName", "name", "e", "getType", "setType", "type", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public class AliYunFileCreate {

    /* renamed from: a, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.ALI_YUN_DRIVE_ID})
    @Nullable
    public String driveId;

    /* renamed from: b, reason: from kotlin metadata */
    @JSONField(alternateNames = {"parent_file_id"})
    @Nullable
    public String parentFileId;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public String name;

    /* renamed from: c, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.ALI_YUN_CHECK_NAME_MODE})
    @NotNull
    public String checkNameMode = AliYunConstant.CHECK_NAME_MODE_REFUSE;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public String type = "file";

    @NotNull
    public final String getCheckNameMode() {
        return this.checkNameMode;
    }

    @Nullable
    public final String getDriveId() {
        return this.driveId;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getParentFileId() {
        return this.parentFileId;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    public final void setCheckNameMode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.checkNameMode = str;
    }

    public final void setDriveId(@Nullable String str) {
        this.driveId = str;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setParentFileId(@Nullable String str) {
        this.parentFileId = str;
    }

    public final void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }
}
