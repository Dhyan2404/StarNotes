package com.onyx.android.sdk.universal.editor.action;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.request.page.RotateNotePageRequest;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RotatePageAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RenderRequestManagerKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.page.SaveNotePagesAction;
import com.onyx.android.sdk.universal.editor.data.RotatePageArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.events.app.RotatePageBeginEvent;
import com.onyx.android.sdk.universal.editor.events.app.RotatePageEndEvent;
import com.onyx.android.sdk.universal.editor.events.app.RotatePageFinallyEvent;
import com.onyx.android.sdk.universal.editor.events.app.RotatePageProgressEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.page.RotatePageRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0014\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u001c\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "r", "Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;", "rotatePageArgs", "p", "", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "s", "q", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRotatePageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RotatePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/RotatePageAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,106:1\n1549#2:107\n1620#2,3:108\n*S KotlinDebug\n*F\n+ 1 RotatePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/RotatePageAction\n*L\n57#1:107\n57#1:108,3\n*E\n"})
/* loaded from: classes8.dex */
public final class RotatePageAction extends RxBaseAppAction<RotatePageAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RotatePageArgs rotatePageArgs;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RotatePageAction$a */
    /* loaded from: classes8.dex */
    public static final class C8353a<T> implements Consumer {
        public C8353a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RotatePageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(RotatePageAction.this.getEditorBundle(), new RotatePageBeginEvent(RotatePageAction.this.rotatePageArgs));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RotatePageAction$b */
    /* loaded from: classes8.dex */
    public static final class C8354b<T, R> implements Function {
        public C8354b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RotatePageAction> apply(@NotNull RotatePageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RotatePageAction.this.m37055r();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RotatePageAction$c */
    /* loaded from: classes8.dex */
    public static final class C8355c<T> implements Consumer {
        public C8355c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RotatePageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderRequestManagerKt.safeClearAllSliceCache(RotatePageAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RotatePageAction$d */
    /* loaded from: classes8.dex */
    public static final class C8356d<T, R> implements Function {
        public C8356d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull RotatePageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.display(RotatePageAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RotatePageAction$e */
    /* loaded from: classes8.dex */
    public static final class C8357e<T> implements Consumer {

        /* renamed from: e */
        public static final C8357e<T> f47816e = new C8357e<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.rotate_success, false, 2, (Object) null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RotatePageAction$f */
    /* loaded from: classes8.dex */
    public static final class C8358f<T, R> implements Function {
        public C8358f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RotatePageAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RotatePageAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RotatePageAction$g */
    /* loaded from: classes8.dex */
    public static final class C8359g<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<VirtualPage> f47818e;

        public C8359g(List<VirtualPage> list) {
            this.f47818e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<VirtualPage> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f47818e.addAll(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RotatePageAction$h */
    /* loaded from: classes8.dex */
    public static final class C8360h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ RotatePageArgs f47820f;

        public C8360h(RotatePageArgs rotatePageArgs) {
            this.f47820f = rotatePageArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RotatePageArgs> apply(@NotNull List<VirtualPage> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RotatePageAction.this.m37054q(this.f47820f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RotatePageAction$i */
    /* loaded from: classes8.dex */
    public static final class C8361i<T, R> implements Function {
        public C8361i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull RotatePageArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.saveDocInfo(RotatePageAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RotatePageAction$j */
    /* loaded from: classes8.dex */
    public static final class C8362j<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ RotatePageArgs f47823f;

        /* renamed from: g */
        public final /* synthetic */ List<VirtualPage> f47824g;

        public C8362j(RotatePageArgs rotatePageArgs, List<VirtualPage> list) {
            this.f47823f = rotatePageArgs;
            this.f47824g = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(RotatePageAction.this.getEditorBundle(), new RotatePageProgressEvent(this.f47823f, this.f47824g));
        }
    }

    @SourceDebugExtension({"SMAP\nRotatePageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RotatePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/RotatePageAction$rotateNotePage$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,106:1\n1603#2,9:107\n1855#2:116\n1856#2:118\n1612#2:119\n1#3:117\n*S KotlinDebug\n*F\n+ 1 RotatePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/RotatePageAction$rotateNotePage$1\n*L\n89#1:107,9\n89#1:116\n89#1:118\n89#1:119\n89#1:117\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.RotatePageAction$k */
    /* loaded from: classes8.dex */
    public static final class C8363k<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RotatePageArgs f47825e;

        /* renamed from: f */
        public final /* synthetic */ RotatePageAction f47826f;

        public C8363k(RotatePageArgs rotatePageArgs, RotatePageAction rotatePageAction) {
            this.f47825e = rotatePageArgs;
            this.f47826f = rotatePageAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<VirtualPage> apply(@NotNull RotatePageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            List<Integer> pageIndexList = this.f47825e.getPageIndexList();
            RotatePageAction rotatePageAction = this.f47826f;
            ArrayList arrayList = new ArrayList();
            Iterator<T> it3 = pageIndexList.iterator();
            while (it3.hasNext()) {
                VirtualPage virtualPage = rotatePageAction.getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage(((Number) it3.next()).intValue());
                if (virtualPage != null) {
                    arrayList.add(virtualPage);
                }
            }
            return arrayList;
        }
    }

    @SourceDebugExtension({"SMAP\nRotatePageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RotatePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/RotatePageAction$rotateNotePage$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,106:1\n1855#2,2:107\n1549#2:109\n1620#2,3:110\n1549#2:113\n1620#2,3:114\n*S KotlinDebug\n*F\n+ 1 RotatePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/RotatePageAction$rotateNotePage$2\n*L\n95#1:107,2\n96#1:109\n96#1:110,3\n97#1:113\n97#1:114,3\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.RotatePageAction$l */
    /* loaded from: classes8.dex */
    public static final class C8364l<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ float f47828f;

        /* renamed from: com.onyx.android.sdk.universal.editor.action.RotatePageAction$l$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ List<String> f47829e;

            public a(List<String> list) {
                this.f47829e = list;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final List<String> apply(@NotNull RotateNotePageRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f47829e;
            }
        }

        public C8364l(float f) {
            this.f47828f = f;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<String>> apply(@NotNull List<VirtualPage> virtualPageList) {
            int collectionSizeOrDefault;
            int collectionSizeOrDefault2;
            Intrinsics.checkNotNullParameter(virtualPageList, "virtualPageList");
            List<VirtualPage> list = virtualPageList;
            RotatePageAction rotatePageAction = RotatePageAction.this;
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                rotatePageAction.getEditorBundle().getWorkBundle().getVirtualPolicy().ensureNotePage((VirtualPage) it2.next());
            }
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it3 = list.iterator();
            while (it3.hasNext()) {
                arrayList.add(((VirtualPage) it3.next()).getBox().copy());
            }
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            Iterator<T> it4 = arrayList.iterator();
            while (it4.hasNext()) {
                arrayList2.add(((BoxInfo) it4.next()).getId());
            }
            return RxBaseAppActionKt.submitRequestToNote(RotatePageAction.this.getEditorBundle(), new RotateNotePageRequest(EditorBundleKt.noteBundle(RotatePageAction.this.getEditorBundle()), arrayList, this.f47828f)).map(new a(arrayList2));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RotatePageAction$m */
    /* loaded from: classes8.dex */
    public static final class C8365m<T, R> implements Function {
        public C8365m() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new SaveNotePagesAction(RotatePageAction.this.getEditorBundle(), it2).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RotatePageAction$n */
    /* loaded from: classes8.dex */
    public static final class C8366n<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RotatePageArgs f47831e;

        public C8366n(RotatePageArgs rotatePageArgs) {
            this.f47831e = rotatePageArgs;
        }

        @NotNull
        /* renamed from: a */
        public final RotatePageArgs m37069a(boolean z) {
            return this.f47831e;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m37069a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RotatePageAction$o */
    /* loaded from: classes8.dex */
    public static final class C8367o<T, R> implements Function {
        public C8367o() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull RotatePageArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RotatePageAction.this.m37053p(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RotatePageAction$p */
    /* loaded from: classes8.dex */
    public static final class C8368p<T, R> implements Function {
        public C8368p() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RotatePageAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RotatePageAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RotatePageAction$q */
    /* loaded from: classes8.dex */
    public static final class C8369q<T, R> implements Function {

        /* renamed from: e */
        public static final C8369q<T, R> f47834e = new C8369q<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<VirtualPage> apply(@NotNull RotatePageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getRotatedPageList();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RotatePageAction(@NotNull EditorBundle editorBundle, @NotNull RotatePageArgs rotatePageArgs) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(rotatePageArgs, "rotatePageArgs");
        this.rotatePageArgs = rotatePageArgs;
    }

    /* renamed from: n */
    public static final void m37051n(RotatePageAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new RotatePageEndEvent(this$0.rotatePageArgs));
    }

    /* renamed from: o */
    public static final void m37052o(RotatePageAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new RotatePageFinallyEvent(this$0.rotatePageArgs));
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<RotatePageAction> create() {
        Observable<RotatePageAction> map = Observable.just(this).doOnNext(new C8353a()).flatMap(new C8354b()).doOnNext(new C8355c()).flatMap(new C8356d()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.csl
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                RotatePageAction.m37051n(RotatePageAction.this);
            }
        }).delay(500L, TimeUnit.MILLISECONDS).observeOn(getMainUIScheduler()).doOnNext(C8357e.f47816e).doFinally(new Action() { // from class: com.sunia.HTREnginev2.dsl
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                RotatePageAction.m37052o(RotatePageAction.this);
            }
        }).map(new C8358f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final Observable<?> m37053p(RotatePageArgs rotatePageArgs) {
        ArrayList arrayList = new ArrayList();
        Observable<?> doOnNext = m37056s(rotatePageArgs).doOnNext(new C8359g(arrayList)).flatMap(new C8360h(rotatePageArgs)).flatMap(new C8361i()).doOnNext(new C8362j(rotatePageArgs, arrayList));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: q */
    public final Observable<RotatePageArgs> m37054q(RotatePageArgs rotatePageArgs) {
        Observable<RotatePageArgs> map = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C8363k(rotatePageArgs, this)).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C8364l(rotatePageArgs.getRotation())).flatMap(new C8365m()).map(new C8366n(rotatePageArgs));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: r */
    public final Observable<RotatePageAction> m37055r() {
        int collectionSizeOrDefault;
        List mutableListOf;
        List<Integer> pageIndexList = this.rotatePageArgs.getPageIndexList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(pageIndexList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = pageIndexList.iterator();
        while (it2.hasNext()) {
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(Integer.valueOf(((Number) it2.next()).intValue()));
            arrayList.add(new RotatePageArgs(mutableListOf, this.rotatePageArgs.getRotation(), this.rotatePageArgs.getDoAnimation()));
        }
        if (arrayList.isEmpty()) {
            Observable<RotatePageAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable concatMap = Observable.fromIterable(arrayList).concatMap(new C8367o());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<RotatePageAction> map = RxjavaKt.takeLastOne(concatMap).map(new C8368p());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: s */
    public final Observable<List<VirtualPage>> m37056s(RotatePageArgs rotatePageArgs) {
        Observable<List<VirtualPage>> map = RxBaseAppActionKt.submitRequestToCore(this, new RotatePageRequest(getEditorBundle().getWorkBundle(), rotatePageArgs)).map(C8369q.f47834e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
