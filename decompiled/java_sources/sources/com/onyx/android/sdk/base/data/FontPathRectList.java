package com.onyx.android.sdk.base.data;

import android.graphics.RectF;
import com.onyx.android.sdk.base.utils.RectUtils;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/FontPathRectList;", "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/base/data/FontPathRect;", "Lkotlin/collections/ArrayList;", "()V", "getUnionFontRect", "Landroid/graphics/RectF;", "getUnionPathRect", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nFontPathRect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontPathRect.kt\ncom/onyx/android/sdk/base/data/FontPathRectList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,37:1\n1549#2:38\n1620#2,3:39\n1549#2:42\n1620#2,3:43\n*S KotlinDebug\n*F\n+ 1 FontPathRect.kt\ncom/onyx/android/sdk/base/data/FontPathRectList\n*L\n31#1:38\n31#1:39,3\n35#1:42\n35#1:43,3\n*E\n"})
/* loaded from: classes7.dex */
public final class FontPathRectList extends ArrayList<FontPathRect> {
    public /* bridge */ boolean contains(FontPathRect fontPathRect) {
        return super.contains((Object) fontPathRect);
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    @NotNull
    public final RectF getUnionFontRect() {
        int collectionSizeOrDefault;
        RectUtils rectUtils = RectUtils.INSTANCE;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(this, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<FontPathRect> it2 = iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getFontRect());
        }
        return rectUtils.union(arrayList);
    }

    @NotNull
    public final RectF getUnionPathRect() {
        int collectionSizeOrDefault;
        RectUtils rectUtils = RectUtils.INSTANCE;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(this, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<FontPathRect> it2 = iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getPathRect());
        }
        return rectUtils.union(arrayList);
    }

    public /* bridge */ int indexOf(FontPathRect fontPathRect) {
        return super.indexOf((Object) fontPathRect);
    }

    public /* bridge */ int lastIndexOf(FontPathRect fontPathRect) {
        return super.lastIndexOf((Object) fontPathRect);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ FontPathRect remove(int i) {
        return removeAt(i);
    }

    public /* bridge */ FontPathRect removeAt(int i) {
        return (FontPathRect) super.remove(i);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof FontPathRect) {
            return contains((FontPathRect) obj);
        }
        return false;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof FontPathRect) {
            return indexOf((FontPathRect) obj);
        }
        return -1;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof FontPathRect) {
            return lastIndexOf((FontPathRect) obj);
        }
        return -1;
    }

    public /* bridge */ boolean remove(FontPathRect fontPathRect) {
        return super.remove((Object) fontPathRect);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof FontPathRect) {
            return remove((FontPathRect) obj);
        }
        return false;
    }
}
