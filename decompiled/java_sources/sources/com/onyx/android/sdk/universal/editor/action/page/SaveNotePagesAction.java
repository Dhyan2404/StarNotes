package com.onyx.android.sdk.universal.editor.action.page;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.request.page.SaveNotePageByIdsRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.flush.DeleteStashShapeAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002R\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/SaveNotePagesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "", "l", C6999h.f39688c, "Ljava/util/List;", "pageIdList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSaveNotePagesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveNotePagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/SaveNotePagesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,40:1\n1549#2:41\n1620#2,3:42\n*S KotlinDebug\n*F\n+ 1 SaveNotePagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/SaveNotePagesAction\n*L\n36#1:41\n36#1:42,3\n*E\n"})
/* loaded from: classes8.dex */
public final class SaveNotePagesAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<String> pageIdList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.SaveNotePagesAction$a */
    /* loaded from: classes8.dex */
    public static final class C9737a<T, R> implements Function {
        public C9737a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> apply(@NotNull SaveNotePagesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveNotePagesAction.this.m39580l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.SaveNotePagesAction$b */
    /* loaded from: classes8.dex */
    public static final class C9738b<T> implements Consumer {
        public C9738b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            new SaveNotePageByIdsRequest(EditorBundleKt.noteBundle(SaveNotePagesAction.this.getEditorBundle()), it2).execute2();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.SaveNotePagesAction$c */
    /* loaded from: classes8.dex */
    public static final class C9739c<T, R> implements Function {
        public C9739c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteStashShapeAction> apply(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new DeleteStashShapeAction(SaveNotePagesAction.this.getEditorBundle(), EditorBundleKt.docId(SaveNotePagesAction.this.getEditorBundle()), it2).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.SaveNotePagesAction$d */
    /* loaded from: classes8.dex */
    public static final class C9740d<T> implements Consumer {
        public C9740d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DeleteStashShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveNotePagesAction.this.getEditorBundle().getUiBundle().getNoteInfo().clearPageStashCount(SaveNotePagesAction.this.pageIdList);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.SaveNotePagesAction$e */
    /* loaded from: classes8.dex */
    public static final class C9741e<T, R> implements Function {

        /* renamed from: e */
        public static final C9741e<T, R> f50248e = new C9741e<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull DeleteStashShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    public /* synthetic */ SaveNotePagesAction(EditorBundle editorBundle, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, (i & 2) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C9737a()).doOnNext(new C9738b()).flatMap(new C9739c()).doOnNext(new C9740d()).map(C9741e.f50248e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<String> m39580l() {
        int collectionSizeOrDefault;
        List<String> list = this.pageIdList;
        if (list.isEmpty()) {
            List<NotePage> loadedNotePages = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getLoadedNotePages();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadedNotePages, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = loadedNotePages.iterator();
            while (it2.hasNext()) {
                arrayList.add(((NotePage) it2.next()).getPageUniqueId());
            }
            list = arrayList;
        }
        List<String> list2 = list;
        this.pageIdList = list2;
        return list2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveNotePagesAction(@NotNull EditorBundle editorBundle, @NotNull List<String> pageIdList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        this.pageIdList = pageIdList;
    }
}
