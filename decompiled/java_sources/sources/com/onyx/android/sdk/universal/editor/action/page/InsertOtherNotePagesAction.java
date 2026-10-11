package com.onyx.android.sdk.universal.editor.action.page;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.data.utils.ZipUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.extension.ShapeKt;
import com.onyx.android.sdk.note.request.SaveNoteModelRequest;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportPdfPagesResult;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTagBean;
import com.onyx.android.sdk.replicator.note.proto.p036pb.PBDataContext;
import com.onyx.android.sdk.replicator.note.proto.p036pb.PBFactory;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.InsertPageWithTemplateAction;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.export.ExportToNoteFileAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction;
import com.onyx.android.sdk.universal.editor.action.tag.CheckAndUpdateTagPageIndexAction;
import com.onyx.android.sdk.universal.editor.action.tag.SavePageTagModelsAction;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.events.app.OtherNotePageInsertedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.AfterDocumentOpenRequest;
import com.onyx.android.sdk.universal.editor.request.page.CloseVirtualPolicyRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 42\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00014B-\u0012\u0006\u00101\u001a\u00020\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u000f\u0012\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001f0\u0013\u0012\u0006\u0010%\u001a\u00020\u001f¢\u0006\u0004\b2\u00103J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J*\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\bH\u0002J\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u00032\u0006\u0010\f\u001a\u00020\u0005H\u0002J8\u0010\u0016\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\b0\u00032\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0002J\u000e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0002J\f\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002J\f\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002J\u0014\u0010\u001b\u001a\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\u001a\u001a\u00020\u0005H\u0002R\u0014\u0010\u001e\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u001a\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010%\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u001c\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00050\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010!R\u001c\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00050(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010!R'\u00100\u001a\u0015\u0012\f\u0012\n ,*\u0004\u0018\u00010\u00020\u00020+¢\u0006\u0002\b-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/¨\u00065"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "r", "exportFilePath", "", "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;", "exportPdfPagesResult", "s", "noteFilePath", "", "v", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Ljava/io/File;", "exportDir", "", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPageList", "z", "u", "p", "y", "insertId", "A", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "dstEditorBundle", "", "i", "Ljava/util/List;", "dstPageIndexList", "j", "I", "fromPageIndex", C4921e.f26537n, "exportPageList", "", "l", "insertPageIds", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "m", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "progressSubject", "fromEditorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;I)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nInsertOtherNotePagesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InsertOtherNotePagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,256:1\n1549#2:257\n1620#2,3:258\n766#2:262\n857#2,2:263\n1855#2,2:265\n1#3:261\n*S KotlinDebug\n*F\n+ 1 InsertOtherNotePagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction\n*L\n103#1:257\n103#1:258,3\n174#1:262\n174#1:263,2\n187#1:265,2\n*E\n"})
/* loaded from: classes8.dex */
public final class InsertOtherNotePagesAction extends RxBaseAppAction<ProgressInfo> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle dstEditorBundle;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> dstPageIndexList;

    /* renamed from: j, reason: from kotlin metadata */
    public int fromPageIndex;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public List<String> exportPageList;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public List<String> insertPageIds;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final PublishSubject<ProgressInfo> progressSubject;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ\"\u0010\t\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001c\u0010\n\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0014\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion;", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "targetPageInfo", "", "pageIndex", "Lio/reactivex/rxjava3/core/Observable;", "afterInserted", "a", "b", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {

        /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$Companion$a */
        /* loaded from: classes8.dex */
        public static final class C9679a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ EditorBundle f50165e;

            public C9679a(EditorBundle editorBundle) {
                this.f50165e = editorBundle;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends AfterDocumentOpenRequest> apply(@NotNull CloseVirtualPolicyRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                EditorBundle editorBundle = this.f50165e;
                return RxBaseAppActionKt.submitRequestToCore(editorBundle, new AfterDocumentOpenRequest(editorBundle.getWorkBundle(), null, 2, null));
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$Companion$b */
        /* loaded from: classes8.dex */
        public static final class C9680b<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ EditorBundle f50166e;

            public C9680b(EditorBundle editorBundle) {
                this.f50166e = editorBundle;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends Object> apply(@NotNull AfterDocumentOpenRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return InsertOtherNotePagesAction.INSTANCE.m39498b(this.f50166e);
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$Companion$c */
        /* loaded from: classes8.dex */
        public static final class C9681c<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ EditorBundle f50167e;

            /* renamed from: f */
            public final /* synthetic */ PageInfo f50168f;

            public C9681c(EditorBundle editorBundle, PageInfo pageInfo) {
                this.f50167e = editorBundle;
                this.f50168f = pageInfo;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return InsertOtherNotePagesAction.INSTANCE.m39497a(this.f50167e, this.f50168f);
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$Companion$d */
        /* loaded from: classes8.dex */
        public static final class C9682d<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ EditorBundle f50169e;

            /* renamed from: f */
            public final /* synthetic */ int f50170f;

            public C9682d(EditorBundle editorBundle, int i) {
                this.f50169e = editorBundle;
                this.f50170f = i;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends GotoPageAction> apply(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new GotoPageAction(this.f50169e, this.f50170f).build();
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final Observable<?> m39497a(EditorBundle editorBundle, final PageInfo targetPageInfo) {
            return DocCommonActionsKt.createNoteObservable(editorBundle, new Function1<NoteBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$Companion$mergePageLayers$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(NoteBundle noteBundle) {
                    invoke2(noteBundle);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull NoteBundle it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    it2.getNoteDoc().ensureGlobalNotePage().getPageInfo().mergeLayerIfMissing(PageInfo.this);
                    new SaveNoteModelRequest(it2).execute2();
                }
            });
        }

        @NotNull
        public final Observable<?> afterInserted(@NotNull EditorBundle editorBundle, @NotNull PageInfo targetPageInfo, int pageIndex) {
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(targetPageInfo, "targetPageInfo");
            Observable<?> flatMap = RxBaseAppActionKt.submitRequestToCore(editorBundle, new CloseVirtualPolicyRequest(editorBundle.getWorkBundle())).flatMap(new C9679a(editorBundle)).flatMap(new C9680b(editorBundle)).flatMap(new C9681c(editorBundle, targetPageInfo)).flatMap(new C9682d(editorBundle, pageIndex));
            Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
            return flatMap;
        }

        /* renamed from: b */
        public final Observable<?> m39498b(EditorBundle editorBundle) {
            return DocCommonActionsKt.createNoteObservable(editorBundle, new Function1<NoteBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$Companion$updateValidShapeNotePageIds$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(NoteBundle noteBundle) {
                    invoke2(noteBundle);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull NoteBundle it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    NoteDocNotePage.INSTANCE.updateValidShapeNotePageIds(it2.getNoteDoc());
                }
            });
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$a */
    /* loaded from: classes8.dex */
    public static final class C9684a<T, R> implements Function {

        /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$a$a */
        /* loaded from: classes8.dex */
        public static final class a<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ InsertOtherNotePagesAction f50172e;

            /* renamed from: f */
            public final /* synthetic */ PageInfo f50173f;

            public a(InsertOtherNotePagesAction insertOtherNotePagesAction, PageInfo pageInfo) {
                this.f50172e = insertOtherNotePagesAction;
                this.f50173f = pageInfo;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                EditorBundleKt.postEvent(this.f50172e.getEditorBundle(), new OtherNotePageInsertedEvent(this.f50172e.fromPageIndex, this.f50173f));
            }
        }

        public C9684a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull PageInfo pageInfo) {
            Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
            return InsertOtherNotePagesAction.INSTANCE.afterInserted(InsertOtherNotePagesAction.this.getEditorBundle(), pageInfo, InsertOtherNotePagesAction.this.fromPageIndex).doOnNext(new a(InsertOtherNotePagesAction.this, pageInfo));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$b */
    /* loaded from: classes8.dex */
    public static final class C9685b<T, R> implements Function {
        public C9685b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull InsertOtherNotePagesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertOtherNotePagesAction.this.m39491r();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$c */
    /* loaded from: classes8.dex */
    public static final class C9686c<T, R> implements Function {
        public C9686c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertOtherNotePagesAction.this.m39494v(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$d */
    /* loaded from: classes8.dex */
    public static final class C9687d<T, R> implements Function {
        public C9687d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertOtherNotePagesAction.this.m39495y();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$e */
    /* loaded from: classes8.dex */
    public static final class C9688e<T> implements Consumer {
        public C9688e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InsertOtherNotePagesAction.this.progressSubject.onError(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$f */
    /* loaded from: classes8.dex */
    public static final class C9689f<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ String f50179f;

        public C9689f(String str) {
            this.f50179f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull Map<String, ExportPdfPagesResult> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertOtherNotePagesAction.this.m39492s(this.f50179f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$g */
    /* loaded from: classes8.dex */
    public static final class C9690g<T> implements Consumer {

        /* renamed from: e */
        public static final C9690g<T> f50180e = new C9690g<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            it2.setProgress(it2.getProgress() / 2.0f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$h */
    /* loaded from: classes8.dex */
    public static final class C9691h<T> implements Consumer {
        public C9691h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InsertOtherNotePagesAction.this.progressSubject.onNext(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$i */
    /* loaded from: classes8.dex */
    public static final class C9692i<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ PublishSubject<String> f50182e;

        public C9692i(PublishSubject<String> publishSubject) {
            this.f50182e = publishSubject;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f50182e.onError(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$j */
    /* loaded from: classes8.dex */
    public static final class C9693j<T> implements Consumer {
        public C9693j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            it2.setProgress((it2.getProgress() / 2.0f) + 50);
            InsertOtherNotePagesAction.this.progressSubject.onNext(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$k */
    /* loaded from: classes8.dex */
    public static final class C9694k<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ReplaySubject<Boolean> f50184e;

        public C9694k(ReplaySubject<Boolean> replaySubject) {
            this.f50184e = replaySubject;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f50184e.onError(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$l */
    /* loaded from: classes8.dex */
    public static final class C9695l<T, R> implements Function {
        public C9695l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertOtherNotePagesAction.this.m39489A(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$m */
    /* loaded from: classes8.dex */
    public static final class C9696m<T, R> implements Function {
        public C9696m() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateVirtualPageAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new UpdateVirtualPageAction(InsertOtherNotePagesAction.this.getEditorBundle(), InsertOtherNotePagesAction.this.insertPageIds).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$n */
    /* loaded from: classes8.dex */
    public static final class C9697n<T, R> implements Function {
        public C9697n() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CheckAndUpdateTagPageIndexAction> apply(@NotNull UpdateVirtualPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CheckAndUpdateTagPageIndexAction(InsertOtherNotePagesAction.this.getEditorBundle()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$o */
    /* loaded from: classes8.dex */
    public static final class C9698o<T, R> implements Function {
        public C9698o() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InsertOtherNotePagesAction apply(@NotNull CheckAndUpdateTagPageIndexAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertOtherNotePagesAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$p */
    /* loaded from: classes8.dex */
    public static final class C9699p<T, R> implements Function {
        public C9699p() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InsertOtherNotePagesAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertOtherNotePagesAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InsertOtherNotePagesAction(@NotNull EditorBundle fromEditorBundle, @NotNull EditorBundle dstEditorBundle, @NotNull List<Integer> dstPageIndexList, int i) {
        super(fromEditorBundle);
        List<String> emptyList;
        Intrinsics.checkNotNullParameter(fromEditorBundle, "fromEditorBundle");
        Intrinsics.checkNotNullParameter(dstEditorBundle, "dstEditorBundle");
        Intrinsics.checkNotNullParameter(dstPageIndexList, "dstPageIndexList");
        this.dstEditorBundle = dstEditorBundle;
        this.dstPageIndexList = dstPageIndexList;
        this.fromPageIndex = i;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.exportPageList = emptyList;
        this.insertPageIds = new ArrayList();
        PublishSubject<ProgressInfo> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.progressSubject = create;
    }

    /* renamed from: q */
    public static final void m39485q(InsertOtherNotePagesAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RxjavaKt.done(this$0.progressSubject, ProgressInfo.INSTANCE.onComplete());
    }

    /* renamed from: t */
    public static final void m39486t(PublishSubject subject, String exportFilePath) {
        Intrinsics.checkNotNullParameter(subject, "$subject");
        Intrinsics.checkNotNullParameter(exportFilePath, "$exportFilePath");
        RxjavaKt.done(subject, exportFilePath);
    }

    /* renamed from: w */
    public static final void m39487w(InsertOtherNotePagesAction this$0, PBDataContext pbDataContext, ReplaySubject subject) {
        Map<String, String> pageIdCopyMap;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(pbDataContext, "$pbDataContext");
        Intrinsics.checkNotNullParameter(subject, "$subject");
        List<String> list = this$0.insertPageIds;
        CopyNoteArgs copyNoteArgs = pbDataContext.getCopyNoteArgs();
        CollectionKt.safeAddAll(list, (copyNoteArgs == null || (pageIdCopyMap = copyNoteArgs.getPageIdCopyMap()) == null) ? null : pageIdCopyMap.values());
        RxjavaKt.done(subject, Boolean.TRUE);
    }

    /* renamed from: x */
    public static final void m39488x(String noteFilePath) {
        Intrinsics.checkNotNullParameter(noteFilePath, "$noteFilePath");
        File parentFile = new File(noteFilePath).getParentFile();
        if (parentFile != null) {
            FileUtils.deleteDirectoryQuietly$default(FileUtils.INSTANCE, parentFile, null, null, 3, null);
        }
    }

    /* renamed from: A */
    public final Observable<?> m39489A(final String insertId) {
        Observable map = RxjavaKt.flatMapIf(DocCommonActionsKt.createNoteObservable(this, new Function1<NoteBundle, List<? extends ShapeTagBean>>() { // from class: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$updatePageTag$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<ShapeTagBean> invoke(@NotNull NoteBundle it2) {
                ArrayList arrayList;
                List<ShapeTagBean> emptyList;
                List<Shape> shapeList;
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullParameter(it2, "it");
                NotePage notePage = NoteDocNotePage.INSTANCE.getNotePage(EditorBundleKt.noteBundle(InsertOtherNotePagesAction.this.getEditorBundle()).getNoteDoc(), insertId);
                if (notePage != null) {
                    notePage.setDirty(true);
                }
                if (notePage == null || (shapeList = notePage.getShapeList()) == null) {
                    arrayList = null;
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj : shapeList) {
                        if (ShapeKt.isTagShape((Shape) obj)) {
                            arrayList2.add(obj);
                        }
                    }
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
                    arrayList = new ArrayList(collectionSizeOrDefault);
                    Iterator it3 = arrayList2.iterator();
                    while (it3.hasNext()) {
                        arrayList.add(ShapeOptions.INSTANCE.getTagBean((Shape) it3.next()));
                    }
                }
                if (arrayList != null) {
                    return arrayList;
                }
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
        }), new Function1<List<? extends ShapeTagBean>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$updatePageTag$2
            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull List<ShapeTagBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(List<? extends ShapeTagBean> list) {
                return invoke2((List<ShapeTagBean>) list);
            }
        }, new Function1<List<? extends ShapeTagBean>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$updatePageTag$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Observable<? extends Object> invoke2(@NotNull List<ShapeTagBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new SavePageTagModelsAction(InsertOtherNotePagesAction.this.getEditorBundle(), insertId, it2).build();
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(List<? extends ShapeTagBean> list) {
                return invoke2((List<ShapeTagBean>) list);
            }
        }).map(new C9699p());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ProgressInfo> create() {
        Observable flatMap = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C9685b()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C9686c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        RxjavaKt.flatMapIf(flatMap, new Function1<Boolean, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$create$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Boolean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$create$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Boolean it2) {
                Observable<? extends Object> m39490p;
                Intrinsics.checkNotNullParameter(it2, "it");
                m39490p = InsertOtherNotePagesAction.this.m39490p();
                return m39490p;
            }
        }).flatMap(new C9687d()).doOnError(new C9688e<>()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.pli
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                InsertOtherNotePagesAction.m39485q(InsertOtherNotePagesAction.this);
            }
        }).subscribe();
        return this.progressSubject;
    }

    /* renamed from: p */
    public final Observable<?> m39490p() {
        Observable<?> flatMap = DocCommonActionsKt.createNoteObservable(this.dstEditorBundle, new Function1<NoteBundle, PageInfo>() { // from class: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$afterInserted$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final PageInfo invoke(@NotNull NoteBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getNoteDoc().ensureGlobalNotePage().getPageInfo();
            }
        }).flatMap(new C9684a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: r */
    public final Observable<String> m39491r() {
        int collectionSizeOrDefault;
        List<VirtualPage> m39493u = m39493u();
        File cacheDir = getAppContext().getCacheDir();
        FileUtils fileUtils = FileUtils.INSTANCE;
        File file = new File(cacheDir, fileUtils.combinePath(SyncConstant.EXPORT_DIR_NAME, EditorBundleKt.docId(this.dstEditorBundle)));
        fileUtils.deleteFile(file);
        fileUtils.mkdirs(file);
        String combinePath = fileUtils.combinePath(file.getAbsolutePath(), fileUtils.combine(EditorBundleKt.docId(this.dstEditorBundle), "note"));
        List<VirtualPage> list = m39493u;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((VirtualPage) it2.next()).getBox().getId());
        }
        this.exportPageList = arrayList;
        Observable flatMap = m39496z(this.dstEditorBundle, file, m39493u).flatMap(new C9689f(combinePath));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: s */
    public final Observable<String> m39492s(final String exportFilePath, Map<String, ExportPdfPagesResult> exportPdfPagesResult) {
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        ExportToNoteFileAction exportToNoteFileAction = new ExportToNoteFileAction(this.dstEditorBundle, exportFilePath, this.exportPageList);
        exportToNoteFileAction.setExportFuncTypes(new int[]{7, 1, 2});
        exportToNoteFileAction.setExportPdfPagesResult(exportPdfPagesResult);
        exportToNoteFileAction.setTransformReferenceShape(true);
        exportToNoteFileAction.build().doOnNext(C9690g.f50180e).doOnNext(new C9691h()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.qli
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                InsertOtherNotePagesAction.m39486t(PublishSubject.this, exportFilePath);
            }
        }).doOnError(new C9692i(create)).subscribe();
        return create;
    }

    /* renamed from: u */
    public final List<VirtualPage> m39493u() {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = this.dstPageIndexList.iterator();
        while (it2.hasNext()) {
            VirtualPage virtualPage = this.dstEditorBundle.getWorkBundle().getVirtualPolicy().getVirtualPage(((Number) it2.next()).intValue());
            if (virtualPage != null) {
                CollectionKt.safeAdd(arrayList, virtualPage);
            }
        }
        return arrayList;
    }

    /* renamed from: v */
    public final Observable<Boolean> m39494v(final String noteFilePath) {
        BoxInfo box;
        StringBuilder sb = new StringBuilder();
        FileUtils fileUtils = FileUtils.INSTANCE;
        sb.append(fileUtils.getParent(noteFilePath));
        sb.append(File.separator);
        sb.append(UUIDUtils.INSTANCE.rawUUID());
        String sb2 = sb.toString();
        fileUtils.mkdirs(sb2);
        ZipUtils.INSTANCE.unZip(new File(noteFilePath), sb2, null);
        String docId = EditorBundleKt.docId(this.dstEditorBundle);
        if (!fileUtils.isFileExist(SyncConstant.INSTANCE.docDirFilePath(sb2, docId))) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        VirtualPage virtualPage = (VirtualPage) AnyKt.getOrElseNull(InsertPageWithTemplateAction.INSTANCE.findTemplateRectPageByPreviousPage(getEditorBundle(), this.fromPageIndex), new Function0<VirtualPage>() { // from class: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$importFromNoteFile$copyPageRect$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final VirtualPage invoke() {
                return InsertOtherNotePagesAction.this.getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage(Math.max(InsertOtherNotePagesAction.this.fromPageIndex - 1, 0));
            }
        });
        RectF originRectF = (virtualPage == null || (box = virtualPage.getBox()) == null) ? null : box.getOriginRectF();
        CopyNoteArgs copyNoteArgs = new CopyNoteArgs();
        copyNoteArgs.setUserId(AccountDataBundle.INSTANCE.getSyncUserId());
        copyNoteArgs.setSrcDocId(docId);
        copyNoteArgs.setDstDocId(EditorBundleKt.docId(getEditorBundle()));
        copyNoteArgs.setDstParentId(EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getParentUniqueId());
        copyNoteArgs.setSrcDirFilePath(sb2);
        copyNoteArgs.setCopyToPageIndex(Integer.valueOf(this.fromPageIndex));
        copyNoteArgs.setCopyPageRect(originRectF);
        final PBDataContext pBDataContext = new PBDataContext(EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getProviderHolder(), docId);
        pBDataContext.setCopyNoteArgs(copyNoteArgs);
        final ReplaySubject create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        PBFactory.copyPBDataToDBObservable$default(PBFactory.INSTANCE, pBDataContext, null, 2, null).doOnNext(new C9693j()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.rli
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                InsertOtherNotePagesAction.m39487w(InsertOtherNotePagesAction.this, pBDataContext, create);
            }
        }).doOnError(new C9694k(create)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.sli
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                InsertOtherNotePagesAction.m39488x(noteFilePath);
            }
        }).subscribe();
        return create;
    }

    /* renamed from: y */
    public final Observable<?> m39495y() {
        Observable flatMap = Observable.fromIterable(this.insertPageIds).flatMap(new C9695l());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable<?> map = RxjavaKt.takeLastOne(flatMap).flatMap(new C9696m()).flatMap(new C9697n()).map(new C9698o());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: z */
    public final Observable<Map<String, ExportPdfPagesResult>> m39496z(EditorBundle editorBundle, File exportDir, List<VirtualPage> virtualPageList) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : virtualPageList) {
            if (ContentConstants.INSTANCE.isImportPDF(((VirtualPage) obj).getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentType())) {
                arrayList.add(obj);
            }
        }
        Map mapList = CollectionKt.toMapList(arrayList, new Function1<VirtualPage, String>() { // from class: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$savePagesAsPdf$pdfPagesMap$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull VirtualPage it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath();
            }
        }, new Function1<VirtualPage, VirtualPage>() { // from class: com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction$savePagesAsPdf$pdfPagesMap$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final VirtualPage invoke(@NotNull VirtualPage it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        });
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (mapList.isEmpty()) {
            Observable<Map<String, ExportPdfPagesResult>> just = Observable.just(linkedHashMap);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        String absolutePath = exportDir.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return RxjavaKt.onErrorReturnItemWithLog(new ExportPdfPagesAction(editorBundle, absolutePath, mapList).build(), linkedHashMap);
    }
}
