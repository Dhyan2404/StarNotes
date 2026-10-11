package com.onyx.android.sdk.universal.editor.action.thumbnail;

import android.graphics.Bitmap;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.io.FileNotFoundException;
import kotlin.Metadata;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B!\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0010\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0011¢\u0006\u0004\b$\u0010%J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0010\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010#\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\r\u001a\u0004\b \u0010\u000f\"\u0004\b!\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveBitmapToFileAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Landroid/graphics/Bitmap;", "bitmap", "", "l", "e", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", C6997f.f39671c, Constants.STRING_SIG, "getFilePath", "()Ljava/lang/String;", "filePath", "Lcom/onyx/android/sdk/base/data/Size;", C6998g.f39679a, "Lcom/onyx/android/sdk/base/data/Size;", "getSize", "()Lcom/onyx/android/sdk/base/data/Size;", "size", "Lcom/onyx/android/sdk/base/data/Orientation;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/data/Orientation;", "getOrientation", "()Lcom/onyx/android/sdk/base/data/Orientation;", "setOrientation", "(Lcom/onyx/android/sdk/base/data/Orientation;)V", "orientation", "i", "getFileOutputPath", "setFileOutputPath", "(Ljava/lang/String;)V", "fileOutputPath", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSaveBitmapToFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveBitmapToFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/thumbnail/SaveBitmapToFileAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,80:1\n1#2:81\n*E\n"})
/* loaded from: classes8.dex */
public final class SaveBitmapToFileAction extends RxBaseAction<SaveBitmapToFileAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Bitmap bitmap;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String filePath;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Size size;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public Orientation orientation;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String fileOutputPath;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.SaveBitmapToFileAction$a */
    /* loaded from: classes8.dex */
    public static final class C10251a<T, R> implements Function {
        public C10251a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull SaveBitmapToFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveBitmapToFileAction saveBitmapToFileAction = SaveBitmapToFileAction.this;
            return saveBitmapToFileAction.m40490l(saveBitmapToFileAction.getBitmap());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.SaveBitmapToFileAction$b */
    /* loaded from: classes8.dex */
    public static final class C10252b<T> implements Consumer {
        public C10252b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveBitmapToFileAction.this.setFileOutputPath(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.SaveBitmapToFileAction$c */
    /* loaded from: classes8.dex */
    public static final class C10253c<T, R> implements Function {
        public C10253c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveBitmapToFileAction apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveBitmapToFileAction.this;
        }
    }

    public /* synthetic */ SaveBitmapToFileAction(Bitmap bitmap, String str, Size size, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(bitmap, str, (i & 4) != 0 ? AppConfig.INSTANCE.getDEFAULT_SMALL_THUMBNAIL_SIZE() : size);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SaveBitmapToFileAction> create() {
        Observable<SaveBitmapToFileAction> map = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C10251a()).doOnNext(new C10252b()).observeOn(AndroidSchedulers.mainThread()).map(new C10253c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @NotNull
    public final String getFileOutputPath() {
        return this.fileOutputPath;
    }

    @NotNull
    public final String getFilePath() {
        return this.filePath;
    }

    @NotNull
    public final Orientation getOrientation() {
        return this.orientation;
    }

    @NotNull
    public final Size getSize() {
        return this.size;
    }

    /* renamed from: l */
    public final String m40490l(Bitmap bitmap) {
        String extension;
        Orientation orientation = BitmapKt.getOrientation(bitmap);
        this.orientation = orientation;
        Size size = this.size;
        int width = orientation.isPortrait() ? size.getWidth() : size.getHeight();
        FileUtils fileUtils = FileUtils.INSTANCE;
        File file = new File(fileUtils.getParent(this.filePath), fileUtils.getValidFileName(this.filePath));
        String parent = file.getParent();
        String shortUUID = UUIDUtils.INSTANCE.shortUUID();
        extension = FilesKt__UtilsKt.getExtension(file);
        String combine = fileUtils.combine(shortUUID, extension);
        Intrinsics.checkNotNull(combine);
        File file2 = new File(parent, combine);
        try {
            boolean save = BitmapKt.save(BitmapKt.scaleToWidthRatioBitmap(bitmap, width), file2.getAbsolutePath(), 50);
            Debug debug = Debug.INSTANCE;
            debug.m32038d(AnyKt.toSimpleNameString(this), "saveSuccess = " + save + ", orientation = " + this.orientation, new Object[0]);
            if (file2.length() <= 0) {
                throw new FileNotFoundException(file.getAbsolutePath());
            }
            debug.m32038d(AnyKt.toSimpleNameString(this), "tempFile.length = " + file2.length() + ", file.length = " + file.length(), new Object[0]);
            if (file2.length() != file.length()) {
                boolean renameTo = file2.renameTo(file);
                debug.m32038d(AnyKt.toSimpleNameString(this), "fileChanged, rename = " + renameTo, new Object[0]);
            }
            String absolutePath = file.getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
            return absolutePath;
        } finally {
            if (!file2.isFile()) {
                file2 = null;
            }
            if (file2 != null) {
                onyx.org.apache.commons.io.FileUtils.deleteQuietly(file2);
            }
        }
    }

    public final void setFileOutputPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.fileOutputPath = str;
    }

    public final void setOrientation(@NotNull Orientation orientation) {
        Intrinsics.checkNotNullParameter(orientation, "<set-?>");
        this.orientation = orientation;
    }

    public SaveBitmapToFileAction(@NotNull Bitmap bitmap, @NotNull String filePath, @NotNull Size size) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(size, "size");
        this.bitmap = bitmap;
        this.filePath = filePath;
        this.size = size;
        this.orientation = Orientation.PORTRAIT;
        this.fileOutputPath = filePath;
    }
}
