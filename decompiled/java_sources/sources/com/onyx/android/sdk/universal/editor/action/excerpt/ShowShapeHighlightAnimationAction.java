package com.onyx.android.sdk.universal.editor.action.excerpt;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.data.shape.ExcerptAttr;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.replicator.note.data.annotation.WritingMode;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B!\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowShapeHighlightAnimationAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "", "i", "J", "animationDuration", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;J)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ShowShapeHighlightAnimationAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Shape shape;

    /* renamed from: i, reason: from kotlin metadata */
    public final long animationDuration;

    public /* synthetic */ ShowShapeHighlightAnimationAction(EditorBundle editorBundle, Shape shape, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, shape, (i & 4) != 0 ? ResManager.INSTANCE.getLong(C8045R.integer.shape_highlight_animation_duration) : j);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        List listOf;
        WritingMode writingMode;
        List<RectF> queryShapeBoundingRect = ShapeTypes.INSTANCE.queryShapeBoundingRect(this.shape);
        EditorBundle editorBundle = getEditorBundle();
        String pageUniqueId = this.shape.getPageUniqueId();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(queryShapeBoundingRect);
        ShowRectHighlightAnimationAction showRectHighlightAnimationAction = new ShowRectHighlightAnimationAction(editorBundle, pageUniqueId, listOf, this.animationDuration);
        ExcerptAttr excerptAttr = MMKVNote.INSTANCE.getExcerptShapeAttrOption().get();
        showRectHighlightAnimationAction.setStrokePaint(excerptAttr.createStrokePaint());
        showRectHighlightAnimationAction.setFillPaint(excerptAttr.createFillPaint(EditorBundleKt.isCurDarkTheme(getEditorBundle(), this.shape.getPageUniqueId())));
        ExcerptInfoBean excerptInfoBean = ShapePersistOptionsKt.getExcerptInfoBean(this.shape);
        boolean z = false;
        if (excerptInfoBean != null && (writingMode = excerptInfoBean.getWritingMode()) != null && writingMode.isVertical()) {
            z = true;
        }
        showRectHighlightAnimationAction.setVerticalWritingMode(z);
        return showRectHighlightAnimationAction.build();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShowShapeHighlightAnimationAction(@NotNull EditorBundle editorBundle, @NotNull Shape shape, long j) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.shape = shape;
        this.animationDuration = j;
    }
}
