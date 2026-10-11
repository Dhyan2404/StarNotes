package com.onyx.android.sdk.reader.request;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.neopdf.NeoPdf;
import com.onyx.android.sdk.neopdf.PdfImportContext;
import com.onyx.android.sdk.neopdf.PdfUtils;
import com.onyx.android.sdk.neopdf.export.NeoPdfExport;
import com.onyx.android.sdk.neopdf.export.PdfCreateArgs;
import com.onyx.android.sdk.reader.Reader;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.reader.data.DecryptPDFArgs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000b\u0018\u00002\u00020\u0001B:\u0012\u0006\u0010)\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012!\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u00040\u0013¢\u0006\u0004\b*\u0010+J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0014J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\f\u001a\u00020\tH\u0002R\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R2\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u00040\u00138\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u001b\u0010 \u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u000e\u0010\u001fR\"\u0010(\u001a\u00020!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;", "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;", "Lcom/onyx/android/sdk/reader/ReaderBundle;", "bundle", "", "execute", "closeResources", "", "outputFile", "", "totalPage", C6998g.f39679a, "getTotalPage", "Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;", C6997f.f39671c, "Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;", "getArgs", "()Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;", "args", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "Lkotlin/ParameterName;", "name", PrivilegedApp.f6532i, "Lkotlin/jvm/functions/Function1;", "getCallback", "()Lkotlin/jvm/functions/Function1;", "callback", "Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;", C6999h.f39688c, "Lkotlin/Lazy;", "()Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;", "pdfExport", "", "i", Constants.HASIDCALL_INDEX_SIG, "getDecryptDone", Constants.BOOLEAN_VALUE_SIG, "setDecryptDone", "(Z)V", "decryptDone", "readerBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;Lkotlin/jvm/functions/Function1;)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DecryptPDFRequest extends RxBaseReaderRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final DecryptPDFArgs args;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Function1<ProgressInfo, Unit> callback;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy pdfExport;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean decryptDone;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DecryptPDFRequest(@NotNull ReaderBundle readerBundle, @NotNull DecryptPDFArgs args, @NotNull Function1<? super ProgressInfo, Unit> callback) {
        super(readerBundle);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(readerBundle, "readerBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.args = args;
        this.callback = callback;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<NeoPdfExport>() { // from class: com.onyx.android.sdk.reader.request.DecryptPDFRequest$pdfExport$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NeoPdfExport invoke() {
                return new NeoPdfExport();
            }
        });
        this.pdfExport = lazy;
    }

    @Override // com.onyx.android.sdk.reader.request.RxBaseReaderRequest, com.onyx.android.sdk.base.p018rx.RxBaseBenchmarkRequest
    public void closeResources() {
        super.closeResources();
        m34825f().close();
        if (this.decryptDone) {
            return;
        }
        FileUtils.INSTANCE.deleteFile(this.args.getOutputFilePath());
    }

    @Override // com.onyx.android.sdk.reader.request.RxBaseReaderRequest
    public void execute(@NotNull ReaderBundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        int totalPage = getTotalPage();
        String outputFilePath = this.args.getOutputFilePath();
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.deleteFile(outputFilePath);
        fileUtils.ensureFileExists(outputFilePath);
        m34826g(outputFilePath, totalPage);
    }

    /* renamed from: f */
    public final NeoPdfExport m34825f() {
        return (NeoPdfExport) this.pdfExport.getValue();
    }

    /* renamed from: g */
    public final void m34826g(String outputFile, int totalPage) {
        PdfImportContext pdfImportContext = new PdfImportContext(new int[0]);
        m34825f().create(outputFile, new PdfCreateArgs("ONYX", null, null, 6, null));
        for (int i = 0; i < totalPage; i++) {
            PdfImportContext importPages = m34825f().getPdfNative().importPages(pdfImportContext, this.args.getPath(), new int[]{i}, i, this.args.getPassword());
            int[] objNumberMapData = importPages != null ? importPages.getObjNumberMapData() : null;
            if (objNumberMapData == null || getAbort()) {
                return;
            }
            pdfImportContext.setObjNumberMapData(objNumberMapData);
            this.callback.invoke(new ProgressInfo(i, totalPage));
        }
        NeoPdf neoPdf = new NeoPdf();
        try {
            neoPdf.openDocument(this.args.getPath(), this.args.getPassword());
            PdfUtils pdfUtils = PdfUtils.INSTANCE;
            NeoPdf pdfNative = m34825f().getPdfNative();
            String path = this.args.getPath();
            int[] iArr = new int[totalPage];
            for (int i2 = 0; i2 < totalPage; i2++) {
                iArr[i2] = i2;
            }
            pdfUtils.updateExportPdfLinks(neoPdf, pdfNative, path, iArr);
            neoPdf.closeDocument();
            this.decryptDone = true;
            m34825f().save(outputFile);
        } catch (Throwable th) {
            neoPdf.closeDocument();
            throw th;
        }
    }

    @NotNull
    public final DecryptPDFArgs getArgs() {
        return this.args;
    }

    @NotNull
    public final Function1<ProgressInfo, Unit> getCallback() {
        return this.callback;
    }

    public final boolean getDecryptDone() {
        return this.decryptDone;
    }

    public final int getTotalPage() {
        Reader ensureReaderByPath = getReaderBundle().ensureReaderByPath(this.args.getPath(), this.args.getPassword());
        if (ensureReaderByPath == null) {
            return 0;
        }
        int totalPage = ensureReaderByPath.getDocument().getView().getNavigator().getTotalPage();
        getReaderBundle().destroyReaderByPath(this.args.getPath());
        return totalPage;
    }

    public final void setDecryptDone(boolean z) {
        this.decryptDone = z;
    }
}
