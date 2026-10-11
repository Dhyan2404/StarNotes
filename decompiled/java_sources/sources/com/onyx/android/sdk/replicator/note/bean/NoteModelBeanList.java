package com.onyx.android.sdk.replicator.note.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0000¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;", "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lkotlin/collections/ArrayList;", "()V", "addToHead", Constants.ATTRVAL_OTHER, "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteModelBeanList extends ArrayList<NoteModelBean> {
    @NotNull
    public final NoteModelBeanList addToHead(@Nullable NoteModelBeanList other) {
        if (other != null) {
            addAll(0, other);
        }
        return this;
    }

    public /* bridge */ boolean contains(NoteModelBean noteModelBean) {
        return super.contains((Object) noteModelBean);
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    public /* bridge */ int indexOf(NoteModelBean noteModelBean) {
        return super.indexOf((Object) noteModelBean);
    }

    public /* bridge */ int lastIndexOf(NoteModelBean noteModelBean) {
        return super.lastIndexOf((Object) noteModelBean);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ NoteModelBean remove(int i) {
        return removeAt(i);
    }

    public /* bridge */ NoteModelBean removeAt(int i) {
        return (NoteModelBean) super.remove(i);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof NoteModelBean) {
            return contains((NoteModelBean) obj);
        }
        return false;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof NoteModelBean) {
            return indexOf((NoteModelBean) obj);
        }
        return -1;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof NoteModelBean) {
            return lastIndexOf((NoteModelBean) obj);
        }
        return -1;
    }

    public /* bridge */ boolean remove(NoteModelBean noteModelBean) {
        return super.remove((Object) noteModelBean);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof NoteModelBean) {
            return remove((NoteModelBean) obj);
        }
        return false;
    }
}
