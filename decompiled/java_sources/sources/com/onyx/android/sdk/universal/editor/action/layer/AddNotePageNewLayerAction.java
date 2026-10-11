package com.onyx.android.sdk.universal.editor.action.layer;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.request.SaveNoteModelRequest;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.layer.AddNotePageNewLayerAction;
import com.onyx.android.sdk.universal.editor.events.note.NoteLayerAddedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "", C6999h.f39688c, Constants.INTEGER_SIG, "layerId", "", "i", Constants.HASIDCALL_INDEX_SIG, "getPostChangedEvent", Constants.BOOLEAN_VALUE_SIG, "setPostChangedEvent", "(Z)V", "postChangedEvent", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Integer;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AddNotePageNewLayerAction extends RxBaseAppAction<LayerInfo> {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public final Integer layerId;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean postChangedEvent;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.AddNotePageNewLayerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9581a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ LayerInfo f49991e;

        public C9581a(LayerInfo layerInfo) {
            this.f49991e = layerInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LayerInfo apply(@NotNull SaveNoteModelRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49991e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.AddNotePageNewLayerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9582b<T, R> implements Function {
        public C9582b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LayerInfo> apply(@NotNull AddNotePageNewLayerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddNotePageNewLayerAction.this.m39314m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.AddNotePageNewLayerAction$c */
    /* loaded from: classes8.dex */
    public static final class C9583c<T, R> implements Function {

        /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.AddNotePageNewLayerAction$c$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ LayerInfo f49994e;

            public a(LayerInfo layerInfo) {
                this.f49994e = layerInfo;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final LayerInfo apply(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f49994e;
            }
        }

        public C9583c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LayerInfo> apply(@NotNull LayerInfo layer) {
            Intrinsics.checkNotNullParameter(layer, "layer");
            return DocCommonActionsKt.postVirtualDocViewInfo(AddNotePageNewLayerAction.this.getEditorBundle()).map(new a(layer));
        }
    }

    public /* synthetic */ AddNotePageNewLayerAction(EditorBundle editorBundle, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, (i & 2) != 0 ? null : num);
    }

    /* renamed from: n */
    public static final void m39313n(AddNotePageNewLayerAction this$0, LayerInfo it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new NoteLayerAddedEvent(it2));
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LayerInfo> create() {
        Observable flatMap = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C9582b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable<LayerInfo> flatMap2 = RxjavaKt.doOnNextIf(flatMap, new Function1<LayerInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.layer.AddNotePageNewLayerAction$create$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull LayerInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(AddNotePageNewLayerAction.this.getPostChangedEvent());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.p8
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                AddNotePageNewLayerAction.m39313n(AddNotePageNewLayerAction.this, (LayerInfo) obj);
            }
        }).flatMap(new C9583c());
        Intrinsics.checkNotNullExpressionValue(flatMap2, "flatMap(...)");
        return flatMap2;
    }

    public final boolean getPostChangedEvent() {
        return this.postChangedEvent;
    }

    /* renamed from: m */
    public final Observable<LayerInfo> m39314m() {
        final PageInfo pageInfo = getEditorBundle().getWorkBundle().getVirtualPolicy().ensureGlobalNotePage().getPageInfo();
        Observable<LayerInfo> map = RxBaseAppActionKt.submitRequestToNote(this, new SaveNoteModelRequest(EditorBundleKt.noteBundle(getEditorBundle()))).map(new C9581a(pageInfo.addNewLayerInfo(((Number) AnyKt.getOrElse(this.layerId, new Function0<Integer>() { // from class: com.onyx.android.sdk.universal.editor.action.layer.AddNotePageNewLayerAction$addNewLayerInfo$layerId$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(PageInfo.this.getUnusedLayerId());
            }
        })).intValue())));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setPostChangedEvent(boolean z) {
        this.postChangedEvent = z;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddNotePageNewLayerAction(@NotNull EditorBundle editorBundle, @Nullable Integer num) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.layerId = num;
        this.postChangedEvent = true;
    }
}
