package com.onyx.android.sdk.universal.editor.action.handler;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.erase.EraseArgs;
import com.onyx.android.sdk.note.common.data.erase.EraseContext;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.onyx.android.sdk.universal.editor.request.erase.OverlayErasingRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J.\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0002¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;", "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;", "downToUpEraseContext", "Lio/reactivex/rxjava3/core/Observable;", "erasing", "endErase", "eraseContext", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "pointList", "Lcom/onyx/android/sdk/universal/editor/request/erase/OverlayErasingRequest;", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "touchReader", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class OverlayEraserHandlerAction extends BaseEraseHandlerAction {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.OverlayEraserHandlerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9197a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<TouchData> f49219f;

        public C9197a(List<TouchData> list) {
            this.f49219f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<BoxInfo, TouchPointList> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TuplesKt.m61535to(it2, OverlayEraserHandlerAction.this.collectErasePoint(it2, this.f49219f));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.OverlayEraserHandlerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9198b<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EraseContext f49221f;

        /* renamed from: g */
        public final /* synthetic */ RenderContext f49222g;

        public C9198b(EraseContext eraseContext, RenderContext renderContext) {
            this.f49221f = eraseContext;
            this.f49222g = renderContext;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OverlayErasingRequest> apply(@NotNull Pair<BoxInfo, TouchPointList> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OverlayEraserHandlerAction.this.m38504C(this.f49221f, this.f49222g, it2.getFirst(), it2.getSecond());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.OverlayEraserHandlerAction$c */
    /* loaded from: classes8.dex */
    public static final class C9199c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ EraseContext f49223e;

        /* renamed from: f */
        public final /* synthetic */ EraseContext f49224f;

        public C9199c(EraseContext eraseContext, EraseContext eraseContext2) {
            this.f49223e = eraseContext;
            this.f49224f = eraseContext2;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OverlayErasingRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49223e.merge(this.f49224f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.OverlayEraserHandlerAction$d */
    /* loaded from: classes8.dex */
    public static final class C9200d<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ EraseContext f49226f;

        public C9200d(EraseContext eraseContext) {
            this.f49226f = eraseContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OverlayErasingRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OverlayEraserHandlerAction.this.display(this.f49226f).subscribe();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.OverlayEraserHandlerAction$e */
    /* loaded from: classes8.dex */
    public static final class C9201e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EraseContext f49227e;

        public C9201e(EraseContext eraseContext) {
            this.f49227e = eraseContext;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EraseContext apply(@NotNull OverlayErasingRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49227e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OverlayEraserHandlerAction(@NotNull EditorBundle editorBundle, @NotNull ScribbleTouchReader touchReader) {
        super(editorBundle, touchReader);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchReader, "touchReader");
    }

    /* renamed from: C */
    public final Observable<OverlayErasingRequest> m38504C(final EraseContext eraseContext, final RenderContext renderContext, final BoxInfo virtualBoxInfo, final TouchPointList pointList) {
        return DocCommonActionsKt.createNoteObservable(this, new Function1<NoteBundle, OverlayErasingRequest>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.OverlayEraserHandlerAction$overlayErasing$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final OverlayErasingRequest invoke(@NotNull NoteBundle noteBundle) {
                Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
                EraseArgs createEraseArgs = OverlayEraserHandlerAction.this.createEraseArgs(virtualBoxInfo, pointList, noteBundle.getNoteDrawingArgs());
                NotePage loadNotePage = OverlayEraserHandlerAction.this.loadNotePage(noteBundle, virtualBoxInfo);
                OverlayErasingRequest overlayErasingRequest = new OverlayErasingRequest(OverlayEraserHandlerAction.this.getEditorBundle().getWorkBundle(), renderContext, createEraseArgs, eraseContext);
                overlayErasingRequest.setNotePage(loadNotePage);
                overlayErasingRequest.execute2();
                eraseContext.unionEraseRect(overlayErasingRequest.getEraseRect());
                return overlayErasingRequest;
            }
        });
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction
    @NotNull
    public Observable<EraseContext> endErase(@NotNull EraseContext downToUpEraseContext) {
        Intrinsics.checkNotNullParameter(downToUpEraseContext, "downToUpEraseContext");
        return endEraseImpl(downToUpEraseContext);
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction
    @NotNull
    public Observable<EraseContext> erasing(@NotNull EraseContext downToUpEraseContext) {
        Intrinsics.checkNotNullParameter(downToUpEraseContext, "downToUpEraseContext");
        if (getDown() == null) {
            Observable<EraseContext> just = Observable.just(downToUpEraseContext);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        List<TouchData> erasingDataList = downToUpEraseContext.getErasingDataList();
        RenderContext createRenderContext = createRenderContext();
        EraseContext createEraseContext = createEraseContext();
        Observable<EraseContext> map = CommonEditorActionsKt.hitTestVisibleBoxObservable(getEditorBundle(), erasingDataList).map(new C9197a(erasingDataList)).flatMap(new C9198b(createEraseContext, createRenderContext)).doOnNext(new C9199c(downToUpEraseContext, createEraseContext)).doOnNext(new C9200d(createEraseContext)).map(new C9201e(downToUpEraseContext));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
