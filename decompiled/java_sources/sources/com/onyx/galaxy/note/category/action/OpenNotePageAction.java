package com.onyx.galaxy.note.category.action;

import android.content.Context;
import com.couchbase.lite.internal.core.C4Replicator;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.bean.PageModelBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.action.doc.LoadUserNoteModelsAction;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.galaxy.note.category.action.OpenNotePageAction;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleActivity;
import com.onyx.galaxy.note.utils.AutoReLockNoteManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, C4Replicator.REPLICATOR_OPTION_AUTHENTICATION, C4921e.f26528e, "Landroid/content/Context;", C6998g.f39679a, "Landroid/content/Context;", "activityContext", "Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;", "pageTagModel", "", "i", Constants.HASIDCALL_INDEX_SIG, "encrypted", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class OpenNotePageAction extends BaseNoteManagementAction<OpenNotePageAction> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final PageModelBean pageTagModel;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean encrypted;

    /* renamed from: com.onyx.galaxy.note.category.action.OpenNotePageAction$a */
    /* loaded from: classes9.dex */
    public static final class C10953a<T, R> implements Function {
        public C10953a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OpenNotePageAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenNotePageAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.OpenNotePageAction$b */
    /* loaded from: classes9.dex */
    public static final class C10954b<T> implements Consumer {
        public C10954b() {
        }

        /* renamed from: a */
        public final void m42487a(boolean z) {
            OpenNotePageAction.this.encrypted = z;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42487a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.OpenNotePageAction$c */
    /* loaded from: classes9.dex */
    public static final class C10955c<T, R> implements Function {
        public C10955c() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends OpenNotePageAction> m42488a(boolean z) {
            return OpenNotePageAction.this.m42484n();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42488a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.OpenNotePageAction$d */
    /* loaded from: classes9.dex */
    public static final class C10956d<T> implements Predicate {

        /* renamed from: e */
        public static final C10956d<T> f53957e = new C10956d<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.OpenNotePageAction$e */
    /* loaded from: classes9.dex */
    public static final class C10957e<T, R> implements Function {

        /* renamed from: e */
        public static final C10957e<T, R> f53958e = new C10957e<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OpenDocArgs apply(@NotNull List<? extends SyncNoteModel> it2) {
            Object first;
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenDocArgs.Companion companion = OpenDocArgs.INSTANCE;
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) it2);
            return companion.createFrom((SyncNoteModel) first);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.OpenNotePageAction$f */
    /* loaded from: classes9.dex */
    public static final class C10958f<T> implements Consumer {
        public C10958f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            it2.setPageId(OpenNotePageAction.this.pageTagModel.getPageUniqueId());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.OpenNotePageAction$g */
    /* loaded from: classes9.dex */
    public static final class C10959g<T> implements Consumer {
        public C10959g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteScribbleActivity.INSTANCE.open(OpenNotePageAction.this.activityContext, it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.OpenNotePageAction$h */
    /* loaded from: classes9.dex */
    public static final class C10960h<T, R> implements Function {
        public C10960h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OpenNotePageAction apply(@NotNull OpenDocArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenNotePageAction.this;
        }
    }

    public OpenNotePageAction(@NotNull Context activityContext, @NotNull PageModelBean pageTagModel) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(pageTagModel, "pageTagModel");
        this.activityContext = activityContext;
        this.pageTagModel = pageTagModel;
    }

    /* renamed from: m */
    public static final void m42483m(OpenNotePageAction this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AutoReLockNoteManager.INSTANCE.addAutoReLockNoteTask(this$0.pageTagModel.getDocumentId());
    }

    public final Observable<OpenNotePageAction> auth() {
        List listOf;
        Context context = this.activityContext;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this.pageTagModel.getDocumentId());
        Observable map = RxjavaKt.flatMapIf(RxjavaKt.doOnNextIfTrue(new AuthNoteAction(context, listOf).build(), new Consumer() { // from class: com.sunia.HTREnginev2.ehk
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                OpenNotePageAction.m42483m(OpenNotePageAction.this, ((Boolean) obj).booleanValue());
            }
        }), new Function1<Boolean, Boolean>() { // from class: com.onyx.galaxy.note.category.action.OpenNotePageAction$auth$2
            @NotNull
            public final Boolean invoke(boolean z) {
                return Boolean.valueOf(z);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                return invoke(bool.booleanValue());
            }
        }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.category.action.OpenNotePageAction$auth$3
            {
                super(1);
            }

            @NotNull
            public final Observable<? extends Object> invoke(boolean z) {
                Observable<? extends Object> m42485o;
                m42485o = OpenNotePageAction.this.m42485o();
                return m42485o;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(Boolean bool) {
                return invoke(bool.booleanValue());
            }
        }).map(new C10953a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<OpenNotePageAction> create() {
        Observable flatMap = new CheckNoteEncryptedAction(this.pageTagModel.getDocumentId()).build().doOnNext(new C10954b()).flatMap(new C10955c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: n */
    public final Observable<OpenNotePageAction> m42484n() {
        return this.encrypted ? auth() : m42485o();
    }

    /* renamed from: o */
    public final Observable<OpenNotePageAction> m42485o() {
        List listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this.pageTagModel.getDocumentId());
        Observable<OpenNotePageAction> map = new LoadUserNoteModelsAction(listOf).build().filter(C10956d.f53957e).map(C10957e.f53958e).doOnNext(new C10958f()).doOnNext(new C10959g()).map(new C10960h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
