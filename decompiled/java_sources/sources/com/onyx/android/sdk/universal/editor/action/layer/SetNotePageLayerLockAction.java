package com.onyx.android.sdk.universal.editor.action.layer;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.layer.SetNotePageLayerLockAction;
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

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002R\u0016\u0010\u000b\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\"\u0010\u0015\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u000e\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerLockAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", GoogleApiAvailabilityLight.f29016b, "p", "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", "layerInfo", "", "i", Constants.HASIDCALL_INDEX_SIG, DevicePushAction.LOCK_DEVICE, "j", "getPostChangedEvent", Constants.BOOLEAN_VALUE_SIG, "setPostChangedEvent", "(Z)V", "postChangedEvent", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SetNotePageLayerLockAction extends RxBaseAppAction<SetNotePageLayerLockAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public LayerInfo layerInfo;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean lock;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean postChangedEvent;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.SetNotePageLayerLockAction$a */
    /* loaded from: classes8.dex */
    public static final class C9605a<T> implements Consumer {
        public C9605a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SetNotePageLayerLockAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SetNotePageLayerLockAction.this.m39356m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.SetNotePageLayerLockAction$b */
    /* loaded from: classes8.dex */
    public static final class C9606b<T, R> implements Function {
        public C9606b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull SetNotePageLayerLockAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.postVirtualDocViewInfo(SetNotePageLayerLockAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.SetNotePageLayerLockAction$c */
    /* loaded from: classes8.dex */
    public static final class C9607c<T, R> implements Function {
        public C9607c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SetNotePageLayerLockAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SetNotePageLayerLockAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetNotePageLayerLockAction(@NotNull EditorBundle editorBundle, @NotNull LayerInfo layerInfo, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(layerInfo, "layerInfo");
        this.layerInfo = layerInfo;
        this.lock = z;
        this.postChangedEvent = true;
    }

    /* renamed from: o */
    public static final void m39355o(SetNotePageLayerLockAction this$0, Object it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m39358p();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SetNotePageLayerLockAction> create() {
        Observable flatMap = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C9605a()).flatMap(new C9606b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable<SetNotePageLayerLockAction> map = RxjavaKt.doOnNextIf(flatMap, new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.layer.SetNotePageLayerLockAction$create$3
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(SetNotePageLayerLockAction.this.getPostChangedEvent());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.xhm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SetNotePageLayerLockAction.m39355o(SetNotePageLayerLockAction.this, obj);
            }
        }).map(new C9607c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final boolean getPostChangedEvent() {
        return this.postChangedEvent;
    }

    /* renamed from: m */
    public final void m39356m() {
        this.layerInfo.setLock(this.lock);
        m39357n();
    }

    /* renamed from: n */
    public final void m39357n() {
        LayerInfo layer = getEditorBundle().getWorkBundle().getVirtualPolicy().ensureGlobalNotePage().getPageInfo().getLayer(this.layerInfo.getId());
        if (layer == null) {
            return;
        }
        layer.setLock(this.layerInfo.getLock());
    }

    /* renamed from: p */
    public final void m39358p() {
        EditorBundleKt.postEvent(getEditorBundle(), new NoteLayerInfoChangedEvent(this.layerInfo.m72356clone()));
    }

    public final void setPostChangedEvent(boolean z) {
        this.postChangedEvent = z;
    }
}
