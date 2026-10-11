package com.onyx.android.sdk.note.request.textinput;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.text.TextInputConfig;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeFactory;
import com.onyx.android.sdk.note.common.utils.ShapeTextUtils;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0016\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010&\u001a\u00020$\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b8\u00109J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bJ\u0010\u0010\r\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000eJ\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\u0006\u0010\u0017\u001a\u00020\u000bJ\u0018\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0018\u0010\u001e\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001aH\u0002J\b\u0010\u001f\u001a\u00020\u0015H\u0002J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u0015H\u0002J\u0010\u0010\"\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010#\u001a\u00020\u0005H\u0002R\u0014\u0010&\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010%R\u0017\u0010\u0019\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b\u001c\u0010'\u001a\u0004\b(\u0010)R\u0017\u0010\u001b\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\"\u0010*\u001a\u0004\b+\u0010,R\u0018\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010-R\u0018\u0010/\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010.R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107¨\u0006:"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "", "inputText", "setInputText", "Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;", "inputConfig", "setInputConfig", "", "inputTextShapeDefaultX", "setInputTextShapeDefaultX", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "textStyle", "setTextStyle", "", "limitShapeInNotePage", "limitShapeRectInNotePage", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getTextShape", "defaultShapeTextStyle", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", C6999h.f39688c, "insertPoint", C4921e.f26537n, C6998g.f39679a, "shape", C6997f.f39671c, "i", "j", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "getNotePage", "()Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getTouchPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "textShape", "l", Constants.STRING_SIG, "m", "Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;", GoogleApiAvailabilityLight.f29016b, "F", C4921e.f26528e, Constants.HASIDCALL_INDEX_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CreateTextShapeRequest extends BaseRxNoteRequest {

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
    public ShapeTextStyle textStyle;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public Shape textShape;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public String inputText;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public TextInputConfig inputConfig;

    /* renamed from: n, reason: from kotlin metadata */
    public float inputTextShapeDefaultX;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean limitShapeInNotePage;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateTextShapeRequest(@NotNull NoteBundle noteBundle, @NotNull BoxInfo virtualBoxInfo, @NotNull NotePage notePage, @NotNull TouchPoint touchPoint) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        this.virtualBoxInfo = virtualBoxInfo;
        this.notePage = notePage;
        this.touchPoint = touchPoint;
        this.inputTextShapeDefaultX = TextRenderUtil.INSTANCE.getInputTextShapeDefaultX();
        this.limitShapeInNotePage = true;
    }

    @NotNull
    public final ShapeTextStyle defaultShapeTextStyle() {
        float actualScale = this.virtualBoxInfo.getActualScale();
        ShapeTextStyle defaultTextStyle = m34211j().toDefaultTextStyle();
        m34210i(defaultTextStyle);
        ResManager resManager = ResManager.INSTANCE;
        float dimension = resManager.getDimension(C7485R.dimen.text_box_default_width);
        float dimension2 = resManager.getDimension(C7485R.dimen.text_box_default_height);
        defaultTextStyle.setTextWidth(dimension / actualScale);
        defaultTextStyle.setTextHeight(dimension2 / actualScale);
        return defaultTextStyle;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Shape m34209h = m34209h(this.notePage, this.touchPoint);
        this.textShape = m34209h;
        NotePageShape.INSTANCE.saveShape(this.notePage, m34209h);
        noteBundle.postAddShapeEvent(m34209h);
    }

    /* renamed from: f */
    public final void m34207f(Shape shape) {
        ShapeTextStyle shapeTextStyle = this.textStyle;
        if (shapeTextStyle == null) {
            shapeTextStyle = defaultShapeTextStyle();
        }
        shape.setTextStyle(shapeTextStyle);
        Debug debug = Debug.INSTANCE;
        StringBuilder sb = new StringBuilder();
        sb.append("new textShape textStyle.textWidth/height:");
        ShapeTextStyle textStyle = shape.getTextStyle();
        sb.append(textStyle != null ? Float.valueOf(textStyle.getTextWidth()) : null);
        sb.append('/');
        ShapeTextStyle textStyle2 = shape.getTextStyle();
        sb.append(textStyle2 != null ? Float.valueOf(textStyle2.getTextHeight()) : null);
        debug.m32035d(CreateTextShapeRequest.class, sb.toString(), new Object[0]);
    }

    /* renamed from: g */
    public final Shape m34208g() {
        Shape create = ShapeFactory.INSTANCE.create(16);
        create.setText(this.inputText);
        if (StringKt.isNotBlank(this.inputText)) {
            ShapeTextUtils shapeTextUtils = ShapeTextUtils.INSTANCE;
            String str = this.inputText;
            if (str == null) {
                str = "";
            }
            create.setRichText(shapeTextUtils.convertToHtmlText(str));
        }
        create.setStrokeColor(m34211j().getColor());
        m34207f(create);
        return create;
    }

    @NotNull
    public final NotePage getNotePage() {
        return this.notePage;
    }

    @Nullable
    public final Shape getTextShape() {
        return this.textShape;
    }

    @NotNull
    public final TouchPoint getTouchPoint() {
        return this.touchPoint;
    }

    /* renamed from: h */
    public final Shape m34209h(NotePage notePage, TouchPoint touchPoint) {
        Shape m34208g = m34208g();
        ShapeTextStyle textStyle = m34208g.getTextStyle();
        if (textStyle == null) {
            return m34208g;
        }
        m34212k(textStyle, touchPoint);
        m34208g.onDown(touchPoint, touchPoint);
        TouchPoint touchPoint2 = new TouchPoint(touchPoint.getX() + textStyle.getTextWidth(), touchPoint.getY() + textStyle.getTextHeight());
        m34208g.onUp(touchPoint2, touchPoint2);
        m34208g.ensureShapeUniqueId();
        m34208g.updateShapeRect();
        m34208g.updateShapeTime();
        ShapeUtils.INSTANCE.setShapeZOrder(m34208g, notePage);
        return m34208g;
    }

    /* renamed from: i */
    public final void m34210i(ShapeTextStyle textStyle) {
        if (FileUtils.INSTANCE.fileExist(textStyle.getFontFace())) {
            return;
        }
        textStyle.setFontFace("");
    }

    /* renamed from: j */
    public final TextInputConfig m34211j() {
        if (this.inputConfig == null) {
            this.inputConfig = new TextInputConfig();
        }
        TextInputConfig textInputConfig = this.inputConfig;
        Intrinsics.checkNotNull(textInputConfig);
        return textInputConfig;
    }

    /* renamed from: k */
    public final void m34212k(ShapeTextStyle textStyle, TouchPoint insertPoint) {
        float coerceAtLeast;
        if (this.limitShapeInNotePage) {
            float textWidth = textStyle.getTextWidth();
            float textHeight = textStyle.getTextHeight();
            RectF originRectFWithMargin = this.virtualBoxInfo.getOriginRectFWithMargin();
            float x = insertPoint.getX() + textWidth;
            float f = originRectFWithMargin.right;
            if (x > f) {
                float f2 = this.inputTextShapeDefaultX;
                insertPoint.setX(Math.max(f2, (f - textWidth) - f2));
            }
            float y = insertPoint.getY() + textHeight;
            float f3 = originRectFWithMargin.bottom;
            if (y > f3) {
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(0.0f, f3 - textHeight);
                insertPoint.setY(coerceAtLeast);
            }
        }
    }

    @NotNull
    public final CreateTextShapeRequest limitShapeRectInNotePage(boolean limitShapeInNotePage) {
        this.limitShapeInNotePage = limitShapeInNotePage;
        return this;
    }

    @NotNull
    public final CreateTextShapeRequest setInputConfig(@NotNull TextInputConfig inputConfig) {
        Intrinsics.checkNotNullParameter(inputConfig, "inputConfig");
        this.inputConfig = inputConfig;
        return this;
    }

    @NotNull
    public final CreateTextShapeRequest setInputText(@Nullable String inputText) {
        this.inputText = inputText;
        return this;
    }

    @NotNull
    public final CreateTextShapeRequest setInputTextShapeDefaultX(float inputTextShapeDefaultX) {
        this.inputTextShapeDefaultX = inputTextShapeDefaultX;
        return this;
    }

    @NotNull
    public final CreateTextShapeRequest setTextStyle(@Nullable ShapeTextStyle textStyle) {
        this.textStyle = textStyle;
        return this;
    }
}
