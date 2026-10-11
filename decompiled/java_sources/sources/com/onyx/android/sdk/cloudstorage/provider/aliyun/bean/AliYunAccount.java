package com.onyx.android.sdk.cloudstorage.provider.aliyun.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.cloudstorage.constans.Constants;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010!\u001a\u00020\"J\b\u0010#\u001a\u00020\u0004H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR \u0010\t\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001e\u0010\u0012\u001a\u00020\u00048\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR \u0010\u0015\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\b¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunAccount;", "Ljava/io/Serializable;", "()V", "avatar", "", "getAvatar", "()Ljava/lang/String;", "setAvatar", "(Ljava/lang/String;)V", "defaultDriveId", "getDefaultDriveId", "setDefaultDriveId", "description", "getDescription", "setDescription", "email", "getEmail", "setEmail", "id", "getId", "setId", "name", "getName", "setName", "phone", "getPhone", "setPhone", "role", "getRole", "setRole", "status", "getStatus", "setStatus", "toAccountInfo", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "toString", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AliYunAccount implements Serializable {

    @Nullable
    private String avatar;

    /* renamed from: defaultDriveId, reason: from kotlin metadata and from toString */
    @JSONField(alternateNames = {Constants.ALI_YUN_DEFAULT_DRIVE_ID})
    @Nullable
    private String default_drive_id;

    @Nullable
    private String description;

    @Nullable
    private String email;

    @JSONField(alternateNames = {"user_id"})
    public String id;

    @JSONField(alternateNames = {Constants.ALI_YUN_NICK_NAME})
    @Nullable
    private String name;

    @Nullable
    private String phone;

    @Nullable
    private String role;

    @Nullable
    private String status;

    @Nullable
    public final String getAvatar() {
        return this.avatar;
    }

    @Nullable
    /* renamed from: getDefaultDriveId, reason: from getter */
    public final String getDefault_drive_id() {
        return this.default_drive_id;
    }

    @Nullable
    public final String getDescription() {
        return this.description;
    }

    @Nullable
    public final String getEmail() {
        return this.email;
    }

    @NotNull
    public final String getId() {
        String str = this.id;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("id");
        return null;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getPhone() {
        return this.phone;
    }

    @Nullable
    public final String getRole() {
        return this.role;
    }

    @Nullable
    public final String getStatus() {
        return this.status;
    }

    public final void setAvatar(@Nullable String str) {
        this.avatar = str;
    }

    public final void setDefaultDriveId(@Nullable String str) {
        this.default_drive_id = str;
    }

    public final void setDescription(@Nullable String str) {
        this.description = str;
    }

    public final void setEmail(@Nullable String str) {
        this.email = str;
    }

    public final void setId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setPhone(@Nullable String str) {
        this.phone = str;
    }

    public final void setRole(@Nullable String str) {
        this.role = str;
    }

    public final void setStatus(@Nullable String str) {
        this.status = str;
    }

    @NotNull
    public final AccountInfoBean toAccountInfo() {
        String str = this.phone;
        if (StringUtils.isEmpty(str)) {
            str = this.name;
        }
        return new AccountInfoBean(str, this.name, getId());
    }

    @NotNull
    public String toString() {
        return "AliYunAccount{id='" + getId() + "', name='" + this.name + "', avatar='" + this.avatar + "', phone='" + this.phone + "', email='" + this.email + "', role='" + this.role + "', status='" + this.status + "', description='" + this.description + "', default_drive_id='" + this.default_drive_id + "'}";
    }
}
