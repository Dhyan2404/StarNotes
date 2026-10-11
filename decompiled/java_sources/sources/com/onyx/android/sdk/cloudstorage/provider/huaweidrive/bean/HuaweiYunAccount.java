package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean;

import androidx.core.content.FileProvider;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.http.cookie.ClientCookie;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b-\b\u0086\b\u0018\u00002\u00020\u0001:\u0002:;BG\u0012\u0006\u0010\u0011\u001a\u00020\u0004\u0012\u0006\u0010\u0012\u001a\u00020\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0007\u0012\u0006\u0010\u0014\u001a\u00020\u0004\u0012\u0006\u0010\u0015\u001a\u00020\u0007\u0012\u0006\u0010\u0016\u001a\u00020\u000b\u0012\u0006\u0010\u0017\u001a\u00020\r\u0012\u0006\u0010\u0018\u001a\u00020\u000f¢\u0006\u0004\b8\u00109J\u0006\u0010\u0003\u001a\u00020\u0002J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\t\u0010\t\u001a\u00020\u0004HÆ\u0003J\t\u0010\n\u001a\u00020\u0007HÆ\u0003J\t\u0010\f\u001a\u00020\u000bHÆ\u0003J\t\u0010\u000e\u001a\u00020\rHÆ\u0003J\t\u0010\u0010\u001a\u00020\u000fHÆ\u0003JY\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0011\u001a\u00020\u00042\b\b\u0002\u0010\u0012\u001a\u00020\u00042\b\b\u0002\u0010\u0013\u001a\u00020\u00072\b\b\u0002\u0010\u0014\u001a\u00020\u00042\b\b\u0002\u0010\u0015\u001a\u00020\u00072\b\b\u0002\u0010\u0016\u001a\u00020\u000b2\b\b\u0002\u0010\u0017\u001a\u00020\r2\b\b\u0002\u0010\u0018\u001a\u00020\u000fHÆ\u0001J\t\u0010\u001a\u001a\u00020\u0004HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\u001d\u001a\u00020\u000b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0011\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0017\u0010\u0012\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\"\u0010\u001f\u001a\u0004\b#\u0010!R\u0017\u0010\u0013\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u0017\u0010\u0014\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b(\u0010\u001f\u001a\u0004\b)\u0010!R\u0017\u0010\u0015\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b*\u0010%\u001a\u0004\b+\u0010'R\u0017\u0010\u0016\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u0017\u0010\u0017\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u0017\u0010\u0018\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b6\u00107¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunAccount;", "", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "toAccountInfo", "", "component1", "component2", "", "component3", "component4", "component5", "", "component6", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunAccount$StorageQuota;", "component7", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunAccount$User;", "component8", "category", ClientCookie.DOMAIN_ATTR, "folderLevel", "maxFileUploadSize", "maxThumbnailSize", "needUpdate", "storageQuota", "user", "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getCategory", "()Ljava/lang/String;", "b", "getDomain", "c", "I", "getFolderLevel", "()I", "d", "getMaxFileUploadSize", "e", "getMaxThumbnailSize", C6997f.f39671c, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getNeedUpdate", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, C6998g.f39679a, "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunAccount$StorageQuota;", "getStorageQuota", "()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunAccount$StorageQuota;", C6999h.f39688c, "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunAccount$User;", "getUser", "()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunAccount$User;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunAccount$StorageQuota;Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunAccount$User;)V", "StorageQuota", "User", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class HuaweiYunAccount {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String category;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final String domain;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final int folderLevel;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public final String maxFileUploadSize;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public final int maxThumbnailSize;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    public final boolean needUpdate;

    /* renamed from: g, reason: from kotlin metadata and from toString */
    @NotNull
    public final StorageQuota storageQuota;

    /* renamed from: h, reason: from kotlin metadata and from toString */
    @NotNull
    public final User user;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u001d\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0002HÆ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0011¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunAccount$StorageQuota;", "", "", "component1", "component2", "usedSpace", "userCapacity", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getUsedSpace", "()Ljava/lang/String;", "b", "getUserCapacity", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final /* data */ class StorageQuota {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public final String usedSpace;

        /* renamed from: b, reason: from kotlin metadata and from toString */
        @NotNull
        public final String userCapacity;

        public StorageQuota(@NotNull String usedSpace, @NotNull String userCapacity) {
            Intrinsics.checkNotNullParameter(usedSpace, "usedSpace");
            Intrinsics.checkNotNullParameter(userCapacity, "userCapacity");
            this.usedSpace = usedSpace;
            this.userCapacity = userCapacity;
        }

        public static /* synthetic */ StorageQuota copy$default(StorageQuota storageQuota, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = storageQuota.usedSpace;
            }
            if ((i & 2) != 0) {
                str2 = storageQuota.userCapacity;
            }
            return storageQuota.copy(str, str2);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getUsedSpace() {
            return this.usedSpace;
        }

        @NotNull
        /* renamed from: component2, reason: from getter */
        public final String getUserCapacity() {
            return this.userCapacity;
        }

        @NotNull
        public final StorageQuota copy(@NotNull String usedSpace, @NotNull String userCapacity) {
            Intrinsics.checkNotNullParameter(usedSpace, "usedSpace");
            Intrinsics.checkNotNullParameter(userCapacity, "userCapacity");
            return new StorageQuota(usedSpace, userCapacity);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof StorageQuota)) {
                return false;
            }
            StorageQuota storageQuota = (StorageQuota) other;
            return Intrinsics.areEqual(this.usedSpace, storageQuota.usedSpace) && Intrinsics.areEqual(this.userCapacity, storageQuota.userCapacity);
        }

        @NotNull
        public final String getUsedSpace() {
            return this.usedSpace;
        }

        @NotNull
        public final String getUserCapacity() {
            return this.userCapacity;
        }

        public int hashCode() {
            return (this.usedSpace.hashCode() * 31) + this.userCapacity.hashCode();
        }

        @NotNull
        public String toString() {
            return "StorageQuota(usedSpace=" + this.usedSpace + ", userCapacity=" + this.userCapacity + ')';
        }
    }

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0002HÆ\u0003J1\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0002HÆ\u0001J\t\u0010\r\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0013\u001a\u0004\b\u0017\u0010\u0015R\u0017\u0010\n\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0017\u0010\u000b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u0013\u001a\u0004\b\u001d\u0010\u0015¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunAccount$User;", "", "", "component1", "component2", "", "component3", "component4", "category", FileProvider.f5230t, "me", "permissionId", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getCategory", "()Ljava/lang/String;", "b", "getDisplayName", "c", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getMe", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "d", "getPermissionId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final /* data */ class User {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public final String category;

        /* renamed from: b, reason: from kotlin metadata and from toString */
        @NotNull
        public final String displayName;

        /* renamed from: c, reason: from kotlin metadata and from toString */
        public final boolean me;

        /* renamed from: d, reason: from kotlin metadata and from toString */
        @NotNull
        public final String permissionId;

        public User(@NotNull String category, @NotNull String displayName, boolean z, @NotNull String permissionId) {
            Intrinsics.checkNotNullParameter(category, "category");
            Intrinsics.checkNotNullParameter(displayName, "displayName");
            Intrinsics.checkNotNullParameter(permissionId, "permissionId");
            this.category = category;
            this.displayName = displayName;
            this.me = z;
            this.permissionId = permissionId;
        }

        public static /* synthetic */ User copy$default(User user, String str, String str2, boolean z, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = user.category;
            }
            if ((i & 2) != 0) {
                str2 = user.displayName;
            }
            if ((i & 4) != 0) {
                z = user.me;
            }
            if ((i & 8) != 0) {
                str3 = user.permissionId;
            }
            return user.copy(str, str2, z, str3);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getCategory() {
            return this.category;
        }

        @NotNull
        /* renamed from: component2, reason: from getter */
        public final String getDisplayName() {
            return this.displayName;
        }

        /* renamed from: component3, reason: from getter */
        public final boolean getMe() {
            return this.me;
        }

        @NotNull
        /* renamed from: component4, reason: from getter */
        public final String getPermissionId() {
            return this.permissionId;
        }

        @NotNull
        public final User copy(@NotNull String category, @NotNull String displayName, boolean me, @NotNull String permissionId) {
            Intrinsics.checkNotNullParameter(category, "category");
            Intrinsics.checkNotNullParameter(displayName, "displayName");
            Intrinsics.checkNotNullParameter(permissionId, "permissionId");
            return new User(category, displayName, me, permissionId);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof User)) {
                return false;
            }
            User user = (User) other;
            return Intrinsics.areEqual(this.category, user.category) && Intrinsics.areEqual(this.displayName, user.displayName) && this.me == user.me && Intrinsics.areEqual(this.permissionId, user.permissionId);
        }

        @NotNull
        public final String getCategory() {
            return this.category;
        }

        @NotNull
        public final String getDisplayName() {
            return this.displayName;
        }

        public final boolean getMe() {
            return this.me;
        }

        @NotNull
        public final String getPermissionId() {
            return this.permissionId;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = ((this.category.hashCode() * 31) + this.displayName.hashCode()) * 31;
            boolean z = this.me;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            return ((hashCode + i) * 31) + this.permissionId.hashCode();
        }

        @NotNull
        public String toString() {
            return "User(category=" + this.category + ", displayName=" + this.displayName + ", me=" + this.me + ", permissionId=" + this.permissionId + ')';
        }
    }

    public HuaweiYunAccount(@NotNull String category, @NotNull String domain, int i, @NotNull String maxFileUploadSize, int i2, boolean z, @NotNull StorageQuota storageQuota, @NotNull User user) {
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(domain, "domain");
        Intrinsics.checkNotNullParameter(maxFileUploadSize, "maxFileUploadSize");
        Intrinsics.checkNotNullParameter(storageQuota, "storageQuota");
        Intrinsics.checkNotNullParameter(user, "user");
        this.category = category;
        this.domain = domain;
        this.folderLevel = i;
        this.maxFileUploadSize = maxFileUploadSize;
        this.maxThumbnailSize = i2;
        this.needUpdate = z;
        this.storageQuota = storageQuota;
        this.user = user;
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getCategory() {
        return this.category;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getDomain() {
        return this.domain;
    }

    /* renamed from: component3, reason: from getter */
    public final int getFolderLevel() {
        return this.folderLevel;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getMaxFileUploadSize() {
        return this.maxFileUploadSize;
    }

    /* renamed from: component5, reason: from getter */
    public final int getMaxThumbnailSize() {
        return this.maxThumbnailSize;
    }

    /* renamed from: component6, reason: from getter */
    public final boolean getNeedUpdate() {
        return this.needUpdate;
    }

    @NotNull
    /* renamed from: component7, reason: from getter */
    public final StorageQuota getStorageQuota() {
        return this.storageQuota;
    }

    @NotNull
    /* renamed from: component8, reason: from getter */
    public final User getUser() {
        return this.user;
    }

    @NotNull
    public final HuaweiYunAccount copy(@NotNull String category, @NotNull String domain, int folderLevel, @NotNull String maxFileUploadSize, int maxThumbnailSize, boolean needUpdate, @NotNull StorageQuota storageQuota, @NotNull User user) {
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(domain, "domain");
        Intrinsics.checkNotNullParameter(maxFileUploadSize, "maxFileUploadSize");
        Intrinsics.checkNotNullParameter(storageQuota, "storageQuota");
        Intrinsics.checkNotNullParameter(user, "user");
        return new HuaweiYunAccount(category, domain, folderLevel, maxFileUploadSize, maxThumbnailSize, needUpdate, storageQuota, user);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HuaweiYunAccount)) {
            return false;
        }
        HuaweiYunAccount huaweiYunAccount = (HuaweiYunAccount) other;
        return Intrinsics.areEqual(this.category, huaweiYunAccount.category) && Intrinsics.areEqual(this.domain, huaweiYunAccount.domain) && this.folderLevel == huaweiYunAccount.folderLevel && Intrinsics.areEqual(this.maxFileUploadSize, huaweiYunAccount.maxFileUploadSize) && this.maxThumbnailSize == huaweiYunAccount.maxThumbnailSize && this.needUpdate == huaweiYunAccount.needUpdate && Intrinsics.areEqual(this.storageQuota, huaweiYunAccount.storageQuota) && Intrinsics.areEqual(this.user, huaweiYunAccount.user);
    }

    @NotNull
    public final String getCategory() {
        return this.category;
    }

    @NotNull
    public final String getDomain() {
        return this.domain;
    }

    public final int getFolderLevel() {
        return this.folderLevel;
    }

    @NotNull
    public final String getMaxFileUploadSize() {
        return this.maxFileUploadSize;
    }

    public final int getMaxThumbnailSize() {
        return this.maxThumbnailSize;
    }

    public final boolean getNeedUpdate() {
        return this.needUpdate;
    }

    @NotNull
    public final StorageQuota getStorageQuota() {
        return this.storageQuota;
    }

    @NotNull
    public final User getUser() {
        return this.user;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((this.category.hashCode() * 31) + this.domain.hashCode()) * 31) + Integer.hashCode(this.folderLevel)) * 31) + this.maxFileUploadSize.hashCode()) * 31) + Integer.hashCode(this.maxThumbnailSize)) * 31;
        boolean z = this.needUpdate;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((((hashCode + i) * 31) + this.storageQuota.hashCode()) * 31) + this.user.hashCode();
    }

    @NotNull
    public final AccountInfoBean toAccountInfo() {
        return new AccountInfoBean(this.user.getDisplayName(), this.user.getDisplayName(), this.user.getPermissionId());
    }

    @NotNull
    public String toString() {
        return "HuaweiYunAccount(category=" + this.category + ", domain=" + this.domain + ", folderLevel=" + this.folderLevel + ", maxFileUploadSize=" + this.maxFileUploadSize + ", maxThumbnailSize=" + this.maxThumbnailSize + ", needUpdate=" + this.needUpdate + ", storageQuota=" + this.storageQuota + ", user=" + this.user + ')';
    }
}
