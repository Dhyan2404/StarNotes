package com.onyx.android.sdk.universal.editor.action.link;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.request.page.GotoPageByPositionRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/link/GotoPageByPositionAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6999h.f39688c, Constants.STRING_SIG, "contentPath", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "i", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "readerPosition", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GotoPageByPositionAction extends RxBaseAppAction<GotoPageByPositionAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String contentPath;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final ReaderPosition readerPosition;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.GotoPageByPositionAction$a */
    /* loaded from: classes8.dex */
    public static final class C9628a<T, R> implements Function {
        public C9628a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GotoPageByPositionAction> apply(@NotNull GotoPageByPositionAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoPageByPositionAction.this.m39397l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.GotoPageByPositionAction$b */
    /* loaded from: classes8.dex */
    public static final class C9629b<T, R> implements Function {
        public C9629b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull GotoPageByPositionAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.display(GotoPageByPositionAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.GotoPageByPositionAction$c */
    /* loaded from: classes8.dex */
    public static final class C9630c<T, R> implements Function {
        public C9630c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoPageByPositionAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoPageByPositionAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.GotoPageByPositionAction$d */
    /* loaded from: classes8.dex */
    public static final class C9631d<T, R> implements Function {
        public C9631d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoPageByPositionAction apply(@NotNull GotoPageByPositionRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoPageByPositionAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GotoPageByPositionAction(@NotNull EditorBundle editorBundle, @NotNull String contentPath, @NotNull ReaderPosition readerPosition) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(contentPath, "contentPath");
        Intrinsics.checkNotNullParameter(readerPosition, "readerPosition");
        this.contentPath = contentPath;
        this.readerPosition = readerPosition;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<GotoPageByPositionAction> create() {
        Observable<GotoPageByPositionAction> map = Observable.just(this).flatMap(new C9628a()).flatMap(new C9629b()).map(new C9630c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<GotoPageByPositionAction> m39397l() {
        Observable<GotoPageByPositionAction> map = RxBaseAppActionKt.submitRequestToCore(this, new GotoPageByPositionRequest(getEditorBundle().getWorkBundle(), this.contentPath, this.readerPosition)).map(new C9631d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
