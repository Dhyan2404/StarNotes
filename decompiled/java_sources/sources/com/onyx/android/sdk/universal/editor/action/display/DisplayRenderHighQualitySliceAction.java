package com.onyx.android.sdk.universal.editor.action.display;

import android.graphics.Bitmap;
import android.graphics.RectF;
import androidx.core.app.NotificationCompat;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.bitmap.SafeBitmap;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.geometry.data.BoxExtraInfo;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.SaveBitmapListResult;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.onyx.android.sdk.geometry.data.SliceKt;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.data.render.NoteRenderArgs;
import com.onyx.android.sdk.note.common.data.render.NoteSliceRenderInfo;
import com.onyx.android.sdk.reader.data.ReaderRenderArgs;
import com.onyx.android.sdk.reader.request.RenderContentRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.display.DisplayRenderHighQualitySliceAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction;
import com.onyx.android.sdk.universal.editor.cache.SliceRectProviderManager;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.config.ScaleConfig;
import com.onyx.android.sdk.universal.editor.data.PageSliceInfo;
import com.onyx.android.sdk.universal.editor.display.PageHighQualityRenderHandler;
import com.onyx.android.sdk.universal.editor.display.PageRenderRequestInfo;
import com.onyx.android.sdk.universal.editor.display.RenderRequestManager;
import com.onyx.android.sdk.universal.editor.display.SliceStateManager;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u00102\u001a\u00020+\u0012\u0006\u00109\u001a\u00020\u0015\u0012\u0006\u0010@\u001a\u00020\u0002¢\u0006\u0004\bH\u0010IJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\"\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\bH\u0002J\u001a\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\bH\u0002J\u001a\u0010\u0011\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0010\u001a\u00020\bH\u0002J\u000e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0002J\b\u0010\u0016\u001a\u00020\u0015H\u0002J\b\u0010\u0018\u001a\u00020\u0017H\u0002J\u0016\u0010\u001b\u001a\u00020\u00042\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\b0\u0019H\u0002J\n\u0010\u001c\u001a\u0004\u0018\u00010\bH\u0002J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u0014\u0010 \u001a\u0006\u0012\u0002\b\u00030\u00122\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u0016\u0010!\u001a\u00020\u00042\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\b0\u0019H\u0002J\b\u0010\"\u001a\u00020\u0013H\u0002J\b\u0010$\u001a\u00020#H\u0002J\b\u0010%\u001a\u00020\u0013H\u0002J\u0010\u0010(\u001a\u00020\u00042\u0006\u0010'\u001a\u00020&H\u0002J\u0010\u0010)\u001a\u00020\u00042\u0006\u0010'\u001a\u00020&H\u0002J\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00000\u0012R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u00109\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\"\u0010@\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0018\u0010E\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010F¨\u0006J"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "displayVirtualPageBoxInfo", "", "e", "Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;", "contentRenderArgs", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;", "noteRenderArgs", "contentSlice", C6998g.f39679a, "newInfo", C6999h.f39688c, "contentNoteSlice", "u", "Lio/reactivex/rxjava3/core/Observable;", "", "s", "Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;", "j", "Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;", C4921e.f26537n, "", "outputList", "v", "i", "Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;", PrivilegedApp.f6532i, "q", "r", "p", "m", "Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;", "l", "t", "", NotificationCompat.CATEGORY_MESSAGE, GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, PrivilegedApp.f6529f, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", "b", "Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;", "getRenderHandler", "()Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;", "setRenderHandler", "(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)V", "renderHandler", "c", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualPageBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "virtualPageBoxInfo", "Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;", "d", "Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;", "cachePageSliceInfo", "renderSuccessPageSliceInfo", "Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;", "renderInfo", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDisplayRenderHighQualitySliceAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayRenderHighQualitySliceAction.kt\ncom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,290:1\n288#2,2:291\n1855#2,2:293\n*S KotlinDebug\n*F\n+ 1 DisplayRenderHighQualitySliceAction.kt\ncom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction\n*L\n234#1:291,2\n269#1:293,2\n*E\n"})
/* loaded from: classes8.dex */
public final class DisplayRenderHighQualitySliceAction {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public PageHighQualityRenderHandler renderHandler;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public BoxInfo virtualPageBoxInfo;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public PageSliceInfo cachePageSliceInfo;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public PageSliceInfo renderSuccessPageSliceInfo;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public PageRenderRequestInfo renderInfo;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.display.DisplayRenderHighQualitySliceAction$a */
    /* loaded from: classes8.dex */
    public static final class C8615a<T, R> implements Function {
        public C8615a() {
        }

        /* renamed from: a */
        public final void m37535a(@NotNull DisplayRenderHighQualitySliceAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DisplayRenderHighQualitySliceAction displayRenderHighQualitySliceAction = DisplayRenderHighQualitySliceAction.this;
            displayRenderHighQualitySliceAction.m37517e(displayRenderHighQualitySliceAction.getVirtualPageBoxInfo());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37535a((DisplayRenderHighQualitySliceAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.display.DisplayRenderHighQualitySliceAction$b */
    /* loaded from: classes8.dex */
    public static final class C8616b<T, R> implements Function {
        public C8616b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DisplayRenderHighQualitySliceAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayRenderHighQualitySliceAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.display.DisplayRenderHighQualitySliceAction$c */
    /* loaded from: classes8.dex */
    public static final class C8617c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ PageRenderRequestInfo f48223f;

        public C8617c(PageRenderRequestInfo pageRenderRequestInfo) {
            this.f48223f = pageRenderRequestInfo;
        }

        /* renamed from: a */
        public final void m37537a(@NotNull DisplayRenderHighQualitySliceAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DisplayRenderHighQualitySliceAction.this.m37529q(this.f48223f);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37537a((DisplayRenderHighQualitySliceAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.display.DisplayRenderHighQualitySliceAction$d */
    /* loaded from: classes8.dex */
    public static final class C8618d<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ PageRenderRequestInfo f48225f;

        public C8618d(PageRenderRequestInfo pageRenderRequestInfo) {
            this.f48225f = pageRenderRequestInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayRenderHighQualitySliceAction.this.m37530r(this.f48225f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.display.DisplayRenderHighQualitySliceAction$e */
    /* loaded from: classes8.dex */
    public static final class C8619e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ PageRenderRequestInfo f48227f;

        public C8619e(PageRenderRequestInfo pageRenderRequestInfo) {
            this.f48227f = pageRenderRequestInfo;
        }

        /* renamed from: a */
        public final void m37539a(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DisplayRenderHighQualitySliceAction.this.m37528p(this.f48227f.getOutputSliceList());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37539a(obj);
            return Unit.INSTANCE;
        }
    }

    @SourceDebugExtension({"SMAP\nDisplayRenderHighQualitySliceAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayRenderHighQualitySliceAction.kt\ncom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$renderPage$4\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,290:1\n1#2:291\n1747#3,3:292\n*S KotlinDebug\n*F\n+ 1 DisplayRenderHighQualitySliceAction.kt\ncom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$renderPage$4\n*L\n225#1:292,3\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.display.DisplayRenderHighQualitySliceAction$f */
    /* loaded from: classes8.dex */
    public static final class C8620f<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ PageRenderRequestInfo f48229f;

        /* renamed from: g */
        public final /* synthetic */ String f48230g;

        public C8620f(PageRenderRequestInfo pageRenderRequestInfo, String str) {
            this.f48229f = pageRenderRequestInfo;
            this.f48230g = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Unit it2) {
            List mutableList;
            Intrinsics.checkNotNullParameter(it2, "it");
            DisplayRenderHighQualitySliceAction.this.m37523k().removePageRenderRequestInfo(this.f48229f);
            boolean z = true;
            if (this.f48229f.isAbort() || DisplayRenderHighQualitySliceAction.this.m37525m()) {
                DisplayRenderHighQualitySliceAction.this.m37526n("isAbort, isPinchZooming = " + DisplayRenderHighQualitySliceAction.this.m37525m() + ", " + this.f48230g);
                return Boolean.FALSE;
            }
            List<SliceInfo> renderingSliceList = this.f48229f.getRenderingSliceList();
            List<SliceInfo> outputSliceList = this.f48229f.getOutputSliceList();
            CommonEditorActionsKt.updateSliceListState(outputSliceList, SliceInfo.State.IN_CACHE);
            SaveBitmapListResult saveBitmapListToCache = DisplayRenderHighQualitySliceAction.this.m37524l().saveBitmapListToCache(outputSliceList);
            if (!saveBitmapListToCache.isSuccess()) {
                DisplayRenderHighQualitySliceAction.this.m37527o("saveBitmapListResult fail, " + saveBitmapListToCache.getDebugString());
                return Boolean.FALSE;
            }
            DisplayRenderHighQualitySliceAction.this.m37534v(outputSliceList);
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) renderingSliceList);
            mutableList.removeAll(outputSliceList);
            String str = "inputSize = " + renderingSliceList.size() + ", outputSize = " + outputSliceList.size() + ", failAndCancelSize = " + mutableList.size() + ", " + this.f48230g;
            if (outputSliceList.size() != renderingSliceList.size()) {
                DisplayRenderHighQualitySliceAction.this.m37527o(str);
            } else {
                DisplayRenderHighQualitySliceAction.this.m37526n(str);
            }
            List<SliceInfo> list = outputSliceList;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<T> it3 = list.iterator();
                while (it3.hasNext()) {
                    if (((SliceInfo) it3.next()).isContentNote()) {
                        break;
                    }
                }
            }
            z = false;
            return Boolean.valueOf(z);
        }
    }

    public DisplayRenderHighQualitySliceAction(@NotNull EditorBundle editorBundle, @NotNull PageHighQualityRenderHandler renderHandler, @NotNull BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(renderHandler, "renderHandler");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        this.editorBundle = editorBundle;
        this.renderHandler = renderHandler;
        this.virtualPageBoxInfo = virtualPageBoxInfo;
    }

    /* renamed from: c */
    public static final void m37515c(DisplayRenderHighQualitySliceAction this$0, Unit it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.renderHandler.refreshPage(this$0.cachePageSliceInfo);
    }

    /* renamed from: d */
    public static final void m37516d(DisplayRenderHighQualitySliceAction this$0, Object it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.renderHandler.refreshPage(this$0.renderSuccessPageSliceInfo);
    }

    @NotNull
    public final Observable<DisplayRenderHighQualitySliceAction> build() {
        Observable map = Observable.just(this).map(new C8615a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable<DisplayRenderHighQualitySliceAction> map2 = RxjavaKt.doOnNextIf(RxjavaKt.flatMapIf(RxjavaKt.doOnNextIf(map, new Function1<Unit, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.display.DisplayRenderHighQualitySliceAction$build$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Unit it2) {
                PageSliceInfo pageSliceInfo;
                Intrinsics.checkNotNullParameter(it2, "it");
                pageSliceInfo = DisplayRenderHighQualitySliceAction.this.cachePageSliceInfo;
                return Boolean.valueOf(pageSliceInfo != null);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.s5f
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DisplayRenderHighQualitySliceAction.m37515c(DisplayRenderHighQualitySliceAction.this, (Unit) obj);
            }
        }), new Function1<Unit, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.display.DisplayRenderHighQualitySliceAction$build$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Unit it2) {
                PageRenderRequestInfo pageRenderRequestInfo;
                Intrinsics.checkNotNullParameter(it2, "it");
                pageRenderRequestInfo = DisplayRenderHighQualitySliceAction.this.renderInfo;
                return Boolean.valueOf(pageRenderRequestInfo != null);
            }
        }, new Function1<Unit, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.display.DisplayRenderHighQualitySliceAction$build$5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Unit it2) {
                Observable<? extends Object> m37531s;
                Intrinsics.checkNotNullParameter(it2, "it");
                m37531s = DisplayRenderHighQualitySliceAction.this.m37531s();
                return m37531s;
            }
        }), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.display.DisplayRenderHighQualitySliceAction$build$6
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                PageSliceInfo pageSliceInfo;
                Intrinsics.checkNotNullParameter(it2, "it");
                pageSliceInfo = DisplayRenderHighQualitySliceAction.this.renderSuccessPageSliceInfo;
                return Boolean.valueOf(pageSliceInfo != null);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.t5f
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DisplayRenderHighQualitySliceAction.m37516d(DisplayRenderHighQualitySliceAction.this, obj);
            }
        }).map(new C8616b());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    /* renamed from: e */
    public final void m37517e(BoxInfo displayVirtualPageBoxInfo) {
        if (ScaleConfig.INSTANCE.isEnabledHighQuality(displayVirtualPageBoxInfo, this.renderHandler.viewportRectF())) {
            m37526n("computeContentAndNoteSliceList, id = " + displayVirtualPageBoxInfo.getId());
            ReaderRenderArgs readerRenderArgs = new ReaderRenderArgs(displayVirtualPageBoxInfo.getId(), null, 0.0f, null, null, null, null, 126, null);
            SliceInfo m37518f = m37518f(displayVirtualPageBoxInfo, readerRenderArgs);
            NoteRenderArgs noteRenderArgs = new NoteRenderArgs(displayVirtualPageBoxInfo);
            m37519g(displayVirtualPageBoxInfo, noteRenderArgs, m37518f);
            if (readerRenderArgs.isNeedRender() || noteRenderArgs.isNeedRender()) {
                this.renderInfo = new PageRenderRequestInfo(displayVirtualPageBoxInfo, readerRenderArgs, noteRenderArgs);
            }
        }
    }

    /* renamed from: f */
    public final SliceInfo m37518f(BoxInfo displayVirtualPageBoxInfo, ReaderRenderArgs contentRenderArgs) {
        BoxInfo copy;
        BoxInfo contentInfo;
        BoxExtraInfo extraInfo;
        List<SliceInfo> mutableListOf;
        if (!m37532t() || (contentInfo = (copy = displayVirtualPageBoxInfo.copy()).getContentInfo()) == null || (extraInfo = displayVirtualPageBoxInfo.getExtraInfo()) == null) {
            return null;
        }
        copy.offsetToOrigin();
        RectF collectVisibleContentSliceRect = SliceRectProviderManager.INSTANCE.getInstance().getPageHighQualityProvider().collectVisibleContentSliceRect(contentInfo, this.renderHandler.viewportRectF());
        if (collectVisibleContentSliceRect.isEmpty()) {
            return null;
        }
        SliceInfo createContent = SliceInfo.INSTANCE.createContent(displayVirtualPageBoxInfo.getId(), contentInfo, extraInfo.getContentPath(), RectFKt.copy(collectVisibleContentSliceRect));
        createContent.setHighQuality(true);
        SliceInfo ensureSliceCacheInfo = m37524l().ensureSliceCacheInfo(createContent);
        if (ensureSliceCacheInfo.isCanDisplay()) {
            return ensureSliceCacheInfo;
        }
        if (!ensureSliceCacheInfo.isCanDraw()) {
            return null;
        }
        SliceInfo copy2 = ensureSliceCacheInfo.copy();
        contentRenderArgs.setPath(extraInfo.getContentPath());
        contentRenderArgs.setScale(contentInfo.getActualScale());
        contentRenderArgs.setDisplayRectF(contentInfo.getBox());
        contentRenderArgs.setPosition(contentInfo.getId());
        contentRenderArgs.setPageRect(RectFKt.copy(contentInfo.getOriginRectF()));
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(copy2);
        contentRenderArgs.setSliceInfoList(mutableListOf);
        return copy2;
    }

    /* renamed from: g */
    public final void m37519g(BoxInfo displayVirtualPageBoxInfo, NoteRenderArgs noteRenderArgs, SliceInfo contentSlice) {
        BoxInfo copy = displayVirtualPageBoxInfo.copy();
        BoxInfo noteInfo = copy.getNoteInfo();
        if (noteInfo == null) {
            return;
        }
        copy.offsetToOrigin();
        RectF collectVisibleNoteSliceRect = SliceRectProviderManager.INSTANCE.getInstance().getPageHighQualityProvider().collectVisibleNoteSliceRect(copy, this.renderHandler.viewportRectF());
        if (collectVisibleNoteSliceRect.isEmpty()) {
            return;
        }
        SliceInfo createContentNote = SliceInfo.INSTANCE.createContentNote(noteInfo.copy(), RectFKt.copy(collectVisibleNoteSliceRect));
        createContentNote.setHighQuality(true);
        SliceInfo m37520h = m37520h(createContentNote, contentSlice);
        if (m37520h.isCanDisplay()) {
            m37533u(contentSlice, m37520h);
        } else if (m37520h.isCanDraw()) {
            SliceInfo copy2 = m37520h.copy();
            noteRenderArgs.setShowExcerptIndicator(MMKVNote.INSTANCE.getExcerptShapeAttrOption().get().getShowIndicator());
            noteRenderArgs.setSupportRenderPageContentBitmap(m37532t());
            noteRenderArgs.getSliceRenderInfoList().add(new NoteSliceRenderInfo(copy2, contentSlice));
        }
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final PageHighQualityRenderHandler getRenderHandler() {
        return this.renderHandler;
    }

    @NotNull
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }

    /* renamed from: h */
    public final SliceInfo m37520h(SliceInfo newInfo, SliceInfo contentSlice) {
        SliceInfo ensureSliceCacheInfo = m37524l().ensureSliceCacheInfo(newInfo);
        boolean isEnabledAnimationUpdateEditorView = EditorBundleKt.isEnabledAnimationUpdateEditorView(this.editorBundle);
        if (m37532t() && !isEnabledAnimationUpdateEditorView && !SliceKt.isValid(contentSlice) && ensureSliceCacheInfo.isCanDisplay()) {
            StringBuilder sb = new StringBuilder();
            sb.append("contentInvalid, contentNote valid, render page again\n, content = ");
            sb.append(contentSlice != null ? contentSlice.getState() : null);
            sb.append("\n, contentNote = ");
            sb.append(ensureSliceCacheInfo.getState());
            m37526n(sb.toString());
            ensureSliceCacheInfo.setSafeBitmap(new SafeBitmap());
            ensureSliceCacheInfo.updateState(SliceInfo.State.NO_CACHE);
        }
        return ensureSliceCacheInfo;
    }

    /* renamed from: i */
    public final SliceInfo m37521i() {
        Object firstOrNull;
        if (!m37532t()) {
            return null;
        }
        PageRenderRequestInfo pageRenderRequestInfo = this.renderInfo;
        if (pageRenderRequestInfo == null) {
            m37527o("renderInfo null, contentSlice null");
            return null;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) pageRenderRequestInfo.getNoteRenderArgs().getSliceRenderInfoList());
        NoteSliceRenderInfo noteSliceRenderInfo = (NoteSliceRenderInfo) firstOrNull;
        SliceInfo contentCacheSlice = noteSliceRenderInfo != null ? noteSliceRenderInfo.getContentCacheSlice() : null;
        if (contentCacheSlice == null) {
            m37526n("id = " + this.virtualPageBoxInfo.getId() + ", contentSlice null, maybe margin region?");
        }
        return contentCacheSlice;
    }

    /* renamed from: j */
    public final PageHighQualityRenderHandler m37522j() {
        return this.renderHandler;
    }

    /* renamed from: k */
    public final RenderRequestManager m37523k() {
        return m37522j().renderRequestManager();
    }

    /* renamed from: l */
    public final SliceStateManager m37524l() {
        return m37522j().getSliceStateManager();
    }

    /* renamed from: m */
    public final boolean m37525m() {
        return EditorBundleKt.handlerManager(this.editorBundle).getTouchStateInfo().getIsPinchZooming();
    }

    /* renamed from: n */
    public final void m37526n(String msg) {
    }

    /* renamed from: o */
    public final void m37527o(String msg) {
        LogUtils.wTag(AnyKt.toSimpleNameString(this), msg);
    }

    /* renamed from: p */
    public final void m37528p(List<SliceInfo> outputList) {
        Iterator<T> it2 = outputList.iterator();
        while (it2.hasNext()) {
            Bitmap bitmap = ((SliceInfo) it2.next()).getSafeBitmap().getBitmap();
            if (bitmap != null) {
                bitmap.prepareToDraw();
            }
        }
    }

    /* renamed from: q */
    public final void m37529q(PageRenderRequestInfo info) {
        Object m72621constructorimpl;
        RenderContentRequest contentRequest = info.getContentRequest();
        if (contentRequest != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                contentRequest.execute2();
                m72621constructorimpl = Result.m72621constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                m72621constructorimpl = Result.m72621constructorimpl(ResultKt.createFailure(th));
            }
            Result.m72620boximpl(m72621constructorimpl);
        }
    }

    /* renamed from: r */
    public final Observable<?> m37530r(PageRenderRequestInfo info) {
        RenderNotePageAction noteAction = info.getNoteAction();
        if (noteAction != null) {
            return RxjavaKt.onErrorReturnItemWithLog(noteAction.build(), noteAction);
        }
        Observable<?> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: s */
    public final Observable<Boolean> m37531s() {
        PageRenderRequestInfo pageRenderRequestInfo = this.renderInfo;
        if (pageRenderRequestInfo == null) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        String str = "id = " + pageRenderRequestInfo.getVirtualPageBoxInfo().getId() + ", scale = " + pageRenderRequestInfo.getVirtualPageBoxInfo().getActualScale();
        m37526n("renderPage, " + str);
        if (pageRenderRequestInfo.getContentRenderArgs().isNeedRender()) {
            pageRenderRequestInfo.setContentRequest(new RenderContentRequest(EditorBundleKt.readerBundle(this.editorBundle), pageRenderRequestInfo.getContentRenderArgs()));
        }
        if (pageRenderRequestInfo.getNoteRenderArgs().isNeedRender()) {
            pageRenderRequestInfo.setNoteAction(new RenderNotePageAction(this.editorBundle, pageRenderRequestInfo.getNoteRenderArgs()));
        }
        m37523k().addPageRenderRequestInfo(pageRenderRequestInfo);
        Observable<Boolean> map = Observable.just(this).observeOn(EditorBundleKt.readerScheduler(this.editorBundle)).map(new C8617c(pageRenderRequestInfo)).observeOn(EditorBundleKt.noteScheduler(this.editorBundle)).flatMap(new C8618d(pageRenderRequestInfo)).observeOn(EditorBundleKt.noteScheduler(this.editorBundle)).map(new C8619e(pageRenderRequestInfo)).delay(AppConfig.INSTANCE.getPrepareToDrawTimeMills(), TimeUnit.MILLISECONDS).observeOn(AndroidSchedulers.mainThread()).map(new C8620f(pageRenderRequestInfo, str));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }

    public final void setRenderHandler(@NotNull PageHighQualityRenderHandler pageHighQualityRenderHandler) {
        Intrinsics.checkNotNullParameter(pageHighQualityRenderHandler, "<set-?>");
        this.renderHandler = pageHighQualityRenderHandler;
    }

    public final void setVirtualPageBoxInfo(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<set-?>");
        this.virtualPageBoxInfo = boxInfo;
    }

    /* renamed from: t */
    public final boolean m37532t() {
        return EditorBundleKt.getUiFeature(this.editorBundle).supportRenderPageContentBitmap();
    }

    /* renamed from: u */
    public final void m37533u(SliceInfo contentSlice, SliceInfo contentNoteSlice) {
        if (m37532t() && contentSlice == null) {
            m37527o("id = " + this.virtualPageBoxInfo.getId() + ", contentNote hitCache, contentSlice null");
        }
        this.cachePageSliceInfo = PageSliceInfo.INSTANCE.createDisplayInfo(this.virtualPageBoxInfo, contentNoteSlice, contentSlice);
    }

    /* renamed from: v */
    public final void m37534v(List<SliceInfo> outputList) {
        Object obj;
        Iterator<T> it2 = outputList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (((SliceInfo) obj).isContentNote()) {
                    break;
                }
            }
        }
        SliceInfo sliceInfo = (SliceInfo) obj;
        if (sliceInfo == null) {
            return;
        }
        this.renderSuccessPageSliceInfo = PageSliceInfo.INSTANCE.createDisplayInfo(this.virtualPageBoxInfo, sliceInfo, m37521i());
    }
}
