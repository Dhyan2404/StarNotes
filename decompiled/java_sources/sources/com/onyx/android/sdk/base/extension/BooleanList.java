package com.onyx.android.sdk.base.extension;

import java.util.ArrayList;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003B\u0005¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/base/extension/BooleanList;", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class BooleanList extends ArrayList<Boolean> {
    public /* bridge */ boolean contains(Boolean bool) {
        return super.contains((Object) bool);
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    public /* bridge */ int indexOf(Boolean bool) {
        return super.indexOf((Object) bool);
    }

    public /* bridge */ int lastIndexOf(Boolean bool) {
        return super.lastIndexOf((Object) bool);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ Boolean remove(int i) {
        return removeAt(i);
    }

    public /* bridge */ Boolean removeAt(int i) {
        return (Boolean) super.remove(i);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Boolean) {
            return contains((Boolean) obj);
        }
        return false;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof Boolean) {
            return indexOf((Boolean) obj);
        }
        return -1;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof Boolean) {
            return lastIndexOf((Boolean) obj);
        }
        return -1;
    }

    public /* bridge */ boolean remove(Boolean bool) {
        return super.remove((Object) bool);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof Boolean) {
            return remove((Boolean) obj);
        }
        return false;
    }
}
