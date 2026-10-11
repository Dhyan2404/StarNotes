package com.onyx.android.sdk.replicator.message;

import com.onyx.android.sdk.data.couchbase.bean.SyncGateway;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.bean.ReplicatorArgs;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u001c\u0010\u001dJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\b\u001a\u00020\u0007J\t\u0010\t\u001a\u00020\u0004HÆ\u0003J\t\u0010\u000b\u001a\u00020\nHÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\nHÆ\u0001J\t\u0010\u000f\u001a\u00020\u0004HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\u0013\u0010\u0013\u001a\u00020\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\r\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;", "", "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;", "getGateway", "", "getUserId", "getCacheKey", "Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;", "baseReplicatorArgs", "component1", "", "component2", "channel", "anonymous", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getChannel", "()Ljava/lang/String;", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getAnonymous", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Z)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class MessageReplicateArgs {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String channel;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final boolean anonymous;

    public MessageReplicateArgs(@NotNull String channel, boolean z) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        this.channel = channel;
        this.anonymous = z;
    }

    public static /* synthetic */ MessageReplicateArgs copy$default(MessageReplicateArgs messageReplicateArgs, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = messageReplicateArgs.channel;
        }
        if ((i & 2) != 0) {
            z = messageReplicateArgs.anonymous;
        }
        return messageReplicateArgs.copy(str, z);
    }

    @NotNull
    public final ReplicatorArgs baseReplicatorArgs() {
        return new ReplicatorArgs(getUserId());
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getChannel() {
        return this.channel;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getAnonymous() {
        return this.anonymous;
    }

    @NotNull
    public final MessageReplicateArgs copy(@NotNull String channel, boolean anonymous) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        return new MessageReplicateArgs(channel, anonymous);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MessageReplicateArgs)) {
            return false;
        }
        MessageReplicateArgs messageReplicateArgs = (MessageReplicateArgs) other;
        return Intrinsics.areEqual(this.channel, messageReplicateArgs.channel) && this.anonymous == messageReplicateArgs.anonymous;
    }

    public final boolean getAnonymous() {
        return this.anonymous;
    }

    @NotNull
    public final String getCacheKey() {
        return MessageReplicator.INSTANCE.cacheKey(getUserId(), this.channel);
    }

    @NotNull
    public final String getChannel() {
        return this.channel;
    }

    @NotNull
    public final SyncGateway getGateway() {
        if (this.anonymous) {
            SyncGateway anonymousSyncGateway = KSyncBundle.INSTANCE.getAnonymousSyncGateway();
            Intrinsics.checkNotNull(anonymousSyncGateway);
            return anonymousSyncGateway;
        }
        SyncGateway syncGateway = KSyncBundle.INSTANCE.getSyncGateway();
        Intrinsics.checkNotNull(syncGateway);
        return syncGateway;
    }

    @NotNull
    public final String getUserId() {
        String username = getGateway().getUsername();
        Intrinsics.checkNotNull(username);
        return username;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.channel.hashCode() * 31;
        boolean z = this.anonymous;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    @NotNull
    public String toString() {
        return "MessageReplicateArgs(channel=" + this.channel + ", anonymous=" + this.anonymous + ')';
    }
}
