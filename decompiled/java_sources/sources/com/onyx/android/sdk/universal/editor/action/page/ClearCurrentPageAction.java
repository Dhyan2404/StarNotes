package com.onyx.android.sdk.universal.editor.action.page;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.request.page.ClearNotePageRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.ClearVirtualPageRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002H\u0002J\u0014\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0007\u001a\u00020\u0005H\u0002¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/ClearCurrentPageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "Lcom/onyx/android/sdk/universal/editor/request/ClearVirtualPageRequest;", GoogleApiAvailabilityLight.f29016b, AbstractLogger.REQUEST, "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ClearCurrentPageAction extends RxBaseAppAction<ClearCurrentPageAction> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.ClearCurrentPageAction$a */
    /* loaded from: classes8.dex */
    public static final class C9654a<T, R> implements Function {
        public C9654a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull ClearVirtualPageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ClearCurrentPageAction.this.m39434l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.ClearCurrentPageAction$b */
    /* loaded from: classes8.dex */
    public static final class C9655b<T, R> implements Function {
        public C9655b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ClearCurrentPageAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ClearCurrentPageAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.ClearCurrentPageAction$c */
    /* loaded from: classes8.dex */
    public static final class C9656c<T, R> implements Function {
        public C9656c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ClearCurrentPageAction> apply(@NotNull ClearCurrentPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ClearCurrentPageAction.this.m39435m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.ClearCurrentPageAction$d */
    /* loaded from: classes8.dex */
    public static final class C9657d<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ BoxInfo f50121f;

        public C9657d(BoxInfo boxInfo) {
            this.f50121f = boxInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull ClearCurrentPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ForceRenderSliceListActionsKt.forceRenderNoteToDisplay(ClearCurrentPageAction.this, this.f50121f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.ClearCurrentPageAction$e */
    /* loaded from: classes8.dex */
    public static final class C9658e<T, R> implements Function {
        public C9658e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ClearCurrentPageAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ClearCurrentPageAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClearCurrentPageAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ClearCurrentPageAction> create() {
        Observable<ClearCurrentPageAction> map = Observable.just(this).flatMap(new C9656c()).flatMap(new C9657d(EditorBundleKt.currentVisibleBoxInfo(getEditorBundle()))).map(new C9658e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<?> m39434l(final ClearVirtualPageRequest request) {
        return DocCommonActionsKt.createNoteObservable(getEditorBundle(), new Function1<NoteBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.page.ClearCurrentPageAction$clearNotePage$1
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
                BoxInfo box;
                Intrinsics.checkNotNullParameter(it2, "it");
                VirtualPage virtualPage = ClearVirtualPageRequest.this.getVirtualPage();
                String id = (virtualPage == null || (box = virtualPage.getBox()) == null) ? null : box.getId();
                if (id == null) {
                    id = "";
                }
                new ClearNotePageRequest(it2, CollectionKt.asList(id)).execute2();
            }
        });
    }

    /* renamed from: m */
    public final Observable<ClearCurrentPageAction> m39435m() {
        Observable<ClearCurrentPageAction> map = m39436n().flatMap(new C9654a()).map(new C9655b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<ClearVirtualPageRequest> m39436n() {
        final ClearVirtualPageRequest clearVirtualPageRequest = new ClearVirtualPageRequest(getEditorBundle().getWorkBundle());
        clearVirtualPageRequest.setPageIndex(EditorBundleKt.currentPageIndex(getEditorBundle()));
        return DocCommonActionsKt.createLightCoreObservable(getEditorBundle(), new Function1<WorkBundle, ClearVirtualPageRequest>() { // from class: com.onyx.android.sdk.universal.editor.action.page.ClearCurrentPageAction$clearVirtualPage$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final ClearVirtualPageRequest invoke(@NotNull WorkBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ClearVirtualPageRequest clearVirtualPageRequest2 = ClearVirtualPageRequest.this;
                clearVirtualPageRequest2.execute2();
                return clearVirtualPageRequest2;
            }
        });
    }
}
