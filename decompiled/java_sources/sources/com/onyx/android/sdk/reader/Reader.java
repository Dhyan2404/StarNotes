package com.onyx.android.sdk.reader;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.RectF;
import androidx.annotation.WorkerThread;
import com.bumptech.glide.load.engine.cache.SafeKeyGenerator;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.FloatKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.ObjectLruCache;
import com.onyx.android.sdk.reader.api.DrawArgs;
import com.onyx.android.sdk.reader.api.ReaderDocument;
import com.onyx.android.sdk.reader.api.ReaderDocumentFeatures;
import com.onyx.android.sdk.reader.api.ReaderDocumentOptions;
import com.onyx.android.sdk.reader.api.ReaderDrmManager;
import com.onyx.android.sdk.reader.api.ReaderHitTestManager;
import com.onyx.android.sdk.reader.api.ReaderNavigator;
import com.onyx.android.sdk.reader.api.ReaderPageDataProvider;
import com.onyx.android.sdk.reader.api.ReaderPagination;
import com.onyx.android.sdk.reader.api.ReaderPlugin;
import com.onyx.android.sdk.reader.api.ReaderPluginOptions;
import com.onyx.android.sdk.reader.api.ReaderRenderer;
import com.onyx.android.sdk.reader.api.ReaderRendererFeatures;
import com.onyx.android.sdk.reader.api.ReaderSearchManager;
import com.onyx.android.sdk.reader.api.ReaderTextStyleManager;
import com.onyx.android.sdk.reader.api.ReaderView;
import com.onyx.android.sdk.reader.extension.ReaderKt;
import com.onyx.android.sdk.reader.plugins.caj.CajReaderPlugin;
import com.onyx.android.sdk.reader.plugins.chm.NeoChmReaderPlugin;
import com.onyx.android.sdk.reader.plugins.epub.NeoEpubReaderPlugin;
import com.onyx.android.sdk.reader.plugins.html.NeoHtmlReaderPlugin;
import com.onyx.android.sdk.reader.plugins.images.ImagesReaderPlugin;
import com.onyx.android.sdk.reader.plugins.markdown.NeoMarkdownReaderPlugin;
import com.onyx.android.sdk.reader.plugins.mobi.NeoMobiReaderPlugin;
import com.onyx.android.sdk.reader.plugins.msdoc.NeoMSDocReaderPlugin;
import com.onyx.android.sdk.reader.plugins.neopdf.NeoPdfReaderPlugin;
import com.onyx.android.sdk.reader.plugins.p034fb.NeoFBReaderPlugin;
import com.onyx.android.sdk.reader.plugins.ppt.PPTReaderPlugin;
import com.onyx.android.sdk.reader.plugins.rtf.NeoRtfReaderPlugin;
import com.onyx.android.sdk.reader.plugins.template.TemplateReaderPlugin;
import com.onyx.android.sdk.reader.plugins.txt.NeoTxtReaderPlugin;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.engine.sdk.DisplayMetrics;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b.\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 «\u00012\u00020\u0001:\u0002«\u0001B\t¢\u0006\u0006\b©\u0001\u0010ª\u0001J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u000b\u001a\u00020\nJ8\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013J\u000e\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0016J\u000e\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0016J\u000e\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001aR\"\u0010#\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\"\u0010'\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u001e\u001a\u0004\b%\u0010 \"\u0004\b&\u0010\"R\"\u0010+\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010\u001e\u001a\u0004\b)\u0010 \"\u0004\b*\u0010\"R\"\u0010/\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010\u001e\u001a\u0004\b-\u0010 \"\u0004\b.\u0010\"R\"\u00103\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010\u001e\u001a\u0004\b1\u0010 \"\u0004\b2\u0010\"R\"\u00107\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u0010\u001e\u001a\u0004\b5\u0010 \"\u0004\b6\u0010\"R\"\u0010>\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\"\u0010\f\u001a\u00020\b8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\f\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\"\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0012\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR\"\u0010J\u001a\u00020I8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR$\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR\"\u0010W\u001a\u00020V8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bW\u0010X\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R\"\u0010^\u001a\u00020]8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b^\u0010_\u001a\u0004\b`\u0010a\"\u0004\bb\u0010cR$\u0010k\u001a\u0004\u0018\u00010d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\be\u0010f\u001a\u0004\bg\u0010h\"\u0004\bi\u0010jR\"\u0010m\u001a\u00020l8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bm\u0010n\u001a\u0004\bo\u0010p\"\u0004\bq\u0010rR\"\u0010t\u001a\u00020s8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bt\u0010u\u001a\u0004\bv\u0010w\"\u0004\bx\u0010yR#\u0010{\u001a\u00020z8\u0006@\u0006X\u0086.¢\u0006\u0013\n\u0004\b{\u0010|\u001a\u0004\b}\u0010~\"\u0005\b\u007f\u0010\u0080\u0001R,\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0081\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0082\u0001\u0010\u0083\u0001\u001a\u0006\b\u0084\u0001\u0010\u0085\u0001\"\u0006\b\u0086\u0001\u0010\u0087\u0001R*\u0010\u008a\u0001\u001a\u00030\u0089\u00018\u0006@\u0006X\u0086.¢\u0006\u0018\n\u0006\b\u008a\u0001\u0010\u008b\u0001\u001a\u0006\b\u008c\u0001\u0010\u008d\u0001\"\u0006\b\u008e\u0001\u0010\u008f\u0001R*\u0010\u0091\u0001\u001a\u00030\u0090\u00018\u0006@\u0006X\u0086.¢\u0006\u0018\n\u0006\b\u0091\u0001\u0010\u0092\u0001\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001\"\u0006\b\u0095\u0001\u0010\u0096\u0001R'\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086.¢\u0006\u0017\n\u0005\b\u0010\u0010\u0097\u0001\u001a\u0006\b\u0098\u0001\u0010\u0099\u0001\"\u0006\b\u009a\u0001\u0010\u009b\u0001R'\u0010\u000e\u001a\u00020\r8\u0006@\u0006X\u0086.¢\u0006\u0017\n\u0005\b\u000e\u0010\u009c\u0001\u001a\u0006\b\u009d\u0001\u0010\u009e\u0001\"\u0006\b\u009f\u0001\u0010 \u0001R*\u0010¨\u0001\u001a\u00030¡\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¢\u0001\u0010£\u0001\u001a\u0006\b¤\u0001\u0010¥\u0001\"\u0006\b¦\u0001\u0010§\u0001¨\u0006¬\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/Reader;", "", "", "isDocumentOpen", "Landroid/content/Context;", "appContext", "", "path", "Lcom/onyx/android/sdk/reader/api/ReaderPlugin;", "selectPlugin", "", "destroy", "plugin", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;", "documentOptions", "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;", "pluginOptions", "Lcom/onyx/android/sdk/reader/api/ReaderDocument;", "document", "Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;", "drmManager", "onDocumentOpen", "Lcom/onyx/android/sdk/base/data/Size;", "size", "initViewSize", "updateViewSize", "Lcom/onyx/engine/sdk/DisplayMetrics;", "displayMetrics", "setupDisplayMetrics", "a", Constants.STRING_SIG, "getDocId", "()Ljava/lang/String;", "setDocId", "(Ljava/lang/String;)V", EditorConstants.ARGS_DOC_ID, "b", "getDocumentPath", "setDocumentPath", "documentPath", "c", "getBookName", "setBookName", "bookName", "d", "getTitle", "setTitle", "title", "e", "getDocumentMd5", "setDocumentMd5", "documentMd5", C6997f.f39671c, "getDocumentPasswordCache", "setDocumentPasswordCache", "documentPasswordCache", C6998g.f39679a, "Lcom/onyx/android/sdk/base/data/Size;", "getViewSize", "()Lcom/onyx/android/sdk/base/data/Size;", "setViewSize", "(Lcom/onyx/android/sdk/base/data/Size;)V", "viewSize", "Lcom/onyx/android/sdk/reader/api/ReaderPlugin;", "getPlugin", "()Lcom/onyx/android/sdk/reader/api/ReaderPlugin;", "setPlugin", "(Lcom/onyx/android/sdk/reader/api/ReaderPlugin;)V", "Lcom/onyx/android/sdk/reader/api/ReaderDocument;", "getDocument", "()Lcom/onyx/android/sdk/reader/api/ReaderDocument;", "setDocument", "(Lcom/onyx/android/sdk/reader/api/ReaderDocument;)V", "Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;", "pageDataProvider", "Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;", "getPageDataProvider", "()Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;", "setPageDataProvider", "(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;)V", C6999h.f39688c, "Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;", "getDrmManager", "()Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;", "setDrmManager", "(Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;)V", "Lcom/onyx/android/sdk/reader/api/ReaderView;", "view", "Lcom/onyx/android/sdk/reader/api/ReaderView;", "getView", "()Lcom/onyx/android/sdk/reader/api/ReaderView;", "setView", "(Lcom/onyx/android/sdk/reader/api/ReaderView;)V", "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;", "navigator", "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;", "getNavigator", "()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;", "setNavigator", "(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)V", "Lcom/onyx/android/sdk/reader/api/ReaderPagination;", "i", "Lcom/onyx/android/sdk/reader/api/ReaderPagination;", "getPagination", "()Lcom/onyx/android/sdk/reader/api/ReaderPagination;", "setPagination", "(Lcom/onyx/android/sdk/reader/api/ReaderPagination;)V", "pagination", "Lcom/onyx/android/sdk/reader/api/ReaderRenderer;", "renderer", "Lcom/onyx/android/sdk/reader/api/ReaderRenderer;", "getRenderer", "()Lcom/onyx/android/sdk/reader/api/ReaderRenderer;", "setRenderer", "(Lcom/onyx/android/sdk/reader/api/ReaderRenderer;)V", "Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;", "rendererFeatures", "Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;", "getRendererFeatures", "()Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;", "setRendererFeatures", "(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)V", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;", "documentFeatures", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;", "getDocumentFeatures", "()Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;", "setDocumentFeatures", "(Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;)V", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;", "j", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;", "getTextStyleManager", "()Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;", "setTextStyleManager", "(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;)V", "textStyleManager", "Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;", "searchManager", "Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;", "getSearchManager", "()Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;", "setSearchManager", "(Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;)V", "Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;", "hitTestManager", "Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;", "getHitTestManager", "()Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;", "setHitTestManager", "(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;)V", "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;", "getPluginOptions", "()Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;", "setPluginOptions", "(Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)V", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;", "getDocumentOptions", "()Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;", "setDocumentOptions", "(Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;)V", "Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;", C4921e.f26537n, "Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;", "getContentDiskCache", "()Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;", "setContentDiskCache", "(Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;)V", "contentDiskCache", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class Reader {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public ReaderDocument document;
    public ReaderDocumentFeatures documentFeatures;
    public ReaderDocumentOptions documentOptions;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public ReaderDrmManager drmManager;
    public ReaderHitTestManager hitTestManager;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public ReaderPagination pagination;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public ReaderTextStyleManager textStyleManager;
    public ReaderNavigator navigator;
    public ReaderPageDataProvider pageDataProvider;
    public ReaderPlugin plugin;
    public ReaderPluginOptions pluginOptions;
    public ReaderRenderer renderer;
    public ReaderRendererFeatures rendererFeatures;
    public ReaderSearchManager searchManager;
    public ReaderView view;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String docId = "";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String documentPath = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String bookName = "";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public String title = "";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public String documentMd5 = "";

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public String documentPasswordCache = "";

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public Size viewSize = new Size(300, 400);

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public Companion.ReaderContentDiskCache contentDiskCache = new Companion.ReaderContentDiskCache(this);

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\tB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/Reader$Companion;", "", "()V", "isSharedReaderScheduler", "", "path", "", "isSupport", "supportConverter", "ReaderContentDiskCache", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {

        @Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001cB\u000f\u0012\u0006\u0010\u0019\u001a\u00020\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0016\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u00102\u0006\u0010\u000f\u001a\u00020\u0002H\u0016J\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0004R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;", "Lcom/onyx/android/sdk/data/utils/ObjectLruCache;", "Lcom/onyx/android/sdk/reader/api/DrawArgs;", "Landroid/graphics/Bitmap;", "", "positionString", "", "rotation", "getDiskCacheKey", "resource", "Ljava/io/File;", "file", "", "write", "read", "args", "Lio/reactivex/rxjava3/core/Observable;", "decode", "Landroid/graphics/RectF;", "displayRect", "cacheKey", "queryCacheBitmap", "Lcom/onyx/android/sdk/reader/Reader;", "a", "Lcom/onyx/android/sdk/reader/Reader;", "reader", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/Reader;)V", "Companion", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
        @SourceDebugExtension({"SMAP\nReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reader.kt\ncom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache\n+ 2 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,285:1\n76#2,2:286\n*S KotlinDebug\n*F\n+ 1 Reader.kt\ncom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache\n*L\n215#1:286,2\n*E\n"})
        /* loaded from: classes8.dex */
        public static final class ReaderContentDiskCache extends ObjectLruCache<DrawArgs, Bitmap> {
            public static final long MIN_DISK_CACHE_RENDER_TIME = 300;

            /* renamed from: a, reason: from kotlin metadata */
            @NotNull
            public final Reader reader;

            /* renamed from: com.onyx.android.sdk.reader.Reader$Companion$ReaderContentDiskCache$a */
            /* loaded from: classes8.dex */
            public static final class C7581a<T> implements Consumer {

                /* renamed from: f */
                public final /* synthetic */ DrawArgs f44385f;

                public C7581a(DrawArgs drawArgs) {
                    this.f44385f = drawArgs;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull DrawArgs it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    ReaderKt.safeRender(ReaderContentDiskCache.this.reader, this.f44385f);
                }
            }

            /* renamed from: com.onyx.android.sdk.reader.Reader$Companion$ReaderContentDiskCache$b */
            /* loaded from: classes8.dex */
            public static final class C7582b<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ DrawArgs f44386e;

                public C7582b(DrawArgs drawArgs) {
                    this.f44386e = drawArgs;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Bitmap apply(@NotNull DrawArgs it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return this.f44386e.getBitmap();
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ReaderContentDiskCache(@NotNull Reader reader) {
                super("reader_content", 3221225472L);
                Intrinsics.checkNotNullParameter(reader, "reader");
                this.reader = reader;
                setSafeKeyGenerator(new SafeKeyGenerator());
            }

            @NotNull
            public final String getDiskCacheKey(@NotNull String positionString, float rotation) {
                Intrinsics.checkNotNullParameter(positionString, "positionString");
                return this.reader.getDocumentPath() + NameUtil.USCORE + positionString + NameUtil.USCORE + rotation;
            }

            @Nullable
            public final Bitmap queryCacheBitmap(@NotNull RectF displayRect, @NotNull String cacheKey) {
                int roundToInt;
                int roundToInt2;
                Intrinsics.checkNotNullParameter(displayRect, "displayRect");
                Intrinsics.checkNotNullParameter(cacheKey, "cacheKey");
                if (!hasCache(cacheKey)) {
                    return null;
                }
                String cacheFile = getCacheFile(cacheKey);
                if (!FileUtils.INSTANCE.isFileExist(cacheFile)) {
                    return null;
                }
                Bitmap read = read(new File(cacheFile));
                if (!BitmapKt.isValid(read)) {
                    return null;
                }
                roundToInt = MathKt__MathJVMKt.roundToInt(displayRect.width());
                roundToInt2 = MathKt__MathJVMKt.roundToInt(displayRect.height());
                if (!FloatKt.isApproximatelyEqual(roundToInt / roundToInt2, read.getWidth() / read.getHeight(), 0.05f)) {
                    return null;
                }
                if (read.getWidth() == roundToInt || read.getHeight() == roundToInt2) {
                    return read;
                }
                if (read.getWidth() <= roundToInt && read.getHeight() <= roundToInt2) {
                    return null;
                }
                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(read, roundToInt, roundToInt2, true);
                Intrinsics.checkNotNullExpressionValue(createScaledBitmap, "createScaledBitmap(this, width, height, filter)");
                return createScaledBitmap;
            }

            @Override // com.onyx.android.sdk.data.utils.ObjectLruCache
            @NotNull
            public Observable<Bitmap> decode(@NotNull DrawArgs args) {
                Intrinsics.checkNotNullParameter(args, "args");
                Observable<Bitmap> map = Observable.just(args).doOnNext(new C7581a(args)).map(new C7582b(args));
                Intrinsics.checkNotNullExpressionValue(map, "map(...)");
                return map;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.onyx.android.sdk.data.utils.ObjectLruCache
            @NotNull
            public Bitmap read(@NotNull File file) {
                Intrinsics.checkNotNullParameter(file, "file");
                Bitmap decodeFile = BitmapFactory.decodeFile(file.getAbsolutePath());
                Intrinsics.checkNotNullExpressionValue(decodeFile, "decodeFile(...)");
                return decodeFile;
            }

            @Override // com.onyx.android.sdk.data.utils.ObjectLruCache
            public boolean write(@NotNull Bitmap resource, @NotNull File file) {
                Intrinsics.checkNotNullParameter(resource, "resource");
                Intrinsics.checkNotNullParameter(file, "file");
                return BitmapKt.save$default(resource, file.getAbsolutePath(), 0, 2, null);
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @WorkerThread
        public final boolean isSharedReaderScheduler(@NotNull String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            if (NeoPdfReaderPlugin.INSTANCE.accept(path) || PPTReaderPlugin.INSTANCE.accept(path)) {
                return true;
            }
            if (!ImagesReaderPlugin.INSTANCE.accept(path)) {
                if (CajReaderPlugin.INSTANCE.accept(path) || NeoHtmlReaderPlugin.INSTANCE.accept(path) || NeoMSDocReaderPlugin.INSTANCE.accept(path) || NeoFBReaderPlugin.INSTANCE.accept(path) || NeoEpubReaderPlugin.INSTANCE.accept(path) || NeoMobiReaderPlugin.INSTANCE.accept(path) || NeoTxtReaderPlugin.INSTANCE.accept(path) || NeoRtfReaderPlugin.INSTANCE.accept(path) || NeoChmReaderPlugin.INSTANCE.accept(path) || NeoMarkdownReaderPlugin.INSTANCE.accept(path)) {
                    return true;
                }
                TemplateReaderPlugin.INSTANCE.accept(path);
            }
            return false;
        }

        @WorkerThread
        public final boolean isSupport(@NotNull String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            return NeoPdfReaderPlugin.INSTANCE.accept(path) || PPTReaderPlugin.INSTANCE.accept(path) || ImagesReaderPlugin.INSTANCE.accept(path) || CajReaderPlugin.INSTANCE.accept(path) || NeoHtmlReaderPlugin.INSTANCE.accept(path) || NeoMSDocReaderPlugin.INSTANCE.accept(path) || NeoFBReaderPlugin.INSTANCE.accept(path) || NeoEpubReaderPlugin.INSTANCE.accept(path) || NeoMobiReaderPlugin.INSTANCE.accept(path) || NeoTxtReaderPlugin.INSTANCE.accept(path) || NeoRtfReaderPlugin.INSTANCE.accept(path) || NeoChmReaderPlugin.INSTANCE.accept(path) || NeoMarkdownReaderPlugin.INSTANCE.accept(path) || TemplateReaderPlugin.INSTANCE.accept(path);
        }

        @WorkerThread
        public final boolean supportConverter(@NotNull String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            if (NeoPdfReaderPlugin.INSTANCE.accept(path) || PPTReaderPlugin.INSTANCE.accept(path) || ImagesReaderPlugin.INSTANCE.accept(path) || CajReaderPlugin.INSTANCE.accept(path)) {
                return false;
            }
            if (NeoHtmlReaderPlugin.INSTANCE.accept(path) || NeoMSDocReaderPlugin.INSTANCE.accept(path) || NeoFBReaderPlugin.INSTANCE.accept(path) || NeoEpubReaderPlugin.INSTANCE.accept(path) || NeoMobiReaderPlugin.INSTANCE.accept(path) || NeoTxtReaderPlugin.INSTANCE.accept(path) || NeoRtfReaderPlugin.INSTANCE.accept(path) || NeoChmReaderPlugin.INSTANCE.accept(path) || NeoMarkdownReaderPlugin.INSTANCE.accept(path)) {
                return true;
            }
            TemplateReaderPlugin.INSTANCE.accept(path);
            return false;
        }

        public Companion() {
        }
    }

    @NotNull
    public final Context appContext() {
        return ResManager.INSTANCE.getAppContext();
    }

    public final void destroy() {
        try {
            ReaderKt.close(this);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @NotNull
    public final String getBookName() {
        return this.bookName;
    }

    @NotNull
    public final Companion.ReaderContentDiskCache getContentDiskCache() {
        return this.contentDiskCache;
    }

    @NotNull
    public final String getDocId() {
        return this.docId;
    }

    @NotNull
    public final ReaderDocument getDocument() {
        ReaderDocument readerDocument = this.document;
        if (readerDocument != null) {
            return readerDocument;
        }
        Intrinsics.throwUninitializedPropertyAccessException("document");
        return null;
    }

    @NotNull
    public final ReaderDocumentFeatures getDocumentFeatures() {
        ReaderDocumentFeatures readerDocumentFeatures = this.documentFeatures;
        if (readerDocumentFeatures != null) {
            return readerDocumentFeatures;
        }
        Intrinsics.throwUninitializedPropertyAccessException("documentFeatures");
        return null;
    }

    @NotNull
    public final String getDocumentMd5() {
        return this.documentMd5;
    }

    @NotNull
    public final ReaderDocumentOptions getDocumentOptions() {
        ReaderDocumentOptions readerDocumentOptions = this.documentOptions;
        if (readerDocumentOptions != null) {
            return readerDocumentOptions;
        }
        Intrinsics.throwUninitializedPropertyAccessException("documentOptions");
        return null;
    }

    @NotNull
    public final String getDocumentPasswordCache() {
        return this.documentPasswordCache;
    }

    @NotNull
    public final String getDocumentPath() {
        return this.documentPath;
    }

    @Nullable
    public final ReaderDrmManager getDrmManager() {
        return this.drmManager;
    }

    @NotNull
    public final ReaderHitTestManager getHitTestManager() {
        ReaderHitTestManager readerHitTestManager = this.hitTestManager;
        if (readerHitTestManager != null) {
            return readerHitTestManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("hitTestManager");
        return null;
    }

    @NotNull
    public final ReaderNavigator getNavigator() {
        ReaderNavigator readerNavigator = this.navigator;
        if (readerNavigator != null) {
            return readerNavigator;
        }
        Intrinsics.throwUninitializedPropertyAccessException("navigator");
        return null;
    }

    @NotNull
    public final ReaderPageDataProvider getPageDataProvider() {
        ReaderPageDataProvider readerPageDataProvider = this.pageDataProvider;
        if (readerPageDataProvider != null) {
            return readerPageDataProvider;
        }
        Intrinsics.throwUninitializedPropertyAccessException("pageDataProvider");
        return null;
    }

    @Nullable
    public final ReaderPagination getPagination() {
        return this.pagination;
    }

    @NotNull
    public final ReaderPlugin getPlugin() {
        ReaderPlugin readerPlugin = this.plugin;
        if (readerPlugin != null) {
            return readerPlugin;
        }
        Intrinsics.throwUninitializedPropertyAccessException("plugin");
        return null;
    }

    @NotNull
    public final ReaderPluginOptions getPluginOptions() {
        ReaderPluginOptions readerPluginOptions = this.pluginOptions;
        if (readerPluginOptions != null) {
            return readerPluginOptions;
        }
        Intrinsics.throwUninitializedPropertyAccessException("pluginOptions");
        return null;
    }

    @NotNull
    public final ReaderRenderer getRenderer() {
        ReaderRenderer readerRenderer = this.renderer;
        if (readerRenderer != null) {
            return readerRenderer;
        }
        Intrinsics.throwUninitializedPropertyAccessException("renderer");
        return null;
    }

    @NotNull
    public final ReaderRendererFeatures getRendererFeatures() {
        ReaderRendererFeatures readerRendererFeatures = this.rendererFeatures;
        if (readerRendererFeatures != null) {
            return readerRendererFeatures;
        }
        Intrinsics.throwUninitializedPropertyAccessException("rendererFeatures");
        return null;
    }

    @NotNull
    public final ReaderSearchManager getSearchManager() {
        ReaderSearchManager readerSearchManager = this.searchManager;
        if (readerSearchManager != null) {
            return readerSearchManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("searchManager");
        return null;
    }

    @Nullable
    public final ReaderTextStyleManager getTextStyleManager() {
        return this.textStyleManager;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final ReaderView getView() {
        ReaderView readerView = this.view;
        if (readerView != null) {
            return readerView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("view");
        return null;
    }

    @NotNull
    public final Size getViewSize() {
        return this.viewSize;
    }

    public final void initViewSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        this.viewSize = Size.copy$default(size, 0, 0, 3, null);
        getView().updateViewSize(size);
    }

    public final boolean isDocumentOpen() {
        return this.document != null;
    }

    public final void onDocumentOpen(@NotNull String path, @NotNull ReaderPlugin plugin, @NotNull ReaderDocumentOptions documentOptions, @NotNull ReaderPluginOptions pluginOptions, @NotNull ReaderDocument document, @Nullable ReaderDrmManager drmManager) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        Intrinsics.checkNotNullParameter(documentOptions, "documentOptions");
        Intrinsics.checkNotNullParameter(pluginOptions, "pluginOptions");
        Intrinsics.checkNotNullParameter(document, "document");
        this.documentPath = path;
        setPlugin(plugin);
        setDocumentOptions(documentOptions);
        setPluginOptions(pluginOptions);
        setDocument(document);
        setPageDataProvider(document.getPageDataProvider());
        this.drmManager = drmManager;
        setView(document.getView());
        setRenderer(getView().getRenderer());
        setNavigator(getView().getNavigator());
        this.pagination = getView().getPagination();
        setRendererFeatures(getRenderer().getRendererFeatures());
        this.textStyleManager = getView().getTextStyleManager();
        setHitTestManager(getView().getReaderHitTestManager());
        setSearchManager(getView().getSearchManager());
        setDocumentFeatures(document.getDocumentFeatures());
    }

    @Nullable
    public final ReaderPlugin selectPlugin(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        if (NeoPdfReaderPlugin.INSTANCE.accept(path)) {
            return new NeoPdfReaderPlugin();
        }
        if (PPTReaderPlugin.INSTANCE.accept(path)) {
            return new PPTReaderPlugin();
        }
        if (ImagesReaderPlugin.INSTANCE.accept(path)) {
            return new ImagesReaderPlugin();
        }
        if (CajReaderPlugin.INSTANCE.accept(path)) {
            return new CajReaderPlugin();
        }
        if (NeoHtmlReaderPlugin.INSTANCE.accept(path)) {
            return new NeoHtmlReaderPlugin();
        }
        if (NeoMSDocReaderPlugin.INSTANCE.accept(path)) {
            return new NeoMSDocReaderPlugin();
        }
        if (NeoFBReaderPlugin.INSTANCE.accept(path)) {
            return new NeoFBReaderPlugin();
        }
        if (NeoEpubReaderPlugin.INSTANCE.accept(path)) {
            return new NeoEpubReaderPlugin();
        }
        if (NeoMobiReaderPlugin.INSTANCE.accept(path)) {
            return new NeoMobiReaderPlugin();
        }
        if (NeoTxtReaderPlugin.INSTANCE.accept(path)) {
            return new NeoTxtReaderPlugin();
        }
        if (NeoRtfReaderPlugin.INSTANCE.accept(path)) {
            return new NeoRtfReaderPlugin();
        }
        if (NeoChmReaderPlugin.INSTANCE.accept(path)) {
            return new NeoChmReaderPlugin();
        }
        if (NeoMarkdownReaderPlugin.INSTANCE.accept(path)) {
            return new NeoMarkdownReaderPlugin();
        }
        if (TemplateReaderPlugin.INSTANCE.accept(path)) {
            return new TemplateReaderPlugin();
        }
        return null;
    }

    public final void setBookName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.bookName = str;
    }

    public final void setContentDiskCache(@NotNull Companion.ReaderContentDiskCache readerContentDiskCache) {
        Intrinsics.checkNotNullParameter(readerContentDiskCache, "<set-?>");
        this.contentDiskCache = readerContentDiskCache;
    }

    public final void setDocId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.docId = str;
    }

    public final void setDocument(@NotNull ReaderDocument readerDocument) {
        Intrinsics.checkNotNullParameter(readerDocument, "<set-?>");
        this.document = readerDocument;
    }

    public final void setDocumentFeatures(@NotNull ReaderDocumentFeatures readerDocumentFeatures) {
        Intrinsics.checkNotNullParameter(readerDocumentFeatures, "<set-?>");
        this.documentFeatures = readerDocumentFeatures;
    }

    public final void setDocumentMd5(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentMd5 = str;
    }

    public final void setDocumentOptions(@NotNull ReaderDocumentOptions readerDocumentOptions) {
        Intrinsics.checkNotNullParameter(readerDocumentOptions, "<set-?>");
        this.documentOptions = readerDocumentOptions;
    }

    public final void setDocumentPasswordCache(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentPasswordCache = str;
    }

    public final void setDocumentPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentPath = str;
    }

    public final void setDrmManager(@Nullable ReaderDrmManager readerDrmManager) {
        this.drmManager = readerDrmManager;
    }

    public final void setHitTestManager(@NotNull ReaderHitTestManager readerHitTestManager) {
        Intrinsics.checkNotNullParameter(readerHitTestManager, "<set-?>");
        this.hitTestManager = readerHitTestManager;
    }

    public final void setNavigator(@NotNull ReaderNavigator readerNavigator) {
        Intrinsics.checkNotNullParameter(readerNavigator, "<set-?>");
        this.navigator = readerNavigator;
    }

    public final void setPageDataProvider(@NotNull ReaderPageDataProvider readerPageDataProvider) {
        Intrinsics.checkNotNullParameter(readerPageDataProvider, "<set-?>");
        this.pageDataProvider = readerPageDataProvider;
    }

    public final void setPagination(@Nullable ReaderPagination readerPagination) {
        this.pagination = readerPagination;
    }

    public final void setPlugin(@NotNull ReaderPlugin readerPlugin) {
        Intrinsics.checkNotNullParameter(readerPlugin, "<set-?>");
        this.plugin = readerPlugin;
    }

    public final void setPluginOptions(@NotNull ReaderPluginOptions readerPluginOptions) {
        Intrinsics.checkNotNullParameter(readerPluginOptions, "<set-?>");
        this.pluginOptions = readerPluginOptions;
    }

    public final void setRenderer(@NotNull ReaderRenderer readerRenderer) {
        Intrinsics.checkNotNullParameter(readerRenderer, "<set-?>");
        this.renderer = readerRenderer;
    }

    public final void setRendererFeatures(@NotNull ReaderRendererFeatures readerRendererFeatures) {
        Intrinsics.checkNotNullParameter(readerRendererFeatures, "<set-?>");
        this.rendererFeatures = readerRendererFeatures;
    }

    public final void setSearchManager(@NotNull ReaderSearchManager readerSearchManager) {
        Intrinsics.checkNotNullParameter(readerSearchManager, "<set-?>");
        this.searchManager = readerSearchManager;
    }

    public final void setTextStyleManager(@Nullable ReaderTextStyleManager readerTextStyleManager) {
        this.textStyleManager = readerTextStyleManager;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final void setView(@NotNull ReaderView readerView) {
        Intrinsics.checkNotNullParameter(readerView, "<set-?>");
        this.view = readerView;
    }

    public final void setViewSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "<set-?>");
        this.viewSize = size;
    }

    public final void setupDisplayMetrics(@NotNull DisplayMetrics displayMetrics) {
        Intrinsics.checkNotNullParameter(displayMetrics, "displayMetrics");
        getView().setupDisplayMetrics(displayMetrics);
    }

    public final void updateViewSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        this.viewSize = Size.copy$default(size, 0, 0, 3, null);
        getView().updateViewSize(size);
    }
}
