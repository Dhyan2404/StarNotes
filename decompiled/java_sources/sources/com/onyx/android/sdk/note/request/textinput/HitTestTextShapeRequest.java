package com.onyx.android.sdk.note.request.textinput;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.text.TextInputConfig;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0014\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u0016\u001a\u00020\u0014\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010 \u001a\u00020\u001b¢\u0006\u0004\b3\u00104J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016J\u0006\u0010\r\u001a\u00020\fJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u0010\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0015R\u0017\u0010\u0011\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010 \u001a\u00020\u001b8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u001e\u0010$\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010+\u001a\u00020\f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b)\u0010*R\"\u00102\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101¨\u00065"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;", "inputConfig", "setInputConfig", "", "inputTextShapeDefaultX", "setInputTextShapeDefaultX", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getHitTextShape", "", "isHitTestSelectedShapes", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", C6998g.f39679a, C6997f.f39671c, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "getNotePage", "()Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "i", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getTouchPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "", "j", "Ljava/util/List;", "selectedShapes", C4921e.f26537n, "Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;", "l", "F", "m", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "hitTextShape", GoogleApiAvailabilityLight.f29016b, Constants.HASIDCALL_INDEX_SIG, "getCreateNew", Constants.BOOLEAN_VALUE_SIG, "setCreateNew", "(Z)V", "createNew", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HitTestTextShapeRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final NotePage notePage;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final TouchPoint touchPoint;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public List<Shape> selectedShapes;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public TextInputConfig inputConfig;

    /* renamed from: l, reason: from kotlin metadata */
    public float inputTextShapeDefaultX;

    /* renamed from: m, reason: from kotlin metadata */
    public Shape hitTextShape;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean createNew;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HitTestTextShapeRequest(@NotNull NoteBundle noteBundle, @NotNull BoxInfo virtualBoxInfo, @NotNull NotePage notePage, @NotNull TouchPoint touchPoint) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        this.virtualBoxInfo = virtualBoxInfo;
        this.notePage = notePage;
        this.touchPoint = touchPoint;
        this.inputTextShapeDefaultX = TextRenderUtil.INSTANCE.getInputTextShapeDefaultX();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        if (!this.createNew) {
            m34218g(this.notePage);
        }
        m34217f(this.notePage);
    }

    /* renamed from: f */
    public final void m34217f(NotePage notePage) {
        Object first;
        if (CollectionKt.isNonBlank(this.selectedShapes)) {
            List<Shape> list = this.selectedShapes;
            Intrinsics.checkNotNull(list);
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
            this.hitTextShape = (Shape) first;
            return;
        }
        CreateTextShapeRequest createTextShapeRequest = new CreateTextShapeRequest(getNoteBundle(), this.virtualBoxInfo, notePage, this.touchPoint);
        createTextShapeRequest.setInputTextShapeDefaultX(this.inputTextShapeDefaultX);
        TextInputConfig textInputConfig = this.inputConfig;
        if (textInputConfig != null) {
            createTextShapeRequest.setInputConfig(textInputConfig);
        }
        createTextShapeRequest.execute2();
        Shape textShape = createTextShapeRequest.getTextShape();
        if (textShape == null) {
            return;
        }
        this.hitTextShape = textShape;
        NotePageShape.INSTANCE.saveShape(notePage, textShape);
        this.createNew = true;
    }

    /* renamed from: g */
    public final void m34218g(NotePage notePage) {
        List<Shape> shapeList = notePage.getShapeList();
        if (shapeList.isEmpty()) {
            return;
        }
        this.selectedShapes = new ArrayList();
        for (Shape shape : shapeList) {
            if (ShapeTypes.INSTANCE.getTargetType(shape) == 16 && ShapeUtils.INSTANCE.isShapeOnCurrentLayer(notePage, shape) && shape.getBoundingRect().contains(this.touchPoint.getX(), this.touchPoint.getY())) {
                List<Shape> list = this.selectedShapes;
                if (list != null) {
                    CollectionKt.safeAdd(list, shape);
                    return;
                }
                return;
            }
        }
    }

    public final boolean getCreateNew() {
        return this.createNew;
    }

    @NotNull
    public final Shape getHitTextShape() {
        Shape shape = this.hitTextShape;
        if (shape != null) {
            return shape;
        }
        Intrinsics.throwUninitializedPropertyAccessException("hitTextShape");
        return null;
    }

    @NotNull
    public final NotePage getNotePage() {
        return this.notePage;
    }

    @NotNull
    public final TouchPoint getTouchPoint() {
        return this.touchPoint;
    }

    public final boolean isHitTestSelectedShapes() {
        return CollectionKt.isNonBlank(this.selectedShapes);
    }

    public final void setCreateNew(boolean z) {
        this.createNew = z;
    }

    @NotNull
    public final HitTestTextShapeRequest setInputConfig(@NotNull TextInputConfig inputConfig) {
        Intrinsics.checkNotNullParameter(inputConfig, "inputConfig");
        this.inputConfig = inputConfig;
        return this;
    }

    @NotNull
    public final HitTestTextShapeRequest setInputTextShapeDefaultX(float inputTextShapeDefaultX) {
        this.inputTextShapeDefaultX = inputTextShapeDefaultX;
        return this;
    }
}
