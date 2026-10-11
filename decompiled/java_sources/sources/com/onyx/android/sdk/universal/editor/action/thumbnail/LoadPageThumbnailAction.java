package com.onyx.android.sdk.universal.editor.action.thumbnail;

import android.graphics.Bitmap;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.export.ExportPageToBitmapAction;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.data.ExportPageToBitmapArgs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B1\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0018\u0010\f\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/thumbnail/LoadPageThumbnailAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Landroid/graphics/Bitmap;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", C6999h.f39688c, Constants.INTEGER_SIG, "pageIndex", "", "i", Constants.STRING_SIG, CouchFieldKey.KEY_TOC_PAGE_ID, "Lcom/onyx/android/sdk/base/data/Size;", "j", "Lcom/onyx/android/sdk/base/data/Size;", "thumbnailSize", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Integer;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadPageThumbnailAction extends RxBaseAppAction<Bitmap> {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public Integer pageIndex;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public String pageId;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public Size thumbnailSize;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.LoadPageThumbnailAction$a */
    /* loaded from: classes8.dex */
    public static final class C10250a<T, R> implements Function {
        public C10250a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Bitmap apply(@NotNull Bitmap it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BitmapKt.scaleToWidthRatioBitmap(it2, LoadPageThumbnailAction.this.thumbnailSize.getWidth());
        }
    }

    public /* synthetic */ LoadPageThumbnailAction(EditorBundle editorBundle, Integer num, String str, Size size, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : str, (i & 8) != 0 ? AppConfig.INSTANCE.getDEFAULT_PAGE_THUMBNAIL_SIZE() : size);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Bitmap> create() {
        ExportPageToBitmapArgs exportPageToBitmapArgs = new ExportPageToBitmapArgs(this.pageIndex, this.pageId, false, false, false, 28, null);
        exportPageToBitmapArgs.setExportSize(this.thumbnailSize);
        Observable map = new ExportPageToBitmapAction(getEditorBundle(), exportPageToBitmapArgs).build().retry(3L).observeOn(Schedulers.computation()).map(new C10250a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadPageThumbnailAction(@NotNull EditorBundle editorBundle, @Nullable Integer num, @Nullable String str, @NotNull Size thumbnailSize) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(thumbnailSize, "thumbnailSize");
        this.pageIndex = num;
        this.pageId = str;
        this.thumbnailSize = thumbnailSize;
    }
}
