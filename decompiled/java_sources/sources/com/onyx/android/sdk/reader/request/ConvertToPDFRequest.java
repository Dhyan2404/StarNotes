package com.onyx.android.sdk.reader.request;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.reader.C7580R;
import com.onyx.android.sdk.reader.Reader;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.reader.api.ConvertArgs;
import com.onyx.android.sdk.reader.api.ReaderDocumentConverter;
import com.onyx.android.sdk.reader.api.ReaderTextStyle;
import com.onyx.android.sdk.reader.api.ReaderTextStyleManager;
import com.onyx.engine.sdk.DisplayMetrics;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\u00020\u0001BJ\u0012\u0006\u00102\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0015\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010!\u001a\u00020\u001d\u0012!\u0010*\u001a\u001d\u0012\u0013\u0012\u00110#¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(&\u0012\u0004\u0012\u00020\u00040\"¢\u0006\u0004\b3\u00104J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0014J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0010H\u0002R\u0017\u0010\u0019\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u000f\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\r\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0017\u0010!\u001a\u00020\u001d8\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001e\u001a\u0004\b\u001f\u0010 R2\u0010*\u001a\u001d\u0012\u0013\u0012\u00110#¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(&\u0012\u0004\u0012\u00020\u00040\"8\u0006¢\u0006\f\n\u0004\b\u0011\u0010'\u001a\u0004\b(\u0010)R\"\u00101\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100¨\u00065"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;", "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;", "Lcom/onyx/android/sdk/reader/ReaderBundle;", "bundle", "", "execute", "closeResources", C6999h.f39688c, "Lcom/onyx/android/sdk/reader/Reader;", "reader", C4921e.f26537n, C6997f.f39671c, "Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;", C6998g.f39679a, "Lcom/onyx/android/sdk/base/data/Size;", "size", "Lcom/onyx/engine/sdk/DisplayMetrics;", "i", "metrics", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;", "j", "", Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", "path", "Lcom/onyx/android/sdk/base/data/Size;", "getSize", "()Lcom/onyx/android/sdk/base/data/Size;", "Lcom/onyx/android/sdk/reader/api/ConvertArgs;", "Lcom/onyx/android/sdk/reader/api/ConvertArgs;", "getConvertArgs", "()Lcom/onyx/android/sdk/reader/api/ConvertArgs;", "convertArgs", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "Lkotlin/ParameterName;", "name", PrivilegedApp.f6532i, "Lkotlin/jvm/functions/Function1;", "getCallback", "()Lkotlin/jvm/functions/Function1;", "callback", "", Constants.HASIDCALL_INDEX_SIG, "getConvertSuccess", Constants.BOOLEAN_VALUE_SIG, "setConvertSuccess", "(Z)V", "convertSuccess", "readerBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lkotlin/jvm/functions/Function1;)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ConvertToPDFRequest extends RxBaseReaderRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String path;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Size size;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ConvertArgs convertArgs;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Function1<ProgressInfo, Unit> callback;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean convertSuccess;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ConvertToPDFRequest(@NotNull ReaderBundle readerBundle, @NotNull String path, @NotNull Size size, @NotNull ConvertArgs convertArgs, @NotNull Function1<? super ProgressInfo, Unit> callback) {
        super(readerBundle);
        Intrinsics.checkNotNullParameter(readerBundle, "readerBundle");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(size, "size");
        Intrinsics.checkNotNullParameter(convertArgs, "convertArgs");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.path = path;
        this.size = size;
        this.convertArgs = convertArgs;
        this.callback = callback;
    }

    @Override // com.onyx.android.sdk.reader.request.RxBaseReaderRequest, com.onyx.android.sdk.base.p018rx.RxBaseBenchmarkRequest
    public void closeResources() {
        super.closeResources();
        m34821h();
    }

    @Override // com.onyx.android.sdk.reader.request.RxBaseReaderRequest
    public void execute(@NotNull ReaderBundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        bundle.updateViewSize(this.size);
        Reader ensureReaderByPath$default = ReaderBundle.ensureReaderByPath$default(bundle, this.path, null, 2, null);
        if (ensureReaderByPath$default == null) {
            return;
        }
        m34824k(ensureReaderByPath$default);
        ReaderDocumentConverter createDocumentConverter = ensureReaderByPath$default.getDocument().createDocumentConverter();
        if (createDocumentConverter == null) {
            return;
        }
        int convertToPDF = createDocumentConverter.convertToPDF(this.convertArgs, m34820g());
        m34819f(bundle);
        this.convertSuccess = ReaderDocumentConverter.INSTANCE.isSuccess(convertToPDF);
        m34821h();
        Debug.INSTANCE.m32035d(ConvertToPDFRequest.class, "path = " + this.path + ", outputPath = " + this.convertArgs.getOutputPath() + ", result = " + convertToPDF + ", convertSuccess = " + this.convertSuccess, new Object[0]);
    }

    /* renamed from: f */
    public final void m34819f(ReaderBundle bundle) {
        bundle.destroyReaderByPath(this.path);
    }

    /* renamed from: g */
    public final ReaderDocumentConverter.Callback m34820g() {
        return new ReaderDocumentConverter.Callback() { // from class: com.onyx.android.sdk.reader.request.ConvertToPDFRequest$createProgressCallback$1
            @Override // com.onyx.android.sdk.reader.api.ReaderDocumentConverter.Callback
            public boolean isCancelled() {
                return ConvertToPDFRequest.this.getAbort();
            }

            @Override // com.onyx.android.sdk.reader.api.ReaderDocumentConverter.Callback
            public void onProgressUpdate(@NotNull com.onyx.android.sdk.reader.api.ProgressInfo info) {
                Intrinsics.checkNotNullParameter(info, "info");
                ConvertToPDFRequest.this.getCallback().invoke(new ProgressInfo(info.getSoFarBytes(), info.getTotalBytes()));
            }
        };
    }

    @NotNull
    public final Function1<ProgressInfo, Unit> getCallback() {
        return this.callback;
    }

    @NotNull
    public final ConvertArgs getConvertArgs() {
        return this.convertArgs;
    }

    public final boolean getConvertSuccess() {
        return this.convertSuccess;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    @NotNull
    public final Size getSize() {
        return this.size;
    }

    /* renamed from: h */
    public final void m34821h() {
        if (!this.convertSuccess || getAbort()) {
            FileUtils fileUtils = FileUtils.INSTANCE;
            fileUtils.deleteFile(this.convertArgs.getOutputPath());
            fileUtils.deleteFile(this.convertArgs.getImageCachePath());
        }
    }

    /* renamed from: i */
    public final DisplayMetrics m34822i(Size size) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        displayMetrics.setWidth(size.getWidth());
        displayMetrics.setHeight(size.getHeight());
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        displayMetrics.setDensity(FLOAT_ONE.floatValue());
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        displayMetrics.setScaledDensity(FLOAT_ONE.floatValue());
        displayMetrics.setxDpi(72.0f);
        displayMetrics.setyDpi(72.0f);
        displayMetrics.setDensityDpi((int) 72.0f);
        return displayMetrics;
    }

    /* renamed from: j */
    public final ReaderTextStyle m34823j(DisplayMetrics metrics) {
        ReaderTextStyle readerTextStyle = new ReaderTextStyle();
        ResManager resManager = ResManager.INSTANCE;
        float integer = (resManager.getInteger(C7580R.integer.pdf_font_size) * metrics.getWidth()) / resManager.getInteger(C7580R.integer.pdf_display_width);
        int integer2 = resManager.getInteger(C7580R.integer.pdf_line_height);
        int integer3 = resManager.getInteger(C7580R.integer.pdf_paragraph_height);
        int i = (int) resManager.getFloat(C7580R.fraction.pdf_margin_left);
        int i2 = (int) resManager.getFloat(C7580R.fraction.pdf_margin_right);
        int i3 = (int) resManager.getFloat(C7580R.fraction.pdf_margin_top);
        int i4 = (int) resManager.getFloat(C7580R.fraction.pdf_margin_bottom);
        readerTextStyle.setFontSize(ReaderTextStyle.SPUnit.INSTANCE.create(integer));
        readerTextStyle.setFontEmboldenLevel(0);
        ReaderTextStyle.Percentage.Companion companion = ReaderTextStyle.Percentage.INSTANCE;
        readerTextStyle.setLineSpacing(companion.create(integer2));
        readerTextStyle.setParagraphSpacing(companion.create(integer3));
        readerTextStyle.setAlignment(ReaderTextStyle.Alignment.ALIGNMENT_JUSTIFY);
        readerTextStyle.setEnableHyphen(true);
        ReaderTextStyle.PageMargin pageMargin = new ReaderTextStyle.PageMargin();
        pageMargin.setLeftMargin(companion.create(i));
        pageMargin.setRightMargin(companion.create(i2));
        pageMargin.setTopMargin(companion.create(i3));
        pageMargin.setBottomMargin(companion.create(i4));
        readerTextStyle.setPageMargin(pageMargin);
        readerTextStyle.setFontVariantLigaturesState(ReaderTextStyle.FontVariantLigaturesState.NONE);
        return readerTextStyle;
    }

    /* renamed from: k */
    public final void m34824k(Reader reader) {
        DisplayMetrics m34822i = m34822i(this.size);
        reader.setupDisplayMetrics(m34822i);
        ReaderTextStyleManager textStyleManager = reader.getTextStyleManager();
        if (textStyleManager != null) {
            textStyleManager.setStyle(m34823j(m34822i));
        }
    }

    public final void setConvertSuccess(boolean z) {
        this.convertSuccess = z;
    }
}
