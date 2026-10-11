package com.onyx.android.sdk.note.common.shape;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001R \u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/ShapeTag;", "", CouchFieldKey.KEY_TAG_ID_LIST, "", "", "getTagIdList", "()Ljava/util/List;", "setTagIdList", "(Ljava/util/List;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ShapeTag {
    @Nullable
    List<String> getTagIdList();

    void setTagIdList(@Nullable List<String> list);
}
