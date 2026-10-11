package com.onyx.android.sdk.universal.editor.action;

import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.excerpt.DeleteExcerptResult;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.request.excerpt.DeleteExcerptListRequest;
import com.onyx.android.sdk.note.request.page.SaveNotePageByIdsRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.page.GetPageIndexFromIdAction;
import com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction;
import com.onyx.android.sdk.universal.editor.action.shape.GetReferenceShapeAction;
import com.onyx.android.sdk.universal.editor.action.tag.DeletePageTagModelAction;
import com.onyx.android.sdk.universal.editor.action.tag.DeletePageTocAction;
import com.onyx.android.sdk.universal.editor.action.thumbnail.SaveThumbnailAction;
import com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateThumbnailOrientationAction;
import com.onyx.android.sdk.universal.editor.data.EditorAnimatorContext;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.events.app.PagesRemovedEvent;
import com.onyx.android.sdk.universal.editor.events.note.DeleteExcerptResultEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.RemoveVirtualPageRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u0000 \u001c2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001cB\u001d\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u0010¢\u0006\u0004\b\u001a\u0010\u001bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0016J\f\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\f\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "q", "", CouchFieldKey.KEY_TOC_PAGE_ID, "p", "r", "w", "s", "t", C4921e.f26528e, "u", "v", "", C6999h.f39688c, "Ljava/util/List;", "pageIdList", "Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;", "i", "Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;", "context", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class RemovePageByIdListAction extends RxBaseAppAction<RemovePageByIdListAction> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> pageIdList;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public EditorAnimatorContext context;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u001e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u001e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0007H\u0002¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$Companion;", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "pageIndex", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/universal/editor/request/RemoveVirtualPageRequest;", "removePage", "b", AbstractLogger.REQUEST, "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {

        /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$Companion$a */
        /* loaded from: classes8.dex */
        public static final class C8312a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ EditorBundle f47767e;

            public C8312a(EditorBundle editorBundle) {
                this.f47767e = editorBundle;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends RemoveVirtualPageRequest> apply(@NotNull RemoveVirtualPageRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return RemovePageByIdListAction.INSTANCE.m37004a(this.f47767e, it2);
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final Observable<RemoveVirtualPageRequest> m37004a(EditorBundle editorBundle, final RemoveVirtualPageRequest request) {
            return DocCommonActionsKt.createNoteObservable(editorBundle, new Function1<NoteBundle, RemoveVirtualPageRequest>() { // from class: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$Companion$removeNotePage$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final RemoveVirtualPageRequest invoke(@NotNull NoteBundle noteBundle) {
                    Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
                    VirtualPage virtualPage = RemoveVirtualPageRequest.this.getVirtualPage();
                    if (virtualPage != null) {
                        NoteDocNotePage.INSTANCE.removePageById(noteBundle.getNoteDoc(), virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId());
                    }
                    return RemoveVirtualPageRequest.this;
                }
            });
        }

        /* renamed from: b */
        public final Observable<RemoveVirtualPageRequest> m37005b(EditorBundle editorBundle, int pageIndex) {
            final RemoveVirtualPageRequest removeVirtualPageRequest = new RemoveVirtualPageRequest(editorBundle.getWorkBundle());
            removeVirtualPageRequest.setPageIndex(pageIndex);
            return DocCommonActionsKt.createLightCoreObservable(editorBundle, new Function1<WorkBundle, RemoveVirtualPageRequest>() { // from class: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$Companion$removeVirtualPage$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final RemoveVirtualPageRequest invoke(@NotNull WorkBundle it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    RemoveVirtualPageRequest removeVirtualPageRequest2 = RemoveVirtualPageRequest.this;
                    removeVirtualPageRequest2.execute2();
                    return removeVirtualPageRequest2;
                }
            });
        }

        @NotNull
        public final Observable<RemoveVirtualPageRequest> removePage(@NotNull EditorBundle editorBundle, int pageIndex) {
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Observable flatMap = m37005b(editorBundle, pageIndex).flatMap(new C8312a(editorBundle));
            Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
            return flatMap;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$a */
    /* loaded from: classes8.dex */
    public static final class C8313a<T, R> implements Function {
        public C8313a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull RemovePageByIdListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RemovePageByIdListAction.this.m36994m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$a0 */
    /* loaded from: classes8.dex */
    public static final class C8314a0<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f47769e;

        public C8314a0(String str) {
            this.f47769e = str;
        }

        @NotNull
        /* renamed from: a */
        public final String m37008a(long j) {
            return this.f47769e;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m37008a(((Number) obj).longValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$b */
    /* loaded from: classes8.dex */
    public static final class C8315b<T, R> implements Function {
        public C8315b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditorBundleKt.prepareBoxAnimation(RemovePageByIdListAction.this.getEditorBundle(), RemovePageByIdListAction.this.context, EditorAnimatorContext.AnimationType.REMOVE);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$b0 */
    /* loaded from: classes8.dex */
    public static final class C8316b0<T, R> implements Function {
        public C8316b0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RemovePageByIdListAction apply(@NotNull DeletePageTocAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RemovePageByIdListAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$c */
    /* loaded from: classes8.dex */
    public static final class C8317c<T, R> implements Function {
        public C8317c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RemovePageByIdListAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RemovePageByIdListAction.this.m37001u();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$c0 */
    /* loaded from: classes8.dex */
    public static final class C8318c0<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f47773e;

        public C8318c0(String str) {
            this.f47773e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull SaveNotePageByIdsRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f47773e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$d */
    /* loaded from: classes8.dex */
    public static final class C8320d<T, R> implements Function {
        public C8320d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RemovePageByIdListAction> apply(@NotNull RemovePageByIdListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RemovePageByIdListAction.this.m36997q();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$d0 */
    /* loaded from: classes8.dex */
    public static final class C8321d0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SaveThumbnailAction f47777f;

        public C8321d0(SaveThumbnailAction saveThumbnailAction) {
            this.f47777f = saveThumbnailAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateThumbnailOrientationAction> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new UpdateThumbnailOrientationAction(RemovePageByIdListAction.this.getEditorBundle(), this.f47777f.getOrientation(), false, 4, null).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$e */
    /* loaded from: classes8.dex */
    public static final class C8322e<T, R> implements Function {
        public C8322e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull RemovePageByIdListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.saveDocInfo(RemovePageByIdListAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$e0 */
    /* loaded from: classes8.dex */
    public static final class C8323e0<T, R> implements Function {
        public C8323e0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RemovePageByIdListAction apply(@NotNull UpdateThumbnailOrientationAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RemovePageByIdListAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$f */
    /* loaded from: classes8.dex */
    public static final class C8324f<T, R> implements Function {
        public C8324f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RemovePageByIdListAction removePageByIdListAction = RemovePageByIdListAction.this;
            return DisplayActionsKt.displayWithBoxAnimation(removePageByIdListAction, removePageByIdListAction.context);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$g */
    /* loaded from: classes8.dex */
    public static final class C8325g<T, R> implements Function {
        public C8325g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RemovePageByIdListAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RemovePageByIdListAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$h */
    /* loaded from: classes8.dex */
    public static final class C8326h<T, R> implements Function {
        public C8326h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RemovePageByIdListAction apply(@NotNull List<Integer> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RemovePageByIdListAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$i */
    /* loaded from: classes8.dex */
    public static final class C8327i<T, R> implements Function {
        public C8327i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull String it2) {
            BoxInfo box;
            BoxInfo noteInfo;
            Intrinsics.checkNotNullParameter(it2, "it");
            VirtualPage virtualPage = RemovePageByIdListAction.this.getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage(it2);
            NotePage orNullNotePage = NoteDocNotePage.INSTANCE.getOrNullNotePage(RemovePageByIdListAction.this.getEditorBundle().getWorkBundle().getNoteBundle().getNoteDoc(), (virtualPage == null || (box = virtualPage.getBox()) == null || (noteInfo = box.getNoteInfo()) == null) ? null : noteInfo.getId());
            return CollectionKt.ensureList(orNullNotePage != null ? orNullNotePage.getShapeList() : null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$j */
    /* loaded from: classes8.dex */
    public static final class C8328j<T, R> implements Function {

        /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$j$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public static final a<T, R> f47785e = new a<>();

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final List<Shape> apply(@NotNull GetReferenceShapeAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return GetReferenceShapeAction.mergeShapeList$default(it2, false, 1, null);
            }
        }

        public C8328j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull List<? extends Shape> shapeList) {
            Intrinsics.checkNotNullParameter(shapeList, "shapeList");
            return new GetReferenceShapeAction(RemovePageByIdListAction.this.getEditorBundle(), shapeList).build().map(a.f47785e);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$k */
    /* loaded from: classes8.dex */
    public static final class C8329k<T, R> implements Function {

        /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$k$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ List<Shape> f47787e;

            /* JADX WARN: Multi-variable type inference failed */
            public a(List<? extends Shape> list) {
                this.f47787e = list;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final List<Shape> apply(@NotNull SaveNotePageByIdsRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f47787e;
            }
        }

        public C8329k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull List<? extends Shape> shapeList) {
            Intrinsics.checkNotNullParameter(shapeList, "shapeList");
            return RxBaseAppActionKt.submitRequestToNote(RemovePageByIdListAction.this.getEditorBundle(), new SaveNotePageByIdsRequest(EditorBundleKt.noteBundle(RemovePageByIdListAction.this.getEditorBundle()), ShapeTypes.INSTANCE.toPageIdSet(shapeList))).map(new a(shapeList));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$l */
    /* loaded from: classes8.dex */
    public static final class C8330l<T, R> implements Function {

        /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$l$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ List<Shape> f47789e;

            /* JADX WARN: Multi-variable type inference failed */
            public a(List<? extends Shape> list) {
                this.f47789e = list;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final List<Shape> apply(@NotNull DeleteShapesAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f47789e;
            }
        }

        public C8330l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull List<? extends Shape> shapeList) {
            Intrinsics.checkNotNullParameter(shapeList, "shapeList");
            return new DeleteShapesAction(RemovePageByIdListAction.this.getEditorBundle(), shapeList, false, false, 12, null).build().map(new a(shapeList));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$m */
    /* loaded from: classes8.dex */
    public static final class C8331m<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f47790e;

        public C8331m(String str) {
            this.f47790e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f47790e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$n */
    /* loaded from: classes8.dex */
    public static final class C8332n<T, R> implements Function {
        public C8332n() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RemovePageByIdListAction.this.m37002v(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$o */
    /* loaded from: classes8.dex */
    public static final class C8333o<T, R> implements Function {
        public C8333o() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RemovePageByIdListAction.this.m36999s(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$p */
    /* loaded from: classes8.dex */
    public static final class C8334p<T, R> implements Function {
        public C8334p() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RemovePageByIdListAction.this.m37000t(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$q */
    /* loaded from: classes8.dex */
    public static final class C8335q<T, R> implements Function {
        public C8335q() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RemovePageByIdListAction.this.m36995o(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$r */
    /* loaded from: classes8.dex */
    public static final class C8336r<T, R> implements Function {
        public C8336r() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RemovePageByIdListAction.this.m36998r(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$s */
    /* loaded from: classes8.dex */
    public static final class C8339s<T, R> implements Function {
        public C8339s() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RemovePageByIdListAction.this.m36996p(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$t */
    /* loaded from: classes8.dex */
    public static final class C8340t<T> implements Consumer {
        public C8340t() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(RemovePageByIdListAction.this.getEditorBundle(), new PagesRemovedEvent(RemovePageByIdListAction.this.pageIdList));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$u */
    /* loaded from: classes8.dex */
    public static final class C8341u<T, R> implements Function {
        public C8341u() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RemovePageByIdListAction apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RemovePageByIdListAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$v */
    /* loaded from: classes8.dex */
    public static final class C8342v<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f47799e;

        public C8342v(String str) {
            this.f47799e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f47799e;
        }
    }

    @SourceDebugExtension({"SMAP\nRemovePageByIdListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemovePageByIdListAction.kt\ncom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePageExcerpts$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,210:1\n1360#2:211\n1446#2,5:212\n*S KotlinDebug\n*F\n+ 1 RemovePageByIdListAction.kt\ncom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePageExcerpts$2\n*L\n118#1:211\n118#1:212,5\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$w */
    /* loaded from: classes8.dex */
    public static final class C8343w<T, R> implements Function {
        public C8343w() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull List<VirtualPage> virtualPageList) {
            Intrinsics.checkNotNullParameter(virtualPageList, "virtualPageList");
            RemovePageByIdListAction removePageByIdListAction = RemovePageByIdListAction.this;
            ArrayList arrayList = new ArrayList();
            Iterator<T> it2 = virtualPageList.iterator();
            while (it2.hasNext()) {
                NotePage notePage = removePageByIdListAction.getEditorBundle().getWorkBundle().getVirtualPolicy().getNotePage((VirtualPage) it2.next());
                CollectionsKt__MutableCollectionsKt.addAll(arrayList, CollectionKt.ensureList(notePage != null ? notePage.getShapeList() : null));
            }
            return arrayList;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$x */
    /* loaded from: classes8.dex */
    public static final class C8344x<T, R> implements Function {
        public C8344x() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteExcerptListRequest> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RxBaseAppActionKt.submitRequestToCore(RemovePageByIdListAction.this, new DeleteExcerptListRequest(EditorBundleKt.noteBundle(RemovePageByIdListAction.this.getEditorBundle()), it2));
        }
    }

    @SourceDebugExtension({"SMAP\nRemovePageByIdListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemovePageByIdListAction.kt\ncom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePageExcerpts$4\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,210:1\n215#2,2:211\n*S KotlinDebug\n*F\n+ 1 RemovePageByIdListAction.kt\ncom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePageExcerpts$4\n*L\n126#1:211,2\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$y */
    /* loaded from: classes8.dex */
    public static final class C8345y<T> implements Consumer {
        public C8345y() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DeleteExcerptListRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LinkedHashMap<Shape, DeleteExcerptResult> resultMap = it2.getResultMap();
            RemovePageByIdListAction removePageByIdListAction = RemovePageByIdListAction.this;
            Iterator<Map.Entry<Shape, DeleteExcerptResult>> it3 = resultMap.entrySet().iterator();
            while (it3.hasNext()) {
                EditorBundleKt.postEvent(removePageByIdListAction.getEditorBundle(), new DeleteExcerptResultEvent(it3.next().getValue()));
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$z */
    /* loaded from: classes8.dex */
    public static final class C8346z<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f47803e;

        public C8346z(String str) {
            this.f47803e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull DeleteExcerptListRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f47803e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemovePageByIdListAction(@NotNull EditorBundle editorBundle, @NotNull List<String> pageIdList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        this.pageIdList = pageIdList;
        this.context = new EditorAnimatorContext();
    }

    /* renamed from: n */
    public static final void m36993n(RemovePageByIdListAction this$0, List it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        LogUtils.wTag(AnyKt.toSimpleNameString(this$0), "remove pages:" + it2);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<RemovePageByIdListAction> create() {
        Observable<RemovePageByIdListAction> map = Observable.just(this).flatMap(new C8313a()).flatMap(new C8315b()).flatMap(new C8317c()).flatMap(new C8320d()).flatMap(new C8322e()).flatMap(new C8324f()).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$create$7
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends Unit> apply(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return DocCommonActionsKt.createNoteObservable(RemovePageByIdListAction.this.getEditorBundle(), new Function1<NoteBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$create$7.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(NoteBundle noteBundle) {
                        invoke2(noteBundle);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull NoteBundle it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        it3.getCommandManager().reset();
                    }
                });
            }
        }).map(new C8325g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<?> m36994m() {
        Observable map = RxjavaKt.doOnNextIf(new GetPageIndexFromIdAction(getEditorBundle(), this.pageIdList).build(), new Function1<List<? extends Integer>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$printRemovePagesLog$1
            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull List<Integer> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(List<? extends Integer> list) {
                return invoke2((List<Integer>) list);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.yjl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                RemovePageByIdListAction.m36993n(RemovePageByIdListAction.this, (List) obj);
            }
        }).map(new C8326h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.onErrorReturnItemWithLog(map, this);
    }

    /* renamed from: o */
    public final Observable<String> m36995o(String pageId) {
        Observable<String> map = Observable.just(pageId).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C8327i()).flatMap(new C8328j()).flatMap(new C8329k()).flatMap(new C8330l()).map(new C8331m(pageId));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final Observable<String> m36996p(String pageId) {
        Observable<String> flatMap = Observable.just(pageId).flatMap(new C8332n()).flatMap(new C8333o()).flatMap(new C8334p()).flatMap(new C8335q()).flatMap(new C8336r());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: q */
    public final Observable<RemovePageByIdListAction> m36997q() {
        if (CollectionKt.isNullOrEmpty(this.pageIdList)) {
            Observable<RemovePageByIdListAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable concatMap = Observable.fromIterable(this.pageIdList).concatMap(new C8339s());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<RemovePageByIdListAction> map = RxjavaKt.takeLastOne(concatMap).doOnNext(new C8340t()).map(new C8341u());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: r */
    public final Observable<String> m36998r(String pageId) {
        List listOf;
        EditorBundle editorBundle = getEditorBundle();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(pageId);
        Observable map = RxjavaKt.flatMapIf(new GetPageIndexFromIdAction(editorBundle, listOf).build(), new Function1<List<? extends Integer>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$removePage$4
            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull List<Integer> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(List<? extends Integer> list) {
                return invoke2((List<Integer>) list);
            }
        }, new Function1<List<? extends Integer>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$removePage$5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(List<? extends Integer> list) {
                return invoke2((List<Integer>) list);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Observable<? extends Object> invoke2(@NotNull List<Integer> it2) {
                Object first;
                Intrinsics.checkNotNullParameter(it2, "it");
                RemovePageByIdListAction.Companion companion = RemovePageByIdListAction.INSTANCE;
                EditorBundle editorBundle2 = RemovePageByIdListAction.this.getEditorBundle();
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) it2);
                Observable<RemoveVirtualPageRequest> removePage = companion.removePage(editorBundle2, ((Number) first).intValue());
                C83371 c83371 = new Function1<RemoveVirtualPageRequest, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$removePage$5.1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull RemoveVirtualPageRequest it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        return Boolean.valueOf(it3.getIsCoverPage());
                    }
                };
                final RemovePageByIdListAction removePageByIdListAction = RemovePageByIdListAction.this;
                return RxjavaKt.flatMapIf(removePage, c83371, new Function1<RemoveVirtualPageRequest, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$removePage$5.2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Observable<? extends Object> invoke(@NotNull RemoveVirtualPageRequest it3) {
                        Observable<? extends Object> m37003w;
                        Intrinsics.checkNotNullParameter(it3, "it");
                        m37003w = RemovePageByIdListAction.this.m37003w();
                        return m37003w;
                    }
                });
            }
        }).map(new C8342v(pageId));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: s */
    public final Observable<String> m36999s(final String pageId) {
        Observable<String> map = DocCommonActionsKt.createCoreObservable(getEditorBundle(), new Function1<WorkBundle, List<? extends VirtualPage>>() { // from class: com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction$removePageExcerpts$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<VirtualPage> invoke(@NotNull WorkBundle workBundle) {
                List<VirtualPage> listOfNotNull;
                Intrinsics.checkNotNullParameter(workBundle, "workBundle");
                listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(workBundle.getVirtualPolicy().getVirtualPage(pageId));
                return listOfNotNull;
            }
        }).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C8343w()).flatMap(new C8344x()).doOnNext(new C8345y()).map(new C8346z(pageId));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: t */
    public final Observable<String> m37000t(String pageId) {
        Observable map = new DeletePageTagModelAction(getEditorBundle(), pageId).build().map(new C8314a0(pageId));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: u */
    public final Observable<RemovePageByIdListAction> m37001u() {
        Observable map = new DeletePageTocAction(getEditorBundle(), this.pageIdList).build().map(new C8316b0());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: v */
    public final Observable<String> m37002v(String pageId) {
        List listOf;
        NoteBundle noteBundle = EditorBundleKt.noteBundle(getEditorBundle());
        listOf = CollectionsKt__CollectionsJVMKt.listOf(pageId);
        Observable<String> map = RxBaseAppActionKt.submitRequestToNote(getEditorBundle(), new SaveNotePageByIdsRequest(noteBundle, listOf)).map(new C8318c0(pageId));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: w */
    public final Observable<?> m37003w() {
        SaveThumbnailAction saveThumbnailAction = new SaveThumbnailAction(getEditorBundle());
        Observable<?> map = saveThumbnailAction.build().flatMap(new C8321d0(saveThumbnailAction)).map(new C8323e0());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
