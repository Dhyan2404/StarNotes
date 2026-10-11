package com.onyx.android.sdk.note.common.shape;

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

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J\u0012\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\n*\u00020\u0005J\u0012\u0010\u000b\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\f\u001a\u00020\bJ\u001e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\n*\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\nJ\u0018\u0010\u000e\u001a\u00020\u0004*\u00020\u00052\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\n¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/ShapeTags;", "", "()V", "addTagIds", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "tagIds", "", "", "getTagIdList", "", "removeTagId", CouchFieldKey.KEY_TAG_ID, "removeTagIds", "setTagIdList", "list", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeTags {

    @NotNull
    public static final ShapeTags INSTANCE = new ShapeTags();

    public final void addTagIds(@NotNull Shape shape, @NotNull Set<String> tagIds) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(tagIds, "tagIds");
        List<String> tagIdList = shape.getTagIdList();
        if (tagIdList == null) {
            tagIdList = new ArrayList<>();
        }
        shape.setTagIdList(tagIdList);
        List<String> tagIdList2 = shape.getTagIdList();
        if (tagIdList2 != null) {
            tagIdList2.addAll(tagIds);
        }
    }

    @Nullable
    public final List<String> getTagIdList(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getTagIdList();
    }

    public final void removeTagId(@NotNull Shape shape, @NotNull String tagId) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(tagId, "tagId");
        List<String> tagIdList = shape.getTagIdList();
        if (tagIdList != null) {
            tagIdList.remove(tagId);
        }
    }

    @NotNull
    public final List<String> removeTagIds(@NotNull Shape shape, @NotNull List<String> tagIds) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(tagIds, "tagIds");
        ArrayList arrayList = new ArrayList();
        List<String> tagIdList = shape.getTagIdList();
        if (tagIdList == null) {
            return arrayList;
        }
        for (String str : tagIds) {
            if (tagIdList.remove(str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public final void setTagIdList(@NotNull Shape shape, @NotNull List<String> list) {
        List<String> mutableList;
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
        shape.setTagIdList(mutableList);
    }
}
