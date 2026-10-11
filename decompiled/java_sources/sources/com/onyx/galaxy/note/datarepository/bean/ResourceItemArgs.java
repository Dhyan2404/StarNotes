package com.onyx.galaxy.note.datarepository.bean;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/bean/ResourceItemArgs;", "", "id", "", "resourceType", "version", "", "(Ljava/lang/String;Ljava/lang/String;I)V", "getId", "()Ljava/lang/String;", "getResourceType", "getVersion", "()I", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ResourceItemArgs {

    @NotNull
    private final String id;

    @NotNull
    private final String resourceType;
    private final int version;

    public ResourceItemArgs(@NotNull String id, @NotNull String resourceType, int i) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(resourceType, "resourceType");
        this.id = id;
        this.resourceType = resourceType;
        this.version = i;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final String getResourceType() {
        return this.resourceType;
    }

    public final int getVersion() {
        return this.version;
    }
}
