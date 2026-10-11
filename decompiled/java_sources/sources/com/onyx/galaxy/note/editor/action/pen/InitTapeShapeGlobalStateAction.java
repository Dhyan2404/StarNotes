package com.onyx.galaxy.note.editor.action.pen;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.shape.pen.TapeShape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.events.note.ShowTapeShapeOverlayEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.view.EditorBundleManager;
import com.onyx.galaxy.note.editor.action.pen.InitTapeShapeGlobalStateAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\u000f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "getEditorBundleManager", "()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "editorBundleManager", "", "i", Constants.HASIDCALL_INDEX_SIG, "getShowTape", Constants.BOOLEAN_VALUE_SIG, "showTape", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Z)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class InitTapeShapeGlobalStateAction extends RxBaseAppAction<InitTapeShapeGlobalStateAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final EditorBundleManager editorBundleManager;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean showTape;

    /* renamed from: com.onyx.galaxy.note.editor.action.pen.InitTapeShapeGlobalStateAction$a */
    /* loaded from: classes9.dex */
    public static final class C11983a<T> implements Consumer {
        public C11983a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull InitTapeShapeGlobalStateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TapeShape.INSTANCE.setAllTapeClose(InitTapeShapeGlobalStateAction.this.getShowTape());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.pen.InitTapeShapeGlobalStateAction$b */
    /* loaded from: classes9.dex */
    public static final class C11984b<T, R> implements Function {
        public C11984b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InitTapeShapeGlobalStateAction apply(@NotNull InitTapeShapeGlobalStateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InitTapeShapeGlobalStateAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitTapeShapeGlobalStateAction(@NotNull EditorBundle editorBundle, @NotNull EditorBundleManager editorBundleManager, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(editorBundleManager, "editorBundleManager");
        this.editorBundleManager = editorBundleManager;
        this.showTape = z;
    }

    /* renamed from: m */
    public static final void m45938m(InitTapeShapeGlobalStateAction this$0, InitTapeShapeGlobalStateAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        EditorBundleManager editorBundleManager = this$0.editorBundleManager;
        EditorBundleKt.postEvent(editorBundleManager.getAnotherEditorViewHandler(editorBundleManager.getFocusId()).getEditorBundle(), new ShowTapeShapeOverlayEvent(this$0.showTape));
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<InitTapeShapeGlobalStateAction> create() {
        Observable doOnNext = Observable.just(this).doOnNext(new C11983a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<InitTapeShapeGlobalStateAction> map = RxjavaKt.doOnNextIf(doOnNext, new Function1<InitTapeShapeGlobalStateAction, Boolean>() { // from class: com.onyx.galaxy.note.editor.action.pen.InitTapeShapeGlobalStateAction$create$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull InitTapeShapeGlobalStateAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(InitTapeShapeGlobalStateAction.this.getEditorBundleManager().isEnabledSplitScreen());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.zji
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                InitTapeShapeGlobalStateAction.m45938m(InitTapeShapeGlobalStateAction.this, (InitTapeShapeGlobalStateAction) obj);
            }
        }).map(new C11984b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final EditorBundleManager getEditorBundleManager() {
        return this.editorBundleManager;
    }

    public final boolean getShowTape() {
        return this.showTape;
    }
}
