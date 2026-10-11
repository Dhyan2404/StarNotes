package com.onyx.android.sdk.universal.editor.action.render;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RenderRequestManagerKt;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0006H\u0014¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/render/RedrawNoteAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class RedrawNoteAction extends RxBaseAppAction<RedrawNoteAction> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RedrawNoteAction$a */
    /* loaded from: classes8.dex */
    public static final class C9767a<T, R> implements Function {
        public C9767a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull RedrawNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderRequestManagerKt.safeClearAllNoteSliceCache(RedrawNoteAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RedrawNoteAction$b */
    /* loaded from: classes8.dex */
    public static final class C9768b<T, R> implements Function {
        public C9768b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.display(RedrawNoteAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RedrawNoteAction$c */
    /* loaded from: classes8.dex */
    public static final class C9769c<T, R> implements Function {
        public C9769c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RedrawNoteAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RedrawNoteAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RedrawNoteAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<RedrawNoteAction> create() {
        Observable<RedrawNoteAction> map = Observable.just(this).flatMap(new C9767a()).flatMap(new C9768b()).map(new C9769c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
