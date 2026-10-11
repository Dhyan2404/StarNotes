package com.onyx.android.sdk.universal.editor.action.erase;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.shape.ShapeHandlerManager;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B/\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000b¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002R\u0016\u0010\n\u001a\u0004\u0018\u00010\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0010\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\r¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/erase/StartEraseAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "m", "", C6999h.f39688c, Constants.INTEGER_SIG, ApiBroadCastReceiver.ARGS_ERASE_TYPE, "", "i", Constants.HASIDCALL_INDEX_SIG, "userProvider", "j", "updateToolbar", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Integer;ZZ)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartEraseAction extends RxBaseAppAction<StartEraseAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public final Integer eraseType;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean userProvider;

    /* renamed from: j, reason: from kotlin metadata */
    public final boolean updateToolbar;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.erase.StartEraseAction$a */
    /* loaded from: classes8.dex */
    public static final class C8698a<T> implements Consumer {
        public C8698a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StartEraseAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StartEraseAction.this.m37689m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.erase.StartEraseAction$b */
    /* loaded from: classes8.dex */
    public static final class C8699b<T> implements Consumer {
        public C8699b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StartEraseAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StartEraseAction.this.m37688l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.erase.StartEraseAction$c */
    /* loaded from: classes8.dex */
    public static final class C8700c<T> implements Consumer {
        public C8700c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StartEraseAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.updateNoteDrawingArgs(StartEraseAction.this.getEditorBundle());
        }
    }

    public /* synthetic */ StartEraseAction(EditorBundle editorBundle, Integer num, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, (i & 2) != 0 ? null : num, (i & 4) != 0 ? true : z, (i & 8) != 0 ? true : z2);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StartEraseAction> create() {
        Observable<StartEraseAction> doOnNext = Observable.just(this).observeOn(getMainUIScheduler()).doOnNext(new C8698a()).doOnNext(new C8699b()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C8700c());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final void m37688l() {
        if (this.userProvider) {
            getEditorBundle().getUiBundle().getHandlerManager().getShapeHandlerManager().activeUserProvider(ShapeHandlerManager.ERASE_PROVIDER, this.updateToolbar);
        } else {
            getEditorBundle().getUiBundle().getHandlerManager().getShapeHandlerManager().activeShapeProvider(ShapeHandlerManager.ERASE_PROVIDER);
        }
    }

    /* renamed from: m */
    public final void m37689m() {
        Integer num = this.eraseType;
        if (num != null) {
            EditorBundleKt.uiDrawingArgs(getEditorBundle()).setCurrentEraseType(num.intValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartEraseAction(@NotNull EditorBundle editorBundle, @Nullable Integer num, boolean z, boolean z2) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.eraseType = num;
        this.userProvider = z;
        this.updateToolbar = z2;
    }
}
