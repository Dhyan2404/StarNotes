package com.onyx.android.sdk.universal.docmanager.action;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.path.CommonPaths;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/docmanager/action/CleanupImportFailedDocumentAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "", C6999h.f39688c, Constants.STRING_SIG, "getDocumentId", "()Ljava/lang/String;", "documentId", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CleanupImportFailedDocumentAction extends RxBaseAppAction<CleanupImportFailedDocumentAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String documentId;

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.CleanupImportFailedDocumentAction$a */
    /* loaded from: classes8.dex */
    public static final class C8046a<T> implements Consumer {
        public C8046a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CleanupImportFailedDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CleanupImportFailedDocumentAction.this.m36478l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CleanupImportFailedDocumentAction(@NotNull EditorBundle editorBundle, @NotNull String documentId) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        this.documentId = documentId;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CleanupImportFailedDocumentAction> create() {
        Observable<CleanupImportFailedDocumentAction> doOnNext = Observable.just(this).observeOn(Schedulers.m61350io()).doOnNext(new C8046a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    /* renamed from: l */
    public final void m36478l() {
        Paths.INSTANCE.deleteDirectory(CommonPaths.INSTANCE.appDocDir(this.documentId));
    }
}
