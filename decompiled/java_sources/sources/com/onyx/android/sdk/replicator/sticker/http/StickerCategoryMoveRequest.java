package com.onyx.android.sdk.replicator.sticker.http;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\r\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryMoveRequest;", "", "", "", "a", "Ljava/util/List;", "getIds", "()Ljava/util/List;", "ids", "b", Constants.STRING_SIG, "getCategory", "()Ljava/lang/String;", "category", CouchFieldKey.KEY_STICKER_ID, "newCategoryId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StickerCategoryMoveRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<String> ids;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String category;

    public StickerCategoryMoveRequest(@NotNull String stickerId, @NotNull String newCategoryId) {
        List<String> listOf;
        Intrinsics.checkNotNullParameter(stickerId, "stickerId");
        Intrinsics.checkNotNullParameter(newCategoryId, "newCategoryId");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(stickerId);
        this.ids = listOf;
        this.category = newCategoryId;
    }

    @NotNull
    public final String getCategory() {
        return this.category;
    }

    @NotNull
    public final List<String> getIds() {
        return this.ids;
    }
}
