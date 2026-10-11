package com.onyx.galaxy.note.category.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.auth.request.PasswordDigestRequest;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.data.info.Encryption;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0006\u0010\f\u001a\u00020\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "", "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", C6997f.f39671c, Constants.STRING_SIG, "password", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class UpdateEditorNoteModelEncryptionAction extends RxBaseAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public final String password;

    /* renamed from: com.onyx.galaxy.note.category.action.UpdateEditorNoteModelEncryptionAction$a */
    /* loaded from: classes9.dex */
    public static final class C11000a<T, R> implements Function {
        public C11000a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SyncNoteModel apply(@NotNull UpdateEditorNoteModelEncryptionAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditorBundleKt.noteBundle(UpdateEditorNoteModelEncryptionAction.this.editorBundle).getNoteDoc().getNoteModel();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.UpdateEditorNoteModelEncryptionAction$b */
    /* loaded from: classes9.dex */
    public static final class C11001b<T> implements Consumer {
        public C11001b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateEditorNoteModelEncryptionAction.this.m42576l(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.UpdateEditorNoteModelEncryptionAction$c */
    /* loaded from: classes9.dex */
    public static final class C11002c<T, R> implements Function {

        /* renamed from: e */
        public static final C11002c<T, R> f54041e = new C11002c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    public UpdateEditorNoteModelEncryptionAction(@NotNull EditorBundle editorBundle, @Nullable String str) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.password = str;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(this.editorBundle)).map(new C11000a()).doOnNext(new C11001b()).map(C11002c.f54041e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m42576l(SyncNoteModel noteModel) {
        if (StringKt.isNotBlank(this.password)) {
            noteModel.setEncryption(new Encryption(4, new PasswordDigestRequest(this.password).execute()));
        } else {
            noteModel.resetEncryption();
        }
    }
}
