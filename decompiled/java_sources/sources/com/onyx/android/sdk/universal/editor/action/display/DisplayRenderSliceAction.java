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
import com.onyx.android.sdk.universal.editor.action.display.DisplayRenderSliceAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction;
import com.onyx.android.sdk.universal.editor.cache.SliceRectProviderManager;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.config.ScaleConfig;
import com.onyx.android.sdk.universal.editor.data.PageSliceInfo;
import com.onyx.android.sdk.universal.editor.display.PageNormalRenderHandler;
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
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u00103\u001a\u000200\u0012\u0006\u00106\u001a\u00020\"\u0012\u0006\u0010=\u001a\u00020\u0002\u0012\b\b\u0002\u0010A\u001a\u00020>¢\u0006\u0004\bH\u0010IJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J*\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u001a\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\bH\u0002J\"\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0011\u001a\u00020\u0002H\u0002J\"\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00022\b\u0010\f\u001a\u0004\u0018\u00010\bH\u0002J\u0018\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0002H\u0002J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0002H\u0002J\u000e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0002J\b\u0010\u001d\u001a\u00020\u001cH\u0002J\u0016\u0010 \u001a\u00020\u00042\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\b0\u001eH\u0002J\n\u0010!\u001a\u0004\u0018\u00010\bH\u0002J\b\u0010#\u001a\u00020\"H\u0002J\u0010\u0010%\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020$H\u0002J\u0014\u0010&\u001a\u0006\u0012\u0002\b\u00030\u00192\u0006\u0010\u0010\u001a\u00020$H\u0002J\u0016\u0010'\u001a\u00020\u00042\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\b0\u001eH\u0002J\b\u0010)\u001a\u00020(H\u0002J\b\u0010*\u001a\u00020\u001aH\u0002J\u0010\u0010-\u001a\u00020\u00042\u0006\u0010,\u001a\u00020+H\u0002J\u0010\u0010.\u001a\u00020\u00042\u0006\u0010,\u001a\u00020+H\u0002J\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00000\u0019R\u0016\u00103\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00106\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\"\u0010=\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u0016\u0010A\u001a\u00020>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0018\u0010D\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010CR\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010F¨\u0006J"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "displayVirtualPageBoxInfo", "", "e", "Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;", "contentRenderArgs", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;", "noteRenderArgs", "contentSlice", C6998g.f39679a, "newInfo", C6999h.f39688c, PrivilegedApp.f6532i, "displayNoteInfo", "u", "cacheSlice", "t", "readerRenderArgs", "renderVirtualPageBoxInfo", "v", "w", "Lio/reactivex/rxjava3/core/Observable;", "", "r", "Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;", C4921e.f26537n, "", "outputList", "x", "i", "Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;", "j", "Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;", "p", "q", C4921e.f26528e, "Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;", "l", "s", "", NotificationCompat.CATEGORY_MESSAGE, "m", GoogleApiAvailabilityLight.f29016b, PrivilegedApp.f6529f, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "b", "Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;", "renderHandler", "c", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualPageBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "virtualPageBoxInfo", "", "d", "F", "renderMaxScale", "Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;", "Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;", "cachePageSliceInfo", "renderSuccessPageSliceInfo", "Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;", "renderInfo", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDisplayRenderSliceAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayRenderSliceAction.kt\ncom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,345:1\n288#2,2:346\n1855#2,2:348\n*S KotlinDebug\n*F\n+ 1 DisplayRenderSliceAction.kt\ncom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction\n*L\n287#1:346,2\n325#1:348,2\n*E\n"})
/* loaded from: classes8.dex */
public final class DisplayRenderSliceAction {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public PageNormalRenderHandler renderHandler;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public BoxInfo virtualPageBoxInfo;

    /* renamed from: d, reason: from kotlin metadata */
    public float renderMaxScale;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public PageSliceInfo cachePageSliceInfo;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public PageSliceInfo renderSuccessPageSliceInfo;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public PageRenderRequestInfo renderInfo;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SliceInfo.State.values().length];
            try {
                iArr[SliceInfo.State.IN_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SliceInfo.State.DISPLAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SliceInfo.State.RENDERING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SliceInfo.State.NO_CACHE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.display.DisplayRenderSliceAction$a */
    /* loaded from: classes8.dex */
    public static final class C8621a<T, R> implements Function {
        public C8621a() {
        }

        /* renamed from: a */
        public final void m37565a(@NotNull DisplayRenderSliceAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DisplayRenderSliceAction displayRenderSliceAction = DisplayRenderSliceAction.this;
            displayRenderSliceAction.m37545e(displayRenderSliceAction.getVirtualPageBoxInfo());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37565a((DisplayRenderSliceAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.display.DisplayRenderSliceAction$b */
    /* loaded from: classes8.dex */
    public static final class C8622b<T, R> implements Function {
        public C8622b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DisplayRenderSliceAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayRenderSliceAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.display.DisplayRenderSliceAction$c */
    /* loaded from: classes8.dex */
    public static final class C8623c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ PageRenderRequestInfo f48241f;

        public C8623c(PageRenderRequestInfo pageRenderRequestInfo) {
            this.f48241f = pageRenderRequestInfo;
        }

        /* renamed from: a */
        public final void m37567a(@NotNull DisplayRenderSliceAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DisplayRenderSliceAction.this.m37556p(this.f48241f);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37567a((DisplayRenderSliceAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.display.DisplayRenderSliceAction$d */
    /* loaded from: classes8.dex */
    public static final class C8624d<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ PageRenderRequestInfo f48243f;

        public C8624d(PageRenderRequestInfo pageRenderRequestInfo) {
            this.f48243f = pageRenderRequestInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayRenderSliceAction.this.m37557q(this.f48243f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.display.DisplayRenderSliceAction$e */
    /* loaded from: classes8.dex */
    public static final class C8625e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ PageRenderRequestInfo f48245f;

        public C8625e(PageRenderRequestInfo pageRenderRequestInfo) {
            this.f48245f = pageRenderRequestInfo;
        }

        /* renamed from: a */
        public final void m37569a(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DisplayRenderSliceAction.this.m37555o(this.f48245f.getOutputSliceList());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37569a(obj);
            return Unit.INSTANCE;
        }
    }

    @SourceDebugExtension({"SMAP\nDisplayRenderSliceAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayRenderSliceAction.kt\ncom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$renderPage$4\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,345:1\n1#2:346\n1747#3,3:347\n*S KotlinDebug\n*F\n+ 1 DisplayRenderSliceAction.kt\ncom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$renderPage$4\n*L\n279#1:347,3\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.display.DisplayRenderSliceAction$f */
    /* loaded from: classes8.dex */
    public static final class C8626f<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ PageRenderRequestInfo f48247f;

        /* renamed from: g */
        public final /* synthetic */ String f48248g;

        public C8626f(PageRenderRequestInfo pageRenderRequestInfo, String str) {
            this.f48247f = pageRenderRequestInfo;
            this.f48248g = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Unit it2) {
            List mutableList;
            Intrinsics.checkNotNullParameter(it2, "it");
            DisplayRenderSliceAction.this.m37551k().removePageRenderRequestInfo(this.f48247f);
            List<SliceInfo> renderingSliceList = this.f48247f.getRenderingSliceList();
            List<SliceInfo> outputSliceList = this.f48247f.getOutputSliceList();
            CommonEditorActionsKt.updateSliceListState(outputSliceList, SliceInfo.State.IN_CACHE);
            SaveBitmapListResult saveBitmapListToCache = DisplayRenderSliceAction.this.m37552l().saveBitmapListToCache(outputSliceList);
            if (this.f48247f.isAbort()) {
                DisplayRenderSliceAction.this.m37553m("isAbort, inputSliceList = " + renderingSliceList.size() + ", outputList = " + outputSliceList.size() + ", " + this.f48248g);
                return Boolean.FALSE;
            }
            if (!saveBitmapListToCache.isSuccess()) {
                DisplayRenderSliceAction.this.m37554n("saveBitmapListResult fail, " + saveBitmapListToCache.getDebugString());
                return Boolean.FALSE;
            }
            DisplayRenderSliceAction.this.m37564x(outputSliceList);
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) renderingSliceList);
            mutableList.removeAll(outputSliceList);
            String str = "inputSize = " + renderingSliceList.size() + ", outputSize = " + outputSliceList.size() + ", failAndCancelSize = " + mutableList.size() + ", " + this.f48248g;
            if (outputSliceList.size() != renderingSliceList.size()) {
                DisplayRenderSliceAction.this.m37554n(str);
            } else {
                DisplayRenderSliceAction.this.m37553m(str);
            }
            List<SliceInfo> list = outputSliceList;
            boolean z = false;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<T> it3 = list.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    }
                    if (((SliceInfo) it3.next()).isContentNote()) {
                        z = true;
                        break;
                    }
                }
            }
            return Boolean.valueOf(z);
        }
    }

    public DisplayRenderSliceAction(@NotNull EditorBundle editorBundle, @NotNull PageNormalRenderHandler renderHandler, @NotNull BoxInfo virtualPageBoxInfo, float f) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(renderHandler, "renderHandler");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        this.editorBundle = editorBundle;
        this.renderHandler = renderHandler;
        this.virtualPageBoxInfo = virtualPageBoxInfo;
        this.renderMaxScale = f;
    }

    /* renamed from: c */
    public static final void m37543c(DisplayRenderSliceAction this$0, Unit it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.renderHandler.refreshPage(this$0.cachePageSliceInfo);
    }

    /* renamed from: d */
    public static final void m37544d(DisplayRenderSliceAction this$0, Object it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        PageSliceInfo pageSliceInfo = this$0.renderSuccessPageSliceInfo;
        if (pageSliceInfo != null) {
            this$0.renderHandler.refreshPageAfterRender(pageSliceInfo);
        }
    }

    @NotNull
    public final Observable<DisplayRenderSliceAction> build() {
        Observable map = Observable.just(this).map(new C8621a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable<DisplayRenderSliceAction> map2 = RxjavaKt.doOnNextIf(RxjavaKt.flatMapIf(RxjavaKt.doOnNextIf(map, new Function1<Unit, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.display.DisplayRenderSliceAction$build$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Unit it2) {
                PageSliceInfo pageSliceInfo;
                Intrinsics.checkNotNullParameter(it2, "it");
                pageSliceInfo = DisplayRenderSliceAction.this.cachePageSliceInfo;
                return Boolean.valueOf(pageSliceInfo != null);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.u5f
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DisplayRenderSliceAction.m37543c(DisplayRenderSliceAction.this, (Unit) obj);
            }
        }), new Function1<Unit, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.display.DisplayRenderSliceAction$build$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Unit it2) {
                PageRenderRequestInfo pageRenderRequestInfo;
                Intrinsics.checkNotNullParameter(it2, "it");
                pageRenderRequestInfo = DisplayRenderSliceAction.this.renderInfo;
                return Boolean.valueOf(pageRenderRequestInfo != null);
            }
        }, new Function1<Unit, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.display.DisplayRenderSliceAction$build$5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Unit it2) {
                Observable<? extends Object> m37558r;
                Intrinsics.checkNotNullParameter(it2, "it");
                m37558r = DisplayRenderSliceAction.this.m37558r();
                return m37558r;
            }
        }), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.display.DisplayRenderSliceAction$build$6
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                PageSliceInfo pageSliceInfo;
                Intrinsics.checkNotNullParameter(it2, "it");
                pageSliceInfo = DisplayRenderSliceAction.this.renderSuccessPageSliceInfo;
                return Boolean.valueOf(pageSliceInfo != null);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.v5f
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DisplayRenderSliceAction.m37544d(DisplayRenderSliceAction.this, obj);
            }
        }).map(new C8622b());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    /* renamed from: e */
    public final void m37545e(BoxInfo displayVirtualPageBoxInfo) {
        m37553m("computeContentAndNoteSliceList, id = " + displayVirtualPageBoxInfo.getId());
        ReaderRenderArgs readerRenderArgs = new ReaderRenderArgs(displayVirtualPageBoxInfo.getId(), null, 0.0f, null, null, null, null, 126, null);
        SliceInfo m37546f = m37546f(displayVirtualPageBoxInfo, readerRenderArgs);
        NoteRenderArgs noteRenderArgs = new NoteRenderArgs(displayVirtualPageBoxInfo);
        m37547g(displayVirtualPageBoxInfo, noteRenderArgs, m37546f, readerRenderArgs);
        if (readerRenderArgs.isNeedRender() || noteRenderArgs.isNeedRender()) {
            this.renderInfo = new PageRenderRequestInfo(displayVirtualPageBoxInfo, readerRenderArgs, noteRenderArgs);
        }
    }

    /* renamed from: f */
    public final SliceInfo m37546f(BoxInfo displayVirtualPageBoxInfo, ReaderRenderArgs contentRenderArgs) {
        BoxInfo copy;
        BoxInfo contentInfo;
        BoxExtraInfo extraInfo;
        boolean endsWith$default;
        List<SliceInfo> mutableListOf;
        if (!m37559s() || (contentInfo = (copy = displayVirtualPageBoxInfo.copy()).getContentInfo()) == null || (extraInfo = displayVirtualPageBoxInfo.getExtraInfo()) == null) {
            return null;
        }
        endsWith$default = StringsKt__StringsJVMKt.endsWith$default(extraInfo.getContentPath(), "template_json", false, 2, null);
        contentRenderArgs.setEnableDiskCache(!endsWith$default);
        m37562v(contentRenderArgs, copy);
        RectF collectVisibleContentSliceRect = SliceRectProviderManager.INSTANCE.getInstance().getPageNormalProvider().collectVisibleContentSliceRect(contentInfo, this.renderHandler.viewportRectF());
        if (collectVisibleContentSliceRect.isEmpty()) {
            return null;
        }
        SliceInfo createContent = SliceInfo.INSTANCE.createContent(displayVirtualPageBoxInfo.getId(), contentInfo, extraInfo.getContentPath(), RectFKt.copy(collectVisibleContentSliceRect));
        createContent.setHighQuality(false);
        SliceInfo ensureSliceCacheInfo = m37552l().ensureSliceCacheInfo(createContent);
        int i = WhenMappings.$EnumSwitchMapping$0[ensureSliceCacheInfo.getState().ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return ensureSliceCacheInfo;
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
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
    public final void m37547g(BoxInfo displayVirtualPageBoxInfo, NoteRenderArgs noteRenderArgs, SliceInfo contentSlice, ReaderRenderArgs contentRenderArgs) {
        BoxInfo noteInfo;
        BoxInfo copy = displayVirtualPageBoxInfo.copy();
        BoxInfo noteInfo2 = copy.getNoteInfo();
        if (noteInfo2 == null || (noteInfo = displayVirtualPageBoxInfo.getNoteInfo()) == null) {
            return;
        }
        m37563w(copy);
        RectF collectVisibleNoteSliceRect = SliceRectProviderManager.INSTANCE.getInstance().getPageNormalProvider().collectVisibleNoteSliceRect(copy, this.renderHandler.viewportRectF());
        if (collectVisibleNoteSliceRect.isEmpty()) {
            return;
        }
        SliceInfo createContentNote = SliceInfo.INSTANCE.createContentNote(noteInfo2.copy(), RectFKt.copy(collectVisibleNoteSliceRect));
        createContentNote.setHighQuality(false);
        SliceInfo m37548h = m37548h(createContentNote, contentSlice);
        if (m37548h.isCanDisplay()) {
            m37560t(m37548h, noteInfo, contentSlice);
        } else {
            m37561u(m37548h, contentSlice, noteInfo);
        }
        if (m37548h.isCanDraw()) {
            if ((contentSlice != null ? contentSlice.isRendering() : false) && !contentRenderArgs.isNeedRender()) {
                m37553m("cache content is rendering, content is reuse by multi notePage, do not render note, waiting for content render complete");
                return;
            }
            SliceInfo copy2 = m37548h.copy();
            noteRenderArgs.setShowExcerptIndicator(MMKVNote.INSTANCE.getExcerptShapeAttrOption().get().getShowIndicator());
            noteRenderArgs.setSupportRenderPageContentBitmap(m37559s());
            noteRenderArgs.getSliceRenderInfoList().add(new NoteSliceRenderInfo(copy2, contentSlice));
        }
    }

    @NotNull
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }

    /* renamed from: h */
    public final SliceInfo m37548h(SliceInfo newInfo, SliceInfo contentSlice) {
        SliceInfo ensureSliceCacheInfo = m37552l().ensureSliceCacheInfo(newInfo);
        if (m37559s() && !SliceKt.isValid(contentSlice) && ensureSliceCacheInfo.isCanDisplay()) {
            StringBuilder sb = new StringBuilder();
            sb.append("contentInvalid, contentNote valid, render page again\n, content = ");
            sb.append(contentSlice != null ? contentSlice.getState() : null);
            sb.append("\n, contentNote = ");
            sb.append(ensureSliceCacheInfo.getState());
            m37553m(sb.toString());
            ensureSliceCacheInfo.setSafeBitmap(new SafeBitmap());
            ensureSliceCacheInfo.updateState(SliceInfo.State.NO_CACHE);
        }
        return ensureSliceCacheInfo;
    }

    /* renamed from: i */
    public final SliceInfo m37549i() {
        Object firstOrNull;
        if (!m37559s()) {
            return null;
        }
        PageRenderRequestInfo pageRenderRequestInfo = this.renderInfo;
        if (pageRenderRequestInfo == null) {
            m37554n("renderInfo null, contentSlice null");
            return null;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) pageRenderRequestInfo.getNoteRenderArgs().getSliceRenderInfoList());
        NoteSliceRenderInfo noteSliceRenderInfo = (NoteSliceRenderInfo) firstOrNull;
        SliceInfo contentCacheSlice = noteSliceRenderInfo != null ? noteSliceRenderInfo.getContentCacheSlice() : null;
        if (contentCacheSlice == null) {
            m37554n("id = " + this.virtualPageBoxInfo.getId() + ", contentSlice null");
        }
        return contentCacheSlice;
    }

    /* renamed from: j, reason: from getter */
    public final PageNormalRenderHandler getRenderHandler() {
        return this.renderHandler;
    }

    /* renamed from: k */
    public final RenderRequestManager m37551k() {
        return getRenderHandler().renderRequestManager();
    }

    /* renamed from: l */
    public final SliceStateManager m37552l() {
        return getRenderHandler().getSliceStateManager();
    }

    /* renamed from: m */
    public final void m37553m(String msg) {
    }

    /* renamed from: n */
    public final void m37554n(String msg) {
        LogUtils.wTag(AnyKt.toSimpleNameString(this), msg);
    }

    /* renamed from: o */
    public final void m37555o(List<SliceInfo> outputList) {
        Iterator<T> it2 = outputList.iterator();
        while (it2.hasNext()) {
            Bitmap bitmap = ((SliceInfo) it2.next()).getSafeBitmap().getBitmap();
            if (bitmap != null) {
                bitmap.prepareToDraw();
            }
        }
    }

    /* renamed from: p */
    public final void m37556p(PageRenderRequestInfo info) {
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

    /* renamed from: q */
    public final Observable<?> m37557q(PageRenderRequestInfo info) {
        RenderNotePageAction noteAction = info.getNoteAction();
        if (noteAction != null) {
            return RxjavaKt.onErrorReturnItemWithLog(noteAction.build(), noteAction);
        }
        Observable<?> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: r */
    public final Observable<Boolean> m37558r() {
        Object firstOrNull;
        BoxInfo boxInfo;
        PageRenderRequestInfo pageRenderRequestInfo = this.renderInfo;
        if (pageRenderRequestInfo == null) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("id = ");
        sb.append(pageRenderRequestInfo.getVirtualPageBoxInfo().getId());
        sb.append(", displayScale = ");
        sb.append(pageRenderRequestInfo.getVirtualPageBoxInfo().getActualScale());
        sb.append(", renderScale = ");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) pageRenderRequestInfo.getNoteRenderArgs().noteSliceList());
        SliceInfo sliceInfo = (SliceInfo) firstOrNull;
        sb.append((sliceInfo == null || (boxInfo = sliceInfo.getBoxInfo()) == null) ? null : Float.valueOf(boxInfo.getActualScale()));
        String sb2 = sb.toString();
        m37553m("renderPage, " + sb2);
        m37551k().cancelLimitPendingRequestList(this.renderHandler.pendingRenderTaskMaxCount());
        if (pageRenderRequestInfo.getContentRenderArgs().isNeedRender()) {
            pageRenderRequestInfo.setContentRequest(new RenderContentRequest(EditorBundleKt.readerBundle(this.editorBundle), pageRenderRequestInfo.getContentRenderArgs()));
        }
        if (pageRenderRequestInfo.getNoteRenderArgs().isNeedRender()) {
            pageRenderRequestInfo.setNoteAction(new RenderNotePageAction(this.editorBundle, pageRenderRequestInfo.getNoteRenderArgs()));
        }
        m37551k().addPageRenderRequestInfo(pageRenderRequestInfo);
        Observable<Boolean> map = Observable.just(this).observeOn(EditorBundleKt.readerScheduler(this.editorBundle)).map(new C8623c(pageRenderRequestInfo)).observeOn(EditorBundleKt.noteScheduler(this.editorBundle)).flatMap(new C8624d(pageRenderRequestInfo)).observeOn(EditorBundleKt.noteScheduler(this.editorBundle)).map(new C8625e(pageRenderRequestInfo)).delay(AppConfig.INSTANCE.getPrepareToDrawTimeMills(), TimeUnit.MILLISECONDS).observeOn(AndroidSchedulers.mainThread()).map(new C8626f(pageRenderRequestInfo, sb2));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: s */
    public final boolean m37559s() {
        return EditorBundleKt.getUiFeature(this.editorBundle).supportRenderPageContentBitmap();
    }

    public final void setVirtualPageBoxInfo(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<set-?>");
        this.virtualPageBoxInfo = boxInfo;
    }

    /* renamed from: t */
    public final void m37560t(SliceInfo cacheSlice, BoxInfo displayNoteInfo, SliceInfo contentSlice) {
        this.cachePageSliceInfo = PageSliceInfo.INSTANCE.createDisplayInfo(this.virtualPageBoxInfo, cacheSlice.toScaleSliceInfo(displayNoteInfo), contentSlice);
    }

    /* renamed from: u */
    public final void m37561u(SliceInfo info, SliceInfo contentSlice, BoxInfo displayNoteInfo) {
        SliceInfo findDisplayCache = m37552l().findDisplayCache(info);
        if (findDisplayCache != null) {
            m37560t(findDisplayCache, displayNoteInfo, m37559s() ? m37552l().findDisplayCache(contentSlice) : null);
        }
    }

    /* renamed from: v */
    public final void m37562v(ReaderRenderArgs readerRenderArgs, BoxInfo renderVirtualPageBoxInfo) {
        renderVirtualPageBoxInfo.offsetToOrigin();
        BoxInfo contentInfo = renderVirtualPageBoxInfo.getContentInfo();
        if (contentInfo == null) {
            return;
        }
        float actualScale = renderVirtualPageBoxInfo.getActualScale() / contentInfo.getActualScale();
        float contentPageMaxScale = ScaleConfig.INSTANCE.contentPageMaxScale(contentInfo, this.renderHandler.viewportRectF(), this.renderMaxScale);
        if (contentInfo.getActualScale() > contentPageMaxScale) {
            renderVirtualPageBoxInfo.setScale(contentPageMaxScale * actualScale);
        }
    }

    /* renamed from: w */
    public final void m37563w(BoxInfo renderVirtualPageBoxInfo) {
        renderVirtualPageBoxInfo.offsetToOrigin();
        float virtualPageMaxScale = ScaleConfig.INSTANCE.virtualPageMaxScale(renderVirtualPageBoxInfo, this.renderHandler.viewportRectF(), this.renderMaxScale);
        if (renderVirtualPageBoxInfo.getActualScale() > virtualPageMaxScale) {
            renderVirtualPageBoxInfo.setScale(virtualPageMaxScale);
        }
    }

    /* renamed from: x */
    public final void m37564x(List<SliceInfo> outputList) {
        Object obj;
        BoxInfo noteInfo = this.virtualPageBoxInfo.getNoteInfo();
        if (noteInfo == null) {
            return;
        }
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
        this.renderSuccessPageSliceInfo = PageSliceInfo.INSTANCE.createDisplayInfo(this.virtualPageBoxInfo, sliceInfo.toScaleSliceInfo(noteInfo), m37549i());
    }

    public /* synthetic */ DisplayRenderSliceAction(EditorBundle editorBundle, PageNormalRenderHandler pageNormalRenderHandler, BoxInfo boxInfo, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, pageNormalRenderHandler, boxInfo, (i & 8) != 0 ? AppConfig.INSTANCE.getRENDER_MAX_SCREEN_SCALE() : f);
    }
}
