package com.onyx.android.sdk.universal.editor.action;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.page.SaveNotePagesAction;
import com.onyx.android.sdk.universal.editor.data.MovePageArgs;
import com.onyx.android.sdk.universal.editor.request.MovePageRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\f\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/MovePageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "m", "Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;", "getMovePageArgs", "()Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;", "setMovePageArgs", "(Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;)V", "movePageArgs", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class MovePageAction extends RxBaseAppAction<MovePageAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public MovePageArgs movePageArgs;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.MovePageAction$a */
    /* loaded from: classes8.dex */
    public static final class C8239a<T, R> implements Function {
        public C8239a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends MovePageAction> apply(@NotNull MovePageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MovePageAction.this.m36857l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.MovePageAction$b */
    /* loaded from: classes8.dex */
    public static final class C8240b<T, R> implements Function {
        public C8240b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull MovePageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.saveDocInfo(MovePageAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.MovePageAction$c */
    /* loaded from: classes8.dex */
    public static final class C8241c<T, R> implements Function {
        public C8241c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MovePageAction.this.m36858m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.MovePageAction$d */
    /* loaded from: classes8.dex */
    public static final class C8242d<T, R> implements Function {
        public C8242d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.display(MovePageAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.MovePageAction$e */
    /* loaded from: classes8.dex */
    public static final class C8243e<T, R> implements Function {
        public C8243e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MovePageAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MovePageAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.MovePageAction$f */
    /* loaded from: classes8.dex */
    public static final class C8244f<T, R> implements Function {
        public C8244f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MovePageAction apply(@NotNull MovePageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MovePageAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MovePageAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.movePageArgs = new MovePageArgs(0, 0, false, false, 15, null);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<MovePageAction> create() {
        Observable<MovePageAction> map = Observable.just(this).flatMap(new C8239a()).flatMap(new C8240b()).flatMap(new C8241c()).flatMap(new C8242d()).map(new C8243e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final MovePageArgs getMovePageArgs() {
        return this.movePageArgs;
    }

    /* renamed from: l */
    public final Observable<MovePageAction> m36857l() {
        MovePageRequest movePageRequest = new MovePageRequest(getEditorBundle().getWorkBundle());
        movePageRequest.setMovePageArgs(this.movePageArgs);
        Observable<MovePageAction> map = RxBaseAppActionKt.submitRequestToCore(this, movePageRequest).map(new C8244f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<?> m36858m() {
        return new SaveNotePagesAction(getEditorBundle(), null, 2, null).build();
    }

    public final void setMovePageArgs(@NotNull MovePageArgs movePageArgs) {
        Intrinsics.checkNotNullParameter(movePageArgs, "<set-?>");
        this.movePageArgs = movePageArgs;
    }
}
