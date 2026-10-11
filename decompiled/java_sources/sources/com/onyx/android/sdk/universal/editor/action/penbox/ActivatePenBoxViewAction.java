package com.onyx.android.sdk.universal.editor.action.penbox;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.replicator.note.data.pen.PencilBox;
import com.onyx.android.sdk.universal.common.events.ShowPenBoxEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.shape.UpdateUiDrawingArgsAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.helper.PencilBoxManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "addPen", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ActivatePenBoxViewAction extends RxBaseAppAction<ActivatePenBoxViewAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public final boolean addPen;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.penbox.ActivatePenBoxViewAction$a */
    /* loaded from: classes8.dex */
    public static final class C9764a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ PenArgs f50277f;

        public C9764a(PenArgs penArgs) {
            this.f50277f = penArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ActivatePenBoxViewAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(ActivatePenBoxViewAction.this.getEditorBundle(), new ShowPenBoxEvent(this.f50277f, ActivatePenBoxViewAction.this.addPen));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.penbox.ActivatePenBoxViewAction$b */
    /* loaded from: classes8.dex */
    public static final class C9765b<T, R> implements Function {
        public C9765b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ActivatePenBoxViewAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ActivatePenBoxViewAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.penbox.ActivatePenBoxViewAction$c */
    /* loaded from: classes8.dex */
    public static final class C9766c<T, R> implements Function {
        public C9766c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ActivatePenBoxViewAction> apply(@NotNull ActivatePenBoxViewAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ActivatePenBoxViewAction.this.m39619l();
        }
    }

    public /* synthetic */ ActivatePenBoxViewAction(EditorBundle editorBundle, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, (i & 2) != 0 ? false : z);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ActivatePenBoxViewAction> create() {
        Observable<ActivatePenBoxViewAction> flatMap = Observable.just(this).observeOn(getMainUIScheduler()).flatMap(new C9766c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<ActivatePenBoxViewAction> m39619l() {
        PencilBoxManager.Companion companion = PencilBoxManager.INSTANCE;
        if (!companion.hasPenBox()) {
            Observable<ActivatePenBoxViewAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        PencilBox penBox$default = PencilBoxManager.Companion.getPenBox$default(companion, null, 1, null);
        PenArgs loadPenArgsById = penBox$default.loadPenArgsById(penBox$default.getSelectedId());
        final PenArgs m72358clone = loadPenArgsById != null ? loadPenArgsById.m72358clone() : null;
        Observable doOnNext = Observable.just(this).doOnNext(new C9764a(m72358clone));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable map = RxjavaKt.flatMapIf(doOnNext, new Function1<ActivatePenBoxViewAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.penbox.ActivatePenBoxViewAction$activate$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ActivatePenBoxViewAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(PenArgs.this != null);
            }
        }, new Function1<ActivatePenBoxViewAction, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.penbox.ActivatePenBoxViewAction$activate$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull ActivatePenBoxViewAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                EditorBundle editorBundle = ActivatePenBoxViewAction.this.getEditorBundle();
                PenArgs penArgs = m72358clone;
                Intrinsics.checkNotNull(penArgs);
                return new UpdateUiDrawingArgsAction(editorBundle, penArgs).build();
            }
        }).map(new C9765b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivatePenBoxViewAction(@NotNull EditorBundle editorBundle, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.addPen = z;
    }
}
