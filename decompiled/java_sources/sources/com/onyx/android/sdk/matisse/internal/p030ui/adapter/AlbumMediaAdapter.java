package com.onyx.android.sdk.matisse.internal.p030ui.adapter;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.matisse.internal.entity.Album;
import com.onyx.android.sdk.matisse.internal.entity.IncapableCause;
import com.onyx.android.sdk.matisse.internal.entity.Item;
import com.onyx.android.sdk.matisse.internal.entity.SelectionSpec;
import com.onyx.android.sdk.matisse.internal.model.SelectedItemCollection;
import com.onyx.android.sdk.matisse.internal.p030ui.widget.CheckView;
import com.onyx.android.sdk.matisse.internal.p030ui.widget.MediaGrid;

/* loaded from: classes7.dex */
public class AlbumMediaAdapter extends RecyclerViewCursorAdapter<RecyclerView.ViewHolder> implements MediaGrid.OnMediaGridClickListener {

    /* renamed from: m */
    public static final int f42768m = 1;

    /* renamed from: n */
    public static final int f42769n = 2;

    /* renamed from: f */
    public final SelectedItemCollection f42770f;

    /* renamed from: g */
    public final Drawable f42771g;

    /* renamed from: h */
    public SelectionSpec f42772h;

    /* renamed from: i */
    public CheckStateListener f42773i;

    /* renamed from: j */
    public OnMediaClickListener f42774j;

    /* renamed from: k */
    public RecyclerView f42775k;

    /* renamed from: l */
    public int f42776l;

    /* loaded from: classes7.dex */
    public interface CheckStateListener {
        void onUpdate();
    }

    /* loaded from: classes7.dex */
    public interface OnMediaClickListener {
        void onMediaClick(Album album, Item item, int i);
    }

    /* loaded from: classes7.dex */
    public interface OnPhotoCapture {
        void capture();
    }

    /* renamed from: com.onyx.android.sdk.matisse.internal.ui.adapter.AlbumMediaAdapter$a */
    /* loaded from: classes7.dex */
    public class ViewOnClickListenerC7465a implements View.OnClickListener {
        public ViewOnClickListenerC7465a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getContext() instanceof OnPhotoCapture) {
                ((OnPhotoCapture) view.getContext()).capture();
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.matisse.internal.ui.adapter.AlbumMediaAdapter$b */
    /* loaded from: classes7.dex */
    public static class C7466b extends RecyclerView.ViewHolder {

        /* renamed from: H */
        public TextView f42778H;

        public C7466b(View view) {
            super(view);
            this.f42778H = (TextView) view.findViewById(C7453R.id.hint);
        }
    }

    /* renamed from: com.onyx.android.sdk.matisse.internal.ui.adapter.AlbumMediaAdapter$c */
    /* loaded from: classes7.dex */
    public static class C7467c extends RecyclerView.ViewHolder {

        /* renamed from: H */
        public MediaGrid f42779H;

        public C7467c(View view) {
            super(view);
            this.f42779H = (MediaGrid) view;
        }
    }

    public AlbumMediaAdapter(Context context, SelectedItemCollection selectedItemCollection, RecyclerView recyclerView) {
        super(null);
        this.f42772h = SelectionSpec.getInstance();
        this.f42770f = selectedItemCollection;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{C7453R.attr.item_placeholder});
        this.f42771g = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        this.f42775k = recyclerView;
    }

    /* renamed from: c */
    public final boolean m33439c(Context context, Item item) {
        IncapableCause isAcceptable = this.f42770f.isAcceptable(item);
        IncapableCause.handleCause(context, isAcceptable);
        return isAcceptable == null;
    }

    /* renamed from: d */
    public final int m33440d(Context context) {
        if (this.f42776l == 0) {
            int spanCount = ((GridLayoutManager) this.f42775k.getLayoutManager()).getSpanCount();
            int dimensionPixelSize = (context.getResources().getDisplayMetrics().widthPixels - (context.getResources().getDimensionPixelSize(C7453R.dimen.media_grid_spacing) * (spanCount - 1))) / spanCount;
            this.f42776l = dimensionPixelSize;
            this.f42776l = (int) (dimensionPixelSize * this.f42772h.thumbnailScale);
        }
        return this.f42776l;
    }

    /* renamed from: e */
    public final void m33441e() {
        notifyDataSetChanged();
        CheckStateListener checkStateListener = this.f42773i;
        if (checkStateListener != null) {
            checkStateListener.onUpdate();
        }
    }

    /* renamed from: f */
    public final void m33442f(Item item, MediaGrid mediaGrid) {
        if (!this.f42772h.countable) {
            if (this.f42770f.isSelected(item)) {
                mediaGrid.setCheckEnabled(true);
                mediaGrid.setChecked(true);
                return;
            } else if (this.f42770f.maxSelectableReached()) {
                mediaGrid.setCheckEnabled(false);
                mediaGrid.setChecked(false);
                return;
            } else {
                mediaGrid.setCheckEnabled(true);
                mediaGrid.setChecked(false);
                return;
            }
        }
        int checkedNumOf = this.f42770f.checkedNumOf(item);
        if (checkedNumOf > 0) {
            mediaGrid.setCheckEnabled(true);
            mediaGrid.setCheckedNum(checkedNumOf);
        } else if (this.f42770f.maxSelectableReached()) {
            mediaGrid.setCheckEnabled(false);
            mediaGrid.setCheckedNum(Integer.MIN_VALUE);
        } else {
            mediaGrid.setCheckEnabled(true);
            mediaGrid.setCheckedNum(checkedNumOf);
        }
    }

    /* renamed from: g */
    public final void m33443g(Item item, RecyclerView.ViewHolder viewHolder) {
        if (this.f42772h.countable) {
            if (this.f42770f.checkedNumOf(item) != Integer.MIN_VALUE) {
                this.f42770f.remove(item);
                m33441e();
                return;
            } else {
                if (m33439c(viewHolder.itemView.getContext(), item)) {
                    this.f42770f.add(item);
                    m33441e();
                    return;
                }
                return;
            }
        }
        if (this.f42770f.isSelected(item)) {
            this.f42770f.remove(item);
            m33441e();
        } else if (m33439c(viewHolder.itemView.getContext(), item)) {
            this.f42770f.add(item);
            m33441e();
        }
    }

    @Override // com.onyx.android.sdk.matisse.internal.p030ui.adapter.RecyclerViewCursorAdapter
    public int getItemViewType(int i, Cursor cursor) {
        Item valueOf = Item.valueOf(cursor);
        return (valueOf != null && valueOf.isCapture()) ? 1 : 2;
    }

    @Override // com.onyx.android.sdk.matisse.internal.p030ui.adapter.RecyclerViewCursorAdapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, Cursor cursor) {
        Drawable.ConstantState constantState;
        if (!(viewHolder instanceof C7466b)) {
            if (viewHolder instanceof C7467c) {
                C7467c c7467c = (C7467c) viewHolder;
                Item valueOf = Item.valueOf(cursor);
                if (valueOf != null) {
                    c7467c.f42779H.preBindMedia(new MediaGrid.PreBindInfo(m33440d(c7467c.f42779H.getContext()), this.f42771g, this.f42772h.countable, viewHolder));
                    c7467c.f42779H.bindMedia(valueOf);
                    c7467c.f42779H.setOnMediaGridClickListener(this);
                    m33442f(valueOf, c7467c.f42779H);
                    return;
                }
                return;
            }
            return;
        }
        C7466b c7466b = (C7466b) viewHolder;
        Drawable[] compoundDrawables = c7466b.f42778H.getCompoundDrawables();
        TypedArray obtainStyledAttributes = viewHolder.itemView.getContext().getTheme().obtainStyledAttributes(new int[]{C7453R.attr.capture_textColor});
        int color = obtainStyledAttributes.getColor(0, 0);
        obtainStyledAttributes.recycle();
        for (int i = 0; i < compoundDrawables.length; i++) {
            Drawable drawable = compoundDrawables[i];
            if (drawable != null && (constantState = drawable.getConstantState()) != null) {
                Drawable mutate = constantState.newDrawable().mutate();
                mutate.setColorFilter(color, PorterDuff.Mode.SRC_IN);
                mutate.setBounds(drawable.getBounds());
                compoundDrawables[i] = mutate;
            }
        }
        c7466b.f42778H.setCompoundDrawables(compoundDrawables[0], compoundDrawables[1], compoundDrawables[2], compoundDrawables[3]);
    }

    @Override // com.onyx.android.sdk.matisse.internal.ui.widget.MediaGrid.OnMediaGridClickListener
    public void onCheckViewClicked(CheckView checkView, Item item, RecyclerView.ViewHolder viewHolder) {
        m33443g(item, viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1) {
            C7466b c7466b = new C7466b(LayoutInflater.from(viewGroup.getContext()).inflate(C7453R.layout.photo_capture_item, viewGroup, false));
            c7466b.itemView.setOnClickListener(new ViewOnClickListenerC7465a());
            return c7466b;
        }
        if (i == 2) {
            return new C7467c(LayoutInflater.from(viewGroup.getContext()).inflate(C7453R.layout.media_grid_item, viewGroup, false));
        }
        return null;
    }

    @Override // com.onyx.android.sdk.matisse.internal.ui.widget.MediaGrid.OnMediaGridClickListener
    public void onThumbnailClicked(ImageView imageView, Item item, RecyclerView.ViewHolder viewHolder) {
        if (!this.f42772h.showPreview) {
            m33443g(item, viewHolder);
            return;
        }
        OnMediaClickListener onMediaClickListener = this.f42774j;
        if (onMediaClickListener != null) {
            onMediaClickListener.onMediaClick(null, item, viewHolder.getAdapterPosition());
        }
    }

    public void refreshSelection() {
        GridLayoutManager gridLayoutManager = (GridLayoutManager) this.f42775k.getLayoutManager();
        int findFirstVisibleItemPosition = gridLayoutManager.findFirstVisibleItemPosition();
        int findLastVisibleItemPosition = gridLayoutManager.findLastVisibleItemPosition();
        if (findFirstVisibleItemPosition == -1 || findLastVisibleItemPosition == -1) {
            return;
        }
        Cursor cursor = getCursor();
        for (int i = findFirstVisibleItemPosition; i <= findLastVisibleItemPosition; i++) {
            RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.f42775k.findViewHolderForAdapterPosition(findFirstVisibleItemPosition);
            if ((findViewHolderForAdapterPosition instanceof C7467c) && cursor.moveToPosition(i) && Item.valueOf(cursor) != null) {
                m33442f(Item.valueOf(cursor), ((C7467c) findViewHolderForAdapterPosition).f42779H);
            }
        }
    }

    public void registerCheckStateListener(CheckStateListener checkStateListener) {
        this.f42773i = checkStateListener;
    }

    public void registerOnMediaClickListener(OnMediaClickListener onMediaClickListener) {
        this.f42774j = onMediaClickListener;
    }

    public void unregisterCheckStateListener() {
        this.f42773i = null;
    }

    public void unregisterOnMediaClickListener() {
        this.f42774j = null;
    }
}
