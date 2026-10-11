package com.onyx.android.sdk.data.common.data;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00122\u00020\u0001:\u0002\u0011\u0012B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0005J\u0010\u0010\r\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;", "Ljava/io/Serializable;", "()V", "certificates", "", "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;", "getCertificates", "()Ljava/util/List;", "setCertificates", "(Ljava/util/List;)V", "addCertificate", "", "certificate", "find", "name", "", "defaultValue", "Certificate", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ProviderCertificate implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private List<Certificate> certificates = new ArrayList();

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0004R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\u0004R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0007\"\u0004\b\u000e\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0007R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\u0004¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;", "Ljava/io/Serializable;", "name", "", "(Ljava/lang/String;)V", "clientID", "getClientID", "()Ljava/lang/String;", "setClientID", "extraInfo", "getExtraInfo", "setExtraInfo", "key", "getKey", "setKey", "getName", "secret", "getSecret", "setSecret", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Certificate implements Serializable {

        @Nullable
        private String clientID;

        @Nullable
        private String extraInfo;

        @Nullable
        private String key;

        @NotNull
        private final String name;

        @Nullable
        private String secret;

        public Certificate(@NotNull String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.name = name;
        }

        @Nullable
        public final String getClientID() {
            return this.clientID;
        }

        @Nullable
        public final String getExtraInfo() {
            return this.extraInfo;
        }

        @Nullable
        public final String getKey() {
            return this.key;
        }

        @NotNull
        public final String getName() {
            return this.name;
        }

        @Nullable
        public final String getSecret() {
            return this.secret;
        }

        public final void setClientID(@Nullable String str) {
            this.clientID = str;
        }

        public final void setExtraInfo(@Nullable String str) {
            this.extraInfo = str;
        }

        public final void setKey(@Nullable String str) {
            this.key = str;
        }

        public final void setSecret(@Nullable String str) {
            this.secret = str;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Companion;", "", "()V", "isValid", "", "certificate", "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isValid(@NotNull ProviderCertificate certificate) {
            Intrinsics.checkNotNullParameter(certificate, "certificate");
            return !certificate.getCertificates().isEmpty();
        }

        private Companion() {
        }
    }

    public final void addCertificate(@NotNull Certificate certificate) {
        Intrinsics.checkNotNullParameter(certificate, "certificate");
        if (this.certificates.contains(certificate)) {
            return;
        }
        this.certificates.add(certificate);
    }

    @Nullable
    public final Certificate find(@NotNull String name) {
        Object obj;
        boolean equals;
        Intrinsics.checkNotNullParameter(name, "name");
        Iterator<T> it2 = this.certificates.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            equals = StringsKt__StringsJVMKt.equals(name, ((Certificate) obj).getName(), true);
            if (equals) {
                break;
            }
        }
        return (Certificate) obj;
    }

    @NotNull
    public final List<Certificate> getCertificates() {
        return this.certificates;
    }

    public final void setCertificates(@NotNull List<Certificate> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.certificates = list;
    }

    @NotNull
    public final Certificate find(@NotNull String name, @NotNull Certificate defaultValue) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        Certificate find = find(name);
        return find == null ? defaultValue : find;
    }
}
