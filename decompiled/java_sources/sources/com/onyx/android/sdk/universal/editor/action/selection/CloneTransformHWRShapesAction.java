package com.onyx.android.sdk.universal.editor.action.selection;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.ShapeTypesetArgs;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShape;
import com.onyx.android.sdk.note.common.text.layout.TextShapeFormatter;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler;
import com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\u0015B-\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0013\u0010\u0014J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", C6999h.f39688c, Constants.STRING_SIG, "notePageId", "i", "Ljava/util/List;", "hwrTextShapes", "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;", "j", "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;", "args", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCloneTransformHWRShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloneTransformHWRShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,38:1\n1855#2,2:39\n*S KotlinDebug\n*F\n+ 1 CloneTransformHWRShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction\n*L\n31#1:39,2\n*E\n"})
/* loaded from: classes8.dex */
public final class CloneTransformHWRShapesAction extends RxBaseAppAction<List<? extends HWRTextShape>> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: k */
    public static final float f50538k = 0.08f;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String notePageId;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<HWRTextShape> hwrTextShapes;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final ShapeTypesetArgs args;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction$Companion;", "", "()V", "DEFAULT_CHAR_SPACING", "", "getDEFAULT_CHAR_SPACING", "()F", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final float getDEFAULT_CHAR_SPACING() {
            return CloneTransformHWRShapesAction.f50538k;
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloneTransformHWRShapesAction(@NotNull EditorBundle editorBundle, @NotNull String notePageId, @NotNull List<HWRTextShape> hwrTextShapes, @NotNull ShapeTypesetArgs args) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(notePageId, "notePageId");
        Intrinsics.checkNotNullParameter(hwrTextShapes, "hwrTextShapes");
        Intrinsics.checkNotNullParameter(args, "args");
        this.notePageId = notePageId;
        this.hwrTextShapes = hwrTextShapes;
        this.args = args;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<HWRTextShape>> create() {
        List<HWRTextShape> flatten;
        BaseShapeHandler activeHandler = EditorBundleKt.handlerManager(getEditorBundle()).getShapeHandlerManager().getActiveHandler();
        this.args.setCharSpacing(Float.valueOf(f50538k));
        flatten = CollectionsKt__IterablesKt.flatten(new TextShapeFormatter().format(this.hwrTextShapes, this.args));
        TransformHandler transformHandler = activeHandler instanceof TransformHandler ? (TransformHandler) activeHandler : null;
        if (transformHandler == null) {
            Observable<List<HWRTextShape>> just = Observable.just(flatten);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        transformHandler.getShapeTransformBean();
        for (HWRTextShape hWRTextShape : flatten) {
            hWRTextShape.setPageUniqueId(this.notePageId);
            hWRTextShape.setShapeUniqueId(ShapeUtils.INSTANCE.generateUniqueId());
            hWRTextShape.resetConnection();
        }
        Observable<List<HWRTextShape>> just2 = Observable.just(flatten);
        Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
        return just2;
    }
}
