package com.onyx.android.sdk.replicator.utils;

import com.couchbase.lite.Expression;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\u0004J\u0006\u0010\f\u001a\u00020\u0004J\u0006\u0010\r\u001a\u00020\u0004¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/utils/CouchExpressionUtils;", "", "()V", "docForceRemovedExpression", "Lcom/couchbase/lite/Expression;", "docSyncDisableExpression", "docSyncEnableExpression", "docTypeExpression", "type", "", "isNoteDocCommitExpression", "isNoteDocumentExpression", "isNoteEnabledExpression", "notCommitDocExpression", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class CouchExpressionUtils {

    @NotNull
    public static final CouchExpressionUtils INSTANCE = new CouchExpressionUtils();

    @NotNull
    public final Expression docForceRemovedExpression() {
        Expression equalTo = Expression.property("status").equalTo(Expression.intValue(2));
        Intrinsics.checkNotNullExpressionValue(equalTo, "equalTo(...)");
        return equalTo;
    }

    @NotNull
    public final Expression docSyncDisableExpression() {
        Expression equalTo = Expression.property(CouchFieldKey.KEY_NOTE_SYNC_STATUS).equalTo(Expression.intValue(0));
        Intrinsics.checkNotNullExpressionValue(equalTo, "equalTo(...)");
        return equalTo;
    }

    @NotNull
    public final Expression docSyncEnableExpression() {
        Expression equalTo = Expression.property(CouchFieldKey.KEY_NOTE_SYNC_STATUS).equalTo(Expression.intValue(1));
        Intrinsics.checkNotNullExpressionValue(equalTo, "equalTo(...)");
        return equalTo;
    }

    @NotNull
    public final Expression docTypeExpression(int type) {
        Expression equalTo = Expression.property("type").equalTo(Expression.intValue(type));
        Intrinsics.checkNotNullExpressionValue(equalTo, "equalTo(...)");
        return equalTo;
    }

    @NotNull
    public final Expression isNoteDocCommitExpression() {
        Expression equalTo = Expression.property(CouchFieldKey.KEY_COMMIT_TYPE).equalTo(Expression.intValue(1));
        Intrinsics.checkNotNullExpressionValue(equalTo, "equalTo(...)");
        return equalTo;
    }

    @NotNull
    public final Expression isNoteDocumentExpression() {
        Expression equalTo = Expression.property("type").equalTo(Expression.intValue(1));
        Intrinsics.checkNotNullExpressionValue(equalTo, "equalTo(...)");
        return equalTo;
    }

    @NotNull
    public final Expression isNoteEnabledExpression() {
        Expression equalTo = Expression.property("status").equalTo(Expression.intValue(1));
        Intrinsics.checkNotNullExpressionValue(equalTo, "equalTo(...)");
        return equalTo;
    }

    @NotNull
    public final Expression notCommitDocExpression() {
        Expression isNotValued = Expression.property(CouchFieldKey.KEY_COMMIT_STATUS).isNotValued();
        Intrinsics.checkNotNullExpressionValue(isNotValued, "isNotValued(...)");
        return isNotValued;
    }
}
