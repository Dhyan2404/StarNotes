package com.onyx.android.sdk.cloudstorage.model;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.cloudstorage.model.common.ProviderFeature;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002BM\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0002\u0010\rJ\u0011\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0000H\u0096\u0002J\t\u0010#\u001a\u00020\u0004HÆ\u0003J\t\u0010$\u001a\u00020\u0004HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000f\u0010(\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0003JQ\u0010)\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0001J\u0013\u0010*\u001a\u00020+2\b\u0010\"\u001a\u0004\u0018\u00010,H\u0096\u0002J\u0006\u0010-\u001a\u00020\u0004J\b\u0010.\u001a\u00020/H\u0007J\b\u00100\u001a\u00020!H\u0016J\t\u00101\u001a\u00020\u0004HÖ\u0001R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000f\"\u0004\b\u0013\u0010\u0011R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000f\"\u0004\b\u0019\u0010\u0011R \u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0005\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u000f\"\u0004\b\u001f\u0010\u0011¨\u00062"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "accountId", "", CouchFieldKey.KEY_PROVIDER_NAME, "accountInfoBean", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "driveId", "accountCredentialJson", "enableFeatures", "", "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;", "(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V", "getAccountCredentialJson", "()Ljava/lang/String;", "setAccountCredentialJson", "(Ljava/lang/String;)V", "getAccountId", "setAccountId", "getAccountInfoBean", "()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "setAccountInfoBean", "(Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;)V", "getDriveId", "setDriveId", "getEnableFeatures", "()Ljava/util/Set;", "setEnableFeatures", "(Ljava/util/Set;)V", "getProviderName", "setProviderName", "compareTo", "", Constants.ATTRVAL_OTHER, "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "", "getDebugInfo", "getProvider", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "hashCode", "toString", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class ProviderAccountModel extends BaseReplicatorModel implements Comparable<ProviderAccountModel> {

    @Nullable
    private String accountCredentialJson;

    @NotNull
    private String accountId;

    @Nullable
    private AccountInfoBean accountInfoBean;

    @Nullable
    private String driveId;

    @NotNull
    private Set<? extends ProviderFeature> enableFeatures;

    @NotNull
    private String providerName;

    public ProviderAccountModel() {
        this(null, null, null, null, null, null, 63, null);
    }

    public static /* synthetic */ ProviderAccountModel copy$default(ProviderAccountModel providerAccountModel, String str, String str2, AccountInfoBean accountInfoBean, String str3, String str4, Set set, int i, Object obj) {
        if ((i & 1) != 0) {
            str = providerAccountModel.accountId;
        }
        if ((i & 2) != 0) {
            str2 = providerAccountModel.providerName;
        }
        String str5 = str2;
        if ((i & 4) != 0) {
            accountInfoBean = providerAccountModel.accountInfoBean;
        }
        AccountInfoBean accountInfoBean2 = accountInfoBean;
        if ((i & 8) != 0) {
            str3 = providerAccountModel.driveId;
        }
        String str6 = str3;
        if ((i & 16) != 0) {
            str4 = providerAccountModel.accountCredentialJson;
        }
        String str7 = str4;
        if ((i & 32) != 0) {
            set = providerAccountModel.enableFeatures;
        }
        return providerAccountModel.copy(str, str5, accountInfoBean2, str6, str7, set);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getAccountId() {
        return this.accountId;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getProviderName() {
        return this.providerName;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final AccountInfoBean getAccountInfoBean() {
        return this.accountInfoBean;
    }

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final String getDriveId() {
        return this.driveId;
    }

    @Nullable
    /* renamed from: component5, reason: from getter */
    public final String getAccountCredentialJson() {
        return this.accountCredentialJson;
    }

    @NotNull
    public final Set<ProviderFeature> component6() {
        return this.enableFeatures;
    }

    @NotNull
    public final ProviderAccountModel copy(@NotNull String accountId, @NotNull String providerName, @Nullable AccountInfoBean accountInfoBean, @Nullable String driveId, @Nullable String accountCredentialJson, @NotNull Set<? extends ProviderFeature> enableFeatures) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        Intrinsics.checkNotNullParameter(enableFeatures, "enableFeatures");
        return new ProviderAccountModel(accountId, providerName, accountInfoBean, driveId, accountCredentialJson, enableFeatures);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !Intrinsics.areEqual(ProviderAccountModel.class, other.getClass())) {
            return false;
        }
        ProviderAccountModel providerAccountModel = (ProviderAccountModel) other;
        return StringUtils.equals(this.accountId, providerAccountModel.accountId) && StringUtils.equals(getUniqueId(), providerAccountModel.getUniqueId());
    }

    @Nullable
    public final String getAccountCredentialJson() {
        return this.accountCredentialJson;
    }

    @NotNull
    public final String getAccountId() {
        return this.accountId;
    }

    @Nullable
    public final AccountInfoBean getAccountInfoBean() {
        return this.accountInfoBean;
    }

    @NotNull
    public final String getDebugInfo() {
        StringBuilder sb = new StringBuilder();
        sb.append("ProviderAccountModel{uniqueId ='");
        sb.append(getUniqueId());
        sb.append("', accountId='");
        sb.append(this.accountId);
        sb.append("', providerName='");
        sb.append(this.providerName);
        sb.append("', driveId='");
        sb.append(this.driveId);
        sb.append("', accountInfoBean='");
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        sb.append(jSONUtils.toJson(this.accountInfoBean));
        sb.append("', accountCredentialJson='");
        sb.append(this.accountCredentialJson);
        sb.append("', enableFeatures='");
        sb.append(jSONUtils.toJson(this.enableFeatures));
        sb.append("'}");
        return sb.toString();
    }

    @Nullable
    public final String getDriveId() {
        return this.driveId;
    }

    @NotNull
    public final Set<ProviderFeature> getEnableFeatures() {
        return this.enableFeatures;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final Provider getProvider() {
        return Provider.INSTANCE.providerByName(this.providerName);
    }

    @NotNull
    public final String getProviderName() {
        return this.providerName;
    }

    public int hashCode() {
        return Objects.hash(this.accountId, this.providerName);
    }

    public final void setAccountCredentialJson(@Nullable String str) {
        this.accountCredentialJson = str;
    }

    public final void setAccountId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.accountId = str;
    }

    public final void setAccountInfoBean(@Nullable AccountInfoBean accountInfoBean) {
        this.accountInfoBean = accountInfoBean;
    }

    public final void setDriveId(@Nullable String str) {
        this.driveId = str;
    }

    public final void setEnableFeatures(@NotNull Set<? extends ProviderFeature> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.enableFeatures = set;
    }

    public final void setProviderName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.providerName = str;
    }

    @NotNull
    public String toString() {
        return "ProviderAccountModel(accountId=" + this.accountId + ", providerName=" + this.providerName + ", accountInfoBean=" + this.accountInfoBean + ", driveId=" + this.driveId + ", accountCredentialJson=" + this.accountCredentialJson + ", enableFeatures=" + this.enableFeatures + ')';
    }

    public /* synthetic */ ProviderAccountModel(String str, String str2, AccountInfoBean accountInfoBean, String str3, String str4, Set set, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? Provider.UNKNOWN.getTitle() : str2, (i & 4) != 0 ? null : accountInfoBean, (i & 8) != 0 ? null : str3, (i & 16) == 0 ? str4 : null, (i & 32) != 0 ? SetsKt__SetsKt.emptySet() : set);
    }

    @Override // java.lang.Comparable
    public int compareTo(@NotNull ProviderAccountModel other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int compareTo = this.providerName.compareTo(other.providerName);
        return compareTo != 0 ? compareTo : this.accountId.compareTo(other.accountId);
    }

    public ProviderAccountModel(@NotNull String accountId, @NotNull String providerName, @Nullable AccountInfoBean accountInfoBean, @Nullable String str, @Nullable String str2, @NotNull Set<? extends ProviderFeature> enableFeatures) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        Intrinsics.checkNotNullParameter(enableFeatures, "enableFeatures");
        this.accountId = accountId;
        this.providerName = providerName;
        this.accountInfoBean = accountInfoBean;
        this.driveId = str;
        this.accountCredentialJson = str2;
        this.enableFeatures = enableFeatures;
    }
}
