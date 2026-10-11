package com.onyx.galaxy.note.category.action.template;

import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.universal.editor.action.bkground.RxBaseTemplateAction;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.category.action.cover.CheckCoverIsExistAction;
import com.onyx.galaxy.note.category.action.template.CleanDeprecatedTemplateRecordAction;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0014¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "", "()V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class CleanDeprecatedTemplateRecordAction extends RxBaseTemplateAction<Boolean> {

    /* renamed from: com.onyx.galaxy.note.category.action.template.CleanDeprecatedTemplateRecordAction$a */
    /* loaded from: classes9.dex */
    public static final class C11184a<T, R> implements Function {

        /* renamed from: e */
        public static final C11184a<T, R> f54334e = new C11184a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TemplateJsonBean apply(@NotNull CleanDeprecatedTemplateRecordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return (TemplateJsonBean) MMKVNote.getCoverOption$default(MMKVNote.INSTANCE, null, 1, null).get();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.CleanDeprecatedTemplateRecordAction$b */
    /* loaded from: classes9.dex */
    public static final class C11185b<T, R> implements Function {

        /* renamed from: e */
        public static final C11185b<T, R> f54335e = new C11185b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull TemplateJsonBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CheckCoverIsExistAction(it2.getUniqueId()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.CleanDeprecatedTemplateRecordAction$c */
    /* loaded from: classes9.dex */
    public static final class C11186c<T, R> implements Function {

        /* renamed from: e */
        public static final C11186c<T, R> f54336e = new C11186c<>();

        @NotNull
        /* renamed from: a */
        public final TemplateJsonBean m42944a(boolean z) {
            return (TemplateJsonBean) MMKVNote.getTemplateOption$default(MMKVNote.INSTANCE, null, 0, 3, null).get();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42944a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.CleanDeprecatedTemplateRecordAction$d */
    /* loaded from: classes9.dex */
    public static final class C11187d<T, R> implements Function {

        /* renamed from: e */
        public static final C11187d<T, R> f54337e = new C11187d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull TemplateJsonBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CheckTemplateExistAction(it2.getUniqueId()).build();
        }
    }

    public static final void create$lambda$0(boolean z) {
        MMKVNote.resetCoverOption$default(MMKVNote.INSTANCE, null, 1, null);
    }

    /* renamed from: n */
    public static final void m42941n(boolean z) {
        MMKVNote.resetTemplateOption$default(MMKVNote.INSTANCE, null, 1, null);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable flatMap = Observable.just(this).observeOn(getObserveOn()).map(C11184a.f54334e).flatMap(C11185b.f54335e);
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable flatMap2 = RxjavaKt.doOnNextIfFalse(flatMap, new Consumer() { // from class: com.sunia.HTREnginev2.kud
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CleanDeprecatedTemplateRecordAction.create$lambda$0(((Boolean) obj).booleanValue());
            }
        }).map(C11186c.f54336e).flatMap(C11187d.f54337e);
        Intrinsics.checkNotNullExpressionValue(flatMap2, "flatMap(...)");
        return RxjavaKt.doOnNextIfFalse(flatMap2, new Consumer() { // from class: com.sunia.HTREnginev2.lud
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CleanDeprecatedTemplateRecordAction.m42941n(((Boolean) obj).booleanValue());
            }
        });
    }
}
