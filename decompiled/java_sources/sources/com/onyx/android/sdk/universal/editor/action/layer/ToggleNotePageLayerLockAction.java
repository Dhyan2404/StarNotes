package com.onyx.android.sdk.universal.editor.action.layer;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u0016\u0010\u0007\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", "layerInfo", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ToggleNotePageLayerLockAction extends RxBaseAppAction<ToggleNotePageLayerLockAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public LayerInfo layerInfo;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.ToggleNotePageLayerLockAction$a */
    /* loaded from: classes8.dex */
    public static final class C9612a<T, R> implements Function {
        public C9612a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ToggleNotePageLayerLockAction apply(@NotNull SetNotePageLayerLockAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ToggleNotePageLayerLockAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ToggleNotePageLayerLockAction(@NotNull EditorBundle editorBundle, @NotNull LayerInfo layerInfo) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(layerInfo, "layerInfo");
        this.layerInfo = layerInfo;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ToggleNotePageLayerLockAction> create() {
        Observable map = new SetNotePageLayerLockAction(getEditorBundle(), this.layerInfo, !r2.getLock()).build().map(new C9612a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
