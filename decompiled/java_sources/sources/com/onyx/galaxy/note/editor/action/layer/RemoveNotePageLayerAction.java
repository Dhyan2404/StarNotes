package com.onyx.galaxy.note.editor.action.layer;

import android.app.Dialog;
import android.content.Context;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.note.request.SaveNoteModelRequest;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.flush.DeleteStashShapeAction;
import com.onyx.android.sdk.universal.editor.action.render.RedrawNoteAction;
import com.onyx.android.sdk.universal.editor.events.note.DeleteLayerDialogCancelEvent;
import com.onyx.android.sdk.universal.editor.events.note.DeleteLayerDialogDoneEvent;
import com.onyx.android.sdk.universal.editor.events.note.DeleteLayerDialogStartEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.layer.RemoveNotePageLayerRequest;
import com.onyx.galaxy.note.editor.action.layer.RemoveNotePageLayerAction;
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

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\f\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001d\u0010\u0011\u001a\u0004\u0018\u00010\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/layer/RemoveNotePageLayerAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "p", C4921e.f26528e, "", "", C6999h.f39688c, "Ljava/util/List;", "layerIds", "Lcom/onyx/android/sdk/ui/CommonDialog;", "i", "Lkotlin/Lazy;", GoogleApiAvailabilityLight.f29016b, "()Lcom/onyx/android/sdk/ui/CommonDialog;", "loadingDialog", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class RemoveNotePageLayerAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> layerIds;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy loadingDialog;

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.RemoveNotePageLayerAction$a */
    /* loaded from: classes9.dex */
    public static final class C11962a<T, R> implements Function {
        public C11962a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull RemoveNotePageLayerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RemoveNotePageLayerAction.this.m45912p();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.RemoveNotePageLayerAction$b */
    /* loaded from: classes9.dex */
    public static final class C11963b<T> implements Consumer {
        public C11963b() {
        }

        /* renamed from: a */
        public final void m45914a(boolean z) {
            CommonDialog m45910n = RemoveNotePageLayerAction.this.m45910n();
            if (m45910n != null) {
                m45910n.show();
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m45914a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.RemoveNotePageLayerAction$c */
    /* loaded from: classes9.dex */
    public static final class C11964c<T, R> implements Function {
        public C11964c() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Object> m45915a(boolean z) {
            return RemoveNotePageLayerAction.this.m45911o();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m45915a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.RemoveNotePageLayerAction$d */
    /* loaded from: classes9.dex */
    public static final class C11965d<T, R> implements Function {
        public C11965d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteStashShapeAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new DeleteStashShapeAction(RemoveNotePageLayerAction.this.getEditorBundle(), EditorBundleKt.docId(RemoveNotePageLayerAction.this.getEditorBundle()), null, 4, null).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.RemoveNotePageLayerAction$e */
    /* loaded from: classes9.dex */
    public static final class C11966e<T, R> implements Function {
        public C11966e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull DeleteStashShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.postVirtualDocViewInfo(RemoveNotePageLayerAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.RemoveNotePageLayerAction$f */
    /* loaded from: classes9.dex */
    public static final class C11967f<T, R> implements Function {
        public C11967f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RedrawNoteAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new RedrawNoteAction(RemoveNotePageLayerAction.this.getEditorBundle()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.RemoveNotePageLayerAction$g */
    /* loaded from: classes9.dex */
    public static final class C11968g<T, R> implements Function {

        /* renamed from: e */
        public static final C11968g<T, R> f58396e = new C11968g<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull RedrawNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.RemoveNotePageLayerAction$h */
    /* loaded from: classes9.dex */
    public static final class C11969h<T> implements Consumer {
        public C11969h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            String stackTraceToString;
            Intrinsics.checkNotNullParameter(it2, "it");
            String simpleNameString = AnyKt.toSimpleNameString(RemoveNotePageLayerAction.this);
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(it2);
            LogUtils.eTag(simpleNameString, stackTraceToString);
            ToastUtils.show$default(ToastUtils.INSTANCE, C7373R.string.error_fail, false, 2, (Object) null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.RemoveNotePageLayerAction$i */
    /* loaded from: classes9.dex */
    public static final class C11970i<T, R> implements Function {
        public C11970i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveNoteModelRequest> apply(@NotNull RemoveNotePageLayerRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RemoveNotePageLayerAction removeNotePageLayerAction = RemoveNotePageLayerAction.this;
            return RxBaseAppActionKt.submitRequestToNote(removeNotePageLayerAction, new SaveNoteModelRequest(EditorBundleKt.noteBundle(removeNotePageLayerAction.getEditorBundle())));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoveNotePageLayerAction(@NotNull EditorBundle editorBundle, @NotNull List<Integer> layerIds) {
        super(editorBundle);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(layerIds, "layerIds");
        this.layerIds = layerIds;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<CommonDialog>() { // from class: com.onyx.galaxy.note.editor.action.layer.RemoveNotePageLayerAction$loadingDialog$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final CommonDialog invoke() {
                Context activityContext = RemoveNotePageLayerAction.this.getActivityContext();
                if (activityContext != null) {
                    return CommonDialog.INSTANCE.createLoadingDialog(activityContext, C8045R.string.removing);
                }
                return null;
            }
        });
        this.loadingDialog = lazy;
    }

    /* renamed from: m */
    public static final void m45909m(RemoveNotePageLayerAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CommonDialog m45910n = this$0.m45910n();
        if (m45910n != null) {
            CommonDialog.dismissWithDelay$default(m45910n, 0L, 1, null);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> doFinally = Observable.just(this).observeOn(getMainUIScheduler()).flatMap(new C11962a()).doOnNext(new C11963b()).flatMap(new C11964c()).flatMap(new C11965d()).flatMap(new C11966e()).flatMap(new C11967f()).map(C11968g.f58396e).observeOn(getMainUIScheduler()).doOnError(new C11969h()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.xjl
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                RemoveNotePageLayerAction.m45909m(RemoveNotePageLayerAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: n */
    public final CommonDialog m45910n() {
        return (CommonDialog) this.loadingDialog.getValue();
    }

    /* renamed from: o */
    public final Observable<?> m45911o() {
        LogUtils.wTag(AnyKt.toSimpleNameString(this), EditorBundleKt.docId(getEditorBundle()) + " remove layerIds:" + this.layerIds);
        Observable<?> flatMap = RxBaseAppActionKt.submitRequestToNote(this, new RemoveNotePageLayerRequest(getEditorBundle().getWorkBundle(), this.layerIds)).flatMap(new C11970i());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: p */
    public final Observable<Boolean> m45912p() {
        Context activityContext = getActivityContext();
        if (activityContext == null) {
            Observable<Boolean> just = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        new CommonDialog.Builder(activityContext).setTitle(C8045R.string.tip).setWarning(true).setMessage(C8045R.string.remove_layer_warning).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.action.layer.RemoveNotePageLayerAction$showAlertDialog$1
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
            public final void invoke2(@NotNull CommonDialog dialog, @NotNull String editText) {
                List list;
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(editText, "editText");
                EditorBundle editorBundle = RemoveNotePageLayerAction.this.getEditorBundle();
                list = RemoveNotePageLayerAction.this.layerIds;
                EditorBundleKt.postEvent(editorBundle, new DeleteLayerDialogDoneEvent(list));
                RxjavaKt.done(create, Boolean.TRUE);
            }
        }).setCancelCallback(new Function1<Dialog, Unit>() { // from class: com.onyx.galaxy.note.editor.action.layer.RemoveNotePageLayerAction$showAlertDialog$2
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
                EditorBundle editorBundle = RemoveNotePageLayerAction.this.getEditorBundle();
                list = RemoveNotePageLayerAction.this.layerIds;
                EditorBundleKt.postEvent(editorBundle, new DeleteLayerDialogCancelEvent(list));
                RemoveNotePageLayerAction.this.dispose();
            }
        }).create().show();
        EditorBundleKt.postEvent(getEditorBundle(), new DeleteLayerDialogStartEvent(this.layerIds));
        return create;
    }
}
