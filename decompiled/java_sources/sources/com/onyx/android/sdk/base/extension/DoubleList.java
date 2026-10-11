package com.onyx.android.sdk.base.extension;

import java.util.ArrayList;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003B\u0005¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/base/extension/DoubleList;", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DoubleList extends ArrayList<Double> {
    public /* bridge */ boolean contains(Double d) {
        return super.contains((Object) d);
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    public /* bridge */ int indexOf(Double d) {
        return super.indexOf((Object) d);
    }

    public /* bridge */ int lastIndexOf(Double d) {
        return super.lastIndexOf((Object) d);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ Double remove(int i) {
        return removeAt(i);
    }

    public /* bridge */ Double removeAt(int i) {
        return (Double) super.remove(i);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Double) {
            return contains((Double) obj);
        }
        return false;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof Double) {
            return indexOf((Double) obj);
        }
        return -1;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof Double) {
            return lastIndexOf((Double) obj);
        }
        return -1;
    }

    public /* bridge */ boolean remove(Double d) {
        return super.remove((Object) d);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof Double) {
            return remove((Double) obj);
        }
        return false;
    }
}
