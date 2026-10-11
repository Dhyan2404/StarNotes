package com.onyx.android.sdk.universal.editor.action.doc;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.bundle.DBProviderBundle;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.SaveDocumentAction;
import com.onyx.android.sdk.universal.editor.action.doc.CloseDocumentAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.editor.events.app.DocumentClosedEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartAutoBackupEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B#\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u000b\u001a\u00020\b\u0012\b\b\u0002\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0000H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\r\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\nR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", GoogleApiAvailabilityLight.f29016b, "r", "q", "", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "save", "i", "cleanContentView", "", "j", Constants.STRING_SIG, EditorConstants.ARGS_DOC_ID, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZZ)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CloseDocumentAction extends RxBaseAppAction<CloseDocumentAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public final boolean save;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean cleanContentView;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final String docId;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.CloseDocumentAction$a */
    /* loaded from: classes8.dex */
    public static final class C8640a<T> implements Predicate {
        public C8640a() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull CloseDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditorBundleKt.isDocumentOpen(CloseDocumentAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.CloseDocumentAction$b */
    /* loaded from: classes8.dex */
    public static final class C8641b<T, R> implements Function {
        public C8641b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloseDocumentAction> apply(@NotNull CloseDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloseDocumentAction.this.m37596r();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.CloseDocumentAction$c */
    /* loaded from: classes8.dex */
    public static final class C8642c<T, R> implements Function {
        public C8642c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull CloseDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.ensureCloseDoc(CloseDocumentAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.CloseDocumentAction$d */
    /* loaded from: classes8.dex */
    public static final class C8643d<T, R> implements Function {
        public C8643d() {
        }

        /* renamed from: a */
        public final void m37600a(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CloseDocumentAction.this.m37594n();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37600a(obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.CloseDocumentAction$e */
    /* loaded from: classes8.dex */
    public static final class C8644e<T, R> implements Function {
        public C8644e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloseDocumentAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloseDocumentAction.this.m37595q();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.CloseDocumentAction$f */
    /* loaded from: classes8.dex */
    public static final class C8645f<T, R> implements Function {
        public C8645f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloseDocumentAction apply(@NotNull SaveDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloseDocumentAction.this;
        }
    }

    public /* synthetic */ CloseDocumentAction(EditorBundle editorBundle, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, (i & 2) != 0 ? true : z, (i & 4) != 0 ? false : z2);
    }

    /* renamed from: o */
    public static final void m37592o(CloseDocumentAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        DBProviderBundle.Companion.dumpAllProviderInfo$default(DBProviderBundle.INSTANCE, this$0.getEditorBundle().getWorkBundle().getDbProviderBundle(), false, 1, null);
    }

    /* renamed from: p */
    public static final void m37593p() {
        DBProviderBundle.Companion.dumpDocProviderInfo$default(DBProviderBundle.INSTANCE, KSyncBundle.INSTANCE.getDbProviderBundle(), false, 1, null);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloseDocumentAction> create() {
        Observable<CloseDocumentAction> doFinally = Observable.just(this).filter(new C8640a()).flatMap(new C8641b()).flatMap(new C8642c()).map(new C8643d()).map(new C8644e()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.dvd
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                CloseDocumentAction.m37592o(CloseDocumentAction.this);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.evd
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                CloseDocumentAction.m37593p();
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: n */
    public final void m37594n() {
        if (this.cleanContentView) {
            EditorBundleKt.renderManager(getEditorBundle()).clearDisplay();
        }
    }

    /* renamed from: q */
    public final CloseDocumentAction m37595q() {
        EditorBundleKt.postEvent(getEditorBundle(), new StartAutoBackupEvent(this.docId));
        EditorBundleKt.postEvent(getEditorBundle(), new DocumentClosedEvent(this.docId));
        return this;
    }

    /* renamed from: r */
    public final Observable<CloseDocumentAction> m37596r() {
        if (this.save) {
            Observable map = new SaveDocumentAction(getEditorBundle()).build().map(new C8645f());
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        Observable<CloseDocumentAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloseDocumentAction(@NotNull EditorBundle editorBundle, boolean z, boolean z2) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.save = z;
        this.cleanContentView = z2;
        this.docId = EditorBundleKt.docId(editorBundle);
    }
}
