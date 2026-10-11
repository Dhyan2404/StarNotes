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
import com.onyx.android.sdk.universal.editor.action.erase.StrokeErasingAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J0\u0010\u000e\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b0\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;", "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;", "downToUpEraseContext", "Lio/reactivex/rxjava3/core/Observable;", "erasing", "endErase", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "pointList", "Lkotlin/Triple;", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "touchReader", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StrokeEraserHandlerAction extends BaseEraseHandlerAction {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.StrokeEraserHandlerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9293a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<TouchData> f49398f;

        public C9293a(List<TouchData> list) {
            this.f49398f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<BoxInfo, TouchPointList> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TuplesKt.m61535to(it2, StrokeEraserHandlerAction.this.collectErasePoint(it2, this.f49398f));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.StrokeEraserHandlerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9294b<T, R> implements Function {
        public C9294b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Triple<BoxInfo, NotePage, EraseArgs>> apply(@NotNull Pair<BoxInfo, TouchPointList> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StrokeEraserHandlerAction.this.m38685C(it2.getFirst(), it2.getSecond());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.StrokeEraserHandlerAction$c */
    /* loaded from: classes8.dex */
    public static final class C9295c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ RenderContext f49401f;

        /* renamed from: g */
        public final /* synthetic */ EraseContext f49402g;

        public C9295c(RenderContext renderContext, EraseContext eraseContext) {
            this.f49401f = renderContext;
            this.f49402g = eraseContext;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StrokeErasingAction> apply(@NotNull Triple<BoxInfo, NotePage, EraseArgs> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new StrokeErasingAction(StrokeEraserHandlerAction.this.getEditorBundle(), this.f49401f, this.f49402g, it2.getThird(), it2.getFirst(), it2.getSecond()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.StrokeEraserHandlerAction$d */
    /* loaded from: classes8.dex */
    public static final class C9296d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ EraseContext f49403e;

        /* renamed from: f */
        public final /* synthetic */ EraseContext f49404f;

        public C9296d(EraseContext eraseContext, EraseContext eraseContext2) {
            this.f49403e = eraseContext;
            this.f49404f = eraseContext2;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StrokeErasingAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49403e.merge(this.f49404f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.StrokeEraserHandlerAction$e */
    /* loaded from: classes8.dex */
    public static final class C9297e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EraseContext f49406f;

        public C9297e(EraseContext eraseContext) {
            this.f49406f = eraseContext;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull StrokeErasingAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StrokeEraserHandlerAction.this.display(this.f49406f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.StrokeEraserHandlerAction$f */
    /* loaded from: classes8.dex */
    public static final class C9298f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EraseContext f49407e;

        public C9298f(EraseContext eraseContext) {
            this.f49407e = eraseContext;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EraseContext apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49407e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StrokeEraserHandlerAction(@NotNull EditorBundle editorBundle, @NotNull ScribbleTouchReader touchReader) {
        super(editorBundle, touchReader);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchReader, "touchReader");
    }

    /* renamed from: C */
    public final Observable<Triple<BoxInfo, NotePage, EraseArgs>> m38685C(final BoxInfo virtualBoxInfo, final TouchPointList pointList) {
        return DocCommonActionsKt.createNoteObservable(this, new Function1<NoteBundle, Triple<? extends BoxInfo, ? extends NotePage, ? extends EraseArgs>>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.StrokeEraserHandlerAction$beforeErasing$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Triple<BoxInfo, NotePage, EraseArgs> invoke(@NotNull NoteBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new Triple<>(virtualBoxInfo, StrokeEraserHandlerAction.this.loadNotePage(it2, virtualBoxInfo), StrokeEraserHandlerAction.this.createEraseArgs(virtualBoxInfo, pointList, it2.getNoteDrawingArgs()));
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
        EraseContext createEraseContext = createEraseContext();
        RenderContext createRenderContext = createRenderContext();
        List<TouchData> erasingDataList = downToUpEraseContext.getErasingDataList();
        Observable<EraseContext> map = CommonEditorActionsKt.hitTestVisibleBoxObservable(getEditorBundle(), erasingDataList).map(new C9293a(erasingDataList)).flatMap(new C9294b()).flatMap(new C9295c(createRenderContext, createEraseContext)).doOnNext(new C9296d(downToUpEraseContext, createEraseContext)).flatMap(new C9297e(createEraseContext)).map(new C9298f(downToUpEraseContext));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
