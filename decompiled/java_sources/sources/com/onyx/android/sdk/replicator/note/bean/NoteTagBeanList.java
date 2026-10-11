package com.onyx.android.sdk.replicator.note.bean;

import java.util.ArrayList;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003B\u0005¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;", "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lkotlin/collections/ArrayList;", "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteTagBeanList extends ArrayList<NoteTagBean> {
    public /* bridge */ boolean contains(NoteTagBean noteTagBean) {
        return super.contains((Object) noteTagBean);
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    public /* bridge */ int indexOf(NoteTagBean noteTagBean) {
        return super.indexOf((Object) noteTagBean);
    }

    public /* bridge */ int lastIndexOf(NoteTagBean noteTagBean) {
        return super.lastIndexOf((Object) noteTagBean);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ NoteTagBean remove(int i) {
        return removeAt(i);
    }

    public /* bridge */ NoteTagBean removeAt(int i) {
        return (NoteTagBean) super.remove(i);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof NoteTagBean) {
            return contains((NoteTagBean) obj);
        }
        return false;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof NoteTagBean) {
            return indexOf((NoteTagBean) obj);
        }
        return -1;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof NoteTagBean) {
            return lastIndexOf((NoteTagBean) obj);
        }
        return -1;
    }

    public /* bridge */ boolean remove(NoteTagBean noteTagBean) {
        return super.remove((Object) noteTagBean);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof NoteTagBean) {
            return remove((NoteTagBean) obj);
        }
        return false;
    }
}
