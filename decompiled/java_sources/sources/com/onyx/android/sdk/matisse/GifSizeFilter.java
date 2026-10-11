package com.onyx.android.sdk.matisse;

import android.content.Context;
import android.graphics.Point;
import com.onyx.android.sdk.matisse.filter.Filter;
import com.onyx.android.sdk.matisse.internal.entity.IncapableCause;
import com.onyx.android.sdk.matisse.internal.entity.Item;
import com.onyx.android.sdk.matisse.internal.utils.PhotoMetadataUtils;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes7.dex */
public class GifSizeFilter extends Filter {

    /* renamed from: a */
    public int f42691a;

    /* renamed from: b */
    public int f42692b;

    /* renamed from: c */
    public int f42693c;

    public GifSizeFilter(int i, int i2, int i3) {
        this.f42691a = i;
        this.f42692b = i2;
        this.f42693c = i3;
    }

    @Override // com.onyx.android.sdk.matisse.filter.Filter
    public Set<MimeType> constraintTypes() {
        return new HashSet<MimeType>() { // from class: com.onyx.android.sdk.matisse.GifSizeFilter.1
            {
                add(MimeType.GIF);
            }
        };
    }

    @Override // com.onyx.android.sdk.matisse.filter.Filter
    public IncapableCause filter(Context context, Item item) {
        if (!needFiltering(context, item)) {
            return null;
        }
        Point bitmapBound = PhotoMetadataUtils.getBitmapBound(context.getContentResolver(), item.getContentUri());
        if (bitmapBound.x < this.f42691a || bitmapBound.y < this.f42692b || item.size > this.f42693c) {
            return new IncapableCause(1, "error");
        }
        return null;
    }
}
