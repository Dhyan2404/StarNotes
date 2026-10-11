package com.onyx.galaxy.note.editor.action.template;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.p035db.model.PageMarginConfig;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002R$\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/template/LoadDocDefaultPageMarginAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;", "getPageMarginConfig", "()Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;", "setPageMarginConfig", "(Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;)V", "pageMarginConfig", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadDocDefaultPageMarginAction extends RxBaseAppAction<LoadDocDefaultPageMarginAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public PageMarginConfig pageMarginConfig;

    /* renamed from: com.onyx.galaxy.note.editor.action.template.LoadDocDefaultPageMarginAction$a */
    /* loaded from: classes9.dex */
    public static final class C11989a<T> implements Consumer {
        public C11989a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LoadDocDefaultPageMarginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadDocDefaultPageMarginAction.this.m45954l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.template.LoadDocDefaultPageMarginAction$b */
    /* loaded from: classes9.dex */
    public static final class C11990b<T, R> implements Function {
        public C11990b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadDocDefaultPageMarginAction apply(@NotNull LoadDocDefaultPageMarginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadDocDefaultPageMarginAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadDocDefaultPageMarginAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LoadDocDefaultPageMarginAction> create() {
        Observable<LoadDocDefaultPageMarginAction> map = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).doOnNext(new C11989a()).observeOn(getMainUIScheduler()).map(new C11990b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final PageMarginConfig getPageMarginConfig() {
        return this.pageMarginConfig;
    }

    /* renamed from: l */
    public final void m45954l() {
        PageMarginConfig pageMarginConfig = getEditorBundle().getWorkBundle().getDocOptions().getPageMarginConfig();
        if (pageMarginConfig.getMargin().hasMargin()) {
            this.pageMarginConfig = pageMarginConfig.copy();
        }
    }

    public final void setPageMarginConfig(@Nullable PageMarginConfig pageMarginConfig) {
        this.pageMarginConfig = pageMarginConfig;
    }
}
