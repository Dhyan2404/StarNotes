package com.onyx.android.sdk.universal.editor.action.editor;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.layer.SetNotePageLayerLockAction;
import com.onyx.android.sdk.universal.editor.action.layer.SetNotePageLayerVisibilityAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageChangedLayerChangAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", "layerInfo", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ApplyPageChangedLayerChangAction extends RxBaseAppAction<Object> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final LayerInfo layerInfo;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.editor.ApplyPageChangedLayerChangAction$a */
    /* loaded from: classes8.dex */
    public static final class C8685a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ SetNotePageLayerVisibilityAction f48342e;

        public C8685a(SetNotePageLayerVisibilityAction setNotePageLayerVisibilityAction) {
            this.f48342e = setNotePageLayerVisibilityAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SetNotePageLayerVisibilityAction> apply(@NotNull ApplyPageChangedLayerChangAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f48342e.build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.editor.ApplyPageChangedLayerChangAction$b */
    /* loaded from: classes8.dex */
    public static final class C8686b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ SetNotePageLayerLockAction f48343e;

        public C8686b(SetNotePageLayerLockAction setNotePageLayerLockAction) {
            this.f48343e = setNotePageLayerLockAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull SetNotePageLayerVisibilityAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f48343e.build();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplyPageChangedLayerChangAction(@NotNull EditorBundle editorBundle, @NotNull LayerInfo layerInfo) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(layerInfo, "layerInfo");
        this.layerInfo = layerInfo;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        EditorBundle editorBundle = getEditorBundle();
        LayerInfo layerInfo = this.layerInfo;
        SetNotePageLayerVisibilityAction setNotePageLayerVisibilityAction = new SetNotePageLayerVisibilityAction(editorBundle, layerInfo, layerInfo.getShow());
        setNotePageLayerVisibilityAction.setPostChangedEvent(false);
        EditorBundle editorBundle2 = getEditorBundle();
        LayerInfo layerInfo2 = this.layerInfo;
        SetNotePageLayerLockAction setNotePageLayerLockAction = new SetNotePageLayerLockAction(editorBundle2, layerInfo2, layerInfo2.getLock());
        setNotePageLayerLockAction.setPostChangedEvent(false);
        Observable<Object> flatMap = Observable.just(this).flatMap(new C8685a(setNotePageLayerVisibilityAction)).flatMap(new C8686b(setNotePageLayerLockAction));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }
}
