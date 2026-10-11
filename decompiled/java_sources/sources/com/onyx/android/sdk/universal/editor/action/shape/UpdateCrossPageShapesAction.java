package com.onyx.android.sdk.universal.editor.action.shape;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.document.doc.TransformShapeContext;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.shape.UpdateCrossPageShapesRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0001B\u0017\u0012\u0006\u00107\u001a\u000206\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b8\u00109J\u001a\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0005H\u0014J\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002J\u0014\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\b0\u0005H\u0002J\u0016\u0010\f\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\bH\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\b8\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\"\u0010\u001c\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010+\u001a\u00020%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R.\u00101\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b3\u00104¨\u0006:"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "getTargetPageShapeMap", "", "l", "visibleBoxList", "", "m", "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;", "transformShapeContext", "i", "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "shapeList", "j", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "virtualBoxInfo", "", C4921e.f26537n, Constants.HASIDCALL_INDEX_SIG, "getCheckDuplicatedShapes", Constants.BOOLEAN_VALUE_SIG, "setCheckDuplicatedShapes", "(Z)V", "checkDuplicatedShapes", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "getChangedShapeBean", "()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "setChangedShapeBean", "(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V", "changedShapeBean", "Ljava/util/Map;", "getCrossPageShapeMap", "()Ljava/util/Map;", "setCrossPageShapeMap", "(Ljava/util/Map;)V", "crossPageShapeMap", "Lcom/onyx/android/sdk/universal/editor/request/shape/UpdateCrossPageShapesRequest;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/request/shape/UpdateCrossPageShapesRequest;", AbstractLogger.REQUEST, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UpdateCrossPageShapesAction extends RxBaseAppAction<Map<Shape, ? extends BoxInfo>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final TransformShapeContext transformShapeContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapeList;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public BoxInfo virtualBoxInfo;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean checkDuplicatedShapes;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public ChangedShapeBean changedShapeBean;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public Map<Shape, BoxInfo> crossPageShapeMap;

    /* renamed from: n, reason: from kotlin metadata */
    public UpdateCrossPageShapesRequest request;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.UpdateCrossPageShapesAction$a */
    /* loaded from: classes8.dex */
    public static final class C10147a<T> implements Consumer {
        public C10147a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateCrossPageShapesAction.this.m40327m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.UpdateCrossPageShapesAction$b */
    /* loaded from: classes8.dex */
    public static final class C10148b<T, R> implements Function {
        public C10148b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<Shape, BoxInfo> apply(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateCrossPageShapesAction.this.getCrossPageShapeMap();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateCrossPageShapesAction(@NotNull EditorBundle editorBundle, @NotNull TransformShapeContext transformShapeContext) {
        super(editorBundle);
        Map<Shape, BoxInfo> emptyMap;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(transformShapeContext, "transformShapeContext");
        this.transformShapeContext = transformShapeContext;
        this.shapeList = transformShapeContext.getShapeList();
        this.virtualBoxInfo = transformShapeContext.getVirtualBoxInfo();
        this.changedShapeBean = new ChangedShapeBean();
        emptyMap = MapsKt__MapsKt.emptyMap();
        this.crossPageShapeMap = emptyMap;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Map<Shape, BoxInfo>> create() {
        Observable map = m40326l().observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C10147a()).map(new C10148b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final ChangedShapeBean getChangedShapeBean() {
        return this.changedShapeBean;
    }

    public final boolean getCheckDuplicatedShapes() {
        return this.checkDuplicatedShapes;
    }

    @NotNull
    public final Map<Shape, BoxInfo> getCrossPageShapeMap() {
        return this.crossPageShapeMap;
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    @NotNull
    public final Map<Shape, BoxInfo> getTargetPageShapeMap() {
        UpdateCrossPageShapesRequest updateCrossPageShapesRequest = this.request;
        if (updateCrossPageShapesRequest == null) {
            Intrinsics.throwUninitializedPropertyAccessException(AbstractLogger.REQUEST);
            updateCrossPageShapesRequest = null;
        }
        return updateCrossPageShapesRequest.getTargetPageShapeMap();
    }

    @NotNull
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    /* renamed from: l */
    public final Observable<List<BoxInfo>> m40326l() {
        return ComputeBoxListActionsKt.findBoxListObservable(this, this.transformShapeContext, this.shapeList, this.virtualBoxInfo);
    }

    /* renamed from: m */
    public final void m40327m(List<BoxInfo> visibleBoxList) {
        UpdateCrossPageShapesRequest updateCrossPageShapesRequest = new UpdateCrossPageShapesRequest(getEditorBundle().getWorkBundle(), visibleBoxList, this.virtualBoxInfo, this.shapeList);
        updateCrossPageShapesRequest.setCheckDuplicatedShapes(this.checkDuplicatedShapes);
        updateCrossPageShapesRequest.execute2();
        this.changedShapeBean.merge(updateCrossPageShapesRequest.getChangedShapeBean());
        this.crossPageShapeMap = updateCrossPageShapesRequest.getCrossPageShapeMap();
        this.request = updateCrossPageShapesRequest;
    }

    public final void setChangedShapeBean(@NotNull ChangedShapeBean changedShapeBean) {
        Intrinsics.checkNotNullParameter(changedShapeBean, "<set-?>");
        this.changedShapeBean = changedShapeBean;
    }

    public final void setCheckDuplicatedShapes(boolean z) {
        this.checkDuplicatedShapes = z;
    }

    public final void setCrossPageShapeMap(@NotNull Map<Shape, BoxInfo> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.crossPageShapeMap = map;
    }

    public final void setVirtualBoxInfo(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<set-?>");
        this.virtualBoxInfo = boxInfo;
    }
}
