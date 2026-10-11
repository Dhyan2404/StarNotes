package com.onyx.android.sdk.universal.editor.action.magnifier;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.ScaleAction;
import com.onyx.android.sdk.universal.editor.action.page.GotoPageByIdAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B3\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\b\b\u0002\u0010\r\u001a\u00020\b\u0012\b\b\u0002\u0010\u000f\u001a\u00020\b¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\r\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\nR\u0014\u0010\u000f\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\n¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/magnifier/ResetScaleAndGotoPageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", C6999h.f39688c, Constants.STRING_SIG, CouchFieldKey.KEY_TOC_PAGE_ID, "", "i", "F", "scale", "j", "centerXOffset", C4921e.f26537n, "centerYOffset", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;FFF)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ResetScaleAndGotoPageAction extends RxBaseAppAction<ResetScaleAndGotoPageAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String pageId;

    /* renamed from: i, reason: from kotlin metadata */
    public final float scale;

    /* renamed from: j, reason: from kotlin metadata */
    public final float centerXOffset;

    /* renamed from: k, reason: from kotlin metadata */
    public final float centerYOffset;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.magnifier.ResetScaleAndGotoPageAction$a */
    /* loaded from: classes8.dex */
    public static final class C9651a<T> implements Consumer {
        public C9651a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ScaleAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.onPageChangedEvent(ResetScaleAndGotoPageAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.magnifier.ResetScaleAndGotoPageAction$b */
    /* loaded from: classes8.dex */
    public static final class C9652b<T, R> implements Function {
        public C9652b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GotoPageByIdAction> apply(@NotNull ScaleAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new GotoPageByIdAction(ResetScaleAndGotoPageAction.this.getEditorBundle(), ResetScaleAndGotoPageAction.this.pageId, false, 4, null).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.magnifier.ResetScaleAndGotoPageAction$c */
    /* loaded from: classes8.dex */
    public static final class C9653c<T, R> implements Function {
        public C9653c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ResetScaleAndGotoPageAction apply(@NotNull GotoPageByIdAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ResetScaleAndGotoPageAction.this;
        }
    }

    public /* synthetic */ ResetScaleAndGotoPageAction(EditorBundle editorBundle, String str, float f, float f2, float f3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, str, f, (i & 8) != 0 ? 0.0f : f2, (i & 16) != 0 ? 0.0f : f3);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ResetScaleAndGotoPageAction> create() {
        Observable<ResetScaleAndGotoPageAction> map = new ScaleAction(getEditorBundle(), this.scale, this.centerXOffset, this.centerYOffset).build().doOnNext(new C9651a()).flatMap(new C9652b()).map(new C9653c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResetScaleAndGotoPageAction(@NotNull EditorBundle editorBundle, @NotNull String pageId, float f, float f2, float f3) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        this.pageId = pageId;
        this.scale = f;
        this.centerXOffset = f2;
        this.centerYOffset = f3;
    }
}
