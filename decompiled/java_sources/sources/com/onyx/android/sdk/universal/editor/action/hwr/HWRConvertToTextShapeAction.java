package com.onyx.android.sdk.universal.editor.action.hwr;

import android.graphics.RectF;
import android.text.Layout;
import android.text.TextPaint;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.command.Command;
import com.onyx.android.sdk.note.common.command.CompositeCommand;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.text.TextInputConfig;
import com.onyx.android.sdk.note.common.document.doc.TransformShapeContext;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.note.common.utils.StaticLayoutWrapper;
import com.onyx.android.sdk.note.request.textinput.CreateTextShapeRequest;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.command.AddUndoRedoCommandAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNotePageAction;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction;
import com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B;\u0012\u0006\u0010E\u001a\u00020D\u0012\u0006\u0010%\u001a\u00020 \u0012\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00160\u001a\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\f\u00106\u001a\b\u0012\u0004\u0012\u00020302¢\u0006\u0004\bF\u0010GJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0007\u001a\u00020\u0005H\u0002J\b\u0010\n\u001a\u00020\tH\u0002J$\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u001e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0005H\u0002J\b\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0014\u0010\u001b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u001a0\u0002H\u0002J\u001c\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00160\u001aH\u0002J\u000e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u0017\u0010%\u001a\u00020 8\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R(\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00160\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u0010\f\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001d\u00106\u001a\b\u0012\u0004\u0012\u000203028\u0006¢\u0006\f\n\u0004\b4\u0010'\u001a\u0004\b5\u0010)R\u0018\u00109\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0018\u0010<\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010;R\u0018\u0010>\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010=R\u0018\u0010A\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010@R\u001c\u0010C\u001a\b\u0012\u0004\u0012\u00020\u0016028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010'¨\u0006H"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", "r", "t", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "v", "insertPoint", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;", "x", "", "content", "", "width", "Lkotlin/Pair;", "y", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "page", "q", "Landroid/graphics/RectF;", "w", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "", "u", "", C4921e.f26528e, "shapeList", "s", "m", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "getRenderContext", "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "i", "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "setShapeList", "(Ljava/util/List;)V", "j", Constants.STRING_SIG, "getContent", "()Ljava/lang/String;", "setContent", "(Ljava/lang/String;)V", "", "Lcom/onyx/android/sdk/data/common/data/TextContentType;", C4921e.f26537n, "getTextContentTypes", "textContentTypes", "l", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "textShape", "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "compositeCommand", "p", "deletedShapes", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHWRConvertToTextShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRConvertToTextShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,231:1\n766#2:232\n857#2,2:233\n288#2,2:235\n288#2,2:237\n766#2:239\n857#2,2:240\n766#2:242\n857#2,2:243\n1#3:245\n*S KotlinDebug\n*F\n+ 1 HWRConvertToTextShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction\n*L\n89#1:232\n89#1:233,2\n97#1:235,2\n99#1:237,2\n129#1:239\n129#1:240,2\n172#1:242\n172#1:243,2\n*E\n"})
/* loaded from: classes8.dex */
public final class HWRConvertToTextShapeAction extends RxBaseAppAction<HWRConvertToTextShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> shapeList;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public String content;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final List<TextContentType> textContentTypes;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public NotePage notePage;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public BoxInfo virtualBoxInfo;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public Shape textShape;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public CompositeCommand compositeCommand;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public List<Shape> deletedShapes;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C9401a<T, R> implements Function {
        public C9401a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRConvertToTextShapeAction apply(@NotNull Command it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRConvertToTextShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C9402b<T, R> implements Function {
        public C9402b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRConvertToTextShapeAction apply(@NotNull HWRConvertToTextShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRConvertToTextShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C9403c<T, R> implements Function {
        public C9403c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWRConvertToTextShapeAction> apply(@NotNull HWRConvertToTextShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRConvertToTextShapeAction.this.m38905r();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$d */
    /* loaded from: classes8.dex */
    public static final class C9404d<T, R> implements Function {
        public C9404d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWRConvertToTextShapeAction> apply(@NotNull HWRConvertToTextShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRConvertToTextShapeAction.this.m38907t();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$e */
    /* loaded from: classes8.dex */
    public static final class C9407e<T, R> implements Function {
        public C9407e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TouchPoint apply(@NotNull HWRConvertToTextShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRConvertToTextShapeAction.this.m38909v();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$f */
    /* loaded from: classes8.dex */
    public static final class C9408f<T, R> implements Function {
        public C9408f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWRConvertToTextShapeAction> apply(@NotNull TouchPoint it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRConvertToTextShapeAction.this.m38902n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$g */
    /* loaded from: classes8.dex */
    public static final class C9409g<T, R> implements Function {
        public C9409g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull HWRConvertToTextShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRConvertToTextShapeAction.this.m38903o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$h */
    /* loaded from: classes8.dex */
    public static final class C9410h<T, R> implements Function {
        public C9410h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWRConvertToTextShapeAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRConvertToTextShapeAction.this.m38906s(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$i */
    /* loaded from: classes8.dex */
    public static final class C9411i<T, R> implements Function {
        public C9411i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWRConvertToTextShapeAction> apply(@NotNull HWRConvertToTextShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRConvertToTextShapeAction.this.m38901m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$j */
    /* loaded from: classes8.dex */
    public static final class C9412j<T, R> implements Function {
        public C9412j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRConvertToTextShapeAction apply(@NotNull HWRConvertToTextShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRConvertToTextShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$k */
    /* loaded from: classes8.dex */
    public static final class C9413k<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f49635e;

        public C9413k(List<Shape> list) {
            this.f49635e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Map<Shape, BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CollectionKt.addIfNotContains((Collection) this.f49635e, (Collection) it2.keySet());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$l */
    /* loaded from: classes8.dex */
    public static final class C9414l<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f49636e;

        /* renamed from: f */
        public final /* synthetic */ HWRConvertToTextShapeAction f49637f;

        public C9414l(List<Shape> list, HWRConvertToTextShapeAction hWRConvertToTextShapeAction) {
            this.f49636e = list;
            this.f49637f = hWRConvertToTextShapeAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Map<Shape, BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CollectionKt.addIfNotContains((Collection) this.f49636e, (Collection) this.f49637f.getShapeList());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$m */
    /* loaded from: classes8.dex */
    public static final class C9415m<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f49638e;

        public C9415m(List<Shape> list) {
            this.f49638e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull Map<Shape, BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49638e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$n */
    /* loaded from: classes8.dex */
    public static final class C9416n<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ CreateTextShapeRequest f49640f;

        public C9416n(CreateTextShapeRequest createTextShapeRequest) {
            this.f49640f = createTextShapeRequest;
        }

        /* renamed from: a */
        public final void m38927a(@NotNull CreateTextShapeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRConvertToTextShapeAction.this.textShape = this.f49640f.getTextShape();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38927a((CreateTextShapeRequest) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$o */
    /* loaded from: classes8.dex */
    public static final class C9417o<T, R> implements Function {
        public C9417o() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRConvertToTextShapeAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRConvertToTextShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$p */
    /* loaded from: classes8.dex */
    public static final class C9418p<T, R> implements Function {
        public C9418p() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRConvertToTextShapeAction apply(@NotNull DeleteShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRConvertToTextShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$q */
    /* loaded from: classes8.dex */
    public static final class C9419q<T, R> implements Function {
        public C9419q() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRConvertToTextShapeAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRConvertToTextShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$r */
    /* loaded from: classes8.dex */
    public static final class C9420r<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ BoxInfo f49645f;

        public C9420r(BoxInfo boxInfo) {
            this.f49645f = boxInfo;
        }

        /* renamed from: a */
        public final void m38931a(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRConvertToTextShapeAction.this.notePage = it2;
            HWRConvertToTextShapeAction.this.virtualBoxInfo = this.f49645f;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38931a((NotePage) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$s */
    /* loaded from: classes8.dex */
    public static final class C9421s<T, R> implements Function {
        public C9421s() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRConvertToTextShapeAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRConvertToTextShapeAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRConvertToTextShapeAction(@NotNull EditorBundle editorBundle, @NotNull RenderContext renderContext, @NotNull List<? extends Shape> shapeList, @NotNull String content, @NotNull List<TextContentType> textContentTypes) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(textContentTypes, "textContentTypes");
        this.renderContext = renderContext;
        this.shapeList = shapeList;
        this.content = content;
        this.textContentTypes = textContentTypes;
        this.deletedShapes = new ArrayList();
    }

    /* renamed from: p */
    public static final void m38900p(HWRConvertToTextShapeAction this$0, CompositeCommand command, Map it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(command, "$command");
        Intrinsics.checkNotNullParameter(it2, "it");
        CompositeCommand compositeCommand = new CompositeCommand(null, 1, null);
        this$0.compositeCommand = compositeCommand;
        compositeCommand.addCompositeCommand(command);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HWRConvertToTextShapeAction> create() {
        Observable<HWRConvertToTextShapeAction> map = Observable.just(this).observeOn(getMainUIScheduler()).flatMap(new C9403c()).flatMap(new C9404d()).map(new C9407e()).flatMap(new C9408f()).flatMap(new C9409g()).flatMap(new C9410h()).flatMap(new C9411i()).map(new C9412j());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final String getContent() {
        return this.content;
    }

    @NotNull
    public final RenderContext getRenderContext() {
        return this.renderContext;
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    @NotNull
    public final List<TextContentType> getTextContentTypes() {
        return this.textContentTypes;
    }

    /* renamed from: m */
    public final Observable<HWRConvertToTextShapeAction> m38901m() {
        List listOfNotNull;
        if (this.textShape == null) {
            Observable<HWRConvertToTextShapeAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        CompositeCommand compositeCommand = this.compositeCommand;
        if (compositeCommand == null) {
            compositeCommand = new CompositeCommand(null, 1, null);
        }
        UndoRedoCommand undoRedoCommand = new UndoRedoCommand();
        undoRedoCommand.removeShapes(this.deletedShapes);
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(this.textShape);
        undoRedoCommand.addShapes(listOfNotNull);
        compositeCommand.addCommand(undoRedoCommand);
        Observable map = new AddUndoRedoCommandAction(getEditorBundle(), compositeCommand).build().map(new C9401a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<HWRConvertToTextShapeAction> m38902n(TouchPoint insertPoint) {
        NotePage notePage = this.notePage;
        if (notePage == null) {
            Observable<HWRConvertToTextShapeAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = m38904q(notePage, insertPoint).map(new C9402b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final Observable<List<Shape>> m38903o() {
        ArrayList arrayList = new ArrayList();
        CollectionKt.safeAdd(arrayList, this.textShape);
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null || arrayList.isEmpty()) {
            CollectionKt.safeAddAll(arrayList, this.shapeList);
            Observable<List<Shape>> just = Observable.just(arrayList);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final CompositeCommand compositeCommand = new CompositeCommand(null, 1, null);
        Observable<Map<Shape, BoxInfo>> doOnNext = EditorShapesActionsKt.addCrossPageShapes(this, new TransformShapeContext(boxInfo, arrayList, null, false, 12, null), compositeCommand).doOnNext(new C9413k(arrayList)).doOnNext(new C9414l(arrayList, this));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<List<Shape>> map = RxjavaKt.doOnNextIf(doOnNext, new Function1<Map<Shape, ? extends BoxInfo>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$createCrossPageShapes$3
            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull Map<Shape, BoxInfo> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Map<Shape, ? extends BoxInfo> map2) {
                return invoke2((Map<Shape, BoxInfo>) map2);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.afh
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                HWRConvertToTextShapeAction.m38900p(HWRConvertToTextShapeAction.this, compositeCommand, (Map) obj);
            }
        }).map(new C9415m(arrayList));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final Observable<HWRConvertToTextShapeAction> m38904q(NotePage page, TouchPoint insertPoint) {
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Observable<HWRConvertToTextShapeAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        CreateTextShapeRequest limitShapeRectInNotePage = new CreateTextShapeRequest(EditorBundleKt.noteBundle(getEditorBundle()), boxInfo, page, insertPoint).setInputText(this.content).setInputConfig(m38911x()).limitShapeRectInNotePage(EditorBundleKt.getUiFeature(getEditorBundle()).limitShapeRectInCurrentPage());
        Pair<Float, Float> m38912y = m38912y(this.content, m38910w().width());
        float floatValue = m38912y.getFirst().floatValue();
        float floatValue2 = m38912y.getSecond().floatValue();
        ShapeTextStyle defaultShapeTextStyle = limitShapeRectInNotePage.defaultShapeTextStyle();
        defaultShapeTextStyle.setAlignType(0);
        defaultShapeTextStyle.setTextWidth(floatValue);
        defaultShapeTextStyle.setTextHeight(floatValue2);
        limitShapeRectInNotePage.setTextStyle(defaultShapeTextStyle);
        Observable<HWRConvertToTextShapeAction> map = RxBaseAppActionKt.submitRequestToNote(this, limitShapeRectInNotePage).map(new C9416n(limitShapeRectInNotePage)).map(new C9417o());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: r */
    public final Observable<HWRConvertToTextShapeAction> m38905r() {
        List<Shape> mutableList;
        List<? extends Shape> list = this.shapeList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (TextContentType.INSTANCE.containsHwrContent(this.textContentTypes) && ShapeTypes.INSTANCE.isSupportHWR((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        this.deletedShapes = mutableList;
        Observable map = new DeleteShapesAction(getEditorBundle(), this.deletedShapes, false, false, 8, null).build().map(new C9418p());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: s */
    public final Observable<HWRConvertToTextShapeAction> m38906s(final List<? extends Shape> shapeList) {
        Observable map = RxjavaKt.flatMapIf(ComputeBoxListActionsKt.findBoxInfoList(this, new Function1<BoxInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$display$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull final BoxInfo boxInfo) {
                Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
                return Boolean.valueOf(CollectionKt.contains(shapeList, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$display$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull Shape it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return Boolean.valueOf(Intrinsics.areEqual(it2.getPageUniqueId(), BoxInfo.this.getId()));
                    }
                }));
            }
        }), new Function1<List<? extends BoxInfo>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$display$2
            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull List<BoxInfo> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(List<? extends BoxInfo> list) {
                return invoke2((List<BoxInfo>) list);
            }
        }, new Function1<List<? extends BoxInfo>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$display$3

            /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$display$3$a */
            /* loaded from: classes8.dex */
            public static final class C9406a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ HWRConvertToTextShapeAction f49628e;

                public C9406a(HWRConvertToTextShapeAction hWRConvertToTextShapeAction) {
                    this.f49628e = hWRConvertToTextShapeAction;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends Object> apply(@NotNull BoxInfo it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return ForceRenderSliceListActionsKt.forceRenderNoteToDisplay(this.f49628e, it2);
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(List<? extends BoxInfo> list) {
                return invoke2((List<BoxInfo>) list);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Observable<? extends Object> invoke2(@NotNull List<BoxInfo> boxList) {
                Intrinsics.checkNotNullParameter(boxList, "boxList");
                Observable<? extends Object> concatMap = Observable.fromIterable(boxList).concatMap(new C9406a(HWRConvertToTextShapeAction.this));
                Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
                return concatMap;
            }
        }).map(new C9419q());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setContent(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.content = str;
    }

    public final void setShapeList(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shapeList = list;
    }

    /* renamed from: t */
    public final Observable<HWRConvertToTextShapeAction> m38907t() {
        Object obj;
        Object obj2;
        Iterator<T> it2 = this.shapeList.iterator();
        while (true) {
            obj = null;
            if (!it2.hasNext()) {
                obj2 = null;
                break;
            }
            obj2 = it2.next();
            if (!ShapeTypes.INSTANCE.isReferenceShape((Shape) obj2)) {
                break;
            }
        }
        Shape shape = (Shape) obj2;
        String safelyGetStr = StringKt.safelyGetStr(shape != null ? shape.getPageUniqueId() : null);
        Iterator<T> it3 = EditorBundleKt.visibleBoxList(getEditorBundle()).iterator();
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            Object next = it3.next();
            BoxInfo noteInfo = ((BoxInfo) next).getNoteInfo();
            if (Intrinsics.areEqual(safelyGetStr, noteInfo != null ? noteInfo.getId() : null)) {
                obj = next;
                break;
            }
        }
        BoxInfo boxInfo = (BoxInfo) AnyKt.getOrElse(obj, (Function0<? extends Object>) new Function0<BoxInfo>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction$ensureNotePage$boxInfo$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BoxInfo invoke() {
                return EditorBundleKt.currentVisibleBoxInfo(HWRConvertToTextShapeAction.this.getEditorBundle());
            }
        });
        Observable<HWRConvertToTextShapeAction> map = new EnsureNotePageAction(getEditorBundle(), boxInfo).create().map(new C9420r(boxInfo)).map(new C9421s());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: u */
    public final boolean m38908u(Shape shape) {
        ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
        if (shapeTypes.isSupportHWR(shape) && TextContentType.INSTANCE.containsHwrContent(this.textContentTypes)) {
            return true;
        }
        return shapeTypes.isSupportOCR(shape) && TextContentType.INSTANCE.containsOcrContent(this.textContentTypes);
    }

    /* renamed from: v */
    public final TouchPoint m38909v() {
        RectF m38910w = m38910w();
        return new TouchPoint(m38910w.left, m38910w.top);
    }

    /* renamed from: w */
    public final RectF m38910w() {
        Object firstOrNull;
        RectF boundingRectWithWidth;
        List<Shape> filterNormalShapes = ShapeTypes.INSTANCE.filterNormalShapes(this.shapeList);
        ArrayList arrayList = new ArrayList();
        for (Object obj : filterNormalShapes) {
            if (m38908u((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        ShapeRectUtils shapeRectUtils = ShapeRectUtils.INSTANCE;
        RectF boundingRectWithWidth2 = shapeRectUtils.getBoundingRectWithWidth(arrayList);
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) arrayList);
        Shape shape = (Shape) firstOrNull;
        if (shape != null && (boundingRectWithWidth = shapeRectUtils.getBoundingRectWithWidth(shape)) != null) {
            boundingRectWithWidth2.offsetTo(boundingRectWithWidth.left, boundingRectWithWidth.top);
        }
        return boundingRectWithWidth2;
    }

    /* renamed from: x */
    public final TextInputConfig m38911x() {
        return MMKVNote.INSTANCE.getTextInputConfigOption().get();
    }

    /* renamed from: y */
    public final Pair<Float, Float> m38912y(String content, float width) {
        CharSequence trim;
        List lines;
        TextInputConfig m38911x = m38911x();
        TextPaint textPaint = new TextPaint();
        textPaint.setTextSize(DimenUtils.INSTANCE.pt2px(ResManager.INSTANCE.getAppContext(), m38911x.getTextSize()));
        trim = StringsKt__StringsKt.trim((CharSequence) content);
        String obj = trim.toString();
        lines = StringsKt__StringsKt.lines(obj);
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : lines) {
            if (((String) obj2).length() > 0) {
                arrayList.add(obj2);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            width = Math.max(width, textPaint.measureText((String) it2.next()));
        }
        StaticLayoutWrapper create = StaticLayoutWrapper.INSTANCE.create(obj, textPaint, width * 1.3f, Layout.Alignment.ALIGN_NORMAL, m38911x.getTextSpacing(), 0.0f, true);
        create.measureText(obj);
        return new Pair<>(Float.valueOf(create.getWidth()), Float.valueOf(create.getHeight() * 1.3f));
    }
}
