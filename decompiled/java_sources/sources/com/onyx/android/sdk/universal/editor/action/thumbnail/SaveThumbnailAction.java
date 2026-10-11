package com.onyx.android.sdk.universal.editor.action.thumbnail;

import android.graphics.Bitmap;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.path.ThumbnailPaths;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.export.ExportPageToBitmapAction;
import com.onyx.android.sdk.universal.editor.data.ExportPageToBitmapArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u000b\u001a\u00020\tH\u0002J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u0003H\u0002R\"\u0010\u0014\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR$\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveThumbnailAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "path", C4921e.f26528e, "", "pageIndex", "Landroid/graphics/Bitmap;", "m", "bitmap", GoogleApiAvailabilityLight.f29016b, "l", C6999h.f39688c, Constants.STRING_SIG, "getFilePath", "()Ljava/lang/String;", "setFilePath", "(Ljava/lang/String;)V", "filePath", "Lcom/onyx/android/sdk/base/data/Orientation;", "i", "Lcom/onyx/android/sdk/base/data/Orientation;", "getOrientation", "()Lcom/onyx/android/sdk/base/data/Orientation;", "setOrientation", "(Lcom/onyx/android/sdk/base/data/Orientation;)V", "orientation", "j", Constants.INTEGER_SIG, "getPageIndex", "()Ljava/lang/Integer;", "setPageIndex", "(Ljava/lang/Integer;)V", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveThumbnailAction extends RxBaseAppAction<String> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public String filePath;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public Orientation orientation;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public Integer pageIndex;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.SaveThumbnailAction$a */
    /* loaded from: classes8.dex */
    public static final class C10262a<T, R> implements Function {
        public C10262a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Integer> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveThumbnailAction.this.m40505l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.SaveThumbnailAction$b */
    /* loaded from: classes8.dex */
    public static final class C10263b<T, R> implements Function {
        public C10263b() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Bitmap> m40510a(int i) {
            return SaveThumbnailAction.this.m40506m(i);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m40510a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.SaveThumbnailAction$c */
    /* loaded from: classes8.dex */
    public static final class C10264c<T, R> implements Function {
        public C10264c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull Bitmap it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveThumbnailAction.this.m40507n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.SaveThumbnailAction$d */
    /* loaded from: classes8.dex */
    public static final class C10265d<T, R> implements Function {
        public C10265d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveThumbnailAction.this.m40508o(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.SaveThumbnailAction$e */
    /* loaded from: classes8.dex */
    public static final class C10266e<T, R> implements Function {
        public C10266e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull SaveBitmapToFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveThumbnailAction.this.setOrientation(it2.getOrientation());
            return it2.getFileOutputPath();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.SaveThumbnailAction$f */
    /* loaded from: classes8.dex */
    public static final class C10267f<T, R> implements Function {
        public C10267f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull SaveThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            String parentUniqueId = EditorBundleKt.noteBundle(SaveThumbnailAction.this.getEditorBundle()).getNoteDoc().getNoteModel().getParentUniqueId();
            return parentUniqueId == null ? "" : parentUniqueId;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.SaveThumbnailAction$g */
    /* loaded from: classes8.dex */
    public static final class C10268g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f51213e;

        public C10268g(String str) {
            this.f51213e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f51213e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveThumbnailAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.filePath = ThumbnailPaths.INSTANCE.appThumbnailPath(EditorBundleKt.docId(editorBundle)).toAbsolutePath().toString();
        this.orientation = Orientation.PORTRAIT;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<String> create() {
        Observable<String> just = Observable.just("");
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        if (!EditorBundleKt.isDocumentOpen(getEditorBundle())) {
            return just;
        }
        Observable<String> flatMap = just.flatMap(new C10262a()).flatMap(new C10263b()).flatMap(new C10264c()).flatMap(new C10265d());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final String getFilePath() {
        return this.filePath;
    }

    @NotNull
    public final Orientation getOrientation() {
        return this.orientation;
    }

    @Nullable
    public final Integer getPageIndex() {
        return this.pageIndex;
    }

    /* renamed from: l */
    public final Observable<Integer> m40505l() {
        return new ComputeCoverThumbnailPageIndexAction(getEditorBundle(), this.pageIndex).build();
    }

    /* renamed from: m */
    public final Observable<Bitmap> m40506m(int pageIndex) {
        return new ExportPageToBitmapAction(getEditorBundle(), new ExportPageToBitmapArgs(Integer.valueOf(pageIndex), null, true, false, false, 26, null)).build();
    }

    /* renamed from: n */
    public final Observable<String> m40507n(Bitmap bitmap) {
        Observable map = new SaveBitmapToFileAction(bitmap, this.filePath, null, 4, null).build().map(new C10266e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final Observable<String> m40508o(String path) {
        Observable map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C10267f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable map2 = RxjavaKt.flatMapIf(map, new Function1<String, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.thumbnail.SaveThumbnailAction$updateFolderCover$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(StringKt.isNotBlank(it2));
            }
        }, new Function1<String, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.thumbnail.SaveThumbnailAction$updateFolderCover$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull String it2) {
                List listOf;
                Intrinsics.checkNotNullParameter(it2, "it");
                listOf = CollectionsKt__CollectionsJVMKt.listOf(it2);
                return new UpdateFolderCoverAction(listOf).build();
            }
        }).map(new C10268g(path));
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    public final void setFilePath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.filePath = str;
    }

    public final void setOrientation(@NotNull Orientation orientation) {
        Intrinsics.checkNotNullParameter(orientation, "<set-?>");
        this.orientation = orientation;
    }

    public final void setPageIndex(@Nullable Integer num) {
        this.pageIndex = num;
    }
}
