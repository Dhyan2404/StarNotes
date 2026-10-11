package com.onyx.android.sdk.universal.editor.action.handler;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.common.data.NoteDrawingArgs;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.shape.PreparePencilPenAction;
import com.onyx.android.sdk.universal.editor.data.EraserPropertyOption;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B-\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/ActivateShapeHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", GoogleApiAvailabilityLight.f29016b, "m", "", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "userProvider", "", "i", Constants.STRING_SIG, CouchFieldKey.KEY_PROVIDER_NAME, "", "j", Constants.INTEGER_SIG, "shapeType", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZLjava/lang/String;Ljava/lang/Integer;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ActivateShapeHandlerAction extends RxBaseAppAction<ActivateShapeHandlerAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public final boolean userProvider;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public final String providerName;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public final Integer shapeType;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.ActivateShapeHandlerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9123a<T> implements Consumer {
        public C9123a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ActivateShapeHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ActivateShapeHandlerAction.this.m38373m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.ActivateShapeHandlerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9124b<T> implements Consumer {
        public C9124b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ActivateShapeHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ActivateShapeHandlerAction.this.m38372l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.ActivateShapeHandlerAction$c */
    /* loaded from: classes8.dex */
    public static final class C9125c<T> implements Consumer {
        public C9125c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ActivateShapeHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.updateNoteDrawingArgs(ActivateShapeHandlerAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.ActivateShapeHandlerAction$d */
    /* loaded from: classes8.dex */
    public static final class C9126d<T, R> implements Function {
        public C9126d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ActivateShapeHandlerAction> apply(@NotNull ActivateShapeHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ActivateShapeHandlerAction.this.m38374n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.ActivateShapeHandlerAction$e */
    /* loaded from: classes8.dex */
    public static final class C9127e<T, R> implements Function {
        public C9127e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ActivateShapeHandlerAction apply(@NotNull ActivateShapeHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ActivateShapeHandlerAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.ActivateShapeHandlerAction$f */
    /* loaded from: classes8.dex */
    public static final class C9128f<T, R> implements Function {
        public C9128f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ActivateShapeHandlerAction apply(@NotNull PreparePencilPenAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ActivateShapeHandlerAction.this;
        }
    }

    public /* synthetic */ ActivateShapeHandlerAction(EditorBundle editorBundle, boolean z, String str, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, z, str, (i & 8) != 0 ? null : num);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ActivateShapeHandlerAction> create() {
        Observable<ActivateShapeHandlerAction> map = Observable.just(this).observeOn(getMainUIScheduler()).doOnNext(new C9123a()).doOnNext(new C9124b()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C9125c()).flatMap(new C9126d()).map(new C9127e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m38372l() {
        if (this.providerName == null) {
            EditorBundleKt.activeShapeDrawingProvider(getEditorBundle());
        } else if (this.userProvider) {
            getEditorBundle().getUiBundle().getHandlerManager().getShapeHandlerManager().activeUserProvider(this.providerName, true);
        } else {
            getEditorBundle().getUiBundle().getHandlerManager().getShapeHandlerManager().activeShapeProvider(this.providerName);
        }
    }

    /* renamed from: m */
    public final void m38373m() {
        Integer num = this.shapeType;
        if (num != null) {
            int intValue = num.intValue();
            PenArgs penArgs = MMKVNote.INSTANCE.getPenArgsOption(intValue).get();
            NoteDrawingArgs uiDrawingArgs = EditorBundleKt.uiDrawingArgs(getEditorBundle());
            uiDrawingArgs.setCurrentShapeType(intValue);
            uiDrawingArgs.setPenArgs(penArgs);
            uiDrawingArgs.setStrokeColor(penArgs.getColor());
            uiDrawingArgs.setStrokeWidth(penArgs.getWidth());
            uiDrawingArgs.setPenAttrs(penArgs.getAttrs());
            EraserPropertyOption eraserPropertyOption = EraserPropertyOption.INSTANCE;
            uiDrawingArgs.setEraserWidth(eraserPropertyOption.getEraserWidth().get());
            uiDrawingArgs.setCurrentEraseType(eraserPropertyOption.getEraserTypeOption().get());
            if (this.shapeType.intValue() == 39) {
                uiDrawingArgs.setCurrentShapeType(this.shapeType.intValue());
            }
        }
    }

    /* renamed from: n */
    public final Observable<ActivateShapeHandlerAction> m38374n() {
        Integer num = this.shapeType;
        if (num == null) {
            Observable<ActivateShapeHandlerAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        num.intValue();
        PenArgs penArgs = EditorBundleKt.uiDrawingArgs(getEditorBundle()).getPenArgs();
        if (penArgs == null) {
            penArgs = new PenArgs(null, 0, 0.0f, 0, null, 31, null);
        }
        Observable map = new PreparePencilPenAction(getEditorBundle(), penArgs).build().map(new C9128f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivateShapeHandlerAction(@NotNull EditorBundle editorBundle, boolean z, @Nullable String str, @Nullable Integer num) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.userProvider = z;
        this.providerName = str;
        this.shapeType = num;
    }
}
