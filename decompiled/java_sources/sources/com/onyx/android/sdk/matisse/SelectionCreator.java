package com.onyx.android.sdk.matisse;

import android.app.Activity;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.StyleRes;
import androidx.fragment.app.Fragment;
import com.onyx.android.sdk.matisse.engine.ImageEngine;
import com.onyx.android.sdk.matisse.filter.Filter;
import com.onyx.android.sdk.matisse.internal.entity.CaptureStrategy;
import com.onyx.android.sdk.matisse.internal.entity.SelectionSpec;
import com.onyx.android.sdk.matisse.listener.OnCheckedListener;
import com.onyx.android.sdk.matisse.listener.OnSelectedListener;
import com.onyx.android.sdk.matisse.p031ui.MatisseActivity;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Set;

/* loaded from: classes7.dex */
public final class SelectionCreator {

    /* renamed from: a */
    public final Matisse f42697a;

    /* renamed from: b */
    public final SelectionSpec f42698b;

    @RequiresApi(api = 18)
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.onyx.android.sdk.matisse.SelectionCreator$a */
    /* loaded from: classes7.dex */
    public @interface InterfaceC7455a {
    }

    public SelectionCreator(Matisse matisse, @NonNull Set<MimeType> set, boolean z) {
        this.f42697a = matisse;
        SelectionSpec cleanInstance = SelectionSpec.getCleanInstance();
        this.f42698b = cleanInstance;
        cleanInstance.mimeTypeSet = set;
        cleanInstance.mediaTypeExclusive = z;
        cleanInstance.orientation = -1;
    }

    public SelectionCreator addFilter(@NonNull Filter filter) {
        SelectionSpec selectionSpec = this.f42698b;
        if (selectionSpec.filters == null) {
            selectionSpec.filters = new ArrayList();
        }
        if (filter == null) {
            throw new IllegalArgumentException("filter cannot be null");
        }
        this.f42698b.filters.add(filter);
        return this;
    }

    public SelectionCreator autoHideToolbarOnSingleTap(boolean z) {
        this.f42698b.autoHideToobar = z;
        return this;
    }

    public SelectionCreator capture(boolean z) {
        this.f42698b.capture = z;
        return this;
    }

    public SelectionCreator captureStrategy(CaptureStrategy captureStrategy) {
        this.f42698b.captureStrategy = captureStrategy;
        return this;
    }

    public SelectionCreator countable(boolean z) {
        this.f42698b.countable = z;
        return this;
    }

    public void forResult(int i) {
        Activity m33408a = this.f42697a.m33408a();
        if (m33408a == null) {
            return;
        }
        Intent intent = new Intent(m33408a, (Class<?>) MatisseActivity.class);
        Fragment m33409b = this.f42697a.m33409b();
        if (m33409b != null) {
            m33409b.startActivityForResult(intent, i);
        } else {
            m33408a.startActivityForResult(intent, i);
        }
    }

    public SelectionCreator gridExpectedSize(int i) {
        this.f42698b.gridExpectedSize = i;
        return this;
    }

    public SelectionCreator imageEngine(ImageEngine imageEngine) {
        this.f42698b.imageEngine = imageEngine;
        return this;
    }

    public SelectionCreator maxOriginalSize(int i) {
        this.f42698b.originalMaxSize = i;
        return this;
    }

    public SelectionCreator maxSelectable(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("maxSelectable must be greater than or equal to one");
        }
        SelectionSpec selectionSpec = this.f42698b;
        if (selectionSpec.maxImageSelectable > 0 || selectionSpec.maxVideoSelectable > 0) {
            throw new IllegalStateException("already set maxImageSelectable and maxVideoSelectable");
        }
        selectionSpec.maxSelectable = i;
        return this;
    }

    public SelectionCreator maxSelectablePerMediaType(int i, int i2) {
        if (i < 1 || i2 < 1) {
            throw new IllegalArgumentException("max selectable must be greater than or equal to one");
        }
        SelectionSpec selectionSpec = this.f42698b;
        selectionSpec.maxSelectable = -1;
        selectionSpec.maxImageSelectable = i;
        selectionSpec.maxVideoSelectable = i2;
        return this;
    }

    public SelectionCreator originalEnable(boolean z) {
        this.f42698b.originalable = z;
        return this;
    }

    public SelectionCreator restrictOrientation(int i) {
        this.f42698b.orientation = i;
        return this;
    }

    public SelectionCreator setKeepScreenOnEnable(Boolean bool) {
        this.f42698b.keepScreenOnEnable = bool.booleanValue();
        return this;
    }

    public SelectionCreator setOnCheckedListener(@Nullable OnCheckedListener onCheckedListener) {
        this.f42698b.onCheckedListener = onCheckedListener;
        return this;
    }

    @NonNull
    public SelectionCreator setOnSelectedListener(@Nullable OnSelectedListener onSelectedListener) {
        this.f42698b.onSelectedListener = onSelectedListener;
        return this;
    }

    public SelectionCreator showPreview(boolean z) {
        this.f42698b.showPreview = z;
        return this;
    }

    public SelectionCreator showSingleMediaType(boolean z) {
        this.f42698b.showSingleMediaType = z;
        return this;
    }

    public SelectionCreator spanCount(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("spanCount cannot be less than 1");
        }
        this.f42698b.spanCount = i;
        return this;
    }

    public SelectionCreator theme(@StyleRes int i) {
        this.f42698b.themeId = i;
        return this;
    }

    public SelectionCreator thumbnailScale(float f) {
        if (f <= 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("Thumbnail scale must be between (0.0, 1.0]");
        }
        this.f42698b.thumbnailScale = f;
        return this;
    }
}
