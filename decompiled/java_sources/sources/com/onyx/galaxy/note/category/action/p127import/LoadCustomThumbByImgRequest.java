package com.onyx.galaxy.note.category.action.p127import;

import android.graphics.Bitmap;
import com.blankj.utilcode.util.ImageUtils;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.reader.data.LoadReaderPageThumbnailArgs;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002R\u0017\u0010\n\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0007\u001a\u0004\b\b\u0010\tR$\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/import/LoadCustomThumbByImgRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "execute", "Landroid/graphics/Bitmap;", "a", "Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;", "Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;", "getArgs", "()Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;", "args", "b", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "bitmap", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadCustomThumbByImgRequest extends RxBaseRequest<Unit> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final LoadReaderPageThumbnailArgs args;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public Bitmap bitmap;

    public LoadCustomThumbByImgRequest(@NotNull LoadReaderPageThumbnailArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
    }

    /* renamed from: a */
    public final Bitmap m42713a() {
        if (FileUtils.INSTANCE.fileExist(this.args.getPath()) && ImageUtils.isImage(this.args.getPath())) {
            return BitmapUtils.INSTANCE.decodeBitmap(this.args.getPath(), this.args.getSize().getWidth(), this.args.getSize().getHeight());
        }
        return null;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Unit execute() {
        execute2();
        return Unit.INSTANCE;
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

    /* renamed from: execute, reason: avoid collision after fix types in other method */
    public void execute2() {
        this.bitmap = m42713a();
    }
}
