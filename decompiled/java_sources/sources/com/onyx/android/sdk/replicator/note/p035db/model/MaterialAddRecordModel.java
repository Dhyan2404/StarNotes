package com.onyx.android.sdk.replicator.note.p035db.model;

import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/MaterialAddRecordModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", CouchFieldKey.KEY_LIBRARY_ID, "", "resourceType", "version", "", "(Ljava/lang/String;Ljava/lang/String;I)V", "getLibraryId", "()Ljava/lang/String;", "getResourceType", "getVersion", "()I", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class MaterialAddRecordModel extends BaseReplicatorModel {

    @NotNull
    private final String libraryId;

    @NotNull
    private final String resourceType;
    private final int version;

    public MaterialAddRecordModel() {
        this(null, null, 0, 7, null);
    }

    @NotNull
    public final String getLibraryId() {
        return this.libraryId;
    }

    @NotNull
    public final String getResourceType() {
        return this.resourceType;
    }

    public final int getVersion() {
        return this.version;
    }

    public /* synthetic */ MaterialAddRecordModel(String str, String str2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? 0 : i);
    }

    public MaterialAddRecordModel(@NotNull String libraryId, @NotNull String resourceType, int i) {
        Intrinsics.checkNotNullParameter(libraryId, "libraryId");
        Intrinsics.checkNotNullParameter(resourceType, "resourceType");
        this.libraryId = libraryId;
        this.resourceType = resourceType;
        this.version = i;
    }
}
