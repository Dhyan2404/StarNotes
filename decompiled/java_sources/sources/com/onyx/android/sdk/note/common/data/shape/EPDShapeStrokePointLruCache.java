package com.onyx.android.sdk.note.common.data.shape;

import android.util.LruCache;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0006\u0010\b\u001a\u00020\tJ \u0010\n\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0014¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/EPDShapeStrokePointLruCache;", "Landroid/util/LruCache;", "", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "maxSize", "", "(I)V", Constants.CLEAR_ATTRIBUTES, "", "sizeOf", "key", "value", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class EPDShapeStrokePointLruCache extends LruCache<String, List<? extends TouchPoint>> {
    public EPDShapeStrokePointLruCache(int i) {
        super(i);
    }

    public final void clear() {
        evictAll();
    }

    @Override // android.util.LruCache
    public /* bridge */ /* synthetic */ int sizeOf(String str, List<? extends TouchPoint> list) {
        return sizeOf2(str, (List<TouchPoint>) list);
    }

    /* renamed from: sizeOf, reason: avoid collision after fix types in other method */
    public int sizeOf2(@Nullable String key, @NotNull List<TouchPoint> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return TouchPoint.INSTANCE.computePointByteSize(value);
    }
}
