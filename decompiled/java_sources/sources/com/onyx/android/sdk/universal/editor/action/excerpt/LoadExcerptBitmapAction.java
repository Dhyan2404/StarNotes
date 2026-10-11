package com.onyx.android.sdk.universal.editor.action.excerpt;

import android.graphics.Bitmap;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.request.excerpt.LoadExcerptBitmapRequest;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\u0013\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u0017\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0007\u001a\u0004\b\u0015\u0010\t\"\u0004\b\u0016\u0010\u000bR$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", "excerptId", Constants.STRING_SIG, "getExcerptId", "()Ljava/lang/String;", "setExcerptId", "(Ljava/lang/String;)V", "Landroid/graphics/Bitmap;", C6999h.f39688c, "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "bitmap", "i", "getImgPath", "setImgPath", "imgPath", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "j", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "getExcerptInfoBean", "()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "setExcerptInfoBean", "(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V", "excerptInfoBean", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadExcerptBitmapAction extends RxBaseAppAction<LoadExcerptBitmapAction> {
    public String excerptId;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public Bitmap bitmap;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String imgPath;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public ExcerptInfoBean excerptInfoBean;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LoadExcerptBitmapAction$a */
    /* loaded from: classes8.dex */
    public static final class C8793a<T, R> implements Function {
        public C8793a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LoadExcerptBitmapAction> apply(@NotNull LoadExcerptBitmapAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadExcerptBitmapAction.this.m37834l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LoadExcerptBitmapAction$b */
    /* loaded from: classes8.dex */
    public static final class C8794b<T, R> implements Function {
        public C8794b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadExcerptBitmapAction apply(@NotNull LoadExcerptBitmapAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadExcerptBitmapAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LoadExcerptBitmapAction$c */
    /* loaded from: classes8.dex */
    public static final class C8795c<T, R> implements Function {
        public C8795c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadExcerptBitmapAction apply(@NotNull LoadExcerptBitmapRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadExcerptBitmapAction.this.setBitmap(it2.getBitmap());
            LoadExcerptBitmapAction.this.setImgPath(it2.getImgPath());
            LoadExcerptBitmapAction.this.setExcerptInfoBean(it2.getExcerptInfoBean());
            return LoadExcerptBitmapAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadExcerptBitmapAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.imgPath = "";
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LoadExcerptBitmapAction> create() {
        Observable<LoadExcerptBitmapAction> map = Observable.just(this).flatMap(new C8793a()).map(new C8794b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @NotNull
    public final String getExcerptId() {
        String str = this.excerptId;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("excerptId");
        return null;
    }

    @Nullable
    public final ExcerptInfoBean getExcerptInfoBean() {
        return this.excerptInfoBean;
    }

    @NotNull
    public final String getImgPath() {
        return this.imgPath;
    }

    /* renamed from: l */
    public final Observable<LoadExcerptBitmapAction> m37834l() {
        LoadExcerptBitmapRequest loadExcerptBitmapRequest = new LoadExcerptBitmapRequest(EditorBundleKt.noteBundle(getEditorBundle()));
        loadExcerptBitmapRequest.setExcerptId(getExcerptId());
        Observable<LoadExcerptBitmapAction> map = RxBaseAppActionKt.submitRequestToNote(this, loadExcerptBitmapRequest).map(new C8795c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    public final void setExcerptId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.excerptId = str;
    }

    public final void setExcerptInfoBean(@Nullable ExcerptInfoBean excerptInfoBean) {
        this.excerptInfoBean = excerptInfoBean;
    }

    public final void setImgPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.imgPath = str;
    }
}
