package com.onyx.android.sdk.universal.editor.action.hwr;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.shape.HWRTextBlockBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShape;
import com.onyx.android.sdk.note.request.CreateHWRTextCharShapeRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.request.hwr.HWRConvertOutputToBlockRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001e2\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\u001eB=\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0012\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00020\u0002\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0014\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00020\u0004H\u0002J\"\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R \u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;", "l", "hwrTextBlocks", "m", "", C6999h.f39688c, Constants.STRING_SIG, CouchFieldKey.KEY_TOC_PAGE_ID, "", "i", "I", "layerId", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "j", "Ljava/util/List;", "hwrBlockOutputs", "", C4921e.f26537n, "F", "minFontSize", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;ILjava/util/List;F)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HWRConvertTexShapeAction extends RxBaseAppAction<List<? extends Shape>> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: l */
    public static final float f49607l = 4.0f;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String pageId;

    /* renamed from: i, reason: from kotlin metadata */
    public final int layerId;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<List<HWROutput>> hwrBlockOutputs;

    /* renamed from: k, reason: from kotlin metadata */
    public final float minFontSize;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0005\u001a\u00020\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$Companion;", "", "()V", "MIN_FONT_RATE", "", "getMinFontSizeLimit", "shapes", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nHWRConvertTexShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRConvertTexShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n766#2:76\n857#2,2:77\n1549#2:79\n1620#2,3:80\n1#3:83\n*S KotlinDebug\n*F\n+ 1 HWRConvertTexShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$Companion\n*L\n69#1:76\n69#1:77,2\n70#1:79\n70#1:80,3\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final float getMinFontSizeLimit(@NotNull List<? extends Shape> shapes) {
            int collectionSizeOrDefault;
            float m73067minOrThrow;
            Intrinsics.checkNotNullParameter(shapes, "shapes");
            List<Shape> filterNormalShapes = ShapeTypes.INSTANCE.filterNormalShapes(shapes);
            ArrayList arrayList = new ArrayList();
            for (Object obj : filterNormalShapes) {
                if (ShapeTypes.INSTANCE.isSupportHWR((Shape) obj)) {
                    arrayList.add(obj);
                }
            }
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList2.add(Float.valueOf(((Shape) it2.next()).getStrokeWidth()));
            }
            if ((arrayList2.isEmpty() ^ true ? arrayList2 : null) == null) {
                return 0.0f;
            }
            m73067minOrThrow = CollectionsKt___CollectionsKt.m73067minOrThrow((Iterable<Float>) arrayList2);
            return m73067minOrThrow * 4.0f;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertTexShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C9398a<T, R> implements Function {
        public C9398a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<HWRTextBlockBean> apply(@NotNull HWRConvertTexShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HWRConvertOutputToBlockRequest(HWRConvertTexShapeAction.this.getEditorBundle().getAiBundle().getHwrBundle(), HWRConvertTexShapeAction.this.hwrBlockOutputs, HWRConvertTexShapeAction.this.minFontSize).execute();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertTexShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C9399b<T, R> implements Function {
        public C9399b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<HWRTextBlockBean>> apply(@NotNull HWRConvertTexShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRConvertTexShapeAction.this.m38894l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertTexShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C9400c<T, R> implements Function {
        public C9400c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull List<HWRTextBlockBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRConvertTexShapeAction.this.m38895m(it2);
        }
    }

    public /* synthetic */ HWRConvertTexShapeAction(EditorBundle editorBundle, String str, int i, List list, float f, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, str, i, list, (i2 & 16) != 0 ? 0.0f : f);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<Shape>> create() {
        Observable<List<Shape>> flatMap = Observable.just(this).flatMap(new C9399b()).flatMap(new C9400c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<List<HWRTextBlockBean>> m38894l() {
        Observable<List<HWRTextBlockBean>> map = Observable.just(this).observeOn(getEditorBundle().getAiBundle().getHwrBundle().getHwrObserveOn()).map(new C9398a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<List<Shape>> m38895m(final List<HWRTextBlockBean> hwrTextBlocks) {
        return DocCommonActionsKt.createNoteObservable(getEditorBundle(), new Function1<NoteBundle, List<? extends Shape>>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertTexShapeAction$convertTextShape$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<Shape> invoke(@NotNull NoteBundle it2) {
                String str;
                int i;
                Intrinsics.checkNotNullParameter(it2, "it");
                CreateHWRTextCharShapeRequest createHWRTextCharShapeRequest = new CreateHWRTextCharShapeRequest(it2, hwrTextBlocks);
                createHWRTextCharShapeRequest.execute2();
                ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
                ArrayList<HWRTextShape> shapeList = createHWRTextCharShapeRequest.getShapeList();
                str = this.pageId;
                shapeTypes.updatePageId(shapeList, str);
                ArrayList<HWRTextShape> shapeList2 = createHWRTextCharShapeRequest.getShapeList();
                i = this.layerId;
                shapeTypes.updateLayerId(shapeList2, i);
                return createHWRTextCharShapeRequest.getShapeList();
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public HWRConvertTexShapeAction(@NotNull EditorBundle editorBundle, @NotNull String pageId, int i, @NotNull List<? extends List<HWROutput>> hwrBlockOutputs, float f) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(hwrBlockOutputs, "hwrBlockOutputs");
        this.pageId = pageId;
        this.layerId = i;
        this.hwrBlockOutputs = hwrBlockOutputs;
        this.minFontSize = f;
    }
}
