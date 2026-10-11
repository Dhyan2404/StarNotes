package com.onyx.android.sdk.universal.editor.action.image;

import android.graphics.Paint;
import android.net.Uri;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.command.CompositeCommand;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.CreateImageShapeBean;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.event.CommandEvent;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.CreateImageShapeRequest;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNotePageAction;
import com.onyx.android.sdk.universal.editor.action.common.SaveImageUriToFileAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction;
import com.onyx.android.sdk.universal.editor.events.note.StartTransformEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.finger.HandlerManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010L\u001a\u00020K\u0012\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001f0\n¢\u0006\u0004\bM\u0010NJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0002J$\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J,\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0002J*\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u001c\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0016\u0010\u0018\u001a\u00020\u00172\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\b0\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u000e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0002J\u0014\u0010\u001d\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r0\u0004H\u0002J\u000e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0014R\u001c\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001f0\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R(\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010!\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R$\u0010.\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R$\u00106\u001a\u0004\u0018\u00010/8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\"\u0010=\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\"\u0010?\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b>\u00108\u001a\u0004\b?\u0010:\"\u0004\b@\u0010<R$\u0010H\u001a\u0004\u0018\u00010A8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR(\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010!\u001a\u0004\bI\u0010%\"\u0004\bJ\u0010'¨\u0006O"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/image/CreateImageShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "p", "Lio/reactivex/rxjava3/core/Observable;", "r", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C4921e.f26528e, "", "", "filePathList", "Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;", "u", "sourceShapeList", "Lcom/onyx/android/sdk/note/common/data/shape/CreateImageShapeBean;", "B", "q", "shapeList", "", "A", "w", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "y", "x", "z", BaiduYunConstant.CREATE, "Landroid/net/Uri;", C6999h.f39688c, "Ljava/util/List;", "uriList", "i", "getShapeList", "()Ljava/util/List;", "setShapeList", "(Ljava/util/List;)V", "j", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "virtualBoxInfo", "Lcom/onyx/android/sdk/base/data/TouchPoint;", C4921e.f26537n, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getInsertPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "setInsertPoint", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "insertPoint", "l", Constants.HASIDCALL_INDEX_SIG, "getAddToCmdStack", Constants.BOOLEAN_VALUE_SIG, "setAddToCmdStack", "(Z)V", "addToCmdStack", "m", "isStartTransform", "setStartTransform", "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "getCompositeCommand", "()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "setCompositeCommand", "(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V", "compositeCommand", "getSourceShapeList", "setSourceShapeList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateImageShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateImageShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/image/CreateImageShapeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,175:1\n1864#2,3:176\n1855#2,2:179\n*S KotlinDebug\n*F\n+ 1 CreateImageShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/image/CreateImageShapeAction\n*L\n125#1:176,3\n116#1:179,2\n*E\n"})
/* loaded from: classes8.dex */
public final class CreateImageShapeAction extends RxBaseAppAction<CreateImageShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<? extends Uri> uriList;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> shapeList;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public BoxInfo virtualBoxInfo;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public TouchPoint insertPoint;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean addToCmdStack;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean isStartTransform;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public CompositeCommand compositeCommand;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> sourceShapeList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C9469a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ BoxInfo f49754f;

        /* renamed from: g */
        public final /* synthetic */ NotePage f49755g;

        public C9469a(BoxInfo boxInfo, NotePage notePage) {
            this.f49754f = boxInfo;
            this.f49755g = notePage;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CreateImageShapeRequest> apply(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateImageShapeAction.this.m39063u(this.f49754f, this.f49755g, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C9470b<T> implements Consumer {
        public C9470b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CreateImageShapeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateImageShapeAction.this.setCompositeCommand(it2.getCompositeCommand());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C9471c<T, R> implements Function {
        public C9471c() {
        }

        /* renamed from: a */
        public final void m39070a(@NotNull CreateImageShapeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateImageShapeAction.this.setShapeList(it2.getShapeList());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m39070a((CreateImageShapeRequest) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$d */
    /* loaded from: classes8.dex */
    public static final class C9472d<T, R> implements Function {
        public C9472d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateImageShapeAction.this.getShapeList();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$e */
    /* loaded from: classes8.dex */
    public static final class C9473e<T> implements Predicate {
        public C9473e() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull CreateImageShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateImageShapeAction.this.m39060p();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$f */
    /* loaded from: classes8.dex */
    public static final class C9474f<T, R> implements Function {
        public C9474f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CreateImageShapeAction> apply(@NotNull CreateImageShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateImageShapeAction.this.m39065x();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$g */
    /* loaded from: classes8.dex */
    public static final class C9475g<T, R> implements Function {
        public C9475g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CreateImageShapeAction> apply(@NotNull CreateImageShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateImageShapeAction.this.m39062r();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$h */
    /* loaded from: classes8.dex */
    public static final class C9476h<T, R> implements Function {
        public C9476h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull CreateImageShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateImageShapeAction createImageShapeAction = CreateImageShapeAction.this;
            BoxInfo virtualBoxInfo = createImageShapeAction.getVirtualBoxInfo();
            String id = virtualBoxInfo != null ? virtualBoxInfo.getId() : null;
            if (id == null) {
                id = "";
            }
            return CommonEditorActionsKt.updateVirtualPage(createImageShapeAction, id);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$i */
    /* loaded from: classes8.dex */
    public static final class C9477i<T, R> implements Function {
        public C9477i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CreateImageShapeAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateImageShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$j */
    /* loaded from: classes8.dex */
    public static final class C9478j<T, R> implements Function {

        /* renamed from: e */
        public static final C9478j<T, R> f49764e = new C9478j<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Set<Shape> apply(@NotNull Map<Shape, BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.keySet();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$k */
    /* loaded from: classes8.dex */
    public static final class C9479k<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f49765e;

        public C9479k(List<Shape> list) {
            this.f49765e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Set<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CollectionKt.safeAddAll(this.f49765e, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$l */
    /* loaded from: classes8.dex */
    public static final class C9480l<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f49767f;

        public C9480l(List<Shape> list) {
            this.f49767f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Set<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateImageShapeAction.this.setShapeList(this.f49767f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$m */
    /* loaded from: classes8.dex */
    public static final class C9481m<T, R> implements Function {
        public C9481m() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull Set<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateImageShapeAction.this.getShapeList();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$n */
    /* loaded from: classes8.dex */
    public static final class C9482n<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ BoxInfo f49770f;

        public C9482n(BoxInfo boxInfo) {
            this.f49770f = boxInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateImageShapeAction.this.m39059o(this.f49770f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$o */
    /* loaded from: classes8.dex */
    public static final class C9483o<T> implements Predicate {

        /* renamed from: e */
        public static final C9483o<T> f49771e = new C9483o<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$p */
    /* loaded from: classes8.dex */
    public static final class C9484p<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ BoxInfo f49773f;

        public C9484p(BoxInfo boxInfo) {
            this.f49773f = boxInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateImageShapeAction.this.m39061q(this.f49773f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$q */
    /* loaded from: classes8.dex */
    public static final class C9485q<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ BoxInfo f49775f;

        public C9485q(BoxInfo boxInfo) {
            this.f49775f = boxInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ForceRenderSliceListActionsKt.forceRenderNoteToDisplay(CreateImageShapeAction.this, this.f49775f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$r */
    /* loaded from: classes8.dex */
    public static final class C9486r<T, R> implements Function {
        public C9486r() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CreateImageShapeAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateImageShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$s */
    /* loaded from: classes8.dex */
    public static final class C9487s<T, R> implements Function {
        public C9487s() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CreateImageShapeAction apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateImageShapeAction.this.setVirtualBoxInfo(it2);
            return CreateImageShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$t */
    /* loaded from: classes8.dex */
    public static final class C9488t<T, R> implements Function {

        /* renamed from: e */
        public static final C9488t<T, R> f49778e = new C9488t<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> apply(@NotNull SaveImageUriToFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getFilePathList();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateImageShapeAction(@NotNull EditorBundle editorBundle, @NotNull List<? extends Uri> uriList) {
        super(editorBundle);
        List<? extends Shape> emptyList;
        List<? extends Shape> emptyList2;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        this.uriList = uriList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.shapeList = emptyList;
        this.addToCmdStack = true;
        this.isStartTransform = true;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.sourceShapeList = emptyList2;
    }

    /* renamed from: s */
    public static final void m39054s(CreateImageShapeAction this$0, List it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        NoteBundle noteBundle = EditorBundleKt.noteBundle(this$0.getEditorBundle());
        CompositeCommand compositeCommand = this$0.compositeCommand;
        Intrinsics.checkNotNull(compositeCommand);
        noteBundle.postEvent(new CommandEvent(compositeCommand));
    }

    /* renamed from: t */
    public static final void m39055t(CreateImageShapeAction this$0, Object it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m39057A(this$0.shapeList);
    }

    /* renamed from: v */
    public static final void m39056v(List filePathList) {
        Intrinsics.checkNotNullParameter(filePathList, "$filePathList");
        Iterator it2 = filePathList.iterator();
        while (it2.hasNext()) {
            FileUtils.INSTANCE.deleteFile((String) it2.next());
        }
    }

    /* renamed from: A */
    public final void m39057A(List<? extends Shape> shapeList) {
        if (shapeList.isEmpty()) {
            return;
        }
        EditorBundleKt.postEvent(getEditorBundle(), new StartTransformEvent(new ShapeTransformBean().setTransformShapes(new ArrayList(shapeList))));
    }

    /* renamed from: B */
    public final List<CreateImageShapeBean> m39058B(List<String> filePathList, List<? extends Shape> sourceShapeList) {
        Object orNull;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : filePathList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            orNull = CollectionsKt___CollectionsKt.getOrNull(sourceShapeList, i);
            arrayList.add(new CreateImageShapeBean((String) obj, (Shape) orNull));
            i = i2;
        }
        return arrayList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CreateImageShapeAction> create() {
        Observable<CreateImageShapeAction> map = Observable.just(this).observeOn(getMainUIScheduler()).filter(new C9473e()).flatMap(new C9474f()).flatMap(new C9475g()).flatMap(new C9476h()).map(new C9477i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final boolean getAddToCmdStack() {
        return this.addToCmdStack;
    }

    @Nullable
    public final CompositeCommand getCompositeCommand() {
        return this.compositeCommand;
    }

    @Nullable
    public final TouchPoint getInsertPoint() {
        return this.insertPoint;
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    @NotNull
    public final List<Shape> getSourceShapeList() {
        return this.sourceShapeList;
    }

    @Nullable
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    /* renamed from: isStartTransform, reason: from getter */
    public final boolean getIsStartTransform() {
        return this.isStartTransform;
    }

    /* renamed from: o */
    public final Observable<List<Shape>> m39059o(BoxInfo boxInfo, NotePage notePage) {
        Observable<List<Shape>> map = m39067z().observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C9469a(boxInfo, notePage)).doOnNext(new C9470b()).map(new C9471c()).map(new C9472d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final boolean m39060p() {
        return HandlerManager.checkNoteLayer$default(getEditorBundle().getUiBundle().getHandlerManager(), false, 1, null);
    }

    /* renamed from: q */
    public final Observable<List<Shape>> m39061q(BoxInfo boxInfo) {
        List mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.shapeList);
        Observable<List<Shape>> map = EditorShapesActionsKt.addCrossPageShapes(this, boxInfo, this.shapeList, this.compositeCommand).map(C9478j.f49764e).doOnNext(new C9479k(mutableList)).doOnNext(new C9480l(mutableList)).map(new C9481m());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: r */
    public final Observable<CreateImageShapeAction> m39062r() {
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Observable<CreateImageShapeAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable flatMap = m39064w(boxInfo).flatMap(new C9482n(boxInfo)).filter(C9483o.f49771e).flatMap(new C9484p(boxInfo));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable flatMap2 = RxjavaKt.doOnNextIf(flatMap, new Function1<List<? extends Shape>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$createImageShape$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull List<? extends Shape> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                CompositeCommand compositeCommand = CreateImageShapeAction.this.getCompositeCommand();
                boolean z = false;
                if (compositeCommand != null && compositeCommand.hasCommand()) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.ige
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CreateImageShapeAction.m39054s(CreateImageShapeAction.this, (List) obj);
            }
        }).flatMap(new C9485q(boxInfo));
        Intrinsics.checkNotNullExpressionValue(flatMap2, "flatMap(...)");
        Observable<CreateImageShapeAction> map = RxjavaKt.doOnNextIf(flatMap2, new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction$createImageShape$7
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(CreateImageShapeAction.this.getIsStartTransform());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.jge
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CreateImageShapeAction.m39055t(CreateImageShapeAction.this, obj);
            }
        }).map(new C9486r());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setAddToCmdStack(boolean z) {
        this.addToCmdStack = z;
    }

    public final void setCompositeCommand(@Nullable CompositeCommand compositeCommand) {
        this.compositeCommand = compositeCommand;
    }

    public final void setInsertPoint(@Nullable TouchPoint touchPoint) {
        this.insertPoint = touchPoint;
    }

    public final void setShapeList(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shapeList = list;
    }

    public final void setSourceShapeList(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.sourceShapeList = list;
    }

    public final void setStartTransform(boolean z) {
        this.isStartTransform = z;
    }

    public final void setVirtualBoxInfo(@Nullable BoxInfo boxInfo) {
        this.virtualBoxInfo = boxInfo;
    }

    /* renamed from: u */
    public final Observable<CreateImageShapeRequest> m39063u(BoxInfo boxInfo, NotePage notePage, final List<String> filePathList) {
        RenderContext m39066y = m39066y(boxInfo);
        Size viewSize = EditorBundleKt.viewSize(getEditorBundle());
        PageInfo m72357clone = notePage.getPageInfo().m72357clone();
        m72357clone.setWidth(viewSize.getWidth());
        m72357clone.setHeight(viewSize.getHeight());
        m39066y.getRenderMeasure().setPageInfo(m72357clone);
        CreateImageShapeRequest createImageShapeRequest = new CreateImageShapeRequest(EditorBundleKt.noteBundle(getEditorBundle()), m39066y, notePage, m39058B(filePathList, this.sourceShapeList));
        createImageShapeRequest.setAddToCmdStack(this.addToCmdStack);
        createImageShapeRequest.setInsertPoint(this.insertPoint);
        Observable<CreateImageShapeRequest> observeOn = RxBaseAppActionKt.submitRequestToNote(this, createImageShapeRequest).observeOn(Schedulers.m61350io()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.hge
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                CreateImageShapeAction.m39056v(filePathList);
            }
        }).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: w */
    public final Observable<NotePage> m39064w(BoxInfo boxInfo) {
        return new EnsureNotePageAction(getEditorBundle(), boxInfo).build();
    }

    /* renamed from: x */
    public final Observable<CreateImageShapeAction> m39065x() {
        if (this.virtualBoxInfo != null) {
            Observable<CreateImageShapeAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = CommonEditorActionsKt.loadCurrentVisibleBox(this).map(new C9487s());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: y */
    public final RenderContext m39066y(BoxInfo boxInfo) {
        return new RenderContext(new Paint(), BoxInfoUtils.INSTANCE.noteRenderMatrix(boxInfo));
    }

    /* renamed from: z */
    public final Observable<List<String>> m39067z() {
        SaveImageUriToFileAction saveImageUriToFileAction = new SaveImageUriToFileAction(getEditorBundle());
        saveImageUriToFileAction.getUriList().addAll(this.uriList);
        Observable map = saveImageUriToFileAction.build().map(C9488t.f49778e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
