package com.couchbase.lite;

import com.couchbase.lite.internal.AbstractWorkManagerReplicatorConfiguration;
import com.couchbase.lite.internal.HelpersKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\r"}, m61528d2 = {"Lcom/couchbase/lite/WorkManagerReplicatorConfiguration;", "Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;", "replConfig", "Lcom/couchbase/lite/ReplicatorConfiguration;", "(Lcom/couchbase/lite/ReplicatorConfiguration;)V", "value", "", "acceptOnlySelfSignedServerCertificate", "getAcceptOnlySelfSignedServerCertificate", Constants.BOOLEAN_VALUE_SIG, "setAcceptOnlySelfSignedServerCertificate", "(Z)V", "Companion", "couchbase-lite-android-ee-ktx-3.2.2-21_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes4.dex */
public final class WorkManagerReplicatorConfiguration extends AbstractWorkManagerReplicatorConfiguration {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, m61528d2 = {"Lcom/couchbase/lite/WorkManagerReplicatorConfiguration$Companion;", "", "()V", "from", "Lcom/couchbase/lite/WorkManagerReplicatorConfiguration;", "target", "Lcom/couchbase/lite/Endpoint;", "rConfig", "Lcom/couchbase/lite/ReplicatorConfiguration;", "couchbase-lite-android-ee-ktx-3.2.2-21_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final WorkManagerReplicatorConfiguration from(@NotNull Endpoint target) {
            Intrinsics.checkNotNullParameter(target, "target");
            return new WorkManagerReplicatorConfiguration(new ReplicatorConfiguration(target), null);
        }

        private Companion() {
        }

        @NotNull
        public final WorkManagerReplicatorConfiguration from(@NotNull ReplicatorConfiguration rConfig) {
            Intrinsics.checkNotNullParameter(rConfig, "rConfig");
            WorkManagerReplicatorConfiguration workManagerReplicatorConfiguration = new WorkManagerReplicatorConfiguration(new ReplicatorConfiguration(rConfig.getTarget(), HelpersKt.getCollectionConfigs(rConfig)), null);
            ReplicatorType type = rConfig.getType();
            Intrinsics.checkNotNullExpressionValue(type, "rConfig.type");
            workManagerReplicatorConfiguration.setType(type);
            workManagerReplicatorConfiguration.setAuthenticator(rConfig.getAuthenticator());
            workManagerReplicatorConfiguration.setHeaders(rConfig.getHeaders());
            workManagerReplicatorConfiguration.setPinnedServerCertificate(rConfig.getPinnedServerX509Certificate());
            workManagerReplicatorConfiguration.setEnableAutoPurge(rConfig.isAutoPurgeEnabled());
            workManagerReplicatorConfiguration.setAcceptOnlySelfSignedServerCertificate(rConfig.isAcceptOnlySelfSignedServerCertificate());
            if (rConfig.isContinuous()) {
                com.couchbase.lite.internal.logging.Log.m9896d(LogDomain.REPLICATOR, "ReplicatorConfiguration.continuous ignored: " + rConfig.isContinuous());
            }
            if (rConfig.getHeartbeat() != 300) {
                com.couchbase.lite.internal.logging.Log.m9896d(LogDomain.REPLICATOR, "ReplicatorConfiguration.heartbeat ignored: " + rConfig.getHeartbeat());
            }
            if (rConfig.getMaxAttempts() != 10) {
                com.couchbase.lite.internal.logging.Log.m9896d(LogDomain.REPLICATOR, "ReplicatorConfiguration.maxAttempts ignored: " + rConfig.getMaxAttempts());
            }
            if (rConfig.getMaxAttemptWaitTime() != 300) {
                com.couchbase.lite.internal.logging.Log.m9896d(LogDomain.REPLICATOR, "ReplicatorConfiguration.maxAttemptWaitTime ignored: " + rConfig.getMaxAttemptWaitTime());
            }
            return workManagerReplicatorConfiguration;
        }
    }

    public /* synthetic */ WorkManagerReplicatorConfiguration(ReplicatorConfiguration replicatorConfiguration, DefaultConstructorMarker defaultConstructorMarker) {
        this(replicatorConfiguration);
    }

    public final boolean getAcceptOnlySelfSignedServerCertificate() {
        return getReplConfig().isAcceptOnlySelfSignedServerCertificate();
    }

    public final void setAcceptOnlySelfSignedServerCertificate(boolean z) {
        getReplConfig().setAcceptOnlySelfSignedServerCertificate(z);
    }

    private WorkManagerReplicatorConfiguration(ReplicatorConfiguration replicatorConfiguration) {
        super(replicatorConfiguration);
    }
}
