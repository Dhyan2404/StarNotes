package com.onyx.galaxy.note.editor.action.layer;

import android.app.Dialog;
import android.content.Context;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.flush.DeleteStashShapeAction;
import com.onyx.android.sdk.universal.editor.action.render.RedrawNoteAction;
import com.onyx.android.sdk.universal.editor.events.note.ClearLayerDialogCancelEvent;
import com.onyx.android.sdk.universal.editor.events.note.ClearLayerDialogDoneEvent;
import com.onyx.android.sdk.universal.editor.events.note.ClearLayerDialogStartEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.layer.CleanNotePageLayerRequest;
import com.onyx.galaxy.note.editor.action.layer.CleanNotePageLayerAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.List;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003H\u0002R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001d\u0010\u0012\u001a\u0004\u0018\u00010\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "p", "", "m", "", "", C6999h.f39688c, "Ljava/util/List;", "layerIds", "Lcom/onyx/android/sdk/ui/CommonDialog;", "i", "Lkotlin/Lazy;", C4921e.f26528e, "()Lcom/onyx/android/sdk/ui/CommonDialog;", "loadingDialog", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CleanNotePageLayerAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> layerIds;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy loadingDialog;

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.CleanNotePageLayerAction$a */
    /* loaded from: classes9.dex */
    public static final class C11944a<T, R> implements Function {

        /* renamed from: e */
        public static final C11944a<T, R> f58367e = new C11944a<>();

        /* renamed from: a */
        public final void m45886a(@NotNull CleanNotePageLayerRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m45886a((CleanNotePageLayerRequest) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.CleanNotePageLayerAction$b */
    /* loaded from: classes9.dex */
    public static final class C11945b<T, R> implements Function {
        public C11945b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull CleanNotePageLayerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CleanNotePageLayerAction.this.m45885p();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.CleanNotePageLayerAction$c */
    /* loaded from: classes9.dex */
    public static final class C11946c<T> implements Consumer {
        public C11946c() {
        }

        /* renamed from: a */
        public final void m45888a(boolean z) {
            CommonDialog m45884o = CleanNotePageLayerAction.this.m45884o();
            if (m45884o != null) {
                m45884o.show();
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m45888a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.CleanNotePageLayerAction$d */
    /* loaded from: classes9.dex */
    public static final class C11947d<T, R> implements Function {
        public C11947d() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Unit> m45889a(boolean z) {
            return CleanNotePageLayerAction.this.m45883m();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m45889a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.CleanNotePageLayerAction$e */
    /* loaded from: classes9.dex */
    public static final class C11948e<T, R> implements Function {
        public C11948e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteStashShapeAction> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new DeleteStashShapeAction(CleanNotePageLayerAction.this.getEditorBundle(), EditorBundleKt.docId(CleanNotePageLayerAction.this.getEditorBundle()), null, 4, null).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.CleanNotePageLayerAction$f */
    /* loaded from: classes9.dex */
    public static final class C11949f<T, R> implements Function {
        public C11949f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RedrawNoteAction> apply(@NotNull DeleteStashShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new RedrawNoteAction(CleanNotePageLayerAction.this.getEditorBundle()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.CleanNotePageLayerAction$g */
    /* loaded from: classes9.dex */
    public static final class C11950g<T, R> implements Function {

        /* renamed from: e */
        public static final C11950g<T, R> f58373e = new C11950g<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull RedrawNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.CleanNotePageLayerAction$h */
    /* loaded from: classes9.dex */
    public static final class C11951h<T> implements Consumer {
        public C11951h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            String stackTraceToString;
            Intrinsics.checkNotNullParameter(it2, "it");
            String simpleNameString = AnyKt.toSimpleNameString(CleanNotePageLayerAction.this);
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(it2);
            LogUtils.eTag(simpleNameString, stackTraceToString);
            ToastUtils.show$default(ToastUtils.INSTANCE, C7373R.string.error_fail, false, 2, (Object) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CleanNotePageLayerAction(@NotNull EditorBundle editorBundle, @NotNull List<Integer> layerIds) {
        super(editorBundle);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(layerIds, "layerIds");
        this.layerIds = layerIds;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<CommonDialog>() { // from class: com.onyx.galaxy.note.editor.action.layer.CleanNotePageLayerAction$loadingDialog$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final CommonDialog invoke() {
                Context activityContext = CleanNotePageLayerAction.this.getActivityContext();
                if (activityContext != null) {
                    return CommonDialog.INSTANCE.createLoadingDialog(activityContext, C8045R.string.cleaning);
                }
                return null;
            }
        });
        this.loadingDialog = lazy;
    }

    /* renamed from: n */
    public static final void m45882n(CleanNotePageLayerAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CommonDialog m45884o = this$0.m45884o();
        if (m45884o != null) {
            CommonDialog.dismissWithDelay$default(m45884o, 0L, 1, null);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> doFinally = Observable.just(this).observeOn(getMainUIScheduler()).flatMap(new C11945b()).doOnNext(new C11946c()).flatMap(new C11947d()).flatMap(new C11948e()).flatMap(new C11949f()).map(C11950g.f58373e).observeOn(getMainUIScheduler()).doOnError(new C11951h()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.mud
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                CleanNotePageLayerAction.m45882n(CleanNotePageLayerAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: m */
    public final Observable<Unit> m45883m() {
        LogUtils.wTag(AnyKt.toSimpleNameString(this), EditorBundleKt.docId(getEditorBundle()) + " clean layerIds:" + this.layerIds);
        Observable<Unit> map = RxBaseAppActionKt.submitRequestToNote(this, new CleanNotePageLayerRequest(getEditorBundle().getWorkBundle(), this.layerIds)).map(C11944a.f58367e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final CommonDialog m45884o() {
        return (CommonDialog) this.loadingDialog.getValue();
    }

    /* renamed from: p */
    public final Observable<Boolean> m45885p() {
        Context activityContext = getActivityContext();
        if (activityContext == null) {
            Observable<Boolean> just = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        new CommonDialog.Builder(activityContext).setTitle(C8045R.string.clean).setWarning(true).setMessage(C8045R.string.clean_layer_warning).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.action.layer.CleanNotePageLayerAction$showAlertDialog$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog commonDialog, @NotNull String str) {
                List list;
                Intrinsics.checkNotNullParameter(commonDialog, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
                EditorBundle editorBundle = CleanNotePageLayerAction.this.getEditorBundle();
                list = CleanNotePageLayerAction.this.layerIds;
                EditorBundleKt.postEvent(editorBundle, new ClearLayerDialogDoneEvent(list));
                RxjavaKt.done(create, Boolean.TRUE);
            }
        }).setCancelCallback(new Function1<Dialog, Unit>() { // from class: com.onyx.galaxy.note.editor.action.layer.CleanNotePageLayerAction$showAlertDialog$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Dialog dialog) {
                invoke2(dialog);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Dialog dialog) {
                List list;
                EditorBundle editorBundle = CleanNotePageLayerAction.this.getEditorBundle();
                list = CleanNotePageLayerAction.this.layerIds;
                EditorBundleKt.postEvent(editorBundle, new ClearLayerDialogCancelEvent(list));
                CleanNotePageLayerAction.this.dispose();
            }
        }).create().show();
        EditorBundleKt.postEvent(getEditorBundle(), new ClearLayerDialogStartEvent(this.layerIds));
        return create;
    }
}
