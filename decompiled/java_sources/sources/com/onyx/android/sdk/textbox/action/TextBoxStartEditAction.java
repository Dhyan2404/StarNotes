package com.onyx.android.sdk.textbox.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.FontUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.textbox.data.EditorState;
import com.onyx.android.sdk.textbox.data.TextBoxInitArgs;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0005¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u0007H\u0014J\b\u0010\t\u001a\u00020\u0005H\u0002J\b\u0010\n\u001a\u00020\u0000H\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H\u0002J\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005H\u0002J\b\u0010\u000e\u001a\u00020\u0005H\u0002R\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0017\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u0014¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;", "Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction;", "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;", "initArgs", "setTextBoxInitArgs", "", "isStartEditorSuccess", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "q", FirebaseAnalytics.Param.SUCCESS, "p", "m", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", C6997f.f39671c, "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "textBoxView", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "getEditForAll", Constants.BOOLEAN_VALUE_SIG, "editForAll", C6999h.f39688c, "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;", "i", "startEditorSuccess", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Z)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TextBoxStartEditAction extends TextBoxBaseAction<TextBoxStartEditAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final TextBoxView textBoxView;

    /* renamed from: g, reason: from kotlin metadata */
    public final boolean editForAll;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public TextBoxInitArgs initArgs;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean startEditorSuccess;

    /* renamed from: com.onyx.android.sdk.textbox.action.TextBoxStartEditAction$a */
    /* loaded from: classes8.dex */
    public static final class C8016a<T> implements Predicate {
        public C8016a() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull TextBoxStartEditAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextBoxStartEditAction.this.m36104n();
        }
    }

    /* renamed from: com.onyx.android.sdk.textbox.action.TextBoxStartEditAction$b */
    /* loaded from: classes8.dex */
    public static final class C8017b<T, R> implements Function {
        public C8017b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextBoxStartEditAction apply(@NotNull TextBoxStartEditAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextBoxStartEditAction.this.m36105o();
        }
    }

    /* renamed from: com.onyx.android.sdk.textbox.action.TextBoxStartEditAction$c */
    /* loaded from: classes8.dex */
    public static final class C8018c<T, R> implements Function {
        public C8018c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull TextBoxStartEditAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextBoxStartEditAction.this.m36107q();
        }
    }

    /* renamed from: com.onyx.android.sdk.textbox.action.TextBoxStartEditAction$d */
    /* loaded from: classes8.dex */
    public static final class C8019d<T, R> implements Function {
        public C8019d() {
        }

        @NotNull
        /* renamed from: a */
        public final TextBoxStartEditAction m36111a(boolean z) {
            return TextBoxStartEditAction.this.m36106p(z);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m36111a(((Boolean) obj).booleanValue());
        }
    }

    public TextBoxStartEditAction(@NotNull TextBoxView textBoxView, boolean z) {
        Intrinsics.checkNotNullParameter(textBoxView, "textBoxView");
        this.textBoxView = textBoxView;
        this.editForAll = z;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<TextBoxStartEditAction> create() {
        Observable<TextBoxStartEditAction> map = Observable.just(this).observeOn(getMainUIScheduler()).filter(new C8016a()).observeOn(getObserveOn()).map(new C8017b()).observeOn(getMainUIScheduler()).flatMap(new C8018c()).map(new C8019d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final boolean getEditForAll() {
        return this.editForAll;
    }

    /* renamed from: isStartEditorSuccess, reason: from getter */
    public final boolean getStartEditorSuccess() {
        return this.startEditorSuccess;
    }

    /* renamed from: m */
    public final boolean m36103m() {
        boolean isPrepared = this.textBoxView.isPrepared();
        if (!isPrepared) {
            Debug.INSTANCE.m32044e(TextBoxStartEditAction.class, "Cannot edit, editor state is " + this.textBoxView.getEditorState(), new Object[0]);
        }
        return isPrepared;
    }

    /* renamed from: n */
    public final boolean m36104n() {
        if (!this.textBoxView.isIdleState()) {
            return false;
        }
        this.textBoxView.setEditorState(EditorState.PREPARE);
        return true;
    }

    /* renamed from: o */
    public final TextBoxStartEditAction m36105o() {
        TextBoxInitArgs textBoxInitArgs = this.initArgs;
        String fontPath = textBoxInitArgs != null ? textBoxInitArgs.getFontPath() : null;
        if (fontPath == null) {
            fontPath = "";
        }
        String fontName = !FileUtils.INSTANCE.fileExist(fontPath) ? "default" : FontUtils.INSTANCE.loadFontInfo(new File(fontPath)).getFontName();
        TextBoxInitArgs textBoxInitArgs2 = this.initArgs;
        if (textBoxInitArgs2 != null) {
            textBoxInitArgs2.setFontFamily(fontName);
        }
        return this;
    }

    /* renamed from: p */
    public final TextBoxStartEditAction m36106p(boolean success) {
        this.startEditorSuccess = success;
        if (!success) {
            Debug.INSTANCE.m32044e(TextBoxStartEditAction.class, "start editor failed, state: " + this.textBoxView.getEditorState(), new Object[0]);
        }
        return this;
    }

    /* renamed from: q */
    public final Observable<Boolean> m36107q() {
        TextBoxInitArgs textBoxInitArgs = this.initArgs;
        if (textBoxInitArgs == null) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        textBoxInitArgs.setEditForAll(this.editForAll);
        if (m36103m()) {
            return this.textBoxView.startEdit(textBoxInitArgs);
        }
        Observable<Boolean> just2 = Observable.just(Boolean.FALSE);
        Intrinsics.checkNotNull(just2);
        return just2;
    }

    @NotNull
    public final TextBoxStartEditAction setTextBoxInitArgs(@Nullable TextBoxInitArgs initArgs) {
        this.initArgs = initArgs;
        return this;
    }
}
