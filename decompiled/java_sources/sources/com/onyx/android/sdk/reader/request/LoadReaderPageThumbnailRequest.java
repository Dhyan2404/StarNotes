package com.onyx.android.sdk.reader.request;

import android.graphics.Bitmap;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.reader.Reader;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.reader.api.DrawArgs;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.reader.data.LoadReaderPageThumbnailArgs;
import com.onyx.android.sdk.reader.extension.ReaderKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\n¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0017\u0010\u000e\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\t\u0010\u000b\u001a\u0004\b\f\u0010\rR$\u0010\u0015\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;", "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;", "Lcom/onyx/android/sdk/reader/ReaderBundle;", "bundle", "", "execute", "Lcom/onyx/android/sdk/reader/Reader;", "reader", "Landroid/graphics/Bitmap;", C6997f.f39671c, "Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;", "Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;", "getArgs", "()Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;", "args", C6998g.f39679a, "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "bitmap", "readerBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadReaderPageThumbnailRequest extends RxBaseReaderRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final LoadReaderPageThumbnailArgs args;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Bitmap bitmap;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadReaderPageThumbnailRequest(@NotNull ReaderBundle readerBundle, @NotNull LoadReaderPageThumbnailArgs args) {
        super(readerBundle);
        Intrinsics.checkNotNullParameter(readerBundle, "readerBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
    }

    @Override // com.onyx.android.sdk.reader.request.RxBaseReaderRequest
    public void execute(@NotNull ReaderBundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Reader ensureReaderByPath$default = ReaderBundle.ensureReaderByPath$default(getReaderBundle(), this.args.getPath(), null, 2, null);
        if (ensureReaderByPath$default == null) {
            return;
        }
        this.bitmap = m34828f(ensureReaderByPath$default);
    }

    /* renamed from: f */
    public final Bitmap m34828f(Reader reader) {
        Size size = this.args.getSize();
        int pageIndex = this.args.getPageIndex();
        if (size.isEmpty()) {
            Debug.INSTANCE.m32059w(LoadReaderPageThumbnailRequest.class, "size is empty", new Object[0]);
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(size.getWidth(), size.getHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        if (this.args.getClearBitmap()) {
            BitmapKt.clear$default(createBitmap, 0, 1, null);
        }
        ReaderPosition positionByPageIndex = reader.getNavigator().positionByPageIndex(pageIndex);
        RectF safeGetPageOriginSize = RectKt.isNullOrEmpty(this.args.getOriginRectF()) ? ReaderKt.safeGetPageOriginSize(reader, positionByPageIndex) : RectFKt.copy(this.args.getOriginRectF());
        if (safeGetPageOriginSize.isEmpty()) {
            Debug.INSTANCE.m32059w(LoadReaderPageThumbnailRequest.class, "pageOriginSize is empty", new Object[0]);
            return null;
        }
        RectF copy = RectFKt.copy(safeGetPageOriginSize);
        RectF rectF = size.toRectF();
        ReaderKt.safeRender(reader, new DrawArgs(positionByPageIndex, RectFKt.scaleToPage(safeGetPageOriginSize, rectF), 0, rectF, copy, copy, createBitmap, null, null, null, false, 1924, null));
        return createBitmap;
    }

    @NotNull
    public final LoadReaderPageThumbnailArgs getArgs() {
        return this.args;
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }
}
