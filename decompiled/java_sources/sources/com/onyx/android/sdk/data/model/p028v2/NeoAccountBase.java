package com.onyx.android.sdk.data.model.p028v2;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.account.bean.Device;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.model.BaseData;
import com.onyx.android.sdk.data.utils.JSONUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001d\b\u0016\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B)\b\u0016\u0012\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\f\"\u0004\b\u0019\u0010\u000eR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\f\"\u0004\b\u001c\u0010\u000eR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\f\"\u0004\b\u001f\u0010\u000eR\u001c\u0010 \u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\f\"\u0004\b\"\u0010\u000eR\u001c\u0010#\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\f\"\u0004\b%\u0010\u000eR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\f\"\u0004\b'\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase;", "Lcom/onyx/android/sdk/data/model/BaseData;", "()V", "groups", "", "", "token", "tokenExpiresIn", "", "(Ljava/util/List;Ljava/lang/String;J)V", "_id", "get_id", "()Ljava/lang/String;", "set_id", "(Ljava/lang/String;)V", "devices", "Lcom/onyx/android/sdk/data/account/bean/Device;", "getDevices", "()Ljava/util/List;", "setDevices", "(Ljava/util/List;)V", "getGroups", "setGroups", PrivilegedApp.f6532i, "getInfo", "setInfo", "library", "getLibrary", "setLibrary", "name", "getName", "setName", "orgName", "getOrgName", "setOrgName", "phone", "getPhone", "setPhone", "getToken", "setToken", "getTokenExpiresIn", "()J", "setTokenExpiresIn", "(J)V", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class NeoAccountBase extends BaseData {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String DELIMITER = ",";

    @Nullable
    private transient String _id;

    @Nullable
    private transient List<Device> devices;

    @Nullable
    private List<String> groups;

    @Nullable
    private transient String info;

    @Nullable
    private transient String library;

    @Nullable
    private transient String name;

    @Nullable
    private transient String orgName;

    @Nullable
    private transient String phone;

    @Nullable
    private String token;
    private long tokenExpiresIn;

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0007J\u0010\u0010\t\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u000b\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase$Companion;", "", "()V", "DELIMITER", "", "isValid", "", LoginAuthConst.ACCOUNT_AUTH, "Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase;", "parseInfo", "", "parseName", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JSONField(deserialize = false, serialize = false)
        public final boolean isValid(@Nullable NeoAccountBase account) {
            return StringKt.isNotBlank(account != null ? account.getToken() : null);
        }

        public final void parseInfo(@Nullable NeoAccountBase account) {
            AccountCommon accountCommon = (AccountCommon) JSONUtils.INSTANCE.parseObject(account != null ? account.getInfo() : null, AccountCommon.class);
            if (accountCommon != null) {
                if (account != null) {
                    account.setName(accountCommon.getName());
                }
                if (account != null) {
                    account.setOrgName(accountCommon.getOrganization());
                }
                if (!StringKt.isNotBlank(accountCommon.getPhone()) || account == null) {
                    return;
                }
                account.setPhone(accountCommon.getPhone());
            }
        }

        public final void parseName(@Nullable NeoAccountBase account) {
            AccountCommon accountCommon = (AccountCommon) JSONUtils.INSTANCE.parseObject(account != null ? account.getInfo() : null, AccountCommon.class);
            if (accountCommon == null || account == null) {
                return;
            }
            account.setName(accountCommon.getName());
        }

        private Companion() {
        }
    }

    public NeoAccountBase() {
    }

    @Nullable
    public final List<Device> getDevices() {
        return this.devices;
    }

    @Nullable
    public final List<String> getGroups() {
        return this.groups;
    }

    @Nullable
    public final String getInfo() {
        return this.info;
    }

    @Nullable
    public final String getLibrary() {
        return this.library;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getOrgName() {
        return this.orgName;
    }

    @Nullable
    public final String getPhone() {
        return this.phone;
    }

    @Nullable
    public final String getToken() {
        return this.token;
    }

    public final long getTokenExpiresIn() {
        return this.tokenExpiresIn;
    }

    @Nullable
    public final String get_id() {
        return this._id;
    }

    public final void setDevices(@Nullable List<Device> list) {
        this.devices = list;
    }

    public final void setGroups(@Nullable List<String> list) {
        this.groups = list;
    }

    public final void setInfo(@Nullable String str) {
        this.info = str;
    }

    public final void setLibrary(@Nullable String str) {
        this.library = str;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setOrgName(@Nullable String str) {
        this.orgName = str;
    }

    public final void setPhone(@Nullable String str) {
        this.phone = str;
    }

    public final void setToken(@Nullable String str) {
        this.token = str;
    }

    public final void setTokenExpiresIn(long j) {
        this.tokenExpiresIn = j;
    }

    public final void set_id(@Nullable String str) {
        this._id = str;
    }

    public NeoAccountBase(@Nullable List<String> list, @Nullable String str, long j) {
        this.groups = list;
        this.token = str;
        this.tokenExpiresIn = j;
    }
}
