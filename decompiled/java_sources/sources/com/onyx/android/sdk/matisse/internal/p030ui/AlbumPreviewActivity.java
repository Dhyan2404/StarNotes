package com.onyx.android.sdk.matisse.internal.p030ui;

import android.database.Cursor;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.onyx.android.sdk.matisse.internal.entity.Item;
import com.onyx.android.sdk.matisse.internal.model.AlbumMediaCollection;
import com.onyx.android.sdk.matisse.internal.p030ui.adapter.PreviewPagerAdapter;
import com.sagittarius.p050v6.C13086AB;
import java.util.ArrayList;

/* loaded from: classes17.dex */
public class AlbumPreviewActivity extends BasePreviewActivity implements AlbumMediaCollection.AlbumMediaCallbacks {
    public static final String EXTRA_ALBUM = "extra_album";
    public static final String EXTRA_ITEM = "extra_item";

    /* renamed from: B0 */
    public AlbumMediaCollection f42746B0 = new AlbumMediaCollection();

    /* renamed from: C0 */
    public boolean f42747C0;

    @Override // com.onyx.android.sdk.matisse.internal.model.AlbumMediaCollection.AlbumMediaCallbacks
    public void onAlbumMediaLoad(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            Item valueOf = Item.valueOf(cursor);
            if (valueOf != null) {
                arrayList.add(valueOf);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        PreviewPagerAdapter previewPagerAdapter = (PreviewPagerAdapter) this.mPager.getAdapter();
        previewPagerAdapter.addAll(arrayList);
        previewPagerAdapter.notifyDataSetChanged();
        if (this.f42747C0) {
            return;
        }
        this.f42747C0 = true;
        int indexOf = arrayList.indexOf((Item) getIntent().getParcelableExtra(EXTRA_ITEM));
        this.mPager.setCurrentItem(indexOf, false);
        this.mPreviousPos = indexOf;
    }

    @Override // com.onyx.android.sdk.matisse.internal.model.AlbumMediaCollection.AlbumMediaCallbacks
    public void onAlbumMediaReset() {
    }

    @Override // com.onyx.android.sdk.matisse.internal.p030ui.BasePreviewActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        C13086AB.m52315v(-1426063346, this, bundle);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f42746B0.onDestroy();
    }
}
