package com.onyx.galaxy.note.editor.view.custom;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Size;
import android.view.ViewGroup;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.MultiTransformation;
import com.bumptech.glide.load.resource.bitmap.CenterInside;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.material.imageview.ShapeableImageView;
import com.onegravity.colorpicker.OpacityBar;
import com.onyx.android.sdk.base.data.ColorTransformMode;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.UriUtils;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.onyx.android.sdk.data.common.data.template.TemplateResourceConstant;
import com.onyx.android.sdk.data.utils.SvgUtil;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.genericshape.DrawContext;
import com.onyx.android.sdk.genericshape.FillAttr;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.genericshape.PageMargins;
import com.onyx.android.sdk.genericshape.Properties;
import com.onyx.android.sdk.genericshape.StrokeAttr;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.theme.utils.ResourceManager;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.TemplateThumbnailView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.roj;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import defpackage.InvertColorTransformation;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010K\u001a\u00020J¢\u0006\u0004\bL\u0010MB\u001b\b\u0016\u0012\u0006\u0010K\u001a\u00020J\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\bL\u0010NB#\b\u0016\u0012\u0006\u0010K\u001a\u00020J\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010O\u001a\u00020\b¢\u0006\u0004\bL\u0010PJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002J0\u0010\u0014\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\bH\u0002J\"\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\n2\b\b\u0002\u0010\u0016\u001a\u00020\u0012H\u0002J\u0018\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\bH\u0002J \u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0018\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\nH\u0002J\u0010\u0010\u001c\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\u001d\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002J\u0012\u0010 \u001a\u00020\u00042\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016J\u000e\u0010\"\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020!J\u000e\u0010#\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fJ\u0010\u0010$\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0016J\u001c\u0010%\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\nH\u0016J:\u0010)\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020\u000f2\b\u0010(\u001a\u0004\u0018\u00010'H\u0016J\u0006\u0010*\u001a\u00020\u0004J\u0010\u0010+\u001a\u00020\u00042\u0006\u0010(\u001a\u00020'H\u0004J\u0010\u0010-\u001a\u00020\u00042\u0006\u0010,\u001a\u00020'H\u0016J\u000e\u0010/\u001a\u00020\u00042\u0006\u0010.\u001a\u00020\bJ\u000e\u00102\u001a\u00020\u00042\u0006\u00101\u001a\u000200J\u000e\u00104\u001a\u00020\u00042\u0006\u00103\u001a\u000200J\u0010\u00107\u001a\u00020\u00042\u0006\u00106\u001a\u000205H\u0014R(\u0010(\u001a\u0004\u0018\u00010'2\b\u00108\u001a\u0004\u0018\u00010'8\u0004@BX\u0084\u000e¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R\"\u0010D\u001a\u00020=8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u0016\u0010G\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0016\u0010I\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010F¨\u0006Q"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;", "Lcom/google/android/material/imageview/ShapeableImageView;", "Landroid/util/AttributeSet;", "attrs", "", "m", "j", C4921e.f26537n, "", "orientation", "Landroid/util/Size;", "l", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "item", "size", "", "resName", "absolutePath", "", "isThumbnail", "q", "t", "invertColor", C4921e.f26528e, "path", "s", "r", GoogleApiAvailabilityLight.f29016b, "w", "u", "Landroid/graphics/drawable/Drawable;", ResourceManager.f46830c, "setImageDrawable", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "loadCoverTemplateThumbnail", "loadPaperTemplateThumbnail", "updateViewSize", "loadPaperTemplate", "resourceType", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "geoLayout", "loadPaperByResourceType", Constants.RESET, "updateGeoLayout", gon.f71305w, "setGeoLayout", "color", "setColor", "", "spacing", "setSpacing", OpacityBar.f39917J, "setTransparency", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", "<set-?>", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "getGeoLayout", "()Lcom/onyx/android/sdk/genericshape/GeoLayout;", "Lcom/onyx/android/sdk/genericshape/DrawContext;", "Q", "Lcom/onyx/android/sdk/genericshape/DrawContext;", "getDrawContext", "()Lcom/onyx/android/sdk/genericshape/DrawContext;", "setDrawContext", "(Lcom/onyx/android/sdk/genericshape/DrawContext;)V", "drawContext", "k0", "I", "originWidth", "q0", "originHeight", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class TemplateThumbnailView extends ShapeableImageView {

    /* renamed from: O, reason: from kotlin metadata */
    @Nullable
    public GeoLayout geoLayout;

    /* renamed from: Q, reason: from kotlin metadata */
    @NotNull
    public DrawContext drawContext;

    /* renamed from: k0, reason: from kotlin metadata */
    public int originWidth;

    /* renamed from: q0, reason: from kotlin metadata */
    public int originHeight;

    /* renamed from: com.onyx.galaxy.note.editor.view.custom.TemplateThumbnailView$a */
    /* loaded from: classes9.dex */
    public static final class C12295a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Size f59787e;

        public C12295a(Size size) {
            this.f59787e = size;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BitmapDrawable apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SvgUtil svgUtil = SvgUtil.INSTANCE;
            return svgUtil.toBitmapDrawable(svgUtil.decodeSvgDrawable(it2, Integer.valueOf(this.f59787e.getWidth()), Integer.valueOf(this.f59787e.getHeight())));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.custom.TemplateThumbnailView$b */
    /* loaded from: classes9.dex */
    public static final class C12296b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ TemplateModel f59788e;

        /* renamed from: f */
        public final /* synthetic */ TemplateThumbnailView f59789f;

        public C12296b(TemplateModel templateModel, TemplateThumbnailView templateThumbnailView) {
            this.f59788e = templateModel;
            this.f59789f = templateThumbnailView;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BitmapDrawable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f59789f.setColorFilter(ColorTransformMode.INSTANCE.loadColorFilter(Integer.valueOf(this.f59788e.getTemplateResourceWrapper().getCurColorTransformMode())));
            this.f59789f.setImageDrawable(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TemplateThumbnailView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.drawContext = new DrawContext(null, null, null, false, false, false, 0.0f, 124, null);
    }

    public static /* synthetic */ void loadPaperTemplate$default(TemplateThumbnailView templateThumbnailView, TemplateModel templateModel, Size size, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadPaperTemplate");
        }
        if ((i & 2) != 0) {
            size = null;
        }
        templateThumbnailView.loadPaperTemplate(templateModel, size);
    }

    /* renamed from: p */
    public static /* synthetic */ void m47827p(TemplateThumbnailView templateThumbnailView, String str, Size size, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadImageByRes");
        }
        if ((i & 4) != 0) {
            z = false;
        }
        templateThumbnailView.m47834o(str, size, z);
    }

    /* renamed from: v */
    public static final void m47828v(TemplateThumbnailView this$0, GeoLayout geoLayout) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(geoLayout, "$geoLayout");
        this$0.setGeoLayout(geoLayout);
    }

    @NotNull
    public final DrawContext getDrawContext() {
        return this.drawContext;
    }

    @Nullable
    public final GeoLayout getGeoLayout() {
        return this.geoLayout;
    }

    /* renamed from: j */
    public final void m47829j() {
        setBackgroundColor(0);
    }

    /* renamed from: k */
    public final void m47830k() {
        super.setImageDrawable(null);
        this.geoLayout = null;
    }

    /* renamed from: l */
    public final Size m47831l(int orientation) {
        if (Orientation.INSTANCE.isPortrait(orientation)) {
            return new Size(this.originWidth, this.originHeight);
        }
        float f = this.originWidth / this.originHeight;
        int i = this.originWidth;
        return new Size(i, (int) (i * f));
    }

    public final void loadCoverTemplateThumbnail(@NotNull CoverModel item) {
        Intrinsics.checkNotNullParameter(item, "item");
        m47829j();
        GeoLayout loadGeoLayoutFromCoverModel = Templates.INSTANCE.loadGeoLayoutFromCoverModel(item);
        setBackgroundColor(item.getTemplateResourceWrapper().getCurFillColor());
        if (Intrinsics.areEqual(item.getTemplateResourceWrapper().getCurResourceType(), "vector")) {
            m47838t(item.getTemplateResourceWrapper().getCurResName(), item.getOrientation());
            return;
        }
        if (item.getTemplateResourceWrapper().getCurThumbnailRelativePath().length() > 0) {
            m47837s(item.getTemplateResourceWrapper().getCurThumbnailAbsolutePath(), item.getOrientation());
        } else if (loadGeoLayoutFromCoverModel != null) {
            updateGeoLayout(loadGeoLayoutFromCoverModel);
        }
    }

    public void loadPaperByResourceType(@NotNull TemplateModel item, @NotNull Size size, @NotNull String resName, @NotNull String absolutePath, @NotNull String resourceType, @Nullable GeoLayout geoLayout) {
        boolean endsWith;
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(size, "size");
        Intrinsics.checkNotNullParameter(resName, "resName");
        Intrinsics.checkNotNullParameter(absolutePath, "absolutePath");
        Intrinsics.checkNotNullParameter(resourceType, "resourceType");
        if (Intrinsics.areEqual(resourceType, TemplateResourceConstant.TYPE_DYNAMIC)) {
            Intrinsics.checkNotNull(geoLayout);
            updateGeoLayout(geoLayout);
            return;
        }
        if (Intrinsics.areEqual(resourceType, "pdf")) {
            m47833n(absolutePath, size);
            return;
        }
        if (Intrinsics.areEqual(resourceType, "vector")) {
            m47834o(resName, size, item.getTemplateResourceWrapper().getCurColorTransformMode() == 1);
            return;
        }
        if (Intrinsics.areEqual(resourceType, TemplateResourceConstant.TYPE_PICTURE)) {
            endsWith = StringsKt__StringsJVMKt.endsWith(absolutePath, FileTypeConstant.SVG, true);
            if (endsWith) {
                m47836r(absolutePath, size, item);
                return;
            } else {
                m47833n(absolutePath, size);
                return;
            }
        }
        if (geoLayout != null) {
            updateGeoLayout(geoLayout);
        } else {
            setBackgroundColor(-1);
            setImageDrawable(new ColorDrawable(0));
        }
    }

    public void loadPaperTemplate(@NotNull final TemplateModel item, @Nullable Size size) {
        Intrinsics.checkNotNullParameter(item, "item");
        String ifNotEmpty = StringKt.ifNotEmpty(item.getTemplateResourceWrapper().getCurThumbnailRelativePath(), new Function1<String, String>() { // from class: com.onyx.galaxy.note.editor.view.custom.TemplateThumbnailView$loadPaperTemplate$templatePath$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return TemplateModel.this.getTemplateResourceWrapper().getCurThumbnailAbsolutePath();
            }
        });
        if (ifNotEmpty == null) {
            ifNotEmpty = "";
        }
        String str = ifNotEmpty;
        if (size == null) {
            size = m47840w(item.getOrientation());
        }
        m47835q(item, size, item.getTemplateResourceWrapper().getCurResName(), str, false);
    }

    public final void loadPaperTemplateThumbnail(@NotNull final TemplateModel item) {
        Intrinsics.checkNotNullParameter(item, "item");
        String ifNotEmpty = StringKt.ifNotEmpty(item.getTemplateResourceWrapper().getCurThumbnailRelativePath(), new Function1<String, String>() { // from class: com.onyx.galaxy.note.editor.view.custom.TemplateThumbnailView$loadPaperTemplateThumbnail$thumbnailPath$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return TemplateModel.this.getTemplateResourceWrapper().getCurThumbnailAbsolutePath();
            }
        });
        if (ifNotEmpty == null) {
            ifNotEmpty = "";
        }
        m47835q(item, m47839u(item.getOrientation()), item.getTemplateResourceWrapper().getCurThumbnailResName(), ifNotEmpty, true);
    }

    /* renamed from: m */
    public final void m47832m(AttributeSet attrs) {
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.TemplateThumbnailView);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
            this.originWidth = (int) obtainStyledAttributes.getDimension(C10651R.styleable.TemplateThumbnailView_originWidth, 0.0f);
            this.originHeight = (int) obtainStyledAttributes.getDimension(C10651R.styleable.TemplateThumbnailView_originHeight, 0.0f);
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: n */
    public final void m47833n(String path, Size size) {
        Glide.with(this).load(path).centerInside().override(size.getWidth(), size.getHeight()).into(this);
    }

    /* renamed from: o */
    public final void m47834o(String resName, Size size, boolean invertColor) {
        RequestBuilder<Drawable> load;
        ResManager resManager = ResManager.INSTANCE;
        int drawableResIdSafely = resManager.getDrawableResIdSafely(resName);
        if (drawableResIdSafely <= 0) {
            String fileNameInAssets$default = FileUtils.fileNameInAssets$default(FileUtils.INSTANCE, resManager.getAppContext(), resName, null, 4, null);
            if (fileNameInAssets$default == null || fileNameInAssets$default.length() == 0) {
                setImageDrawable(new ColorDrawable(0));
                return;
            }
            load = Glide.with(this).load(UriUtils.INSTANCE.assetFileUri(fileNameInAssets$default));
        } else {
            load = Glide.with(this).load(resManager.getDrawable(drawableResIdSafely));
        }
        Intrinsics.checkNotNull(load);
        if (invertColor) {
            roj transform = load.transform(new MultiTransformation(new CenterInside(), new InvertColorTransformation()));
            Intrinsics.checkNotNullExpressionValue(transform, "transform(...)");
            load = (RequestBuilder) transform;
        }
        load.error(C10651R.color.transparent).placeholder(getDrawable()).into(this);
    }

    @Override // com.google.android.material.imageview.ShapeableImageView, android.widget.ImageView, android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        this.drawContext.setCanvas(canvas);
        GeoLayout geoLayout = this.geoLayout;
        if (geoLayout != null) {
            geoLayout.draw(this.drawContext);
        }
        super.onDraw(canvas);
    }

    /* renamed from: q */
    public final void m47835q(TemplateModel item, Size size, String resName, String absolutePath, boolean isThumbnail) {
        Properties properties;
        m47829j();
        GeoLayout loadGeoLayoutFromTemplateModel$default = TemplateModel.Companion.loadGeoLayoutFromTemplateModel$default(TemplateModel.INSTANCE, item, null, isThumbnail, 1, null);
        StrokeAttr strokeAttr = (loadGeoLayoutFromTemplateModel$default == null || (properties = loadGeoLayoutFromTemplateModel$default.getProperties()) == null) ? null : properties.getStrokeAttr();
        if (strokeAttr != null) {
            strokeAttr.setColor(item.getTemplateResourceWrapper().getCurStrokeColor());
        }
        reset();
        setBackgroundColor(item.getTemplateResourceWrapper().getCurFillColor());
        setColorFilter((ColorFilter) null);
        loadPaperByResourceType(item, size, resName, absolutePath, item.getTemplateResourceWrapper().getCurResourceType(), loadGeoLayoutFromTemplateModel$default);
    }

    /* renamed from: r */
    public final void m47836r(String path, Size size, TemplateModel item) {
        Observable.just(path).observeOn(Schedulers.m61350io()).map(new C12295a(size)).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12296b(item, this)).subscribe();
    }

    public final void reset() {
        setBackgroundColor(-1);
        setColorFilter((ColorFilter) null);
        this.geoLayout = null;
    }

    /* renamed from: s */
    public final void m47837s(String path, int orientation) {
        m47833n(path, m47839u(orientation));
    }

    public final void setColor(int color) {
        Properties properties;
        FillAttr fillAttr;
        GeoLayout geoLayout = this.geoLayout;
        if (geoLayout != null && (properties = geoLayout.getProperties()) != null && (fillAttr = properties.getFillAttr()) != null) {
            fillAttr.setColor(color);
        }
        invalidate();
    }

    public final void setDrawContext(@NotNull DrawContext drawContext) {
        Intrinsics.checkNotNullParameter(drawContext, "<set-?>");
        this.drawContext = drawContext;
    }

    public void setGeoLayout(@NotNull GeoLayout layout) {
        Properties properties;
        PageMargins pageMargins;
        Intrinsics.checkNotNullParameter(layout, "layout");
        m47830k();
        this.geoLayout = layout;
        if (layout != null && (properties = layout.getProperties()) != null && (pageMargins = properties.getPageMargins()) != null) {
            pageMargins.setLayoutRect(new RectF(0.0f, 0.0f, getWidth(), getHeight()));
        }
        invalidate();
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        m47830k();
        super.setImageDrawable(drawable);
    }

    public final void setSpacing(float spacing) {
        Properties properties;
        PageMargins pageMargins;
        GeoLayout geoLayout = this.geoLayout;
        if (geoLayout != null && (properties = geoLayout.getProperties()) != null && (pageMargins = properties.getPageMargins()) != null) {
            pageMargins.setSpacing(spacing);
        }
        invalidate();
    }

    public final void setTransparency(float opacity) {
        Properties properties;
        StrokeAttr strokeAttr;
        GeoLayout geoLayout = this.geoLayout;
        if (geoLayout != null && (properties = geoLayout.getProperties()) != null && (strokeAttr = properties.getStrokeAttr()) != null) {
            strokeAttr.setOpacity(Float.valueOf(opacity / 100.0f));
        }
        invalidate();
    }

    /* renamed from: t */
    public final void m47838t(String resName, int orientation) {
        m47827p(this, resName, m47839u(orientation), false, 4, null);
    }

    /* renamed from: u */
    public final Size m47839u(int orientation) {
        if (Orientation.INSTANCE.isPortrait(orientation)) {
            ResManager resManager = ResManager.INSTANCE;
            return new Size(resManager.getDimens(C7384R.dimen.dp_236), resManager.getDimens(C7384R.dimen.dp_298));
        }
        ResManager resManager2 = ResManager.INSTANCE;
        return new Size(resManager2.getDimens(C7384R.dimen.dp_298), resManager2.getDimens(C7384R.dimen.dp_236));
    }

    public final void updateGeoLayout(@NotNull final GeoLayout geoLayout) {
        Intrinsics.checkNotNullParameter(geoLayout, "geoLayout");
        if (getWidth() > 0) {
            setGeoLayout(geoLayout);
        } else {
            post(new Runnable() { // from class: com.sunia.HTREnginev2.abn
                @Override // java.lang.Runnable
                public final void run() {
                    TemplateThumbnailView.m47828v(TemplateThumbnailView.this, geoLayout);
                }
            });
        }
    }

    public void updateViewSize(int orientation) {
        if (this.originWidth <= 0 || this.originHeight <= 0) {
            return;
        }
        Size m47831l = m47831l(orientation);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.width = m47831l.getWidth();
        layoutParams.height = m47831l.getHeight();
        setLayoutParams(layoutParams);
    }

    /* renamed from: w */
    public final Size m47840w(int orientation) {
        return (this.originWidth <= 0 || this.originHeight <= 0) ? m47839u(orientation) : Orientation.INSTANCE.isPortrait(orientation) ? new Size(this.originWidth, this.originHeight) : new Size(this.originHeight, this.originWidth);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TemplateThumbnailView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.drawContext = new DrawContext(null, null, null, false, false, false, 0.0f, 124, null);
        m47832m(attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TemplateThumbnailView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.drawContext = new DrawContext(null, null, null, false, false, false, 0.0f, 124, null);
        m47832m(attributeSet);
    }
}
