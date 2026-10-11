package com.onyx.android.sdk.universal.docmanager.action;

import android.net.Uri;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.events.app.ImportPdfResultEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.CopyDocumentWithUriRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R(\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00078\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Landroid/net/Uri;", "uri", "l", "", "uriList", "Ljava/util/List;", "getUriList", "()Ljava/util/List;", "setUriList", "(Ljava/util/List;)V", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ImportPdfAction extends RxBaseAppAction<ImportPdfAction> {
    public List<? extends Uri> uriList;

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportPdfAction$b */
    /* loaded from: classes8.dex */
    public static final class C8124b<T, R> implements Function {
        public C8124b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportPdfAction apply(@NotNull ImportPdfAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportPdfAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportPdfAction$c */
    /* loaded from: classes8.dex */
    public static final class C8125c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Uri f47459f;

        public C8125c(Uri uri) {
            this.f47459f = uri;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportPdfAction apply(@NotNull CopyDocumentWithUriRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(ImportPdfAction.this.getEditorBundle(), new ImportPdfResultEvent(it2.getDocumentPath(), ImportPdfAction.this.getUriList().indexOf(this.f47459f), ImportPdfAction.this.getUriList().size()));
            return ImportPdfAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImportPdfAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ImportPdfAction> create() {
        Observable<ImportPdfAction> map = Observable.fromIterable(getUriList()).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.docmanager.action.ImportPdfAction.a
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Observable<ImportPdfAction> apply(@NotNull Uri p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return ImportPdfAction.this.m36644l(p0);
            }
        }).map(new C8124b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<Uri> getUriList() {
        List list = this.uriList;
        if (list != null) {
            return list;
        }
        Intrinsics.throwUninitializedPropertyAccessException("uriList");
        return null;
    }

    /* renamed from: l */
    public final Observable<ImportPdfAction> m36644l(Uri uri) {
        CopyDocumentWithUriRequest copyDocumentWithUriRequest = new CopyDocumentWithUriRequest(getEditorBundle().getWorkBundle(), null, 2, null);
        copyDocumentWithUriRequest.setUri(uri);
        Observable<ImportPdfAction> map = RxBaseAppActionKt.submitRequestToIOSequence(this, copyDocumentWithUriRequest).map(new C8125c(uri));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setUriList(@NotNull List<? extends Uri> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.uriList = list;
    }
}
