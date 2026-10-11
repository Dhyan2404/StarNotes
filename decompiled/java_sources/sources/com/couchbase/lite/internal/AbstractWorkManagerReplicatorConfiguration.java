package com.couchbase.lite.internal;

import com.couchbase.lite.Authenticator;
import com.couchbase.lite.Collection;
import com.couchbase.lite.CollectionConfiguration;
import com.couchbase.lite.ReplicatorConfiguration;
import com.couchbase.lite.ReplicatorType;
import com.couchbase.lite.internal.core.C4Replicator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.security.cert.X509Certificate;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlin.reflect.KProperty0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u00102\n\b\u0002\u00107\u001a\u0004\u0018\u000108J \u00109\u001a\u0002052\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100:2\n\b\u0002\u00107\u001a\u0004\u0018\u000108J\u0006\u0010;\u001a\u00020\u0003J\u000e\u0010<\u001a\u0002052\u0006\u00106\u001a\u00020\u0010R/\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00068F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r*\u0004\b\b\u0010\tR!\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012R$\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u00168F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bRG\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001c2\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001c8F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#*\u0004\b\u001f\u0010\tR/\u0010%\u001a\u0004\u0018\u00010$2\b\u0010\u0005\u001a\u0004\u0018\u00010$8F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\b'\u0010(\"\u0004\b)\u0010**\u0004\b&\u0010\tR\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R+\u0010.\u001a\u00020-2\u0006\u0010\u0005\u001a\u00020-8F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\b0\u00101\"\u0004\b2\u00103*\u0004\b/\u0010\t¨\u0006="}, m61528d2 = {"Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;", "", "replConfig", "Lcom/couchbase/lite/ReplicatorConfiguration;", "(Lcom/couchbase/lite/ReplicatorConfiguration;)V", "<set-?>", "Lcom/couchbase/lite/Authenticator;", "authenticator", "getAuthenticator$delegate", "(Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;)Ljava/lang/Object;", "getAuthenticator", "()Lcom/couchbase/lite/Authenticator;", "setAuthenticator", "(Lcom/couchbase/lite/Authenticator;)V", "collections", "", "Lcom/couchbase/lite/Collection;", "getCollections", "()Ljava/util/Set;", "collections$delegate", "Lkotlin/reflect/KProperty0;", "value", "", "enableAutoPurge", "getEnableAutoPurge", Constants.BOOLEAN_VALUE_SIG, "setEnableAutoPurge", "(Z)V", "", "", C4Replicator.REPLICATOR_OPTION_EXTRA_HEADERS, "getHeaders$delegate", "getHeaders", "()Ljava/util/Map;", "setHeaders", "(Ljava/util/Map;)V", "Ljava/security/cert/X509Certificate;", "pinnedServerCertificate", "getPinnedServerCertificate$delegate", "getPinnedServerCertificate", "()Ljava/security/cert/X509Certificate;", "setPinnedServerCertificate", "(Ljava/security/cert/X509Certificate;)V", "getReplConfig", "()Lcom/couchbase/lite/ReplicatorConfiguration;", "Lcom/couchbase/lite/ReplicatorType;", "type", "getType$delegate", "getType", "()Lcom/couchbase/lite/ReplicatorType;", "setType", "(Lcom/couchbase/lite/ReplicatorType;)V", "addCollection", "", "collection", "collectionConfig", "Lcom/couchbase/lite/CollectionConfiguration;", "addCollections", "", "getConfig", "removeCollection", "couchbase-lite-android-ee-ktx-3.2.2-21_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes4.dex */
public abstract class AbstractWorkManagerReplicatorConfiguration {

    /* renamed from: collections$delegate, reason: from kotlin metadata */
    @NotNull
    private final KProperty0 collections;

    @NotNull
    private final ReplicatorConfiguration replConfig;

    public AbstractWorkManagerReplicatorConfiguration(@NotNull final ReplicatorConfiguration replConfig) {
        Intrinsics.checkNotNullParameter(replConfig, "replConfig");
        this.replConfig = replConfig;
        this.collections = new PropertyReference0Impl(replConfig) { // from class: com.couchbase.lite.internal.AbstractWorkManagerReplicatorConfiguration$collections$2
            @Override // kotlin.jvm.internal.PropertyReference0Impl, kotlin.reflect.KProperty0
            @Nullable
            public Object get() {
                return ((ReplicatorConfiguration) this.receiver).getCollections();
            }
        };
    }

    public static /* synthetic */ void addCollection$default(AbstractWorkManagerReplicatorConfiguration abstractWorkManagerReplicatorConfiguration, Collection collection, CollectionConfiguration collectionConfiguration, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addCollection");
        }
        if ((i & 2) != 0) {
            collectionConfiguration = null;
        }
        abstractWorkManagerReplicatorConfiguration.addCollection(collection, collectionConfiguration);
    }

    public static /* synthetic */ void addCollections$default(AbstractWorkManagerReplicatorConfiguration abstractWorkManagerReplicatorConfiguration, java.util.Collection collection, CollectionConfiguration collectionConfiguration, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addCollections");
        }
        if ((i & 2) != 0) {
            collectionConfiguration = null;
        }
        abstractWorkManagerReplicatorConfiguration.addCollections(collection, collectionConfiguration);
    }

    public final void addCollection(@NotNull Collection collection, @Nullable CollectionConfiguration collectionConfig) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        this.replConfig.addCollection(collection, collectionConfig);
    }

    public final void addCollections(@NotNull java.util.Collection<Collection> collections, @Nullable CollectionConfiguration collectionConfig) {
        Intrinsics.checkNotNullParameter(collections, "collections");
        this.replConfig.addCollections(collections, collectionConfig);
    }

    @Nullable
    public final Authenticator getAuthenticator() {
        return this.replConfig.getAuthenticator();
    }

    @NotNull
    public final Set<Collection> getCollections() {
        Object obj = this.collections.get();
        Intrinsics.checkNotNullExpressionValue(obj, "<get-collections>(...)");
        return (Set) obj;
    }

    @NotNull
    public final ReplicatorConfiguration getConfig() {
        return new ReplicatorConfiguration(this.replConfig);
    }

    public final boolean getEnableAutoPurge() {
        return this.replConfig.isAutoPurgeEnabled();
    }

    @Nullable
    public final Map<String, String> getHeaders() {
        return this.replConfig.getHeaders();
    }

    @Nullable
    public final X509Certificate getPinnedServerCertificate() {
        return this.replConfig.getPinnedServerX509Certificate();
    }

    @NotNull
    public final ReplicatorConfiguration getReplConfig() {
        return this.replConfig;
    }

    @NotNull
    public final ReplicatorType getType() {
        return this.replConfig.getType();
    }

    public final void removeCollection(@NotNull Collection collection) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        this.replConfig.removeCollection(collection);
    }

    public final void setAuthenticator(@Nullable Authenticator authenticator) {
        this.replConfig.setAuthenticator(authenticator);
    }

    public final void setEnableAutoPurge(boolean z) {
        this.replConfig.setAutoPurgeEnabled(z);
    }

    public final void setHeaders(@Nullable Map<String, String> map) {
        this.replConfig.setHeaders(map);
    }

    public final void setPinnedServerCertificate(@Nullable X509Certificate x509Certificate) {
        this.replConfig.setPinnedServerX509Certificate(x509Certificate);
    }

    public final void setType(@NotNull ReplicatorType replicatorType) {
        Intrinsics.checkNotNullParameter(replicatorType, "<set-?>");
        this.replConfig.setType(replicatorType);
    }
}
