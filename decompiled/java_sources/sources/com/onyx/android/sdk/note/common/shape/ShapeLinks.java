package com.onyx.android.sdk.note.common.shape;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J\u0012\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\n*\u00020\u0005J\n\u0010\u000b\u001a\u00020\f*\u00020\u0005J\u0012\u0010\r\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u000e\u001a\u00020\bJ\u0018\u0010\u000f\u001a\u00020\u0004*\u00020\u00052\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\n¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/ShapeLinks;", "", "()V", "addLinkIds", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "tagIds", "", "", "getLinkIdList", "", "hasLink", "", "removeLinkId", CouchFieldKey.KEY_TAG_ID, "setLinkIdList", "list", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeLinks {

    @NotNull
    public static final ShapeLinks INSTANCE = new ShapeLinks();

    public final void addLinkIds(@NotNull Shape shape, @NotNull Set<String> tagIds) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(tagIds, "tagIds");
        List<String> linkIdList = shape.getLinkIdList();
        if (linkIdList == null) {
            linkIdList = new ArrayList<>();
        }
        shape.setLinkIdList(linkIdList);
        List<String> linkIdList2 = shape.getLinkIdList();
        if (linkIdList2 != null) {
            linkIdList2.addAll(tagIds);
        }
    }

    @Nullable
    public final List<String> getLinkIdList(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getLinkIdList();
    }

    public final boolean hasLink(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return CollectionKt.isNonBlank(shape.getLinkIdList());
    }

    public final void removeLinkId(@NotNull Shape shape, @NotNull String tagId) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(tagId, "tagId");
        List<String> linkIdList = shape.getLinkIdList();
        if (linkIdList != null) {
            linkIdList.remove(tagId);
        }
    }

    public final void setLinkIdList(@NotNull Shape shape, @NotNull List<String> list) {
        List<String> mutableList;
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
        shape.setLinkIdList(mutableList);
    }
}
