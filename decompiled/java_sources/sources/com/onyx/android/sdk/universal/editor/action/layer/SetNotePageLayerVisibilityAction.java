package com.onyx.android.sdk.universal.editor.action.layer;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.layer.SetNotePageLayerVisibilityAction;
import com.onyx.android.sdk.universal.editor.action.render.RedrawNoteAction;
import com.onyx.android.sdk.universal.editor.events.note.NoteLayerInfoChangedEvent;
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

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002R\u0016\u0010\u000b\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\"\u0010\u0015\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u000e\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", GoogleApiAvailabilityLight.f29016b, "p", "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", "layerInfo", "", "i", Constants.HASIDCALL_INDEX_SIG, "visible", "j", "getPostChangedEvent", Constants.BOOLEAN_VALUE_SIG, "setPostChangedEvent", "(Z)V", "postChangedEvent", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SetNotePageLayerVisibilityAction extends RxBaseAppAction<SetNotePageLayerVisibilityAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public LayerInfo layerInfo;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean visible;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean postChangedEvent;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.SetNotePageLayerVisibilityAction$a */
    /* loaded from: classes8.dex */
    public static final class C9608a<T> implements Consumer {
        public C9608a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SetNotePageLayerVisibilityAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SetNotePageLayerVisibilityAction.this.m39364m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.SetNotePageLayerVisibilityAction$b */
    /* loaded from: classes8.dex */
    public static final class C9609b<T, R> implements Function {
        public C9609b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull SetNotePageLayerVisibilityAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.postVirtualDocViewInfo(SetNotePageLayerVisibilityAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.SetNotePageLayerVisibilityAction$c */
    /* loaded from: classes8.dex */
    public static final class C9610c<T, R> implements Function {
        public C9610c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RedrawNoteAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new RedrawNoteAction(SetNotePageLayerVisibilityAction.this.getEditorBundle()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.SetNotePageLayerVisibilityAction$d */
    /* loaded from: classes8.dex */
    public static final class C9611d<T, R> implements Function {
        public C9611d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SetNotePageLayerVisibilityAction apply(@NotNull RedrawNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SetNotePageLayerVisibilityAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetNotePageLayerVisibilityAction(@NotNull EditorBundle editorBundle, @NotNull LayerInfo layerInfo, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(layerInfo, "layerInfo");
        this.layerInfo = layerInfo;
        this.visible = z;
        this.postChangedEvent = true;
    }

    /* renamed from: o */
    public static final void m39363o(SetNotePageLayerVisibilityAction this$0, RedrawNoteAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m39366p();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SetNotePageLayerVisibilityAction> create() {
        Observable flatMap = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C9608a()).flatMap(new C9609b()).flatMap(new C9610c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable<SetNotePageLayerVisibilityAction> map = RxjavaKt.doOnNextIf(flatMap, new Function1<RedrawNoteAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.layer.SetNotePageLayerVisibilityAction$create$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull RedrawNoteAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(SetNotePageLayerVisibilityAction.this.getPostChangedEvent());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.yhm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SetNotePageLayerVisibilityAction.m39363o(SetNotePageLayerVisibilityAction.this, (RedrawNoteAction) obj);
            }
        }).map(new C9611d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final boolean getPostChangedEvent() {
        return this.postChangedEvent;
    }

    /* renamed from: m */
    public final void m39364m() {
        this.layerInfo.setShow(this.visible);
        m39365n();
    }

    /* renamed from: n */
    public final void m39365n() {
        LayerInfo layer = getEditorBundle().getWorkBundle().getVirtualPolicy().ensureGlobalNotePage().getPageInfo().getLayer(this.layerInfo.getId());
        if (layer == null) {
            return;
        }
        layer.setShow(this.layerInfo.getShow());
    }

    /* renamed from: p */
    public final void m39366p() {
        EditorBundleKt.postEvent(getEditorBundle(), new NoteLayerInfoChangedEvent(this.layerInfo.m72356clone()));
    }

    public final void setPostChangedEvent(boolean z) {
        this.postChangedEvent = z;
    }
}
