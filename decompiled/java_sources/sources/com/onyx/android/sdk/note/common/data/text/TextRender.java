package com.onyx.android.sdk.note.common.data.text;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.RectF;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.font.FontInfo;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.note.common.data.text.TextRender;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextAlignType;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Scheduler;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.util.ExtUnits;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 :2\u00020\u0001:\u0002:;B\u0011\b\u0017\u0012\u0006\u00107\u001a\u000206¢\u0006\u0004\b8\u00109J\b\u0010\u0003\u001a\u00020\u0002H\u0004J\u0010\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\t\u001a\u00020\bJ\u0016\u0010\r\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\f\u0018\u00010\nJ\u001c\u0010\u000f\u001a\u00020\u00062\u0014\u0010\u000e\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\f0\nJ\u0006\u0010\u0011\u001a\u00020\u0010J&\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0015J\u0006\u0010\u0018\u001a\u00020\u0006J\u0010\u0010\u001b\u001a\u00020\u00062\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019J\u0018\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\u001e\u0010 \u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001c2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0015H\u0002J\b\u0010!\u001a\u00020\u0006H\u0002R\u0014\u0010$\u001a\u00020\u000b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010&\u001a\u00020\u000b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b%\u0010#R\u0018\u0010)\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R&\u0010\u000e\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\f\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/text/TextRender;", "Landroid/webkit/WebView;", "Landroid/webkit/WebViewClient;", "createWebViewClient", "Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;", "visualStateCallback", "", "setVisualStateCallback", "Lio/reactivex/rxjava3/core/Scheduler;", "getIOScheduler", "", "", "Lcom/onyx/android/sdk/base/data/font/FontInfo;", "getFontMap", "fontMap", "setFontMap", "", "isReady", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "textShape", "content", "", "fontList", "loadContent", Constants.CLEAR_ATTRIBUTES, "Ljava/lang/Runnable;", "pageFinishCallback", "setPageFinishCallback", "Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;", "data", "fontPath", "b", "c", "a", "e", Constants.STRING_SIG, "HTML_SPACE", C6997f.f39671c, "SETUP_HTML", C6998g.f39679a, "Lio/reactivex/rxjava3/core/Scheduler;", "ioScheduler", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;", "i", "Ljava/lang/Runnable;", "j", Constants.HASIDCALL_INDEX_SIG, C4921e.f26537n, "Ljava/util/Map;", "", "l", "I", "visualRequestId", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Companion", "VisualStateCallback", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTextRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextRender.kt\ncom/onyx/android/sdk/note/common/data/text/TextRender\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,282:1\n215#2,2:283\n*S KotlinDebug\n*F\n+ 1 TextRender.kt\ncom/onyx/android/sdk/note/common/data/text/TextRender\n*L\n131#1:283,2\n*E\n"})
/* loaded from: classes8.dex */
public final class TextRender extends WebView {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: m */
    @Nullable
    public static String f43432m;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String HTML_SPACE;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String SETUP_HTML;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Scheduler ioScheduler;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public VisualStateCallback visualStateCallback;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Runnable pageFinishCallback;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isReady;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public Map<String, FontInfo> fontMap;

    /* renamed from: l, reason: from kotlin metadata */
    public int visualRequestId;

    @Metadata(m61527d1 = {"\u0000\u0017\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007¨\u0006\u0006"}, m61528d2 = {"com/onyx/android/sdk/note/common/data/text/TextRender$1", "", "onInitFinish", "", FirebaseAnalytics.Param.SUCCESS, "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* renamed from: com.onyx.android.sdk.note.common.data.text.TextRender$1 */
    /* loaded from: classes8.dex */
    public static final class C74951 {
        public C74951() {
        }

        /* renamed from: b */
        public static final void m33718b(TextRender this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.m33714a();
        }

        @JavascriptInterface
        public final void onInitFinish(boolean success) {
            final TextRender textRender = TextRender.this;
            RxjavaKt.runInUI(new Runnable() { // from class: com.sunia.HTREnginev2.yen
                @Override // java.lang.Runnable
                public final void run() {
                    TextRender.C74951.m33718b(TextRender.this);
                }
            });
        }
    }

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0016\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0002J\n\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/text/TextRender$Companion;", "", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "textStyle", "", "text", "buildHtml", gon.f71258K, "fontPath", "b", "d", "c", "a", "", "alignType", "e", "cssContent", Constants.STRING_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nTextRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextRender.kt\ncom/onyx/android/sdk/note/common/data/text/TextRender$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,282:1\n1855#2,2:283\n1855#2,2:285\n*S KotlinDebug\n*F\n+ 1 TextRender.kt\ncom/onyx/android/sdk/note/common/data/text/TextRender$Companion\n*L\n233#1:283,2\n238#1:285,2\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final String m33719a(ShapeTextStyle textStyle, String fontFamily) {
            TextRenderUtil textRenderUtil = TextRenderUtil.INSTANCE;
            float renderSize = textRenderUtil.getRenderSize(ResManager.INSTANCE.getAppContext(), textStyle.getTextSize());
            StringBuilder sb = new StringBuilder();
            sb.append("line-height:");
            sb.append(textRenderUtil.getLineHeight(textStyle.getTextSpacing()));
            sb.append(AndroidTreeView.f47214k);
            sb.append("font-size:");
            sb.append(renderSize);
            sb.append("px;");
            sb.append("font-family:'");
            sb.append(fontFamily);
            sb.append("';");
            sb.append("text-align:");
            sb.append(m33723e(textStyle.getAlignType()));
            sb.append(AndroidTreeView.f47214k);
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            if (textStyle.isVertical()) {
                sb.append(" writing-mode: vertical-rl;");
            }
            return " style=\"" + ((Object) sb) + '\"';
        }

        /* renamed from: b */
        public final String m33720b(String fontFamily, String fontPath) {
            return "@font-face {font-family: '" + fontFamily + "';src: url('file://" + fontPath + "');}";
        }

        @NotNull
        public final String buildHtml(@NotNull ShapeTextStyle textStyle, @NotNull String text) {
            String str;
            String str2;
            Intrinsics.checkNotNullParameter(textStyle, "textStyle");
            Intrinsics.checkNotNullParameter(text, "text");
            if (StringUtils.isNotBlank(text)) {
                text = new Regex(com.onegravity.rteditor.utils.Constants.TAG_BR_INVALID).replace(text, "<br/>");
            }
            if (StringKt.isNotBlank(textStyle.getFontFace())) {
                str = FilenameUtils.getBaseName(textStyle.getFontFace());
                Intrinsics.checkNotNullExpressionValue(str, "getBaseName(...)");
                String fontFace = textStyle.getFontFace();
                Intrinsics.checkNotNull(fontFace);
                str2 = m33720b(str, fontFace);
            } else {
                str = "";
                str2 = "";
            }
            TextRenderUtil textRenderUtil = TextRenderUtil.INSTANCE;
            ResManager resManager = ResManager.INSTANCE;
            float renderSize = textRenderUtil.getRenderSize(resManager.getAppContext(), textStyle.getTextWidth());
            float renderSize2 = textRenderUtil.getRenderSize(resManager.getAppContext(), textStyle.getTextHeight());
            return "<html>\n                          <head>\n                            <meta name=\"viewport\" content=\"user-scalable=no,initial-scale=1,width=device-width\"/>\n                            <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n                        " + m33722d() + " <style> " + str2 + "</style>  </head>\n                          <body style=\"" + ("width: " + renderSize + "px;") + ("height: " + renderSize2 + "px;") + ("min-width: " + renderSize + "px;") + ("min-height: " + renderSize2 + "px;") + "\">\n                            <div id=\"main\"style=\"" + m33721c(textStyle) + "\">\n                              <div id=\"editor\" class=\"" + (textStyle.isVertical() ? "vertical" : "horizontal") + '\"' + m33719a(textStyle, str) + '>' + text + "</div>\n                            </div>\n                          </body>\n                        </html>\n                   ";
        }

        /* renamed from: c */
        public final String m33721c(ShapeTextStyle textStyle) {
            return textStyle.isVertical() ? "display: flex; justify-content: flex-end;" : "display: flex; justify-content: flex-start;";
        }

        /* renamed from: d */
        public final String m33722d() {
            if (StringUtils.isNotBlank(TextRender.f43432m)) {
                return TextRender.f43432m;
            }
            FileUtils fileUtils = FileUtils.INSTANCE;
            ResManager resManager = ResManager.INSTANCE;
            List<String> readAssetsContent = fileUtils.readAssetsContent(resManager.getAppContext(), "css/normalizer.css");
            List<String> readAssetsContent2 = fileUtils.readAssetsContent(resManager.getAppContext(), "css/editor.css");
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("<style type=\"text/css\">");
            if (readAssetsContent != null) {
                for (String str : readAssetsContent) {
                    stringBuffer.append("\n");
                    stringBuffer.append(str);
                }
            }
            if (readAssetsContent2 != null) {
                for (String str2 : readAssetsContent2) {
                    stringBuffer.append("\n");
                    stringBuffer.append(str2);
                }
            }
            stringBuffer.append("</style>");
            TextRender.f43432m = stringBuffer.toString();
            return TextRender.f43432m;
        }

        /* renamed from: e */
        public final String m33723e(int alignType) {
            return alignType != 0 ? alignType != 1 ? alignType != 2 ? "" : "center" : gon.f71288n0 : "left";
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;", "", "onComplete", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public interface VisualStateCallback {
        void onComplete();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"JavascriptInterface"})
    public TextRender(@NotNull Context context) {
        super(context, null, 0);
        Intrinsics.checkNotNullParameter(context, "context");
        this.HTML_SPACE = "&#x0020;";
        this.SETUP_HTML = "file:///android_asset/richEditor.html";
        this.visualRequestId = 1000;
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        setOverScrollMode(2);
        getSettings().setJavaScriptEnabled(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setCacheMode(1);
        getSettings().setAllowFileAccess(true);
        getSettings().setMinimumFontSize(1);
        getSettings().setMinimumLogicalFontSize(1);
        getSettings().setTextZoom(100);
        setWebChromeClient(new WebChromeClient());
        setWebViewClient(createWebViewClient());
        addJavascriptInterface(new C74951(), "editor");
        loadUrl("file:///android_asset/richEditor.html");
    }

    /* renamed from: a */
    public final void m33714a() {
        if (this.visualStateCallback == null) {
            return;
        }
        final int i = this.visualRequestId;
        this.visualRequestId = i + 1;
        postVisualStateCallback(i, new WebView.VisualStateCallback() { // from class: com.onyx.android.sdk.note.common.data.text.TextRender$requestVisualState$1
            @Override // android.webkit.WebView.VisualStateCallback
            public void onComplete(long id) {
                TextRender.VisualStateCallback visualStateCallback;
                if (i == id) {
                    Debug.INSTANCE.m32035d(TextRender$requestVisualState$1.class, "requestVisualState complete, id: " + id, new Object[0]);
                    visualStateCallback = this.visualStateCallback;
                    Intrinsics.checkNotNull(visualStateCallback);
                    visualStateCallback.onComplete();
                    this.visualStateCallback = null;
                }
            }
        });
    }

    /* renamed from: b */
    public final void m33715b(EditorInputData data, String fontPath) {
        if (StringUtils.isBlank(fontPath)) {
            data.addAction("setBaseFontFamily", "", "");
            return;
        }
        Map<String, FontInfo> map = this.fontMap;
        if (map != null) {
            for (Map.Entry<String, FontInfo> entry : map.entrySet()) {
                if (Objects.equals(entry.getValue().getFilePath(), fontPath)) {
                    data.addAction("setBaseFontFamily", entry.getKey(), "file://" + fontPath);
                    return;
                }
            }
        }
    }

    /* renamed from: c */
    public final void m33716c(EditorInputData data, List<String> fontList) {
        for (String str : fontList) {
            Map<String, FontInfo> map = this.fontMap;
            FontInfo fontInfo = map != null ? map.get(str) : null;
            if (fontInfo == null) {
                Debug.INSTANCE.m32044e(TextRender.class, "fontInfo not exists, fontFamily: " + str, new Object[0]);
            } else {
                data.addAction("setCustomFontFamilyWithUrl", str, fontInfo.getFilePath(), StringKt.safelyGetStr(fontInfo.getFontTypeName()));
            }
        }
    }

    public final void clear() {
        loadDataWithBaseURL(null, "", "text/html", "UTF-8", null);
        clearFormData();
        clearCache(false);
        clearView();
        clearHistory();
        clearDisappearingChildren();
        destroyDrawingCache();
        freeMemory();
    }

    @NotNull
    public final WebViewClient createWebViewClient() {
        return new WebViewClient() { // from class: com.onyx.android.sdk.note.common.data.text.TextRender$createWebViewClient$1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(@NotNull WebView view, @NotNull String url) {
                Runnable runnable;
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(url, "url");
                TextRender.this.isReady = true;
                runnable = TextRender.this.pageFinishCallback;
                if (runnable != null) {
                    runnable.run();
                }
                TextRender.this.pageFinishCallback = null;
            }
        };
    }

    @Nullable
    public final Map<String, FontInfo> getFontMap() {
        return this.fontMap;
    }

    @NotNull
    public final Scheduler getIOScheduler() {
        if (this.ioScheduler == null) {
            this.ioScheduler = RxScheduler.INSTANCE.newSingleThreadManager().getObserveOn();
        }
        Scheduler scheduler = this.ioScheduler;
        Intrinsics.checkNotNull(scheduler);
        return scheduler;
    }

    /* renamed from: isReady, reason: from getter */
    public final boolean getIsReady() {
        return this.isReady;
    }

    public final void loadContent(@NotNull Shape textShape, @Nullable String content, @NotNull List<String> fontList) {
        Intrinsics.checkNotNullParameter(textShape, "textShape");
        Intrinsics.checkNotNullParameter(fontList, "fontList");
        ShapeTextStyle textStyle = textShape.getTextStyle();
        if (textStyle == null) {
            return;
        }
        RectF originRect = textShape.getOriginRect();
        EditorInputData editorInputData = new EditorInputData();
        m33715b(editorInputData, String.valueOf(textStyle.getFontFace()));
        m33716c(editorInputData, fontList);
        editorInputData.addAction("setInputEnabled", Boolean.FALSE);
        editorInputData.addAction("setBaseOrientation", Integer.valueOf(textStyle.getOrientation()), 0);
        editorInputData.addAction("setContainerTextAlign", ShapeTextAlignType.INSTANCE.toString(textStyle.getAlignType()));
        editorInputData.addAction("setBaseFontSize", textStyle.getTextSize() + ExtUnits.UNIT_PX);
        TextRenderUtil textRenderUtil = TextRenderUtil.INSTANCE;
        editorInputData.addAction("setBaseLineHeight", Float.valueOf(textRenderUtil.getLineHeight(textStyle.getTextSpacing())));
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        float renderSize = textRenderUtil.getRenderSize(context, originRect.width());
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        float renderSize2 = textRenderUtil.getRenderSize(context2, originRect.height());
        editorInputData.addAction("setContainerSize", renderSize + ExtUnits.UNIT_PX, renderSize2 + ExtUnits.UNIT_PX);
        editorInputData.addAction("setScale", 1, 1);
        editorInputData.content = content;
        evaluateJavascript("RE.init(" + editorInputData.toJson() + ", true)", null);
    }

    public final void setFontMap(@NotNull Map<String, FontInfo> fontMap) {
        Intrinsics.checkNotNullParameter(fontMap, "fontMap");
        this.fontMap = fontMap;
    }

    public final void setPageFinishCallback(@Nullable Runnable pageFinishCallback) {
        this.pageFinishCallback = pageFinishCallback;
    }

    public final void setVisualStateCallback(@Nullable VisualStateCallback visualStateCallback) {
        this.visualStateCallback = visualStateCallback;
    }
}
