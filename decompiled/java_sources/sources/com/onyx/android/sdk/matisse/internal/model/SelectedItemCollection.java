package com.onyx.android.sdk.matisse.internal.model;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.matisse.internal.entity.IncapableCause;
import com.onyx.android.sdk.matisse.internal.entity.Item;
import com.onyx.android.sdk.matisse.internal.entity.SelectionSpec;
import com.onyx.android.sdk.matisse.internal.utils.PathUtils;
import com.onyx.android.sdk.matisse.internal.utils.PhotoMetadataUtils;
import com.sagittarius.p050v6.C13086AB;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes17.dex */
public class SelectedItemCollection {
    public static final int COLLECTION_IMAGE = 1;
    public static final int COLLECTION_MIXED = 3;
    public static final int COLLECTION_UNDEFINED = 0;
    public static final int COLLECTION_VIDEO = 2;
    public static final String STATE_COLLECTION_TYPE = "state_collection_type";
    public static final String STATE_SELECTION = "state_selection";

    /* renamed from: a */
    public final Context f42743a;

    /* renamed from: b */
    public Set<Item> f42744b;

    /* renamed from: c */
    public int f42745c = 0;

    public SelectedItemCollection(Context context) {
        this.f42743a = context;
    }

    /* renamed from: a */
    public final int m33426a() {
        SelectionSpec selectionSpec = SelectionSpec.getInstance();
        int i = selectionSpec.maxSelectable;
        if (i > 0) {
            return i;
        }
        int i2 = this.f42745c;
        return i2 == 1 ? selectionSpec.maxImageSelectable : i2 == 2 ? selectionSpec.maxVideoSelectable : i;
    }

    public boolean add(Item item) {
        if (typeConflict(item)) {
            throw new IllegalArgumentException("Can't select images and videos at the same time.");
        }
        boolean add = this.f42744b.add(item);
        if (add) {
            int i = this.f42745c;
            if (i == 0) {
                if (item.isImage()) {
                    this.f42745c = 1;
                } else if (item.isVideo()) {
                    this.f42745c = 2;
                }
            } else if (i == 1) {
                if (item.isVideo()) {
                    this.f42745c = 3;
                }
            } else if (i == 2 && item.isImage()) {
                this.f42745c = 3;
            }
        }
        return add;
    }

    public List<Item> asList() {
        return new ArrayList(this.f42744b);
    }

    public List<String> asListOfString() {
        ArrayList arrayList = new ArrayList();
        Iterator<Item> it2 = this.f42744b.iterator();
        while (it2.hasNext()) {
            arrayList.add(PathUtils.getPath(this.f42743a, it2.next().getContentUri()));
        }
        return arrayList;
    }

    public List<Uri> asListOfUri() {
        ArrayList arrayList = new ArrayList();
        Iterator<Item> it2 = this.f42744b.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getContentUri());
        }
        return arrayList;
    }

    /* renamed from: b */
    public final void m33427b() {
        boolean z = false;
        boolean z2 = false;
        for (Item item : this.f42744b) {
            if (item.isImage() && !z) {
                z = true;
            }
            if (item.isVideo() && !z2) {
                z2 = true;
            }
        }
        if (z && z2) {
            this.f42745c = 3;
        } else if (z) {
            this.f42745c = 1;
        } else if (z2) {
            this.f42745c = 2;
        }
    }

    public int checkedNumOf(Item item) {
        int indexOf = new ArrayList(this.f42744b).indexOf(item);
        if (indexOf == -1) {
            return Integer.MIN_VALUE;
        }
        return indexOf + 1;
    }

    public int count() {
        return this.f42744b.size();
    }

    public int getCollectionType() {
        return this.f42745c;
    }

    public Bundle getDataWithBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(STATE_SELECTION, new ArrayList<>(this.f42744b));
        bundle.putInt(STATE_COLLECTION_TYPE, this.f42745c);
        return bundle;
    }

    public IncapableCause isAcceptable(Item item) {
        String string;
        if (!maxSelectableReached()) {
            return typeConflict(item) ? new IncapableCause(this.f42743a.getString(C7453R.string.error_type_conflict)) : PhotoMetadataUtils.isAcceptable(this.f42743a, item);
        }
        int m33426a = m33426a();
        try {
            string = String.format(this.f42743a.getResources().getString(C7453R.string.error_over_count), Integer.valueOf(m33426a));
        } catch (Resources.NotFoundException unused) {
            string = this.f42743a.getString(C7453R.string.error_over_count, Integer.valueOf(m33426a));
        } catch (NoClassDefFoundError unused2) {
            string = this.f42743a.getString(C7453R.string.error_over_count, Integer.valueOf(m33426a));
        }
        return new IncapableCause(string);
    }

    public boolean isEmpty() {
        Set<Item> set = this.f42744b;
        return set == null || set.isEmpty();
    }

    public boolean isSelected(Item item) {
        return this.f42744b.contains(item);
    }

    public boolean maxSelectableReached() {
        return this.f42744b.size() == m33426a();
    }

    public void onCreate(Bundle bundle) {
        C13086AB.m52315v(-1426063348, this, bundle);
    }

    public void onSaveInstanceState(Bundle bundle) {
        bundle.putParcelableArrayList(STATE_SELECTION, new ArrayList<>(this.f42744b));
        bundle.putInt(STATE_COLLECTION_TYPE, this.f42745c);
    }

    public void overwrite(ArrayList<Item> arrayList, int i) {
        if (arrayList.size() == 0) {
            this.f42745c = 0;
        } else {
            this.f42745c = i;
        }
        this.f42744b.clear();
        this.f42744b.addAll(arrayList);
    }

    public boolean remove(Item item) {
        boolean remove = this.f42744b.remove(item);
        if (remove) {
            if (this.f42744b.size() == 0) {
                this.f42745c = 0;
            } else if (this.f42745c == 3) {
                m33427b();
            }
        }
        return remove;
    }

    public void setDefaultSelection(List<Item> list) {
        this.f42744b.addAll(list);
    }

    public boolean typeConflict(Item item) {
        int i;
        int i2;
        if (SelectionSpec.getInstance().mediaTypeExclusive) {
            if (item.isImage() && ((i2 = this.f42745c) == 2 || i2 == 3)) {
                return true;
            }
            if (item.isVideo() && ((i = this.f42745c) == 1 || i == 3)) {
                return true;
            }
        }
        return false;
    }
}
