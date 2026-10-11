package com.onyx.android.sdk.replicator.font;

import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import java.util.ArrayList;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003B\u0005¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/font/FontList;", "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "Lkotlin/collections/ArrayList;", "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class FontList extends ArrayList<FontModel> {
    public /* bridge */ boolean contains(FontModel fontModel) {
        return super.contains((Object) fontModel);
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    public /* bridge */ int indexOf(FontModel fontModel) {
        return super.indexOf((Object) fontModel);
    }

    public /* bridge */ int lastIndexOf(FontModel fontModel) {
        return super.lastIndexOf((Object) fontModel);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ FontModel remove(int i) {
        return removeAt(i);
    }

    public /* bridge */ FontModel removeAt(int i) {
        return (FontModel) super.remove(i);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof FontModel) {
            return contains((FontModel) obj);
        }
        return false;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof FontModel) {
            return indexOf((FontModel) obj);
        }
        return -1;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof FontModel) {
            return lastIndexOf((FontModel) obj);
        }
        return -1;
    }

    public /* bridge */ boolean remove(FontModel fontModel) {
        return super.remove((Object) fontModel);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof FontModel) {
            return remove((FontModel) obj);
        }
        return false;
    }
}
