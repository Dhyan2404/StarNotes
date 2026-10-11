package com.onyx.android.sdk.universal.editor.action.tape;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0002H\u0002J\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/tape/ClearAllPagesTapeShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "m", "loadedPages", "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nClearAllPagesTapeShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClearAllPagesTapeShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/tape/ClearAllPagesTapeShapeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,65:1\n1855#2,2:66\n*S KotlinDebug\n*F\n+ 1 ClearAllPagesTapeShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/tape/ClearAllPagesTapeShapeAction\n*L\n41#1:66,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ClearAllPagesTapeShapeAction extends RxBaseAppAction<ClearAllPagesTapeShapeAction> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tape.ClearAllPagesTapeShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C10207a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<NotePage> f51093e;

        public C10207a(List<NotePage> list) {
            this.f51093e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NotePage> apply(@NotNull DeleteShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f51093e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tape.ClearAllPagesTapeShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C10208b<T, R> implements Function {
        public C10208b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<NotePage>> apply(@NotNull ClearAllPagesTapeShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ClearAllPagesTapeShapeAction.this.m40420m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tape.ClearAllPagesTapeShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C10209c<T, R> implements Function {
        public C10209c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ClearAllPagesTapeShapeAction> apply(@NotNull List<NotePage> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ClearAllPagesTapeShapeAction.this.m40419l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tape.ClearAllPagesTapeShapeAction$d */
    /* loaded from: classes8.dex */
    public static final class C10210d<T, R> implements Function {
        public C10210d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ClearAllPagesTapeShapeAction apply(@NotNull ClearAllPagesTapeShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ClearAllPagesTapeShapeAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClearAllPagesTapeShapeAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ClearAllPagesTapeShapeAction> create() {
        Observable<ClearAllPagesTapeShapeAction> map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C10208b()).flatMap(new C10209c()).map(new C10210d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<ClearAllPagesTapeShapeAction> m40419l(final List<NotePage> loadedPages) {
        return DocCommonActionsKt.createNoteObservable(this, new Function1<NoteBundle, ClearAllPagesTapeShapeAction>() { // from class: com.onyx.android.sdk.universal.editor.action.tape.ClearAllPagesTapeShapeAction$clearTapeShapeFromDB$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x0065 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:19:0x0043 A[SYNTHETIC] */
            @Override // kotlin.jvm.functions.Function1
            @org.jetbrains.annotations.NotNull
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final com.onyx.android.sdk.universal.editor.action.tape.ClearAllPagesTapeShapeAction invoke(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.note.NoteBundle r6) {
                /*
                    r5 = this;
                    java.lang.String r0 = "it"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
                    java.util.List<com.onyx.android.sdk.note.common.document.page.NotePage> r0 = r1
                    java.lang.Iterable r0 = (java.lang.Iterable) r0
                    java.util.ArrayList r1 = new java.util.ArrayList
                    r2 = 10
                    int r2 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r0, r2)
                    r1.<init>(r2)
                    java.util.Iterator r0 = r0.iterator()
                L18:
                    boolean r2 = r0.hasNext()
                    if (r2 == 0) goto L2c
                    java.lang.Object r2 = r0.next()
                    com.onyx.android.sdk.note.common.document.page.NotePage r2 = (com.onyx.android.sdk.note.common.document.page.NotePage) r2
                    java.lang.String r2 = r2.getPageUniqueId()
                    r1.add(r2)
                    goto L18
                L2c:
                    java.util.Set r0 = kotlin.collections.CollectionsKt.toSet(r1)
                    com.onyx.android.sdk.note.common.document.doc.NoteDocument r6 = r6.getNoteDoc()
                    java.util.List r6 = com.onyx.android.sdk.note.common.document.doc.NoteExcerptProviderKt.loadAllTapeShapeModelList(r6)
                    java.lang.Iterable r6 = (java.lang.Iterable) r6
                    java.util.ArrayList r1 = new java.util.ArrayList
                    r1.<init>()
                    java.util.Iterator r6 = r6.iterator()
                L43:
                    boolean r2 = r6.hasNext()
                    if (r2 == 0) goto L69
                    java.lang.Object r2 = r6.next()
                    r3 = r2
                    com.onyx.android.sdk.replicator.note.db.model.ShapeModel r3 = (com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel) r3
                    java.lang.String r4 = r3.getPageUniqueId()
                    if (r4 == 0) goto L62
                    java.lang.String r3 = r3.getPageUniqueId()
                    boolean r3 = kotlin.collections.CollectionsKt.contains(r0, r3)
                    if (r3 != 0) goto L62
                    r3 = 1
                    goto L63
                L62:
                    r3 = 0
                L63:
                    if (r3 == 0) goto L43
                    r1.add(r2)
                    goto L43
                L69:
                    boolean r6 = com.onyx.android.sdk.base.extension.CollectionKt.isNonBlank(r1)
                    if (r6 == 0) goto L86
                    com.onyx.android.sdk.note.common.document.page.NotePageSave r6 = com.onyx.android.sdk.note.common.document.page.NotePageSave.INSTANCE
                    com.onyx.android.sdk.universal.editor.action.tape.ClearAllPagesTapeShapeAction r0 = r2
                    com.onyx.android.sdk.universal.editor.EditorBundle r0 = r0.getEditorBundle()
                    com.onyx.android.sdk.note.NoteBundle r0 = com.onyx.android.sdk.universal.editor.extension.EditorBundleKt.noteBundle(r0)
                    com.onyx.android.sdk.note.common.document.doc.NoteDocument r0 = r0.getNoteDoc()
                    com.onyx.android.sdk.replicator.provider.NoteProviderHolder r0 = r0.getProviderHolder()
                    r6.deleteShapeFromDB(r0, r1)
                L86:
                    com.onyx.android.sdk.universal.editor.action.tape.ClearAllPagesTapeShapeAction r5 = r2
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.action.tape.ClearAllPagesTapeShapeAction$clearTapeShapeFromDB$1.invoke(com.onyx.android.sdk.note.NoteBundle):com.onyx.android.sdk.universal.editor.action.tape.ClearAllPagesTapeShapeAction");
            }
        });
    }

    /* renamed from: m */
    public final Observable<List<NotePage>> m40420m() {
        List<NotePage> loadedNotePages = getEditorBundle().getWorkBundle().getNoteBundle().getNoteDoc().getLoadedNotePages();
        if (loadedNotePages.isEmpty()) {
            Observable<List<NotePage>> just = Observable.just(loadedNotePages);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = loadedNotePages.iterator();
        while (it2.hasNext()) {
            CollectionKt.safeAddAll(arrayList, NotePageShape.INSTANCE.getTapeShapes((NotePage) it2.next()));
        }
        Observable map = new DeleteShapesAction(getEditorBundle(), arrayList, false, false, 12, null).build().map(new C10207a(loadedNotePages));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
