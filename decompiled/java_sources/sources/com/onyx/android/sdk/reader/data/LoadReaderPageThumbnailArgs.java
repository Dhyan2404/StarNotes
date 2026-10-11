package com.onyx.android.sdk.reader.data;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.Size;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0014\u0012\b\b\u0002\u0010!\u001a\u00020\u001a¢\u0006\u0004\b\"\u0010#R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;", "", "", "a", Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", "path", "", "b", "I", "getPageIndex", "()I", "pageIndex", "Lcom/onyx/android/sdk/base/data/Size;", "c", "Lcom/onyx/android/sdk/base/data/Size;", "getSize", "()Lcom/onyx/android/sdk/base/data/Size;", "size", "Landroid/graphics/RectF;", "d", "Landroid/graphics/RectF;", "getOriginRectF", "()Landroid/graphics/RectF;", "originRectF", "", "e", Constants.HASIDCALL_INDEX_SIG, "getClearBitmap", Constants.BOOLEAN_VALUE_SIG, "setClearBitmap", "(Z)V", "clearBitmap", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;ILcom/onyx/android/sdk/base/data/Size;Landroid/graphics/RectF;Z)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadReaderPageThumbnailArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String path;

    /* renamed from: b, reason: from kotlin metadata */
    public final int pageIndex;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Size size;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public final RectF originRectF;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean clearBitmap;

    public LoadReaderPageThumbnailArgs(@NotNull String path, int i, @NotNull Size size, @Nullable RectF rectF, boolean z) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(size, "size");
        this.path = path;
        this.pageIndex = i;
        this.size = size;
        this.originRectF = rectF;
        this.clearBitmap = z;
    }

    public final boolean getClearBitmap() {
        return this.clearBitmap;
    }

    @Nullable
    public final RectF getOriginRectF() {
        return this.originRectF;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    @NotNull
    public final Size getSize() {
        return this.size;
    }

    public final void setClearBitmap(boolean z) {
        this.clearBitmap = z;
    }

    public /* synthetic */ LoadReaderPageThumbnailArgs(String str, int i, Size size, RectF rectF, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, size, (i2 & 8) != 0 ? null : rectF, (i2 & 16) != 0 ? false : z);
    }
}
