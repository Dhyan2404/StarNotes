package com.onyx.android.sdk.universal.editor.action.audio;

import android.graphics.Matrix;
import android.graphics.Paint;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.ShapeBean;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeConvertUtils;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.audio.CreateAudioShapeRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B!\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0019¢\u0006\u0004\b&\u0010'J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0002J$\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002J\"\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00042\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u000e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0002R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR$\u0010#\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/audio/CreateAudioShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "m", "Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;", AbstractLogger.REQUEST, "", "l", "list", "q", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "p", C4921e.f26528e, "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "audioInfoBean", "", "i", Constants.HASIDCALL_INDEX_SIG, "addToCmdStack", "j", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "virtualBoxInfo", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateAudioShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateAudioShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/audio/CreateAudioShapeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,101:1\n1549#2:102\n1620#2,3:103\n*S KotlinDebug\n*F\n+ 1 CreateAudioShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/audio/CreateAudioShapeAction\n*L\n85#1:102\n85#1:103,3\n*E\n"})
/* loaded from: classes8.dex */
public final class CreateAudioShapeAction extends RxBaseAppAction<List<? extends Shape>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public AudioInfoBean audioInfoBean;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean addToCmdStack;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public BoxInfo virtualBoxInfo;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.audio.CreateAudioShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C8424a<T> implements Consumer {
        public C8424a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CreateAudioShapeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateAudioShapeAction.this.m37151l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.audio.CreateAudioShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C8425b<T, R> implements Function {

        /* renamed from: e */
        public static final C8425b<T, R> f47913e = new C8425b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull CreateAudioShapeRequest it2) {
            List<Shape> listOfNotNull;
            Intrinsics.checkNotNullParameter(it2, "it");
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(it2.getAudioShape());
            return listOfNotNull;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.audio.CreateAudioShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C8426c<T, R> implements Function {
        public C8426c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull CreateAudioShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateAudioShapeAction.this.m37153n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.audio.CreateAudioShapeAction$d */
    /* loaded from: classes8.dex */
    public static final class C8427d<T, R> implements Function {
        public C8427d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateAudioShapeAction.this.m37156q(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.audio.CreateAudioShapeAction$e */
    /* loaded from: classes8.dex */
    public static final class C8428e<T> implements Consumer {
        public C8428e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateAudioShapeAction.this.setVirtualBoxInfo(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.audio.CreateAudioShapeAction$f */
    /* loaded from: classes8.dex */
    public static final class C8429f<T, R> implements Function {
        public C8429f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CreateAudioShapeAction apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateAudioShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.audio.CreateAudioShapeAction$g */
    /* loaded from: classes8.dex */
    public static final class C8430g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f47918e;

        /* JADX WARN: Multi-variable type inference failed */
        public C8430g(List<? extends Shape> list) {
            this.f47918e = list;
        }

        @NotNull
        /* renamed from: a */
        public final List<Shape> m37163a(boolean z) {
            return this.f47918e;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m37163a(((Boolean) obj).booleanValue());
        }
    }

    public /* synthetic */ CreateAudioShapeAction(EditorBundle editorBundle, AudioInfoBean audioInfoBean, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, audioInfoBean, (i & 4) != 0 ? true : z);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<Shape>> create() {
        Observable<List<Shape>> flatMap = m37154o().observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C8426c()).flatMap(new C8427d());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @Nullable
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    /* renamed from: l */
    public final void m37151l(CreateAudioShapeRequest request) {
        ResourceModel resourceModel;
        final Shape audioShape = request.getAudioShape();
        if (audioShape == null || (resourceModel = request.getResourceModel()) == null) {
            return;
        }
        ShapeBean shapeBean = (ShapeBean) AnyKt.getOrElse(EditorBundleKt.noteBundle(getEditorBundle()).findShapeBean(this.audioInfoBean), new Function0<ShapeBean>() { // from class: com.onyx.android.sdk.universal.editor.action.audio.CreateAudioShapeAction$addAudioShapeBean$shapeBean$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ShapeBean invoke() {
                ShapeBean shapeBean2 = new ShapeBean();
                Shape shape = Shape.this;
                shapeBean2.m72308setShape(shape);
                shapeBean2.m72309setShapeModel(ShapeConvertUtils.INSTANCE.modelFromShape(shape));
                shapeBean2.m72306setLayerId(shape.getLayerId());
                return shapeBean2;
            }
        });
        shapeBean.setAudioInfoBean(this.audioInfoBean);
        shapeBean.m72307setResourceModel(resourceModel);
        CollectionKt.addIfNotContains(EditorBundleKt.noteBundle(getEditorBundle()).getAudioShapeBeanList(), shapeBean);
    }

    /* renamed from: m */
    public final Observable<List<Shape>> m37152m(BoxInfo boxInfo, NotePage notePage) {
        CreateAudioShapeRequest createAudioShapeRequest = new CreateAudioShapeRequest(getEditorBundle(), m37155p(boxInfo), notePage, this.audioInfoBean);
        createAudioShapeRequest.setAddToCmdStack(this.addToCmdStack);
        Observable<List<Shape>> map = RxBaseAppActionKt.submitRequestToNote(this, createAudioShapeRequest).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C8424a()).map(C8425b.f47913e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<List<Shape>> m37153n() {
        List emptyList;
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo != null) {
            return m37152m(boxInfo, getEditorBundle().getWorkBundle().getVirtualPolicy().ensureGlobalNotePage());
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Observable<List<Shape>> just = Observable.just(emptyList);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: o */
    public final Observable<CreateAudioShapeAction> m37154o() {
        Observable map = CommonEditorActionsKt.loadCurrentVisibleBox(this).doOnNext(new C8428e()).map(new C8429f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final RenderContext m37155p(BoxInfo boxInfo) {
        RenderContext renderContext = new RenderContext(new Paint(), new Matrix());
        renderContext.setViewPortScale(boxInfo.getActualScale());
        return renderContext;
    }

    /* renamed from: q */
    public final Observable<List<Shape>> m37156q(List<? extends Shape> list) {
        int collectionSizeOrDefault;
        Set set;
        List<? extends Shape> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((Shape) it2.next()).getPageUniqueId());
        }
        set = CollectionsKt___CollectionsKt.toSet(arrayList);
        Observable map = CommonEditorActionsKt.updateVirtualPages(this, set).map(new C8430g(list));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setVirtualBoxInfo(@Nullable BoxInfo boxInfo) {
        this.virtualBoxInfo = boxInfo;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateAudioShapeAction(@NotNull EditorBundle editorBundle, @NotNull AudioInfoBean audioInfoBean, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(audioInfoBean, "audioInfoBean");
        this.audioInfoBean = audioInfoBean;
        this.addToCmdStack = z;
    }
}
