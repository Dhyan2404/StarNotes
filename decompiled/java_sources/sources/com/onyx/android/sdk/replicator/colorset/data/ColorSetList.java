package com.onyx.android.sdk.replicator.colorset.data;

import java.util.ArrayList;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003B\u0005¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetList;", "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;", "Lkotlin/collections/ArrayList;", "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ColorSetList extends ArrayList<ColorSetModel> {
    public /* bridge */ boolean contains(ColorSetModel colorSetModel) {
        return super.contains((Object) colorSetModel);
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    public /* bridge */ int indexOf(ColorSetModel colorSetModel) {
        return super.indexOf((Object) colorSetModel);
    }

    public /* bridge */ int lastIndexOf(ColorSetModel colorSetModel) {
        return super.lastIndexOf((Object) colorSetModel);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ ColorSetModel remove(int i) {
        return removeAt(i);
    }

    public /* bridge */ ColorSetModel removeAt(int i) {
        return (ColorSetModel) super.remove(i);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ColorSetModel) {
            return contains((ColorSetModel) obj);
        }
        return false;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof ColorSetModel) {
            return indexOf((ColorSetModel) obj);
        }
        return -1;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof ColorSetModel) {
            return lastIndexOf((ColorSetModel) obj);
        }
        return -1;
    }

    public /* bridge */ boolean remove(ColorSetModel colorSetModel) {
        return super.remove((Object) colorSetModel);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof ColorSetModel) {
            return remove((ColorSetModel) obj);
        }
        return false;
    }
}
