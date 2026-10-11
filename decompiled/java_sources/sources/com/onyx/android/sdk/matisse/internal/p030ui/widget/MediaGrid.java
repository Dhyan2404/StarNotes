package com.onyx.android.sdk.matisse.internal.p030ui.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.matisse.engine.ImageEngine;
import com.onyx.android.sdk.matisse.internal.entity.Item;
import com.onyx.android.sdk.matisse.internal.entity.SelectionSpec;

/* loaded from: classes7.dex */
public class MediaGrid extends SquareFrameLayout implements View.OnClickListener {

    /* renamed from: e */
    public ImageView f42813e;

    /* renamed from: f */
    public CheckView f42814f;

    /* renamed from: g */
    public ImageView f42815g;

    /* renamed from: h */
    public TextView f42816h;

    /* renamed from: i */
    public Item f42817i;

    /* renamed from: j */
    public PreBindInfo f42818j;

    /* renamed from: k */
    public OnMediaGridClickListener f42819k;

    /* loaded from: classes7.dex */
    public interface OnMediaGridClickListener {
        void onCheckViewClicked(CheckView checkView, Item item, RecyclerView.ViewHolder viewHolder);

        void onThumbnailClicked(ImageView imageView, Item item, RecyclerView.ViewHolder viewHolder);
    }

    /* loaded from: classes7.dex */
    public static class PreBindInfo {

        /* renamed from: a */
        public int f42820a;

        /* renamed from: b */
        public Drawable f42821b;

        /* renamed from: c */
        public boolean f42822c;

        /* renamed from: d */
        public RecyclerView.ViewHolder f42823d;

        public PreBindInfo(int i, Drawable drawable, boolean z, RecyclerView.ViewHolder viewHolder) {
            this.f42820a = i;
            this.f42821b = drawable;
            this.f42822c = z;
            this.f42823d = viewHolder;
        }
    }

    public MediaGrid(Context context) {
        super(context);
        m33463a(context);
    }

    /* renamed from: a */
    public final void m33463a(Context context) {
        LayoutInflater.from(context).inflate(C7453R.layout.media_grid_content, (ViewGroup) this, true);
        this.f42813e = (ImageView) findViewById(C7453R.id.media_thumbnail);
        this.f42814f = (CheckView) findViewById(C7453R.id.check_view);
        this.f42815g = (ImageView) findViewById(C7453R.id.gif);
        this.f42816h = (TextView) findViewById(C7453R.id.video_duration);
        this.f42813e.setOnClickListener(this);
        this.f42814f.setOnClickListener(this);
    }

    /* renamed from: b */
    public final void m33464b() {
        this.f42814f.setCountable(this.f42818j.f42822c);
    }

    public void bindMedia(Item item) {
        this.f42817i = item;
        m33465c();
        m33464b();
        m33466d();
        m33467e();
    }

    /* renamed from: c */
    public final void m33465c() {
        this.f42815g.setVisibility(this.f42817i.isGif() ? 0 : 8);
    }

    /* renamed from: d */
    public final void m33466d() {
        if (this.f42817i.isGif()) {
            ImageEngine imageEngine = SelectionSpec.getInstance().imageEngine;
            Context context = getContext();
            PreBindInfo preBindInfo = this.f42818j;
            imageEngine.loadGifThumbnail(context, preBindInfo.f42820a, preBindInfo.f42821b, this.f42813e, this.f42817i.getContentUri());
            return;
        }
        ImageEngine imageEngine2 = SelectionSpec.getInstance().imageEngine;
        Context context2 = getContext();
        PreBindInfo preBindInfo2 = this.f42818j;
        imageEngine2.loadThumbnail(context2, preBindInfo2.f42820a, preBindInfo2.f42821b, this.f42813e, this.f42817i.getContentUri());
    }

    /* renamed from: e */
    public final void m33467e() {
        if (!this.f42817i.isVideo()) {
            this.f42816h.setVisibility(8);
        } else {
            this.f42816h.setVisibility(0);
            this.f42816h.setText(DateUtils.formatElapsedTime(this.f42817i.duration / 1000));
        }
    }

    public Item getMedia() {
        return this.f42817i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        OnMediaGridClickListener onMediaGridClickListener = this.f42819k;
        if (onMediaGridClickListener != null) {
            ImageView imageView = this.f42813e;
            if (view == imageView) {
                onMediaGridClickListener.onThumbnailClicked(imageView, this.f42817i, this.f42818j.f42823d);
                return;
            }
            CheckView checkView = this.f42814f;
            if (view == checkView) {
                onMediaGridClickListener.onCheckViewClicked(checkView, this.f42817i, this.f42818j.f42823d);
            }
        }
    }

    public void preBindMedia(PreBindInfo preBindInfo) {
        this.f42818j = preBindInfo;
    }

    public void removeOnMediaGridClickListener() {
        this.f42819k = null;
    }

    public void setCheckEnabled(boolean z) {
        this.f42814f.setEnabled(z);
    }

    public void setChecked(boolean z) {
        this.f42814f.setChecked(z);
    }

    public void setCheckedNum(int i) {
        this.f42814f.setCheckedNum(i);
    }

    public void setOnMediaGridClickListener(OnMediaGridClickListener onMediaGridClickListener) {
        this.f42819k = onMediaGridClickListener;
    }

    public MediaGrid(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m33463a(context);
    }
}
