package com.onyx.galaxy.note.editor.action;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.replicator.note.data.pen.PencilBox;
import com.onyx.android.sdk.universal.common.events.StylusClickPenBoxEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.helper.PencilBoxManager;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.utils.ShapeToolUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u0005¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/SwitchPenBrushAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", C6999h.f39688c, "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "currentPenType", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SwitchPenBrushAction extends RxBaseNoteAppAction<Object> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public ShapeToolType currentPenType;

    /* renamed from: com.onyx.galaxy.note.editor.action.SwitchPenBrushAction$a */
    /* loaded from: classes9.dex */
    public static final class C11803a<T, R> implements Function {
        public C11803a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object apply(@NotNull SwitchPenBrushAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ShapeToolType m45640l = SwitchPenBrushAction.this.m45640l();
            Intrinsics.checkNotNull(m45640l, "null cannot be cast to non-null type kotlin.Any");
            return m45640l;
        }
    }

    public SwitchPenBrushAction(@NotNull EditorBundle editorBundle, @NotNull ShapeToolType currentPenType) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(currentPenType, "currentPenType");
        this.editorBundle = editorBundle;
        this.currentPenType = currentPenType;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<Object> map = Observable.just(this).map(new C11803a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    /* renamed from: l */
    public final ShapeToolType m45640l() {
        PencilBoxManager.Companion companion = PencilBoxManager.INSTANCE;
        PencilBox penBox$default = companion.hasPenBox() ? PencilBoxManager.Companion.getPenBox$default(companion, null, 1, null) : null;
        String selectedId = penBox$default != null ? penBox$default.getSelectedId() : null;
        if (selectedId == null) {
            List<ShapeToolType> enableSwitchBrushList = ShapeToolUtils.INSTANCE.getEnableSwitchBrushList();
            if (enableSwitchBrushList.isEmpty()) {
                return null;
            }
            return enableSwitchBrushList.get(((Number) MathUtils.INSTANCE.clamp(Integer.valueOf((enableSwitchBrushList.indexOf(this.currentPenType) + 1) % enableSwitchBrushList.size()), 0, Integer.valueOf(enableSwitchBrushList.size()))).intValue());
        }
        PenArgs nextPenArgs = penBox$default.getNextPenArgs(selectedId);
        if (nextPenArgs == null || nextPenArgs.getId() == null) {
            return null;
        }
        EditorBundleKt.postEvent(this.editorBundle, new StylusClickPenBoxEvent(nextPenArgs.m72358clone()));
        return null;
    }
}
