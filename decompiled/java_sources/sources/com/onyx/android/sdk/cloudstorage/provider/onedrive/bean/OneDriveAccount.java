package com.onyx.android.sdk.cloudstorage.provider.onedrive.bean;

import androidx.core.content.FileProvider;
import java.io.Serializable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0012\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0015\u001a\u00020\u0004H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveAccount;", "Ljava/io/Serializable;", "()V", FileProvider.f5230t, "", "getDisplayName", "()Ljava/lang/String;", "setDisplayName", "(Ljava/lang/String;)V", "id", "getId", "setId", "mail", "getMail", "setMail", "mobilePhone", "getMobilePhone", "setMobilePhone", "userPrincipalName", "getUserPrincipalName", "setUserPrincipalName", "toString", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OneDriveAccount implements Serializable {

    @Nullable
    private String displayName;

    @Nullable
    private String id;

    @Nullable
    private String mail;

    @Nullable
    private String mobilePhone;

    @Nullable
    private String userPrincipalName;

    @Nullable
    public final String getDisplayName() {
        return this.displayName;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    @Nullable
    public final String getMail() {
        return this.mail;
    }

    @Nullable
    public final String getMobilePhone() {
        return this.mobilePhone;
    }

    @Nullable
    public final String getUserPrincipalName() {
        return this.userPrincipalName;
    }

    public final void setDisplayName(@Nullable String str) {
        this.displayName = str;
    }

    public final void setId(@Nullable String str) {
        this.id = str;
    }

    public final void setMail(@Nullable String str) {
        this.mail = str;
    }

    public final void setMobilePhone(@Nullable String str) {
        this.mobilePhone = str;
    }

    public final void setUserPrincipalName(@Nullable String str) {
        this.userPrincipalName = str;
    }

    @NotNull
    public String toString() {
        return "OneDriveAccount{id='" + this.id + "', displayName='" + this.displayName + "', mail='" + this.mail + "', mobilePhone='" + this.mobilePhone + "', userPrincipalName='" + this.userPrincipalName + "'}";
    }
}
