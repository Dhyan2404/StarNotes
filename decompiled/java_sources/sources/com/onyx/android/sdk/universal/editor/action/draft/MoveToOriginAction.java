package com.onyx.android.sdk.universal.editor.action.draft;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.events.note.QuitExcerptSelectionEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/draft/MoveToOriginAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class MoveToOriginAction extends RxBaseAppAction<MoveToOriginAction> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.draft.MoveToOriginAction$a */
    /* loaded from: classes8.dex */
    public static final class C8668a<T, R> implements Function {
        public C8668a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ScrollToDisplayAction> apply(@NotNull ResetShapeLocationBeanAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new ScrollToDisplayAction(MoveToOriginAction.this.getEditorBundle(), 0.0f, 0.0f).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.draft.MoveToOriginAction$b */
    /* loaded from: classes8.dex */
    public static final class C8669b<T, R> implements Function {
        public C8669b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MoveToOriginAction apply(@NotNull ScrollToDisplayAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MoveToOriginAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MoveToOriginAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<MoveToOriginAction> create() {
        m37643l();
        Observable<MoveToOriginAction> map = new ResetShapeLocationBeanAction(getEditorBundle()).build().flatMap(new C8668a()).map(new C8669b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m37643l() {
        EditorBundle editorBundle = getEditorBundle();
        EditorBundleKt.stopScroll(editorBundle);
        EditorBundleKt.postEvent(editorBundle, new QuitExcerptSelectionEvent(false, null, 2, null));
        EditorBundleKt.postEvent(editorBundle, new QuitTransformEvent(false, 1, null));
    }
}
