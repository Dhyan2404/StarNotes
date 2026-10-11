package com.onyx.android.sdk.universal.editor.action.export;

import android.graphics.Bitmap;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.data.ExportPageToBitmapArgs;
import com.onyx.android.sdk.universal.editor.data.ExportPageToImageFileArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.NoteExporter;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.io.FileNotFoundException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u001a\u0010\u001bJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002R\u0016\u0010\u000f\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Landroid/graphics/Bitmap;", "bitmap", GoogleApiAvailabilityLight.f29016b, "l", "", FirebaseAnalytics.Param.INDEX, "m", "Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;", "args", "Lcom/onyx/android/sdk/base/data/Orientation;", "i", "Lcom/onyx/android/sdk/base/data/Orientation;", "getOrientation", "()Lcom/onyx/android/sdk/base/data/Orientation;", "setOrientation", "(Lcom/onyx/android/sdk/base/data/Orientation;)V", "orientation", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nExportPageToImageFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportPageToImageFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,83:1\n1#2:84\n*E\n"})
/* loaded from: classes8.dex */
public final class ExportPageToImageFileAction extends RxBaseAppAction<String> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public ExportPageToImageFileArgs args;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public Orientation orientation;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportPageToImageFileAction$a */
    /* loaded from: classes8.dex */
    public static final class C8981a<T, R> implements Function {
        public C8981a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull Bitmap it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportPageToImageFileAction.this.m38142n(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExportPageToImageFileAction(@NotNull EditorBundle editorBundle, @NotNull ExportPageToImageFileArgs args) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        this.orientation = Orientation.PORTRAIT;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<String> create() {
        EditorBundle editorBundle = getEditorBundle();
        ExportPageToBitmapArgs exportPageToBitmapArgs = new ExportPageToBitmapArgs(this.args.getPageIndex(), null, this.args.getRenderTemplate(), AppConfig.INSTANCE.getRenderTapeInImage(), this.args.getRenderExcerptIndicator(), 2, null);
        exportPageToBitmapArgs.setExportSize(this.args.getExportSize());
        Observable<R> map = new ExportPageToBitmapAction(editorBundle, exportPageToBitmapArgs).build().observeOn(Schedulers.m61350io()).map(new C8981a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.onErrorWithFileLog(map, AnyKt.toSimpleNameString(this));
    }

    @NotNull
    public final Orientation getOrientation() {
        return this.orientation;
    }

    /* renamed from: l */
    public final String m38140l() {
        String outputDir;
        String outputDir2 = this.args.getOutputDir();
        if (outputDir2 == null || outputDir2.length() == 0) {
            File externalCacheDir = getAppContext().getExternalCacheDir();
            Intrinsics.checkNotNull(externalCacheDir);
            outputDir = externalCacheDir.getAbsolutePath();
        } else {
            outputDir = this.args.getOutputDir();
        }
        Intrinsics.checkNotNull(outputDir);
        return outputDir;
    }

    /* renamed from: m */
    public final String m38141m(int index) {
        String outputFileName = this.args.getOutputFileName();
        String exportName$default = outputFileName == null || outputFileName.length() == 0 ? NoteExporter.getExportName$default(NoteExporter.INSTANCE, String.valueOf(EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getNoteModel().getTitle()), index, (String) null, 4, (Object) null) : this.args.getOutputFileName();
        if (exportName$default == null) {
            exportName$default = "";
        }
        return FileUtils.INSTANCE.getValidFileName(exportName$default);
    }

    /* renamed from: n */
    public final String m38142n(Bitmap bitmap) {
        this.orientation = BitmapKt.getOrientation(bitmap);
        Integer pageIndex = this.args.getPageIndex();
        File file = new File(m38140l(), m38141m(pageIndex != null ? pageIndex.intValue() : EditorBundleKt.currentPageIndex(getEditorBundle())));
        BitmapKt.save$default(bitmap, file.getAbsolutePath(), 0, 2, null);
        if (file.length() <= 0) {
            throw new FileNotFoundException(file.getAbsolutePath());
        }
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    public final void setOrientation(@NotNull Orientation orientation) {
        Intrinsics.checkNotNullParameter(orientation, "<set-?>");
        this.orientation = orientation;
    }
}
