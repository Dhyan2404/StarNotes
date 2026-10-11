package com.onyx.android.sdk.universal.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.utils.ObjectLruCache;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.thumbnail.LoadPageThumbnailAction;
import com.onyx.android.sdk.universal.editor.data.PageDataModel;
import io.reactivex.rxjava3.core.Observable;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00062\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/util/PageThumbnailLruCache;", "Lcom/onyx/android/sdk/data/utils/ObjectLruCache;", "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;", "Landroid/graphics/Bitmap;", "()V", "decode", "Lio/reactivex/rxjava3/core/Observable;", "model", "read", "file", "Ljava/io/File;", "write", "", "resource", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PageThumbnailLruCache extends ObjectLruCache<PageDataModel, Bitmap> {

    @NotNull
    public static final PageThumbnailLruCache INSTANCE = new PageThumbnailLruCache();

    public PageThumbnailLruCache() {
        super(FunctionKey.PAGE_THUMBNAIL, 1073741824L);
    }

    @Override // com.onyx.android.sdk.data.utils.ObjectLruCache
    @NotNull
    public Observable<Bitmap> decode(@NotNull PageDataModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        EditorBundle editorBundle = model.getEditorBundle();
        if (editorBundle == null) {
            Observable<Bitmap> error = Observable.error(OnyxException.INSTANCE.m31891of("editor bundle is required"));
            Intrinsics.checkNotNullExpressionValue(error, "error(...)");
            return error;
        }
        return new LoadPageThumbnailAction(editorBundle, Integer.valueOf(model.getPageIndex()), model.getPageId(), null, 8, null).build();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.data.utils.ObjectLruCache
    @NotNull
    public Bitmap read(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        Bitmap decodeFile = BitmapFactory.decodeFile(file.getAbsolutePath());
        Intrinsics.checkNotNullExpressionValue(decodeFile, "decodeFile(...)");
        return decodeFile;
    }

    @Override // com.onyx.android.sdk.data.utils.ObjectLruCache
    public boolean write(@NotNull Bitmap resource, @NotNull File file) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        Intrinsics.checkNotNullParameter(file, "file");
        return BitmapKt.save$default(resource, file.getAbsolutePath(), 0, 2, null);
    }
}
