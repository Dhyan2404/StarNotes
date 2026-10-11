package com.onyx.android.sdk.universal.editor.action.thumbnail;

import android.graphics.Bitmap;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.path.ThumbnailPaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.data.thumbnail.ThumbnailRes;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNoteProviderAction;
import com.onyx.android.sdk.universal.editor.data.SaveCoverThumbnailArgs;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b\u001a\u0010\u001bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002R\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Landroid/graphics/Bitmap;", "bitmap", "", "l", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, "", "m", "Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;", "e", "Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;", "getArgs", "()Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;", "args", "Lcom/onyx/android/sdk/base/data/Orientation;", C6997f.f39671c, "Lcom/onyx/android/sdk/base/data/Orientation;", "getOrientation", "()Lcom/onyx/android/sdk/base/data/Orientation;", "setOrientation", "(Lcom/onyx/android/sdk/base/data/Orientation;)V", "orientation", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveCoverThumbnailAction extends RxBaseAction<SaveCoverThumbnailAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final SaveCoverThumbnailArgs args;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public Orientation orientation;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.SaveCoverThumbnailAction$a */
    /* loaded from: classes8.dex */
    public static final class C10254a<T, R> implements Function {

        /* renamed from: e */
        public static final C10254a<T, R> f51194e = new C10254a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteProvider> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureNoteProviderAction().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.SaveCoverThumbnailAction$b */
    /* loaded from: classes8.dex */
    public static final class C10255b<T> implements Consumer {
        public C10255b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveCoverThumbnailAction.this.m40495m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.SaveCoverThumbnailAction$c */
    /* loaded from: classes8.dex */
    public static final class C10256c<T, R> implements Function {
        public C10256c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveCoverThumbnailAction apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveCoverThumbnailAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.thumbnail.SaveCoverThumbnailAction$d */
    /* loaded from: classes8.dex */
    public static final class C10257d<T, R> implements Function {
        public C10257d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull SaveBitmapToFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveCoverThumbnailAction.this.setOrientation(it2.getOrientation());
            return it2.getFileOutputPath();
        }
    }

    public SaveCoverThumbnailAction(@NotNull SaveCoverThumbnailArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        this.orientation = Orientation.PORTRAIT;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SaveCoverThumbnailAction> create() {
        Bitmap bitmap = this.args.getBitmap();
        if (bitmap == null) {
            Observable<SaveCoverThumbnailAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<SaveCoverThumbnailAction> observeOn = m40494l(bitmap).flatMap(C10254a.f51194e).observeOn(KSyncBundle.INSTANCE.getObserveOn()).doOnNext(new C10255b()).map(new C10256c()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final SaveCoverThumbnailArgs getArgs() {
        return this.args;
    }

    @NotNull
    public final Orientation getOrientation() {
        return this.orientation;
    }

    /* renamed from: l */
    public final Observable<String> m40494l(Bitmap bitmap) {
        Observable map = new SaveBitmapToFileAction(bitmap, ThumbnailPaths.INSTANCE.appThumbnailPath(this.args.getDocumentId()).toAbsolutePath().toString(), null, 4, null).build().map(new C10257d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final void m40495m(NoteProvider provider) {
        SyncNoteModel noteModel = this.args.getNoteModel();
        if (noteModel == null) {
            noteModel = NoteModelProviderKt.loadNote(provider, this.args.getDocumentId());
        }
        if (noteModel != null) {
            ThumbnailRes thumbnailRes = (ThumbnailRes) AnyKt.getOrElse(noteModel.getThumbnailRes(), new Function0<ThumbnailRes>() { // from class: com.onyx.android.sdk.universal.editor.action.thumbnail.SaveCoverThumbnailAction$updateThumbnailResByBitmap$thumbnailRes$1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final ThumbnailRes invoke() {
                    return ThumbnailRes.INSTANCE.create(1, "");
                }
            });
            thumbnailRes.setOrientation(this.orientation);
            noteModel.setThumbnailRes(thumbnailRes);
            noteModel.beforeSave();
            NoteModelProviderKt.saveNote(provider, noteModel);
            return;
        }
        Debug.INSTANCE.m32062w(AnyKt.toSimpleNameString(this), "loadNoteFail, save thumbnail fail, docId = " + this.args + ".documentId", new Object[0]);
    }

    public final void setOrientation(@NotNull Orientation orientation) {
        Intrinsics.checkNotNullParameter(orientation, "<set-?>");
        this.orientation = orientation;
    }
}
