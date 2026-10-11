package com.onyx.android.sdk.universal.editor.config;

import android.graphics.RectF;
import android.os.Environment;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.utils.AppFilePaths;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.path.CommonPaths;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.nio.file.Path;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b$\n\u0002\u0010\t\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\u000b\b\u0002¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0007J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\bR\u0014\u0010\u000b\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0015\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u000f\u001a\u0004\b\u0014\u0010\u0011R\u0017\u0010\u001a\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\u001d\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u0017\u001a\u0004\b\u001c\u0010\u0019R\u0017\u0010 \u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u0017\u001a\u0004\b\u001f\u0010\u0019R\u0017\u0010#\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b!\u0010\u0017\u001a\u0004\b\"\u0010\u0019R\u0017\u0010&\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b$\u0010\u0017\u001a\u0004\b%\u0010\u0019R\"\u0010,\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\f\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u00104\u001a\u00020-8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u001a\u00108\u001a\u0002058\u0006X\u0086D¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R\u0017\u0010?\u001a\u00020:8\u0006¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>R\u001a\u0010B\u001a\u0002058\u0006X\u0086D¢\u0006\f\n\u0004\b@\u00107\u001a\u0004\bA\u00109R\u001a\u0010E\u001a\u0002058\u0006X\u0086D¢\u0006\f\n\u0004\bC\u00107\u001a\u0004\bD\u00109R\u001a\u0010H\u001a\u00020:8\u0006X\u0086D¢\u0006\f\n\u0004\bF\u0010<\u001a\u0004\bG\u0010>R\u001a\u0010K\u001a\u00020\r8\u0006X\u0086D¢\u0006\f\n\u0004\bI\u0010\u000f\u001a\u0004\bJ\u0010\u0011R\u0017\u0010N\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\bL\u0010\u0017\u001a\u0004\bM\u0010\u0019R\u0017\u0010T\u001a\u00020O8\u0006¢\u0006\f\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010SR\"\u0010V\u001a\u0002058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bU\u00107\u001a\u0004\bV\u00109\"\u0004\bW\u0010XR\u001a\u0010[\u001a\u00020:8\u0006X\u0086D¢\u0006\f\n\u0004\bY\u0010<\u001a\u0004\bZ\u0010>R\u001a\u0010]\u001a\u0002058\u0006X\u0086D¢\u0006\f\n\u0004\b\\\u00107\u001a\u0004\b]\u00109R\u001a\u0010_\u001a\u0002058\u0006X\u0086D¢\u0006\f\n\u0004\b^\u00107\u001a\u0004\b_\u00109R\"\u0010c\u001a\u0002058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b`\u00107\u001a\u0004\ba\u00109\"\u0004\bb\u0010XR\"\u0010g\u001a\u0002058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bd\u00107\u001a\u0004\be\u00109\"\u0004\bf\u0010XR\"\u0010k\u001a\u0002058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bh\u00107\u001a\u0004\bi\u00109\"\u0004\bj\u0010XR\"\u0010m\u001a\u0002058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bl\u00107\u001a\u0004\bm\u00109\"\u0004\bn\u0010XR\u001a\u0010p\u001a\u0002058\u0006X\u0086D¢\u0006\f\n\u0004\bo\u00107\u001a\u0004\bp\u00109R\"\u0010r\u001a\u0002058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bq\u00107\u001a\u0004\br\u00109\"\u0004\bs\u0010XR\"\u0010{\u001a\u00020t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bu\u0010v\u001a\u0004\bw\u0010x\"\u0004\by\u0010zR\u001b\u0010\u007f\u001a\u0002058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b|\u0010}\u001a\u0004\b~\u00109¨\u0006\u0082\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/config/AppConfig;", "", "Lcom/onyx/android/sdk/base/data/Size;", "virtualPageSize", "Ljava/nio/file/Path;", "documentFileDir", "importDocumentTempFileDir", "userNoteTemplateResDir", "Ljava/io/File;", "booksFileDir", "", "TAB_1", Constants.STRING_SIG, "", "a", "F", "getRENDER_MAX_SCREEN_SCALE", "()F", "RENDER_MAX_SCREEN_SCALE", "b", "getSCALING_RENDER_MAX_SCREEN_SCALE", "SCALING_RENDER_MAX_SCREEN_SCALE", "c", "Lcom/onyx/android/sdk/base/data/Size;", "getDEFAULT_SIZE", "()Lcom/onyx/android/sdk/base/data/Size;", "DEFAULT_SIZE", "d", "getDEFAULT_PAGE_THUMBNAIL_SIZE", "DEFAULT_PAGE_THUMBNAIL_SIZE", "e", "getDEFAULT_SMALL_THUMBNAIL_SIZE", "DEFAULT_SMALL_THUMBNAIL_SIZE", C6997f.f39671c, "getDEFAULT_LAYER_THUMBNAIL_SIZE", "DEFAULT_LAYER_THUMBNAIL_SIZE", C6998g.f39679a, "getMAX_CUSTOM_PAGE_SIZE", "MAX_CUSTOM_PAGE_SIZE", C6999h.f39688c, "getProcessTagName", "()Ljava/lang/String;", "setProcessTagName", "(Ljava/lang/String;)V", "processTagName", "Lcom/onyx/android/sdk/universal/editor/config/AppType;", "i", "Lcom/onyx/android/sdk/universal/editor/config/AppType;", "getAppType", "()Lcom/onyx/android/sdk/universal/editor/config/AppType;", "setAppType", "(Lcom/onyx/android/sdk/universal/editor/config/AppType;)V", "appType", "", "j", Constants.HASIDCALL_INDEX_SIG, "isEnabledHorizontalFling", Constants.BOOLEAN_VALUE_SIG, "", C4921e.f26537n, "I", "getHitTestShapeRadius", "()I", "hitTestShapeRadius", "l", "getSkipPendingDisplayRequest", "skipPendingDisplayRequest", "m", "getReuseDocumentConvertResuslt", "reuseDocumentConvertResuslt", GoogleApiAvailabilityLight.f29016b, "getNotePageLimitCount", "notePageLimitCount", C4921e.f26528e, "getExportDraftNoteMaxSize", "exportDraftNoteMaxSize", "p", "getDraftCellSize", "draftCellSize", "Landroid/graphics/RectF;", "q", "Landroid/graphics/RectF;", "getDraftPageOriginRectF", "()Landroid/graphics/RectF;", "draftPageOriginRectF", "r", "isEnabledPageColumn", "setEnabledPageColumn", "(Z)V", "s", "getPendingRenderTaskMaxCount", "pendingRenderTaskMaxCount", "t", "isEnabledPreRender", "u", "isEnabledFastSelectText", "v", "getRenderTapeInImage", "setRenderTapeInImage", "renderTapeInImage", "w", "getRenderExcerptIndicatorInImage", "setRenderExcerptIndicatorInImage", "renderExcerptIndicatorInImage", "x", "getRenderExcerptIndicatorInPdf", "setRenderExcerptIndicatorInPdf", "renderExcerptIndicatorInPdf", "y", "isEnabledPalmReject", "setEnabledPalmReject", "z", "isEnabledEnsureDisplay", "A", "isEnabledDistinctDraftPage", "setEnabledDistinctDraftPage", "", "B", "J", "getPrepareToDrawTimeMills", "()J", "setPrepareToDrawTimeMills", "(J)V", "prepareToDrawTimeMills", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "Lkotlin/Lazy;", "getUseNativeRenderNode", "useNativeRenderNode", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AppConfig {

    /* renamed from: A, reason: from kotlin metadata */
    public static boolean isEnabledDistinctDraftPage = false;

    /* renamed from: B, reason: from kotlin metadata */
    public static long prepareToDrawTimeMills = 0;

    /* renamed from: C, reason: from kotlin metadata */
    @NotNull
    public static final Lazy useNativeRenderNode;

    @NotNull
    public static final AppConfig INSTANCE = new AppConfig();

    @NotNull
    public static final String TAB_1 = "tab_1";

    /* renamed from: a, reason: from kotlin metadata */
    public static final float RENDER_MAX_SCREEN_SCALE;

    /* renamed from: b, reason: from kotlin metadata */
    public static final float SCALING_RENDER_MAX_SCREEN_SCALE;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final Size DEFAULT_SIZE;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final Size DEFAULT_PAGE_THUMBNAIL_SIZE;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final Size DEFAULT_SMALL_THUMBNAIL_SIZE;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public static final Size DEFAULT_LAYER_THUMBNAIL_SIZE;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public static final Size MAX_CUSTOM_PAGE_SIZE;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public static String processTagName;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public static AppType appType;

    /* renamed from: j, reason: from kotlin metadata */
    public static final boolean isEnabledHorizontalFling = false;

    /* renamed from: k, reason: from kotlin metadata */
    public static final int hitTestShapeRadius;

    /* renamed from: l, reason: from kotlin metadata */
    public static final boolean skipPendingDisplayRequest;

    /* renamed from: m, reason: from kotlin metadata */
    public static final boolean reuseDocumentConvertResuslt = false;

    /* renamed from: n, reason: from kotlin metadata */
    public static final int notePageLimitCount;

    /* renamed from: o, reason: from kotlin metadata */
    public static final float exportDraftNoteMaxSize;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public static final Size draftCellSize;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public static final RectF draftPageOriginRectF;

    /* renamed from: r, reason: from kotlin metadata */
    public static boolean isEnabledPageColumn;

    /* renamed from: s, reason: from kotlin metadata */
    public static final int pendingRenderTaskMaxCount;

    /* renamed from: t, reason: from kotlin metadata */
    public static final boolean isEnabledPreRender = false;

    /* renamed from: u, reason: from kotlin metadata */
    public static final boolean isEnabledFastSelectText;

    /* renamed from: v, reason: from kotlin metadata */
    public static boolean renderTapeInImage;

    /* renamed from: w, reason: from kotlin metadata */
    public static boolean renderExcerptIndicatorInImage;

    /* renamed from: x, reason: from kotlin metadata */
    public static boolean renderExcerptIndicatorInPdf;

    /* renamed from: y, reason: from kotlin metadata */
    public static boolean isEnabledPalmReject;

    /* renamed from: z, reason: from kotlin metadata */
    public static final boolean isEnabledEnsureDisplay = false;

    static {
        ResManager resManager = ResManager.INSTANCE;
        RENDER_MAX_SCREEN_SCALE = resManager.getFloatValue(C8045R.dimen.render_max_screen_scale);
        SCALING_RENDER_MAX_SCREEN_SCALE = resManager.getFloatValue(C8045R.dimen.scaling_render_max_screen_scale);
        DEFAULT_SIZE = new Size(resManager.getInteger(C8045R.integer.default_view_size_width), resManager.getInteger(C8045R.integer.default_view_size_height));
        DEFAULT_PAGE_THUMBNAIL_SIZE = new Size(resManager.getInteger(C8045R.integer.default_page_thumbnail_size_width), resManager.getInteger(C8045R.integer.default_page_thumbnail_size_height));
        DEFAULT_SMALL_THUMBNAIL_SIZE = new Size(resManager.getInteger(C8045R.integer.default_small_thumbnail_size_width), resManager.getInteger(C8045R.integer.default_small_thumbnail_size_height));
        DEFAULT_LAYER_THUMBNAIL_SIZE = new Size(resManager.getInteger(C8045R.integer.default_layer_thumbnail_size_width), resManager.getInteger(C8045R.integer.default_layer_thumbnail_size_height));
        MAX_CUSTOM_PAGE_SIZE = new Size(resManager.getInteger(C8045R.integer.default_view_size_width), resManager.getInteger(C8045R.integer.default_view_size_height));
        processTagName = TAB_1;
        appType = AppType.NOTE;
        hitTestShapeRadius = resManager.getDimensionPixelSize(C8045R.dimen.hit_test_shape_radius);
        skipPendingDisplayRequest = true;
        notePageLimitCount = 200;
        exportDraftNoteMaxSize = 4096.0f;
        SizeFormat sizeFormat = SizeFormat.BOUNDLESS;
        Size size = new Size(sizeFormat.getSize().getWidth(), sizeFormat.getSize().getHeight());
        draftCellSize = size;
        draftPageOriginRectF = size.toRectF();
        isEnabledPageColumn = true;
        pendingRenderTaskMaxCount = 4;
        isEnabledFastSelectText = true;
        isEnabledPalmReject = MMKVNote.INSTANCE.getPalmRejectionOption().get();
        prepareToDrawTimeMills = 10L;
        useNativeRenderNode = LazyKt.lazy(new Function0<Boolean>() { // from class: com.onyx.android.sdk.universal.editor.config.AppConfig$useNativeRenderNode$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                return Boolean.valueOf(DeviceFactory.INSTANCE.getCurrentDevice().supportNativeRenderNode());
            }
        });
    }

    @NotNull
    public final File booksFileDir() {
        return new File(Environment.getExternalStorageDirectory(), "Books");
    }

    @Deprecated(message = "", replaceWith = @ReplaceWith(expression = "ResourcePaths.appDocResourceContentDir", imports = {}))
    @NotNull
    public final Path documentFileDir() {
        return CommonPaths.INSTANCE.contentFileDir();
    }

    @NotNull
    public final AppType getAppType() {
        return appType;
    }

    @NotNull
    public final Size getDEFAULT_LAYER_THUMBNAIL_SIZE() {
        return DEFAULT_LAYER_THUMBNAIL_SIZE;
    }

    @NotNull
    public final Size getDEFAULT_PAGE_THUMBNAIL_SIZE() {
        return DEFAULT_PAGE_THUMBNAIL_SIZE;
    }

    @NotNull
    public final Size getDEFAULT_SIZE() {
        return DEFAULT_SIZE;
    }

    @NotNull
    public final Size getDEFAULT_SMALL_THUMBNAIL_SIZE() {
        return DEFAULT_SMALL_THUMBNAIL_SIZE;
    }

    @NotNull
    public final Size getDraftCellSize() {
        return draftCellSize;
    }

    @NotNull
    public final RectF getDraftPageOriginRectF() {
        return draftPageOriginRectF;
    }

    public final float getExportDraftNoteMaxSize() {
        return exportDraftNoteMaxSize;
    }

    public final int getHitTestShapeRadius() {
        return hitTestShapeRadius;
    }

    @NotNull
    public final Size getMAX_CUSTOM_PAGE_SIZE() {
        return MAX_CUSTOM_PAGE_SIZE;
    }

    public final int getNotePageLimitCount() {
        return notePageLimitCount;
    }

    public final int getPendingRenderTaskMaxCount() {
        return pendingRenderTaskMaxCount;
    }

    public final long getPrepareToDrawTimeMills() {
        return prepareToDrawTimeMills;
    }

    @NotNull
    public final String getProcessTagName() {
        return processTagName;
    }

    public final float getRENDER_MAX_SCREEN_SCALE() {
        return RENDER_MAX_SCREEN_SCALE;
    }

    public final boolean getRenderExcerptIndicatorInImage() {
        return renderExcerptIndicatorInImage;
    }

    public final boolean getRenderExcerptIndicatorInPdf() {
        return renderExcerptIndicatorInPdf;
    }

    public final boolean getRenderTapeInImage() {
        return renderTapeInImage;
    }

    public final boolean getReuseDocumentConvertResuslt() {
        return reuseDocumentConvertResuslt;
    }

    public final float getSCALING_RENDER_MAX_SCREEN_SCALE() {
        return SCALING_RENDER_MAX_SCREEN_SCALE;
    }

    public final boolean getSkipPendingDisplayRequest() {
        return skipPendingDisplayRequest;
    }

    public final boolean getUseNativeRenderNode() {
        return ((Boolean) useNativeRenderNode.getValue()).booleanValue();
    }

    @NotNull
    public final Path importDocumentTempFileDir() {
        return AppFilePaths.INSTANCE.appCachesDir("content");
    }

    public final boolean isEnabledDistinctDraftPage() {
        return isEnabledDistinctDraftPage;
    }

    public final boolean isEnabledEnsureDisplay() {
        return isEnabledEnsureDisplay;
    }

    public final boolean isEnabledFastSelectText() {
        return isEnabledFastSelectText;
    }

    public final boolean isEnabledHorizontalFling() {
        return isEnabledHorizontalFling;
    }

    public final boolean isEnabledPageColumn() {
        return isEnabledPageColumn;
    }

    public final boolean isEnabledPalmReject() {
        return isEnabledPalmReject;
    }

    public final boolean isEnabledPreRender() {
        return isEnabledPreRender;
    }

    public final void setAppType(@NotNull AppType appType2) {
        Intrinsics.checkNotNullParameter(appType2, "<set-?>");
        appType = appType2;
    }

    public final void setEnabledDistinctDraftPage(boolean z) {
        isEnabledDistinctDraftPage = z;
    }

    public final void setEnabledPageColumn(boolean z) {
        isEnabledPageColumn = z;
    }

    public final void setEnabledPalmReject(boolean z) {
        isEnabledPalmReject = z;
    }

    public final void setPrepareToDrawTimeMills(long j) {
        prepareToDrawTimeMills = j;
    }

    public final void setProcessTagName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        processTagName = str;
    }

    public final void setRenderExcerptIndicatorInImage(boolean z) {
        renderExcerptIndicatorInImage = z;
    }

    public final void setRenderExcerptIndicatorInPdf(boolean z) {
        renderExcerptIndicatorInPdf = z;
    }

    public final void setRenderTapeInImage(boolean z) {
        renderTapeInImage = z;
    }

    @NotNull
    public final Path userNoteTemplateResDir() {
        return TemplatePaths.INSTANCE.appUserNoteTemplateResDir(AccountDataBundle.INSTANCE.getSyncUserId());
    }

    @NotNull
    public final Size virtualPageSize() {
        return ResManager.INSTANCE.getScreenSize();
    }
}
