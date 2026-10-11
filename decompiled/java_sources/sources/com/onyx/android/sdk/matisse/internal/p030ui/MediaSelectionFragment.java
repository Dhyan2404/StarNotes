package com.onyx.android.sdk.matisse.internal.p030ui;

import android.content.Context;
import android.content.res.Configuration;
import android.database.Cursor;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.matisse.internal.entity.Album;
import com.onyx.android.sdk.matisse.internal.entity.Item;
import com.onyx.android.sdk.matisse.internal.entity.SelectionSpec;
import com.onyx.android.sdk.matisse.internal.model.AlbumMediaCollection;
import com.onyx.android.sdk.matisse.internal.model.SelectedItemCollection;
import com.onyx.android.sdk.matisse.internal.p030ui.adapter.AlbumMediaAdapter;
import com.onyx.android.sdk.matisse.internal.p030ui.widget.MediaGridInset;
import com.onyx.android.sdk.matisse.internal.utils.UIUtils;
import java.util.Random;

/* loaded from: classes7.dex */
public class MediaSelectionFragment extends Fragment implements AlbumMediaCollection.AlbumMediaCallbacks, AlbumMediaAdapter.CheckStateListener, AlbumMediaAdapter.OnMediaClickListener {
    public static final String EXTRA_ALBUM = "extra_album";

    /* renamed from: d1 */
    public RecyclerView f42756d1;

    /* renamed from: e1 */
    public AlbumMediaAdapter f42757e1;

    /* renamed from: f1 */
    public SelectionProvider f42758f1;

    /* renamed from: g1 */
    public AlbumMediaAdapter.CheckStateListener f42759g1;

    /* renamed from: h1 */
    public AlbumMediaAdapter.OnMediaClickListener f42760h1;

    /* renamed from: c1 */
    public final AlbumMediaCollection f42755c1 = new AlbumMediaCollection(new Random().nextInt(100));

    /* renamed from: i1 */
    public MediaGridInset f42761i1 = null;

    /* loaded from: classes7.dex */
    public interface SelectionProvider {
        SelectedItemCollection provideSelectedItemCollection();
    }

    /* renamed from: com.onyx.android.sdk.matisse.internal.ui.MediaSelectionFragment$a */
    /* loaded from: classes7.dex */
    public class RunnableC7462a implements Runnable {
        public RunnableC7462a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MediaSelectionFragment.this.m33437l0(SelectionSpec.getInstance());
        }
    }

    public static MediaSelectionFragment newInstance(Album album) {
        MediaSelectionFragment mediaSelectionFragment = new MediaSelectionFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("extra_album", album);
        mediaSelectionFragment.setArguments(bundle);
        return mediaSelectionFragment;
    }

    /* renamed from: l0 */
    public final void m33437l0(SelectionSpec selectionSpec) {
        int spanCount = selectionSpec.gridExpectedSize > 0 ? UIUtils.spanCount(getContext(), selectionSpec.gridExpectedSize) : selectionSpec.spanCount;
        this.f42756d1.setLayoutManager(new GridLayoutManager(getContext(), spanCount));
        int dimensionPixelSize = getResources().getDimensionPixelSize(C7453R.dimen.media_grid_spacing);
        MediaGridInset mediaGridInset = this.f42761i1;
        if (mediaGridInset != null) {
            this.f42756d1.removeItemDecoration(mediaGridInset);
        }
        MediaGridInset mediaGridInset2 = new MediaGridInset(spanCount, dimensionPixelSize, false);
        this.f42761i1 = mediaGridInset2;
        this.f42756d1.addItemDecoration(mediaGridInset2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        Album album = (Album) getArguments().getParcelable("extra_album");
        AlbumMediaAdapter albumMediaAdapter = new AlbumMediaAdapter(getContext(), this.f42758f1.provideSelectedItemCollection(), this.f42756d1);
        this.f42757e1 = albumMediaAdapter;
        albumMediaAdapter.registerCheckStateListener(this);
        this.f42757e1.registerOnMediaClickListener(this);
        this.f42756d1.setHasFixedSize(true);
        SelectionSpec selectionSpec = SelectionSpec.getInstance();
        m33437l0(selectionSpec);
        this.f42755c1.onCreate(getActivity(), this);
        this.f42755c1.load(album, selectionSpec.capture);
        this.f42756d1.setAdapter(this.f42757e1);
    }

    @Override // com.onyx.android.sdk.matisse.internal.model.AlbumMediaCollection.AlbumMediaCallbacks
    public void onAlbumMediaLoad(Cursor cursor) {
        this.f42757e1.swapCursor(cursor);
    }

    @Override // com.onyx.android.sdk.matisse.internal.model.AlbumMediaCollection.AlbumMediaCallbacks
    public void onAlbumMediaReset() {
        this.f42757e1.swapCursor(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (!(context instanceof SelectionProvider)) {
            throw new IllegalStateException("Context must implement SelectionProvider.");
        }
        this.f42758f1 = (SelectionProvider) context;
        if (context instanceof AlbumMediaAdapter.CheckStateListener) {
            this.f42759g1 = (AlbumMediaAdapter.CheckStateListener) context;
        }
        if (context instanceof AlbumMediaAdapter.OnMediaClickListener) {
            this.f42760h1 = (AlbumMediaAdapter.OnMediaClickListener) context;
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f42756d1.post(new RunnableC7462a());
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(C7453R.layout.fragment_media_selection, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f42755c1.onDestroy();
    }

    @Override // com.onyx.android.sdk.matisse.internal.ui.adapter.AlbumMediaAdapter.OnMediaClickListener
    public void onMediaClick(Album album, Item item, int i) {
        AlbumMediaAdapter.OnMediaClickListener onMediaClickListener = this.f42760h1;
        if (onMediaClickListener != null) {
            onMediaClickListener.onMediaClick((Album) getArguments().getParcelable("extra_album"), item, i);
        }
    }

    @Override // com.onyx.android.sdk.matisse.internal.ui.adapter.AlbumMediaAdapter.CheckStateListener
    public void onUpdate() {
        AlbumMediaAdapter.CheckStateListener checkStateListener = this.f42759g1;
        if (checkStateListener != null) {
            checkStateListener.onUpdate();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f42756d1 = (RecyclerView) view.findViewById(C7453R.id.recyclerview);
    }

    public void refreshMediaGrid() {
        this.f42757e1.notifyDataSetChanged();
    }

    public void refreshSelection() {
        this.f42757e1.refreshSelection();
    }
}
