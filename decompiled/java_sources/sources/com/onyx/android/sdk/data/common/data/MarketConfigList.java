package com.onyx.android.sdk.data.common.data;

import java.util.ArrayList;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003B\u0005¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/MarketConfigList;", "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/data/common/data/MarketConfig;", "Lkotlin/collections/ArrayList;", "()V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class MarketConfigList extends ArrayList<MarketConfig> {
    public /* bridge */ boolean contains(MarketConfig marketConfig) {
        return super.contains((Object) marketConfig);
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    public /* bridge */ int indexOf(MarketConfig marketConfig) {
        return super.indexOf((Object) marketConfig);
    }

    public /* bridge */ int lastIndexOf(MarketConfig marketConfig) {
        return super.lastIndexOf((Object) marketConfig);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ MarketConfig remove(int i) {
        return removeAt(i);
    }

    public /* bridge */ MarketConfig removeAt(int i) {
        return (MarketConfig) super.remove(i);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof MarketConfig) {
            return contains((MarketConfig) obj);
        }
        return false;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof MarketConfig) {
            return indexOf((MarketConfig) obj);
        }
        return -1;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof MarketConfig) {
            return lastIndexOf((MarketConfig) obj);
        }
        return -1;
    }

    public /* bridge */ boolean remove(MarketConfig marketConfig) {
        return super.remove((Object) marketConfig);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof MarketConfig) {
            return remove((MarketConfig) obj);
        }
        return false;
    }
}
