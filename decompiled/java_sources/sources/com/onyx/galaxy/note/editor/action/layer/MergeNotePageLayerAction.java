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
import com.onyx.android.sdk.universal.editor.events.note.MergeLayerDialogCancelEvent;
import com.onyx.android.sdk.universal.editor.events.note.MergeLayerDialogDoneEvent;
import com.onyx.android.sdk.universal.editor.events.note.MergeLayerDialogStartEvent;
import com.onyx.android.sdk.universal.editor.events.note.NoteLayerMergedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.layer.MergeNotePageLayerRequest;
import com.onyx.galaxy.note.editor.action.layer.MergeNotePageLayerAction;
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

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\u000e\u001a\u00020\b¢\u0006\u0004\b\u0017\u0010\u0018J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\f\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000e\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001d\u0010\u0014\u001a\u0004\u0018\u00010\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/layer/MergeNotePageLayerAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "p", C4921e.f26528e, "", "", C6999h.f39688c, "Ljava/util/List;", "srcLayerIds", "i", "I", "targetLayerId", "Lcom/onyx/android/sdk/ui/CommonDialog;", "j", "Lkotlin/Lazy;", GoogleApiAvailabilityLight.f29016b, "()Lcom/onyx/android/sdk/ui/CommonDialog;", "loadingDialog", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class MergeNotePageLayerAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> srcLayerIds;

    /* renamed from: i, reason: from kotlin metadata */
    public final int targetLayerId;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy loadingDialog;

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.MergeNotePageLayerAction$a */
    /* loaded from: classes9.dex */
    public static final class C11952a<T, R> implements Function {
        public C11952a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull MergeNotePageLayerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MergeNotePageLayerAction.this.m45898p();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.MergeNotePageLayerAction$b */
    /* loaded from: classes9.dex */
    public static final class C11953b<T> implements Consumer {
        public C11953b() {
        }

        /* renamed from: a */
        public final void m45900a(boolean z) {
            CommonDialog m45896n = MergeNotePageLayerAction.this.m45896n();
            if (m45896n != null) {
                m45896n.show();
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m45900a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.MergeNotePageLayerAction$c */
    /* loaded from: classes9.dex */
    public static final class C11954c<T, R> implements Function {
        public C11954c() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Object> m45901a(boolean z) {
            return MergeNotePageLayerAction.this.m45897o();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m45901a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.MergeNotePageLayerAction$d */
    /* loaded from: classes9.dex */
    public static final class C11955d<T> implements Consumer {
        public C11955d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(MergeNotePageLayerAction.this.getEditorBundle(), new NoteLayerMergedEvent(MergeNotePageLayerAction.this.srcLayerIds, MergeNotePageLayerAction.this.targetLayerId));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.MergeNotePageLayerAction$e */
    /* loaded from: classes9.dex */
    public static final class C11956e<T, R> implements Function {
        public C11956e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteStashShapeAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new DeleteStashShapeAction(MergeNotePageLayerAction.this.getEditorBundle(), EditorBundleKt.docId(MergeNotePageLayerAction.this.getEditorBundle()), null, 4, null).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.MergeNotePageLayerAction$f */
    /* loaded from: classes9.dex */
    public static final class C11957f<T, R> implements Function {
        public C11957f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull DeleteStashShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.postVirtualDocViewInfo(MergeNotePageLayerAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.MergeNotePageLayerAction$g */
    /* loaded from: classes9.dex */
    public static final class C11958g<T, R> implements Function {
        public C11958g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RedrawNoteAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new RedrawNoteAction(MergeNotePageLayerAction.this.getEditorBundle()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.MergeNotePageLayerAction$h */
    /* loaded from: classes9.dex */
    public static final class C11959h<T, R> implements Function {

        /* renamed from: e */
        public static final C11959h<T, R> f58385e = new C11959h<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull RedrawNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.MergeNotePageLayerAction$i */
    /* loaded from: classes9.dex */
    public static final class C11960i<T> implements Consumer {
        public C11960i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            String stackTraceToString;
            Intrinsics.checkNotNullParameter(it2, "it");
            String simpleNameString = AnyKt.toSimpleNameString(MergeNotePageLayerAction.this);
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(it2);
            LogUtils.eTag(simpleNameString, stackTraceToString);
            ToastUtils.show$default(ToastUtils.INSTANCE, C7373R.string.error_fail, false, 2, (Object) null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.MergeNotePageLayerAction$j */
    /* loaded from: classes9.dex */
    public static final class C11961j<T, R> implements Function {
        public C11961j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveNoteModelRequest> apply(@NotNull MergeNotePageLayerRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MergeNotePageLayerAction mergeNotePageLayerAction = MergeNotePageLayerAction.this;
            return RxBaseAppActionKt.submitRequestToNote(mergeNotePageLayerAction, new SaveNoteModelRequest(EditorBundleKt.noteBundle(mergeNotePageLayerAction.getEditorBundle())));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MergeNotePageLayerAction(@NotNull EditorBundle editorBundle, @NotNull List<Integer> srcLayerIds, int i) {
        super(editorBundle);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(srcLayerIds, "srcLayerIds");
        this.srcLayerIds = srcLayerIds;
        this.targetLayerId = i;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<CommonDialog>() { // from class: com.onyx.galaxy.note.editor.action.layer.MergeNotePageLayerAction$loadingDialog$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final CommonDialog invoke() {
                Context activityContext = MergeNotePageLayerAction.this.getActivityContext();
                if (activityContext != null) {
                    return CommonDialog.INSTANCE.createLoadingDialog(activityContext, C8045R.string.merging);
                }
                return null;
            }
        });
        this.loadingDialog = lazy;
    }

    /* renamed from: m */
    public static final void m45895m(MergeNotePageLayerAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CommonDialog m45896n = this$0.m45896n();
        if (m45896n != null) {
            CommonDialog.dismissWithDelay$default(m45896n, 0L, 1, null);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> doFinally = Observable.just(this).observeOn(getMainUIScheduler()).flatMap(new C11952a()).doOnNext(new C11953b()).flatMap(new C11954c()).doOnNext(new C11955d()).flatMap(new C11956e()).flatMap(new C11957f()).flatMap(new C11958g()).map(C11959h.f58385e).observeOn(getMainUIScheduler()).doOnError(new C11960i()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.omj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                MergeNotePageLayerAction.m45895m(MergeNotePageLayerAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: n */
    public final CommonDialog m45896n() {
        return (CommonDialog) this.loadingDialog.getValue();
    }

    /* renamed from: o */
    public final Observable<?> m45897o() {
        LogUtils.wTag(AnyKt.toSimpleNameString(this), EditorBundleKt.docId(getEditorBundle()) + " merge layers srcLayerIds:" + this.srcLayerIds + " targetLayerId:" + this.targetLayerId);
        Observable<?> flatMap = RxBaseAppActionKt.submitRequestToNote(this, new MergeNotePageLayerRequest(getEditorBundle().getWorkBundle(), this.srcLayerIds, this.targetLayerId)).flatMap(new C11961j());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: p */
    public final Observable<Boolean> m45898p() {
        Context activityContext = getActivityContext();
        if (activityContext == null) {
            Observable<Boolean> just = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        new CommonDialog.Builder(activityContext).setTitle(C8045R.string.tip).setMessage(C8045R.string.merge_layer_warning).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.action.layer.MergeNotePageLayerAction$showAlertDialog$1
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
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(editText, "editText");
                EditorBundleKt.postEvent(MergeNotePageLayerAction.this.getEditorBundle(), new MergeLayerDialogDoneEvent(MergeNotePageLayerAction.this.srcLayerIds, MergeNotePageLayerAction.this.targetLayerId));
                RxjavaKt.done(create, Boolean.TRUE);
            }
        }).setCancelCallback(new Function1<Dialog, Unit>() { // from class: com.onyx.galaxy.note.editor.action.layer.MergeNotePageLayerAction$showAlertDialog$2
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
                EditorBundleKt.postEvent(MergeNotePageLayerAction.this.getEditorBundle(), new MergeLayerDialogCancelEvent(MergeNotePageLayerAction.this.srcLayerIds, MergeNotePageLayerAction.this.targetLayerId));
                MergeNotePageLayerAction.this.dispose();
            }
        }).create().show();
        EditorBundleKt.postEvent(getEditorBundle(), new MergeLayerDialogStartEvent(this.srcLayerIds, this.targetLayerId));
        return create;
    }
}
