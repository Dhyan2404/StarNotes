package com.onyx.galaxy.note.editor.view.custom;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Size;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.genericshape.GeoLayoutMargin;
import com.onyx.android.sdk.genericshape.GeoLayoutMarginBase;
import com.onyx.android.sdk.genericshape.PageMargins;
import com.onyx.android.sdk.genericshape.Properties;
import com.onyx.android.sdk.geometry.data.MarginPercent;
import com.onyx.android.sdk.geometry.data.MarginStyle;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.theme.utils.ResourceManager;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u00105\u001a\u000204\u0012\b\u00107\u001a\u0004\u0018\u000106¢\u0006\u0004\b8\u00109J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\b\u001a\u00020\u0006J\u001a\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016J:\u0010\u0014\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000e2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0017\u001a\u00020\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0012H\u0016J\u0010\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001aH\u0014J\u0010\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u0010\u0010 \u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001aH\u0002R\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010'\u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010)\u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010&R\u0016\u0010-\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010/\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010,R\u0016\u00101\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010,R\u0016\u00103\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u0010,¨\u0006:"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/custom/PageMarginView;", "Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;", "Lcom/onyx/android/sdk/geometry/data/MarginPercent;", "marginPercent", "Lcom/onyx/android/sdk/geometry/data/MarginStyle;", "marginStyle", "", "setPageMargin", "clearPageMargin", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "item", "Landroid/util/Size;", "size", "loadPaperTemplate", "", "resName", "absolutePath", "resourceType", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "geoLayout", "loadPaperByResourceType", "Landroid/graphics/drawable/Drawable;", ResourceManager.f46830c, "setImageDrawable", gon.f71305w, "setGeoLayout", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", "Landroid/graphics/RectF;", "contentRect", "y", "x", "Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;", "t0", "Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;", "marginLayout", "u0", "Landroid/graphics/RectF;", "defaultViewSize", "v0", "defaultTemplateSize", "", "w0", "F", "defaultWidth", "x0", "defaultHeight", "y0", "maxMarginPercent", "z0", "contentScale", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attributeSet", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PageMarginView extends TemplateThumbnailView {

    /* renamed from: t0, reason: from kotlin metadata */
    @NotNull
    public GeoLayoutMargin marginLayout;

    /* renamed from: u0, reason: from kotlin metadata */
    @NotNull
    public final RectF defaultViewSize;

    /* renamed from: v0, reason: from kotlin metadata */
    @NotNull
    public final RectF defaultTemplateSize;

    /* renamed from: w0, reason: from kotlin metadata */
    public float defaultWidth;

    /* renamed from: x0, reason: from kotlin metadata */
    public float defaultHeight;

    /* renamed from: y0, reason: from kotlin metadata */
    public float maxMarginPercent;

    /* renamed from: z0, reason: from kotlin metadata */
    public float contentScale;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageMarginView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.marginLayout = new GeoLayoutMargin();
        RectF rectF = new RectF();
        this.defaultViewSize = rectF;
        this.defaultTemplateSize = new RectF(0.0f, 0.0f, 2100.0f, 2970.0f);
        this.maxMarginPercent = 1.0f;
        this.contentScale = 1.0f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C10651R.styleable.PageMarginView);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.maxMarginPercent = obtainStyledAttributes.getFloat(C10651R.styleable.PageMarginView_maxMarginPercent, this.maxMarginPercent);
        int i = C10651R.styleable.PageMarginView_defaultWidth;
        ResManager resManager = ResManager.INSTANCE;
        this.defaultWidth = obtainStyledAttributes.getDimension(i, resManager.getDimension(C7384R.dimen.dp_367));
        this.defaultHeight = obtainStyledAttributes.getDimension(C10651R.styleable.PageMarginView_defaultHeight, resManager.getDimension(C7384R.dimen.dp_528));
        obtainStyledAttributes.recycle();
        rectF.set(getPaddingStart(), getPaddingTop(), this.defaultWidth - getPaddingEnd(), this.defaultHeight - getPaddingBottom());
        this.marginLayout.setViewport(rectF);
    }

    public final void clearPageMargin() {
        this.marginLayout.clearMargin();
        this.contentScale = 1.0f;
        reset();
    }

    @Override // com.onyx.galaxy.note.editor.view.custom.TemplateThumbnailView
    public void loadPaperByResourceType(@NotNull TemplateModel item, @NotNull Size size, @NotNull String resName, @NotNull String absolutePath, @NotNull String resourceType, @Nullable GeoLayout geoLayout) {
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(size, "size");
        Intrinsics.checkNotNullParameter(resName, "resName");
        Intrinsics.checkNotNullParameter(absolutePath, "absolutePath");
        Intrinsics.checkNotNullParameter(resourceType, "resourceType");
        if (!Intrinsics.areEqual(resourceType, "vector") || geoLayout == null) {
            super.loadPaperByResourceType(item, size, resName, absolutePath, resourceType, geoLayout);
        } else {
            updateGeoLayout(geoLayout);
        }
    }

    @Override // com.onyx.galaxy.note.editor.view.custom.TemplateThumbnailView
    public void loadPaperTemplate(@NotNull TemplateModel item, @Nullable Size size) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (item.isPortrait()) {
            this.defaultViewSize.set(getPaddingStart(), getPaddingTop(), this.defaultWidth - getPaddingEnd(), this.defaultHeight - getPaddingBottom());
        } else {
            this.defaultViewSize.set(getPaddingStart(), getPaddingTop(), this.defaultHeight - getPaddingEnd(), this.defaultWidth - getPaddingBottom());
        }
        this.marginLayout.setViewport(RectFKt.offsetToOrigin(this.defaultViewSize));
        ViewKt.setLayoutParams(this, (int) this.defaultViewSize.width(), (int) this.defaultViewSize.height());
        super.loadPaperTemplate(item, size);
        setBackgroundColor(-1);
    }

    @Override // com.onyx.galaxy.note.editor.view.custom.TemplateThumbnailView, com.google.android.material.imageview.ShapeableImageView, android.widget.ImageView, android.view.View
    public void onDraw(@NotNull final Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        GeoLayoutMarginBase.draw$default(this.marginLayout, canvas, false, new Function1<Canvas, Unit>() { // from class: com.onyx.galaxy.note.editor.view.custom.PageMarginView$onDraw$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Canvas canvas2) {
                invoke2(canvas2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Canvas it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                PageMarginView.this.m47732x(canvas);
            }
        }, 2, null);
    }

    @Override // com.onyx.galaxy.note.editor.view.custom.TemplateThumbnailView
    public void setGeoLayout(@NotNull GeoLayout layout) {
        Properties properties;
        Intrinsics.checkNotNullParameter(layout, "layout");
        super.setGeoLayout(layout);
        RectF copy = RectFKt.copy(this.defaultTemplateSize);
        GeoLayout geoLayout = getGeoLayout();
        PageMargins pageMargins = (geoLayout == null || (properties = geoLayout.getProperties()) == null) ? null : properties.getPageMargins();
        if (pageMargins != null) {
            pageMargins.setLayoutRect(RectFKt.offsetToOrigin(copy));
        }
        m47733y(copy);
    }

    @Override // com.onyx.galaxy.note.editor.view.custom.TemplateThumbnailView, androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        super.setImageDrawable(drawable);
        if (drawable == null || (drawable instanceof ColorDrawable)) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(drawable.getBounds(), "getBounds(...)");
        RectF rectF = new RectF(0.0f, 0.0f, r4.width(), r4.height());
        this.contentScale = RectFKt.scaleToWidth(rectF, this.defaultTemplateSize);
        m47733y(rectF);
    }

    public final void setPageMargin(@NotNull MarginPercent marginPercent, @NotNull MarginStyle marginStyle) {
        Intrinsics.checkNotNullParameter(marginPercent, "marginPercent");
        Intrinsics.checkNotNullParameter(marginStyle, "marginStyle");
        if (StringKt.isNotEmpty(marginStyle.getTemplateResource())) {
            GeoLayoutMargin loadFromRes = GeoLayoutMargin.INSTANCE.loadFromRes(marginStyle.getTemplateResource());
            if (loadFromRes != null) {
                this.marginLayout = loadFromRes;
            }
            TemplateModel.INSTANCE.updateMarginTemplate(this.marginLayout, true);
        }
        this.marginLayout.setMargin(marginPercent, marginStyle);
        this.contentScale = 1.0f;
    }

    /* renamed from: x */
    public final void m47732x(Canvas canvas) {
        getDrawContext().setCanvas(canvas);
        getDrawContext().setIgnoreCanvasSize(true);
        GeoLayout geoLayout = getGeoLayout();
        if (geoLayout != null) {
            geoLayout.draw(getDrawContext());
        }
        Drawable drawable = getDrawable();
        if (drawable != null) {
            drawable.setColorFilter(getColorFilter());
        }
        float f = this.contentScale;
        canvas.scale(f, f);
        Drawable drawable2 = getDrawable();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    /* renamed from: y */
    public final void m47733y(RectF contentRect) {
        RectF offsetToOrigin = RectFKt.offsetToOrigin(GeoLayoutMarginBase.INSTANCE.calculateViewport(contentRect, this.marginLayout.getMarginPercent()));
        float scaleToWidth = RectFKt.scaleToWidth(RectFKt.copy(offsetToOrigin), this.defaultViewSize);
        Matrix matrix = new Matrix();
        matrix.postScale(scaleToWidth, scaleToWidth);
        this.marginLayout.setMatrix(matrix);
        this.marginLayout.setViewport(offsetToOrigin);
        ViewKt.setLayoutParams(this, (int) this.defaultViewSize.width(), (int) ((offsetToOrigin.height() / offsetToOrigin.width()) * this.defaultViewSize.width()));
    }
}
