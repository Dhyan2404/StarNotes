package com.onyx.android.sdk.universal.editor.action.shape;

import android.graphics.Matrix;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.command.AttributesCommand;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.data.shape.ShapeAttributesBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.extension.PhysiceExtKt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.command.AddUndoRedoCommandAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B#\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0014\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0002J\b\u0010\t\u001a\u00020\bH\u0002J \u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\u00022\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0002R \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00060\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR.\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00100\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;", "m", "", GoogleApiAvailabilityLight.f29016b, "originAttrMap", "l", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Ljava/util/Map;", "shapeAttrPairs", "Landroid/graphics/Matrix;", "i", "getTransformShapeMatrixMap", "()Ljava/util/Map;", "setTransformShapeMatrixMap", "(Ljava/util/Map;)V", "transformShapeMatrixMap", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/Map;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nChangeShapeAttributesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangeShapeAttributesAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,79:1\n215#2,2:80\n*S KotlinDebug\n*F\n+ 1 ChangeShapeAttributesAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction\n*L\n43#1:80,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ChangeShapeAttributesAction extends RxBaseAppAction<ChangeShapeAttributesAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Map<Shape, ShapeAttributesBean> shapeAttrPairs;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public Map<Shape, ? extends Matrix> transformShapeMatrixMap;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ChangeShapeAttributesAction$a */
    /* loaded from: classes8.dex */
    public static final class C10009a<T, R> implements Function {
        public C10009a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<String, ShapeAttributesBean> apply(@NotNull ChangeShapeAttributesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ChangeShapeAttributesAction.this.m40093m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ChangeShapeAttributesAction$b */
    /* loaded from: classes8.dex */
    public static final class C10010b<T> implements Consumer {
        public C10010b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Map<String, ShapeAttributesBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ChangeShapeAttributesAction.this.m40094n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ChangeShapeAttributesAction$c */
    /* loaded from: classes8.dex */
    public static final class C10011c<T, R> implements Function {
        public C10011c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Map<String, ShapeAttributesBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ChangeShapeAttributesAction.this.m40092l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ChangeShapeAttributesAction$d */
    /* loaded from: classes8.dex */
    public static final class C10012d<T, R> implements Function {
        public C10012d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ChangeShapeAttributesAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ChangeShapeAttributesAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChangeShapeAttributesAction(@NotNull EditorBundle editorBundle, @NotNull Map<Shape, ShapeAttributesBean> shapeAttrPairs) {
        super(editorBundle);
        Map<Shape, ? extends Matrix> emptyMap;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapeAttrPairs, "shapeAttrPairs");
        this.shapeAttrPairs = shapeAttrPairs;
        emptyMap = MapsKt__MapsKt.emptyMap();
        this.transformShapeMatrixMap = emptyMap;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ChangeShapeAttributesAction> create() {
        Observable<ChangeShapeAttributesAction> map = Observable.just(this).map(new C10009a()).doOnNext(new C10010b()).flatMap(new C10011c()).map(new C10012d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final Map<Shape, Matrix> getTransformShapeMatrixMap() {
        return this.transformShapeMatrixMap;
    }

    /* renamed from: l */
    public final Observable<?> m40092l(Map<String, ShapeAttributesBean> originAttrMap) {
        AttributesCommand attributesCommand = new AttributesCommand(this.shapeAttrPairs);
        attributesCommand.setShapeOriginAttrMap(originAttrMap);
        return new AddUndoRedoCommandAction(getEditorBundle(), attributesCommand).build();
    }

    /* renamed from: m */
    public final Map<String, ShapeAttributesBean> m40093m() {
        Map<String, ShapeAttributesBean> map = CollectionKt.toMap(this.shapeAttrPairs.keySet(), new Function1<Shape, String>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.ChangeShapeAttributesAction$apply$shapeOriginAttrMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getShapeUniqueId();
            }
        }, new Function1<Shape, ShapeAttributesBean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.ChangeShapeAttributesAction$apply$shapeOriginAttrMap$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final ShapeAttributesBean invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return ShapeAttributesBean.INSTANCE.buildAttributes(it2);
            }
        });
        for (Map.Entry<Shape, ShapeAttributesBean> entry : this.shapeAttrPairs.entrySet()) {
            Shape key = entry.getKey();
            if (!ShapeTypes.INSTANCE.isReferenceShape(key)) {
                if (entry.getValue().getIsWidthChanged()) {
                    key.setStrokeWidth(PhysiceExtKt.toScreenStrokeWidth(entry.getValue().getShapeWidth()));
                }
                if (entry.getValue().getIsLineStyleTypeChanged()) {
                    key.setLineStyle(entry.getValue().getLineStyleType());
                }
                if (entry.getValue().getIsColorChanged()) {
                    key.setStrokeColor(entry.getValue().getColor());
                }
                if (entry.getValue().getIsFillColorEnabledChanged()) {
                    key.enableFillColor(entry.getValue().getIsFillColorEnabled());
                }
                if (entry.getValue().getIsFillColorChanged()) {
                    key.setFillColor(entry.getValue().getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_FILL_COLOR java.lang.String());
                }
            }
        }
        return map;
    }

    /* renamed from: n */
    public final void m40094n() {
        ChangedShapeBean addShapesToChangedShapeBean = ChangedShapeBean.INSTANCE.addShapesToChangedShapeBean(this.shapeAttrPairs.keySet());
        addShapesToChangedShapeBean.setTransformShapeMatrixMap(this.transformShapeMatrixMap);
        EditorBundleKt.postEvent(getEditorBundle(), addShapesToChangedShapeBean);
    }

    public final void setTransformShapeMatrixMap(@NotNull Map<Shape, ? extends Matrix> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.transformShapeMatrixMap = map;
    }
}
