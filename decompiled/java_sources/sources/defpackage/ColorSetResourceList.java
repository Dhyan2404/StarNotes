package defpackage;

import java.util.ArrayList;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003B\u0005¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m61528d2 = {"LColorSetResourceList;", "Ljava/util/ArrayList;", "LColorSetResource;", "Lkotlin/collections/ArrayList;", "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes3.dex */
public final class ColorSetResourceList extends ArrayList<ColorSetResource> {
    public /* bridge */ boolean contains(ColorSetResource colorSetResource) {
        return super.contains((Object) colorSetResource);
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    public /* bridge */ int indexOf(ColorSetResource colorSetResource) {
        return super.indexOf((Object) colorSetResource);
    }

    public /* bridge */ int lastIndexOf(ColorSetResource colorSetResource) {
        return super.lastIndexOf((Object) colorSetResource);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ ColorSetResource remove(int i) {
        return removeAt(i);
    }

    public /* bridge */ ColorSetResource removeAt(int i) {
        return (ColorSetResource) super.remove(i);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ColorSetResource) {
            return contains((ColorSetResource) obj);
        }
        return false;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof ColorSetResource) {
            return indexOf((ColorSetResource) obj);
        }
        return -1;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof ColorSetResource) {
            return lastIndexOf((ColorSetResource) obj);
        }
        return -1;
    }

    public /* bridge */ boolean remove(ColorSetResource colorSetResource) {
        return super.remove((Object) colorSetResource);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof ColorSetResource) {
            return remove((ColorSetResource) obj);
        }
        return false;
    }
}
