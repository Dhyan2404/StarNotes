package com.onyx.galaxy.note.category.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.onyx.android.sdk.universal.editor.action.bkground.LoadCoverByIdAction;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.onyx.galaxy.note.category.action.template.LoadTemplateByIdAction;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0002H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "noteCreateInfo", "m", GoogleApiAvailabilityLight.f29016b, Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadQuicklyCreateInfoAction extends RxBaseNoteAppAction<NoteCreateInfo> {

    /* renamed from: com.onyx.galaxy.note.category.action.LoadQuicklyCreateInfoAction$a */
    /* loaded from: classes9.dex */
    public static final class C10891a<T, R> implements Function {
        public C10891a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteCreateInfo> apply(@NotNull LoadQuicklyCreateInfoAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadQuicklyCreateInfoAction.this.m42375l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadQuicklyCreateInfoAction$b */
    /* loaded from: classes9.dex */
    public static final class C10892b<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ NoteCreateInfo f53863f;

        public C10892b(NoteCreateInfo noteCreateInfo) {
            this.f53863f = noteCreateInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteCreateInfo> apply(@NotNull LoadQuicklyCreateInfoAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadQuicklyCreateInfoAction.this.m42376m(this.f53863f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadQuicklyCreateInfoAction$c */
    /* loaded from: classes9.dex */
    public static final class C10893c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ NoteCreateInfo f53865f;

        public C10893c(NoteCreateInfo noteCreateInfo) {
            this.f53865f = noteCreateInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteCreateInfo> apply(@NotNull NoteCreateInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadQuicklyCreateInfoAction.this.m42377n(this.f53865f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadQuicklyCreateInfoAction$d */
    /* loaded from: classes9.dex */
    public static final class C10894d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ NoteCreateInfo f53866e;

        public C10894d(NoteCreateInfo noteCreateInfo) {
            this.f53866e = noteCreateInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NoteCreateInfo apply(@NotNull NoteCreateInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MMKVNote.INSTANCE.getQuickNoteOption().put(it2);
            return this.f53866e;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadQuicklyCreateInfoAction$e */
    /* loaded from: classes9.dex */
    public static final class C10895e<T, R> implements Function {

        /* renamed from: e */
        public static final C10895e<T, R> f53867e = new C10895e<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LoadCoverByIdAction> apply(@NotNull NoteCreateInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadCoverByIdAction(TemplateJsonBean.INSTANCE.defaultCover().getUniqueId()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadQuicklyCreateInfoAction$f */
    /* loaded from: classes9.dex */
    public static final class C10896f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ NoteCreateInfo f53868e;

        public C10896f(NoteCreateInfo noteCreateInfo) {
            this.f53868e = noteCreateInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NoteCreateInfo apply(@NotNull LoadCoverByIdAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteCreateInfo noteCreateInfo = this.f53868e;
            Templates templates = Templates.INSTANCE;
            noteCreateInfo.setCoverJsonBean(templates.coverModelToJsonBean(it2.getCoverModel()));
            this.f53868e.setCoverRectF(templates.coverTemplateRect(it2.getCoverModel()));
            return this.f53868e;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadQuicklyCreateInfoAction$g */
    /* loaded from: classes9.dex */
    public static final class C10897g<T, R> implements Function {

        /* renamed from: e */
        public static final C10897g<T, R> f53869e = new C10897g<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LoadTemplateByIdAction> apply(@NotNull NoteCreateInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadTemplateByIdAction(TemplateJsonBean.INSTANCE.defaultPaper().getUniqueId()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadQuicklyCreateInfoAction$h */
    /* loaded from: classes9.dex */
    public static final class C10898h<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ NoteCreateInfo f53870e;

        public C10898h(NoteCreateInfo noteCreateInfo) {
            this.f53870e = noteCreateInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NoteCreateInfo apply(@NotNull LoadTemplateByIdAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f53870e.getPaperBeanList().clear();
            CollectionKt.safeAdd(this.f53870e.getPaperBeanList(), Templates.toPaperBean$default(Templates.INSTANCE, it2.getTemplateModel(), null, 1, null));
            return this.f53870e;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<NoteCreateInfo> create() {
        Observable<NoteCreateInfo> flatMap = Observable.just(this).observeOn(getObserveOn()).flatMap(new C10891a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<NoteCreateInfo> m42375l() {
        NoteCreateInfo noteCreateInfo = MMKVNote.INSTANCE.getQuickNoteOption().get();
        if (NoteCreateInfo.INSTANCE.checkQuickTemplateValid(noteCreateInfo)) {
            Observable<NoteCreateInfo> just = Observable.just(noteCreateInfo);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<NoteCreateInfo> map = Observable.just(this).flatMap(new C10892b(noteCreateInfo)).flatMap(new C10893c(noteCreateInfo)).map(new C10894d(noteCreateInfo));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<NoteCreateInfo> m42376m(NoteCreateInfo noteCreateInfo) {
        Observable<NoteCreateInfo> map = Observable.just(noteCreateInfo).flatMap(C10895e.f53867e).map(new C10896f(noteCreateInfo));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<NoteCreateInfo> m42377n(NoteCreateInfo noteCreateInfo) {
        Observable<NoteCreateInfo> map = Observable.just(noteCreateInfo).flatMap(C10897g.f53869e).map(new C10898h(noteCreateInfo));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
