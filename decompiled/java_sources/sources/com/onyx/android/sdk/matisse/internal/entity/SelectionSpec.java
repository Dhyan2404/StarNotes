package com.onyx.android.sdk.matisse.internal.entity;

import androidx.annotation.StyleRes;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.matisse.MimeType;
import com.onyx.android.sdk.matisse.engine.ImageEngine;
import com.onyx.android.sdk.matisse.engine.impl.GlideEngine;
import com.onyx.android.sdk.matisse.filter.Filter;
import com.onyx.android.sdk.matisse.listener.OnCheckedListener;
import com.onyx.android.sdk.matisse.listener.OnSelectedListener;
import java.util.List;
import java.util.Set;

/* loaded from: classes7.dex */
public final class SelectionSpec {
    public boolean autoHideToobar;
    public boolean capture;
    public CaptureStrategy captureStrategy;
    public boolean countable;
    public List<Filter> filters;
    public int gridExpectedSize;
    public boolean hasInited;
    public ImageEngine imageEngine;
    public boolean keepScreenOnEnable;
    public int maxImageSelectable;
    public int maxSelectable;
    public int maxVideoSelectable;
    public boolean mediaTypeExclusive;
    public Set<MimeType> mimeTypeSet;
    public OnCheckedListener onCheckedListener;
    public OnSelectedListener onSelectedListener;
    public int orientation;
    public int originalMaxSize;
    public boolean originalable;
    public boolean showPreview;
    public boolean showSingleMediaType;
    public int spanCount;

    @StyleRes
    public int themeId;
    public float thumbnailScale;

    /* renamed from: com.onyx.android.sdk.matisse.internal.entity.SelectionSpec$b */
    /* loaded from: classes7.dex */
    public static final class C7459b {

        /* renamed from: a */
        public static final SelectionSpec f42704a = new SelectionSpec();
    }

    public static SelectionSpec getCleanInstance() {
        SelectionSpec selectionSpec = getInstance();
        selectionSpec.m33415a();
        return selectionSpec;
    }

    public static SelectionSpec getInstance() {
        return C7459b.f42704a;
    }

    /* renamed from: a */
    public final void m33415a() {
        this.mimeTypeSet = null;
        this.mediaTypeExclusive = true;
        this.showSingleMediaType = false;
        this.themeId = C7453R.style.Matisse_Zhihu;
        this.orientation = 0;
        this.countable = false;
        this.maxSelectable = 1;
        this.maxImageSelectable = 0;
        this.maxVideoSelectable = 0;
        this.filters = null;
        this.capture = false;
        this.captureStrategy = null;
        this.spanCount = 3;
        this.gridExpectedSize = 0;
        this.thumbnailScale = 0.5f;
        this.imageEngine = new GlideEngine();
        this.hasInited = true;
        this.originalable = false;
        this.autoHideToobar = false;
        this.originalMaxSize = Integer.MAX_VALUE;
        this.showPreview = true;
        this.keepScreenOnEnable = false;
    }

    public boolean needOrientationRestriction() {
        return this.orientation != -1;
    }

    public boolean onlyShowGif() {
        return this.showSingleMediaType && MimeType.ofGif().equals(this.mimeTypeSet);
    }

    public boolean onlyShowImages() {
        return this.showSingleMediaType && MimeType.ofImage().containsAll(this.mimeTypeSet);
    }

    public boolean onlyShowVideos() {
        return this.showSingleMediaType && MimeType.ofVideo().containsAll(this.mimeTypeSet);
    }

    public boolean singleSelectionModeEnabled() {
        if (!this.countable) {
            if (this.maxSelectable == 1) {
                return true;
            }
            if (this.maxImageSelectable == 1 && this.maxVideoSelectable == 1) {
                return true;
            }
        }
        return false;
    }

    public SelectionSpec() {
        this.keepScreenOnEnable = false;
    }
}
