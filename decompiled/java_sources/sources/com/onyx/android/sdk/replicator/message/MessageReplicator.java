package com.onyx.android.sdk.replicator.message;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.bean.SyncGateway;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.replicator.BaseReplicator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u000f\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u001d\u0010\u001eJ\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0014J\b\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\n\u001a\u00020\tH\u0016J\n\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\u00118\u0016X\u0096D¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R)\u0010\u001c\u001a\u0015\u0012\f\u0012\n \u0018*\u0004\u0018\u00010\u00030\u00030\u0017¢\u0006\u0002\b\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/message/MessageReplicator;", "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", "Lio/reactivex/rxjava3/core/Observable;", "", "startWithObserve", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "createCouchHolder", "Lcom/couchbase/lite/Collection;", "ensureCollection", "", "onSyncChangeFinished", "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;", "getSyncGateway", "Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;", "w", "Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;", "args", "", "x", Constants.STRING_SIG, "getCouchName", "()Ljava/lang/String;", "couchName", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "y", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "publisher", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;)V", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class MessageReplicator extends BaseReplicator {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: z */
    @NotNull
    public static final HashMap<String, Boolean> f45352z = new HashMap<>();

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public final MessageReplicateArgs args;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public final String couchName;

    /* renamed from: y, reason: from kotlin metadata */
    @NotNull
    public PublishSubject<Boolean> publisher;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005J\u0016\u0010\r\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005R*\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/message/MessageReplicator$Companion;", "", "()V", "replicatedMap", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "cacheKey", Constant.TAG_USER_ID, "channel", "markReplicated", "", "replicated", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String cacheKey(@NotNull String userId, @NotNull String channel) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(channel, "channel");
            return userId + '/' + channel;
        }

        public final void markReplicated(@NotNull String userId, @NotNull String channel) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(channel, "channel");
            MessageReplicator.f45352z.put(cacheKey(userId, channel), Boolean.TRUE);
        }

        public final boolean replicated(@NotNull String userId, @NotNull String channel) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(channel, "channel");
            return MessageReplicator.f45352z.containsKey(cacheKey(userId, channel));
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageReplicator(@NotNull MessageReplicateArgs args) {
        super(KSyncBundle.INSTANCE.getDbProviderBundle(), args.baseReplicatorArgs());
        List<String> listOf;
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        this.couchName = SyncConstant.MESSAGE_DB_NAME;
        PublishSubject<Boolean> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.publisher = create;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(args.getChannel());
        setSyncChannels(listOf);
    }

    @Override // com.onyx.android.sdk.replicator.replicator.BaseReplicator
    @NotNull
    public CouchHolder createCouchHolder() {
        return getProviderBundle().getNoteCouchHolder(ProviderInfoUtils.INSTANCE.getMessageProviderInfo(getUserId()));
    }

    @Override // com.onyx.android.sdk.replicator.replicator.BaseReplicator
    @NotNull
    public Collection ensureCollection() {
        return ensureCouchDb().ensureCollection(this.args.getChannel());
    }

    @Override // com.onyx.android.sdk.replicator.replicator.BaseReplicator
    @NotNull
    public String getCouchName() {
        return this.couchName;
    }

    @Override // com.onyx.android.sdk.replicator.replicator.BaseReplicator
    @Nullable
    public SyncGateway getSyncGateway() {
        return this.args.getGateway();
    }

    @Override // com.onyx.android.sdk.replicator.replicator.BaseReplicator
    public void onSyncChangeFinished() {
        if (!isSyncError()) {
            INSTANCE.markReplicated(getUserId(), this.args.getChannel());
        }
        this.publisher.onNext(Boolean.valueOf(isSyncError()));
    }

    @NotNull
    public final Observable<Boolean> startWithObserve() {
        PublishSubject<Boolean> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.publisher = create;
        BaseReplicator.startReplicator$default(this, null, 1, null);
        return this.publisher;
    }
}
