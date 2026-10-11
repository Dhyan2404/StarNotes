package com.onyx.android.sdk.textbox.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.textbox.data.EditorContent;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0014J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0000H\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0002R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR$\u0010\u0017\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;", "Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction;", "", "needSaveShape", "setNeedSaveShape", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", C6997f.f39671c, "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "textBoxView", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "Lcom/onyx/android/sdk/textbox/data/EditorContent;", C6999h.f39688c, "Lcom/onyx/android/sdk/textbox/data/EditorContent;", "getEditorContent", "()Lcom/onyx/android/sdk/textbox/data/EditorContent;", "setEditorContent", "(Lcom/onyx/android/sdk/textbox/data/EditorContent;)V", "editorContent", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TextBoxFinishEditAction extends TextBoxBaseAction<TextBoxFinishEditAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public TextBoxView textBoxView;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean needSaveShape;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public EditorContent editorContent;

    /* renamed from: com.onyx.android.sdk.textbox.action.TextBoxFinishEditAction$a */
    /* loaded from: classes8.dex */
    public static final class C8011a<T> implements Predicate {
        public C8011a() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull TextBoxFinishEditAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextBoxFinishEditAction.this.m36088m();
        }
    }

    /* renamed from: com.onyx.android.sdk.textbox.action.TextBoxFinishEditAction$b */
    /* loaded from: classes8.dex */
    public static final class C8012b<T, R> implements Function {
        public C8012b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextBoxFinishEditAction apply(@NotNull TextBoxFinishEditAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextBoxFinishEditAction.this.m36090o();
        }
    }

    /* renamed from: com.onyx.android.sdk.textbox.action.TextBoxFinishEditAction$c */
    /* loaded from: classes8.dex */
    public static final class C8013c<T, R> implements Function {
        public C8013c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends TextBoxFinishEditAction> apply(@NotNull TextBoxFinishEditAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextBoxFinishEditAction.this.m36089n();
        }
    }

    /* renamed from: com.onyx.android.sdk.textbox.action.TextBoxFinishEditAction$d */
    /* loaded from: classes8.dex */
    public static final class C8014d<T, R> implements Function {
        public C8014d() {
        }

        @NotNull
        /* renamed from: a */
        public final TextBoxFinishEditAction m36094a(boolean z) {
            return TextBoxFinishEditAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m36094a(((Boolean) obj).booleanValue());
        }
    }

    public TextBoxFinishEditAction(@NotNull TextBoxView textBoxView) {
        Intrinsics.checkNotNullParameter(textBoxView, "textBoxView");
        this.textBoxView = textBoxView;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<TextBoxFinishEditAction> create() {
        Observable<TextBoxFinishEditAction> flatMap = Observable.just(this).observeOn(getMainUIScheduler()).filter(new C8011a()).map(new C8012b()).flatMap(new C8013c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @Nullable
    public final EditorContent getEditorContent() {
        return this.editorContent;
    }

    /* renamed from: m */
    public final boolean m36088m() {
        if (this.textBoxView.isOperable()) {
            ViewKt.hideInputKeyboard(this.textBoxView);
            return this.needSaveShape;
        }
        Debug.INSTANCE.m32044e(TextBoxFinishEditAction.class, "finish edit with invalid state: " + this.textBoxView.getEditorState(), new Object[0]);
        return false;
    }

    /* renamed from: n */
    public final Observable<TextBoxFinishEditAction> m36089n() {
        Observable map = this.textBoxView.getEditor().finishEditObservable().map(new C8014d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final TextBoxFinishEditAction m36090o() {
        this.editorContent = this.textBoxView.getEditor().loadFinalContent();
        return this;
    }

    public final void setEditorContent(@Nullable EditorContent editorContent) {
        this.editorContent = editorContent;
    }

    @NotNull
    public final TextBoxFinishEditAction setNeedSaveShape(boolean needSaveShape) {
        this.needSaveShape = needSaveShape;
        return this;
    }
}
