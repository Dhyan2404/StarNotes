package com.onyx.android.sdk.note.common.utils;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.SpannableString;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onegravity.rteditor.spans.UnderlineSpan;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.FloatKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.render.RenderMeasure;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType;
import com.onyx.android.sdk.replicator.note.p035db.LinkProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.LinkModel;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.commonv2.global.HWREngineConstant;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b:\u0010;J(\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0003\u001a\u00020\u0002J.\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0004H\u0007J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\rJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\rJ\u0010\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u000fJ*\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\n0\u0019J\u000e\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u001dJ\u0016\u0010\"\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010!\u001a\u00020 J\u0016\u0010\"\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\n2\u0006\u0010!\u001a\u00020 J\u001a\u0010\"\u001a\u00020\u00132\b\u0010!\u001a\u0004\u0018\u00010 2\b\u0010#\u001a\u0004\u0018\u00010\u000fJ\u001e\u0010&\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020$2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010'\u001a\u00020\u001d2\u0006\u0010\u0003\u001a\u00020\u0002J*\u0010(\u001a\u0004\u0018\u00010\b2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002J*\u0010)\u001a\u0004\u0018\u00010\b2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002J\u0010\u0010,\u001a\u00020\u001b2\u0006\u0010+\u001a\u00020*H\u0002J \u00100\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020-2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010/\u001a\u00020\u001dH\u0002J\u0018\u00104\u001a\u00020\u001b2\u0006\u00102\u001a\u0002012\u0006\u00103\u001a\u00020\u0013H\u0002J\u0018\u00105\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020-2\u0006\u0010\f\u001a\u00020\nH\u0002J\"\u00107\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020 2\b\u00106\u001a\u0004\u0018\u00010\u000fH\u0002R\u0014\u00108\u001a\u00020\u001d8\u0006X\u0086T¢\u0006\u0006\n\u0004\b8\u00109¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "", "width", "height", "scale", "Landroid/graphics/Bitmap;", "createLinkBitmap", "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;", "createLinkModel", "linkModel", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "linkBean", "", "getLinkTitle", "getLinkValue", "type", "", "getLinkIcon", "Lcom/onyx/android/sdk/replicator/note/db/LinkProvider;", "linkProvider", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "shapeModel", "", "linkMap", "", "loadShapeLinkModel", "", "isOnlyIconStyle", "calculateLinkHeight", "Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;", "renderMeasure", "calculateLinkWidth", "title", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "resetSize", "isAudioLink", "c", "b", "Landroid/view/View;", "content", C6998g.f39679a, "Landroid/widget/TextView;", "textView", "underline", "e", "Landroid/widget/ImageView;", "imageView", HWREngineConstant.Constant.RES_ID, "d", C6997f.f39671c, "text", "a", "SHOW_JUMP_ICON", Constants.HASIDCALL_INDEX_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeLinkUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeLinkUtils.kt\ncom/onyx/android/sdk/note/common/utils/ShapeLinkUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,344:1\n1#2:345\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeLinkUtils {

    @NotNull
    public static final ShapeLinkUtils INSTANCE = new ShapeLinkUtils();
    public static final boolean SHOW_JUMP_ICON = false;

    public static /* synthetic */ Bitmap createLinkBitmap$default(ShapeLinkUtils shapeLinkUtils, LinkModel linkModel, float f, float f2, float f3, int i, Object obj) {
        if ((i & 8) != 0) {
            f3 = 1.0f;
        }
        return shapeLinkUtils.createLinkBitmap(linkModel, f, f2, f3);
    }

    /* renamed from: a */
    public final int m34049a(boolean isOnlyIconStyle, RenderMeasure renderMeasure, String text) {
        return isOnlyIconStyle ? ResManager.INSTANCE.getDimens(C7485R.dimen.link_shape_size) : calculateLinkWidth(renderMeasure, text);
    }

    /* renamed from: b */
    public final Bitmap m34050b(LinkModel linkModel, float width, float height, float scale) {
        View inflate = LayoutInflater.from(ResManager.INSTANCE.getAppContext()).inflate(C7485R.layout.layout_link_audio_shape, (ViewGroup) null);
        ViewGroup viewGroup = inflate instanceof ViewGroup ? (ViewGroup) inflate : null;
        if (viewGroup == null) {
            return null;
        }
        RelativeLayout relativeLayout = (RelativeLayout) viewGroup.findViewById(C7485R.id.content);
        ImageView imageView = (ImageView) viewGroup.findViewById(C7485R.id.ic_audio);
        TextView textView = (TextView) viewGroup.findViewById(C7485R.id.tv_content);
        int ceil = (int) FloatKt.ceil(width);
        int ceil2 = (int) FloatKt.ceil(height);
        float f = ceil;
        float f2 = ceil2;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(ceil, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(ceil2, 1073741824);
        Intrinsics.checkNotNull(relativeLayout);
        m34055g(relativeLayout);
        Intrinsics.checkNotNull(imageView);
        m34052d(imageView, getLinkIcon(linkModel.getType()));
        Intrinsics.checkNotNull(textView);
        m34053e(textView, linkModel, false);
        viewGroup.measure(makeMeasureSpec, makeMeasureSpec2);
        viewGroup.layout(0, 0, viewGroup.getMeasuredWidth(), viewGroup.getMeasuredHeight());
        int ceil3 = (int) FloatKt.ceil(f * scale);
        int ceil4 = (int) FloatKt.ceil(f2 * scale);
        Matrix matrix = new Matrix();
        matrix.postScale(scale, scale);
        matrix.postScale(width / f, height / f2);
        Unit unit = Unit.INSTANCE;
        return ViewKt.loadBitmapWithMatrix(viewGroup, ceil3, ceil4, matrix);
    }

    /* renamed from: c */
    public final Bitmap m34051c(LinkModel linkModel, float width, float height, float scale) {
        View inflate = LayoutInflater.from(ResManager.INSTANCE.getAppContext()).inflate(C7485R.layout.layout_link_shape, (ViewGroup) null);
        ViewGroup viewGroup = inflate instanceof ViewGroup ? (ViewGroup) inflate : null;
        if (viewGroup == null) {
            return null;
        }
        ImageView imageView = (ImageView) viewGroup.findViewById(C7485R.id.ic_link);
        TextView textView = (TextView) viewGroup.findViewById(C7485R.id.fileName);
        Intrinsics.checkNotNull(textView);
        m34053e(textView, linkModel, true);
        Intrinsics.checkNotNull(imageView);
        m34052d(imageView, getLinkIcon(linkModel.getType()));
        int ceil = (int) FloatKt.ceil(width);
        int ceil2 = (int) FloatKt.ceil(height);
        float f = ceil;
        float f2 = ceil2;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(ceil, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(ceil2, 1073741824);
        m34055g(viewGroup);
        viewGroup.measure(makeMeasureSpec, makeMeasureSpec2);
        viewGroup.layout(0, 0, viewGroup.getMeasuredWidth(), viewGroup.getMeasuredHeight());
        int ceil3 = (int) FloatKt.ceil(f * scale);
        int ceil4 = (int) FloatKt.ceil(f2 * scale);
        Matrix matrix = new Matrix();
        matrix.postScale(scale, scale);
        matrix.postScale(width / f, height / f2);
        Unit unit = Unit.INSTANCE;
        return ViewKt.loadBitmapWithMatrix(viewGroup, ceil3, ceil4, matrix);
    }

    public final int calculateLinkHeight(boolean isOnlyIconStyle) {
        return isOnlyIconStyle ? ResManager.INSTANCE.getDimens(C7485R.dimen.link_shape_size) : ResManager.INSTANCE.getDimens(C7485R.dimen.link_shape_height);
    }

    public final int calculateLinkWidth(@NotNull ShapeLinkBean linkBean, @NotNull RenderMeasure renderMeasure) {
        Intrinsics.checkNotNullParameter(linkBean, "linkBean");
        Intrinsics.checkNotNullParameter(renderMeasure, "renderMeasure");
        return m34049a(linkBean.isOnlyIconStyle(), renderMeasure, getLinkTitle(linkBean));
    }

    @Nullable
    public final Bitmap createLinkBitmap(@NotNull Shape shape, float width, float height, float scale) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return createLinkBitmap(createLinkModel(shape), width, height, scale);
    }

    @Nullable
    public final LinkModel createLinkModel(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        ShapeLinkBean shapeLinkBean = (ShapeLinkBean) JSONUtils.INSTANCE.parseObject(shape.getText(), ShapeLinkBean.class);
        if (shapeLinkBean == null) {
            return null;
        }
        LinkModel create = LinkModel.INSTANCE.create(shapeLinkBean.getDocBean());
        create.setDocumentId(shape.getDocumentUniqueId());
        create.setRemark(shapeLinkBean.getRemark());
        create.setDisplayStyle(shapeLinkBean.getDisplayStyle());
        create.setUniqueId(shape.getShapeUniqueId());
        create.setType(String.valueOf(shapeLinkBean.getKey()));
        create.setLinkRect(shape.getBoundingRect());
        String key = shapeLinkBean.getKey();
        if (key != null) {
            int hashCode = key.hashCode();
            if (hashCode != -668646663) {
                if (hashCode != 84303) {
                    if (hashCode == 62628790 && key.equals("AUDIO")) {
                        create.setContent(shapeLinkBean.getValue());
                    }
                } else if (key.equals(ShapeLinkType.LINK_URL)) {
                    create.setContent(shapeLinkBean.getValue());
                }
            } else if (key.equals(ShapeLinkType.LINK_PAGE_NUMBER)) {
                create.setTargetPageId(shapeLinkBean.getValue());
            }
        }
        return create;
    }

    /* renamed from: d */
    public final void m34052d(ImageView imageView, int r2) {
        imageView.setImageResource(r2);
    }

    /* renamed from: e */
    public final void m34053e(TextView textView, LinkModel linkModel, boolean underline) {
        m34054f(textView, linkModel);
        String loadDisplayTitle = linkModel.loadDisplayTitle();
        if (!StringKt.isNotEmpty(loadDisplayTitle) || !underline) {
            textView.setText(loadDisplayTitle);
            return;
        }
        SpannableString spannableString = new SpannableString(loadDisplayTitle);
        UnderlineSpan underlineSpan = new UnderlineSpan();
        Intrinsics.checkNotNull(loadDisplayTitle);
        spannableString.setSpan(underlineSpan, 0, loadDisplayTitle.length(), 33);
        textView.setText(spannableString);
    }

    /* renamed from: f */
    public final void m34054f(TextView textView, LinkModel linkModel) {
        if (Intrinsics.areEqual(linkModel.getType(), "AUDIO")) {
            return;
        }
        textView.setTextColor(textView.getResources().getColor(C7485R.color.primary_color, null));
    }

    /* renamed from: g */
    public final void m34055g(View view) {
        ResManager resManager = ResManager.INSTANCE;
        int dimens = resManager.getDimens(C7485R.dimen.audio_link_audio_shape_border_width);
        int color = resManager.getColor(C7485R.color.audio_link_border_color);
        Drawable foreground = view.getForeground();
        if (foreground instanceof GradientDrawable) {
            ((GradientDrawable) foreground).setStroke(dimens, color);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0028, code lost:
    
        if (r1.equals("NOTE") == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0041, code lost:
    
        return com.onyx.android.sdk.note.C7485R.drawable.ic_page_link;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003c, code lost:
    
        if (r1.equals(com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType.LINK_PAGE_NUMBER) == false) goto L58;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0006. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int getLinkIcon(@org.jetbrains.annotations.Nullable java.lang.String r1) {
        /*
            r0 = this;
            if (r1 == 0) goto L42
            int r0 = r1.hashCode()
            switch(r0) {
                case -668646663: goto L36;
                case 84303: goto L2b;
                case 2402290: goto L22;
                case 62628790: goto L16;
                case 1644347675: goto La;
                default: goto L9;
            }
        L9:
            goto L42
        La:
            java.lang.String r0 = "DOCUMENT"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L13
            goto L42
        L13:
            int r0 = com.onyx.android.sdk.note.C7485R.drawable.ic_attachment_doc
            return r0
        L16:
            java.lang.String r0 = "AUDIO"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L1f
            goto L42
        L1f:
            int r0 = com.onyx.android.sdk.note.C7485R.drawable.ic_attachment_audio
            return r0
        L22:
            java.lang.String r0 = "NOTE"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L3f
            goto L42
        L2b:
            java.lang.String r0 = "URL"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L42
            int r0 = com.onyx.android.sdk.note.C7485R.drawable.ic_url_link
            return r0
        L36:
            java.lang.String r0 = "PAGE_NUMBER"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L3f
            goto L42
        L3f:
            int r0 = com.onyx.android.sdk.note.C7485R.drawable.ic_page_link
            return r0
        L42:
            int r0 = com.onyx.android.sdk.note.C7485R.drawable.ic_page_link
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.note.common.utils.ShapeLinkUtils.getLinkIcon(java.lang.String):int");
    }

    @Nullable
    public final String getLinkTitle(@NotNull ShapeLinkBean linkBean) {
        Intrinsics.checkNotNullParameter(linkBean, "linkBean");
        return StringUtils.isNotBlank(linkBean.getRemark()) ? linkBean.getRemark() : getLinkValue(linkBean);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
    
        return r2.loadDisplayTitle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
    
        if (r0.equals("NOTE") == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001d, code lost:
    
        if (r0.equals(com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType.LINK_DOCUMENT) == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
    
        if (r2 != null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:?, code lost:
    
        return r3.getValue();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0013. Please report as an issue. */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String getLinkValue(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean r3) {
        /*
            r2 = this;
            java.lang.String r2 = "linkBean"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r2)
            com.onyx.android.sdk.replicator.note.data.link.LinkDocBean r2 = r3.getDocBean()
            java.lang.String r0 = r3.getKey()
            if (r0 == 0) goto L6d
            int r1 = r0.hashCode()
            switch(r1) {
                case -668646663: goto L42;
                case 84303: goto L35;
                case 2402290: goto L20;
                case 1644347675: goto L17;
                default: goto L16;
            }
        L16:
            goto L6d
        L17:
            java.lang.String r1 = "DOCUMENT"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L29
            goto L6d
        L20:
            java.lang.String r1 = "NOTE"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L29
            goto L6d
        L29:
            if (r2 != 0) goto L30
            java.lang.String r2 = r3.getValue()
            goto L34
        L30:
            java.lang.String r2 = r2.loadDisplayTitle()
        L34:
            return r2
        L35:
            java.lang.String r2 = "URL"
            boolean r2 = r0.equals(r2)
            if (r2 == 0) goto L6d
            java.lang.String r2 = r3.getValue()
            return r2
        L42:
            java.lang.String r2 = "PAGE_NUMBER"
            boolean r2 = r0.equals(r2)
            if (r2 != 0) goto L4b
            goto L6d
        L4b:
            com.onyx.android.sdk.base.utils.ResManager r2 = com.onyx.android.sdk.base.utils.ResManager.INSTANCE
            int r0 = com.onyx.android.sdk.replicator.C7594R.string.link_page_default_remark
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = r3.getValue()
            r1.append(r3)
            r3 = 49
            r1.append(r3)
            java.lang.String r3 = r1.toString()
            java.lang.Object[] r3 = new java.lang.Object[]{r3}
            java.lang.String r2 = r2.getString(r0, r3)
            return r2
        L6d:
            java.lang.String r2 = r3.getValue()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.note.common.utils.ShapeLinkUtils.getLinkValue(com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean):java.lang.String");
    }

    public final boolean isAudioLink(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        ShapeLinkBean shapeLinkBean = (ShapeLinkBean) JSONUtils.INSTANCE.parseObject(shape.getText(), ShapeLinkBean.class);
        if (shapeLinkBean == null) {
            return false;
        }
        return Intrinsics.areEqual("AUDIO", shapeLinkBean.getKey());
    }

    public final void loadShapeLinkModel(@NotNull LinkProvider linkProvider, @NotNull ShapeModel shapeModel, @NotNull Map<String, LinkModel> linkMap) {
        Intrinsics.checkNotNullParameter(linkProvider, "linkProvider");
        Intrinsics.checkNotNullParameter(shapeModel, "shapeModel");
        Intrinsics.checkNotNullParameter(linkMap, "linkMap");
        List<String> linkIdList = shapeModel.getLinkIdList();
        if (linkIdList == null) {
            return;
        }
        for (String str : linkIdList) {
            LinkModel linkModel = linkMap.get(str);
            if (linkModel == null && (linkModel = linkProvider.loadLinkModel(str)) != null) {
                linkMap.put(str, linkModel);
            }
            if (linkModel == null) {
                Debug.INSTANCE.m32044e(ShapeLinkUtils.class, "null link model: " + str, new Object[0]);
            }
        }
    }

    public final void resetSize(@NotNull RenderContext renderContext, @NotNull Shape shape, @NotNull ShapeLinkBean linkBean) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(linkBean, "linkBean");
        TouchPoint downPoint = shape.getDownPoint();
        shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().clear();
        Matrix matrix = new Matrix();
        RenderMeasure renderMeasure = renderContext.getRenderMeasure();
        Size size = new Size(calculateLinkWidth(linkBean, renderMeasure), calculateLinkHeight(linkBean.isOnlyIconStyle()));
        float scale = renderMeasure.getScale();
        ShapeMatrixUtils shapeMatrixUtils = ShapeMatrixUtils.INSTANCE;
        TouchPoint matrixTouchPoint = shapeMatrixUtils.matrixTouchPoint(downPoint, matrix);
        shape.onDown(matrixTouchPoint, matrixTouchPoint);
        TouchPoint touchPoint = new TouchPoint(downPoint);
        touchPoint.setX(downPoint.getX() + ((float) Math.ceil(size.getWidth() * scale)));
        touchPoint.setY(downPoint.getY() + ((float) Math.ceil(size.getHeight() * scale)));
        TouchPoint matrixTouchPoint2 = shapeMatrixUtils.matrixTouchPoint(touchPoint, matrix);
        shape.onUp(matrixTouchPoint2, matrixTouchPoint2);
        shape.updateShapeRect();
        shape.setRevisionId("");
    }

    public final int calculateLinkWidth(@NotNull LinkModel linkModel, @NotNull RenderMeasure renderMeasure) {
        Intrinsics.checkNotNullParameter(linkModel, "linkModel");
        Intrinsics.checkNotNullParameter(renderMeasure, "renderMeasure");
        return m34049a(linkModel.isOnlyIconStyle(), renderMeasure, linkModel.loadDisplayTitle());
    }

    @SuppressLint({"InflateParams"})
    @Nullable
    public final Bitmap createLinkBitmap(@Nullable LinkModel linkModel, float width, float height, float scale) {
        if (linkModel == null) {
            return null;
        }
        if (linkModel.isOnlyIconStyle()) {
            return BitmapUtils.INSTANCE.getBitmapFromVectorDrawable(ResManager.INSTANCE.getAppContext(), getLinkIcon(linkModel.getType()), (int) (width * scale), (int) (height * scale));
        }
        if (Intrinsics.areEqual(linkModel.getType(), "AUDIO")) {
            return m34050b(linkModel, width, height, scale);
        }
        return m34051c(linkModel, width, height, scale);
    }

    public final int calculateLinkWidth(@Nullable RenderMeasure renderMeasure, @Nullable String title) {
        ResManager resManager = ResManager.INSTANCE;
        int integer = resManager.getInteger(C7485R.integer.link_display_title_limit);
        if (title == null) {
            title = "";
        }
        if (title.length() > integer) {
            title = StringKt.safelySubstring(title, 0, integer);
        }
        new TextPaint().setTextSize(resManager.getDimens(C7485R.dimen.link_name_text_size));
        final int ceil = ((int) Math.ceil(r0.measureText(title))) + (resManager.getDimens(C7485R.dimen.link_padding) * 5) + (resManager.getDimens(C7485R.dimen.link_icon_size) * 2);
        if (renderMeasure == null) {
            return ceil;
        }
        Integer valueOf = Integer.valueOf(Math.min(ceil, (int) ((renderMeasure.getViewPortRect().width() * 2) / 3.0f)));
        if (!(valueOf.intValue() > 0)) {
            valueOf = null;
        }
        return ((Number) AnyKt.getOrElse(valueOf, new Function0<Integer>() { // from class: com.onyx.android.sdk.note.common.utils.ShapeLinkUtils$calculateLinkWidth$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(ceil);
            }
        })).intValue();
    }
}
