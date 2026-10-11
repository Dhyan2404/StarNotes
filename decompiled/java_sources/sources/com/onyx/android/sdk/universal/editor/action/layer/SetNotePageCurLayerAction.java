package com.onyx.android.sdk.universal.editor.action.layer;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.layer.SetNotePageCurLayerAction;
import com.onyx.android.sdk.universal.editor.events.note.NoteLayerSetEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageCurLayerAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", GoogleApiAvailabilityLight.f29016b, "", C6999h.f39688c, "I", "layerId", "", "i", Constants.HASIDCALL_INDEX_SIG, "getPostChangedEvent", Constants.BOOLEAN_VALUE_SIG, "setPostChangedEvent", "(Z)V", "postChangedEvent", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SetNotePageCurLayerAction extends RxBaseAppAction<SetNotePageCurLayerAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public int layerId;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean postChangedEvent;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.SetNotePageCurLayerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9602a<T> implements Consumer {
        public C9602a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SetNotePageCurLayerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SetNotePageCurLayerAction.this.m39350n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.SetNotePageCurLayerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9603b<T, R> implements Function {
        public C9603b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull SetNotePageCurLayerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.postVirtualDocViewInfo(SetNotePageCurLayerAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.SetNotePageCurLayerAction$c */
    /* loaded from: classes8.dex */
    public static final class C9604c<T, R> implements Function {
        public C9604c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SetNotePageCurLayerAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SetNotePageCurLayerAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetNotePageCurLayerAction(@NotNull EditorBundle editorBundle, int i) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.layerId = i;
        this.postChangedEvent = true;
    }

    /* renamed from: m */
    public static final void m39349m(SetNotePageCurLayerAction this$0, SetNotePageCurLayerAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new NoteLayerSetEvent(this$0.layerId));
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SetNotePageCurLayerAction> create() {
        Observable doOnNext = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C9602a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<SetNotePageCurLayerAction> map = RxjavaKt.doOnNextIf(doOnNext, new Function1<SetNotePageCurLayerAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.layer.SetNotePageCurLayerAction$create$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull SetNotePageCurLayerAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(SetNotePageCurLayerAction.this.getPostChangedEvent());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.whm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SetNotePageCurLayerAction.m39349m(SetNotePageCurLayerAction.this, (SetNotePageCurLayerAction) obj);
            }
        }).flatMap(new C9603b()).map(new C9604c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final boolean getPostChangedEvent() {
        return this.postChangedEvent;
    }

    /* renamed from: n */
    public final void m39350n() {
        getEditorBundle().getWorkBundle().getVirtualPolicy().ensureGlobalNotePage().getPageInfo().setCurrentLayerId(this.layerId);
    }

    public final void setPostChangedEvent(boolean z) {
        this.postChangedEvent = z;
    }
}
