package com.onyx.android.sdk.universal.editor.action.doc;

import android.util.Log;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.document.doc.NoteDocCache;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/doc/ReleaseNoteMemoryAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "", "visibleIdSet", "", "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nReleaseNoteMemoryAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReleaseNoteMemoryAction.kt\ncom/onyx/android/sdk/universal/editor/action/doc/ReleaseNoteMemoryAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1549#2:43\n1620#2,3:44\n*S KotlinDebug\n*F\n+ 1 ReleaseNoteMemoryAction.kt\ncom/onyx/android/sdk/universal/editor/action/doc/ReleaseNoteMemoryAction\n*L\n37#1:43\n37#1:44,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ReleaseNoteMemoryAction extends RxBaseAppAction<ReleaseNoteMemoryAction> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.ReleaseNoteMemoryAction$a */
    /* loaded from: classes8.dex */
    public static final class C8661a<T, R> implements Function {
        public C8661a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Set<String> apply(@NotNull ReleaseNoteMemoryAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BoxInfoUtils.INSTANCE.toBoxIdSet(EditorBundleKt.visibleBoxList(ReleaseNoteMemoryAction.this.getEditorBundle()));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.ReleaseNoteMemoryAction$b */
    /* loaded from: classes8.dex */
    public static final class C8662b<T> implements Consumer {
        public C8662b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Set<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ReleaseNoteMemoryAction.this.m37635l(it2);
        }
    }

    @SourceDebugExtension({"SMAP\nReleaseNoteMemoryAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReleaseNoteMemoryAction.kt\ncom/onyx/android/sdk/universal/editor/action/doc/ReleaseNoteMemoryAction$create$3\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,42:1\n86#2,4:43\n*S KotlinDebug\n*F\n+ 1 ReleaseNoteMemoryAction.kt\ncom/onyx/android/sdk/universal/editor/action/doc/ReleaseNoteMemoryAction$create$3\n*L\n30#1:43,4\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.ReleaseNoteMemoryAction$c */
    /* loaded from: classes8.dex */
    public static final class C8663c<T> implements Consumer {
        public C8663c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Set<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Debug debug = Debug.INSTANCE;
            ReleaseNoteMemoryAction releaseNoteMemoryAction = ReleaseNoteMemoryAction.this;
            if (debug.getDebug()) {
                Log.d(debug.getTAG(), "release " + AnyKt.toSimpleNameString(releaseNoteMemoryAction.getEditorBundle()) + " note memory");
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.ReleaseNoteMemoryAction$d */
    /* loaded from: classes8.dex */
    public static final class C8664d<T, R> implements Function {
        public C8664d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ReleaseNoteMemoryAction apply(@NotNull Set<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ReleaseNoteMemoryAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReleaseNoteMemoryAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ReleaseNoteMemoryAction> create() {
        Observable<ReleaseNoteMemoryAction> map = Observable.just(this).observeOn(getMainUIScheduler()).map(new C8661a()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C8662b()).doOnNext(new C8663c()).map(new C8664d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m37635l(Set<String> visibleIdSet) {
        int collectionSizeOrDefault;
        Set set;
        NoteDocument noteDoc = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc();
        List<NotePage> loadedNotePages = noteDoc.getLoadedNotePages();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadedNotePages, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadedNotePages.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NotePage) it2.next()).getPageUniqueId());
        }
        set = CollectionsKt___CollectionsKt.toSet(arrayList);
        NoteDocCache.INSTANCE.saveAndUnloadPage(noteDoc, CollectionKt.diff(set, visibleIdSet));
    }
}
