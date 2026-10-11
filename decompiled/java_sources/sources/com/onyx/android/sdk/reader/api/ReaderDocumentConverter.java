package com.onyx.android.sdk.reader.api;

import android.util.Log;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.engine.sdk.NeoBaseNative;
import com.onyx.engine.sdk.NeoPDFConverterNative;
import com.onyx.engine.sdk.PDFConvertParameter;
import com.onyx.engine.sdk.PageInfo;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u0000 \t2\u00020\u0001:\u0002\b\tJ\u001c\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;", "", "convertToPDF", "", "args", "Lcom/onyx/android/sdk/reader/api/ConvertArgs;", "callback", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;", "Callback", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderDocumentConverter {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = Companion.f44421a;
    public static final int FILE_CAN_NOT_WRITE = 1;
    public static final int NO_ERROR = 0;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;", "", "isCancelled", "", "onProgressUpdate", "", PrivilegedApp.f6532i, "Lcom/onyx/android/sdk/reader/api/ProgressInfo;", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public interface Callback {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes8.dex */
        public static final class DefaultImpls {
            public static boolean isCancelled(@NotNull Callback callback) {
                return false;
            }
        }

        boolean isCancelled();

        void onProgressUpdate(@NotNull ProgressInfo info);
    }

    @Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J \u0010\f\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nJ\"\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u0011\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion;", "", "", "code", "", "isSuccess", "Lcom/onyx/engine/sdk/NeoBaseNative;", "neoBaseNative", "Lcom/onyx/android/sdk/reader/api/ConvertArgs;", "args", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;", "callback", "convertToPDF", "Lcom/onyx/engine/sdk/PageInfo;", "pageInfo", "", "a", "NO_ERROR", "I", "FILE_CAN_NOT_WRITE", Constants.CONSTRUCTOR_NAME, "()V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nReaderDocumentConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderDocumentConverter.kt\ncom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,120:1\n86#2,4:121\n*S KotlinDebug\n*F\n+ 1 ReaderDocumentConverter.kt\ncom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion\n*L\n78#1:121,4\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public static final int FILE_CAN_NOT_WRITE = 1;
        public static final int NO_ERROR = 0;

        /* renamed from: a */
        public static final /* synthetic */ Companion f44421a = new Companion();

        /* renamed from: a */
        public final void m34475a(Callback callback, PageInfo pageInfo, NeoBaseNative neoBaseNative) {
            if (callback != null) {
                ProgressInfo create = ProgressInfo.INSTANCE.create(pageInfo.getEndPositionInt(), neoBaseNative.getBookSize());
                Debug debug = Debug.INSTANCE;
                if (debug.getDebug()) {
                    Log.d(debug.getTAG(), "convert doc current range: [" + pageInfo.getStartPositionInt() + ", " + pageInfo.getEndPositionInt() + "), documentSize = " + neoBaseNative.getBookSize() + ", chapter, id = " + pageInfo.getStartChapterID() + ", byteSize = " + pageInfo.getPageRange().getStartChapterLength() + ", range: [" + pageInfo.getPageRange().getStart().getChapterStartPosition() + ", " + pageInfo.getPageRange().getStart().getChapterEndPosition() + "), progress: " + create.getProgress());
                }
                callback.onProgressUpdate(create);
            }
        }

        public final int convertToPDF(@NotNull NeoBaseNative neoBaseNative, @NotNull ConvertArgs args, @Nullable Callback callback) {
            Intrinsics.checkNotNullParameter(neoBaseNative, "neoBaseNative");
            Intrinsics.checkNotNullParameter(args, "args");
            NeoPDFConverterNative createPDFConverter = neoBaseNative.createPDFConverter();
            PDFConvertParameter pDFConvertParameter = new PDFConvertParameter();
            pDFConvertParameter.setCachePath(args.getImageCachePath());
            pDFConvertParameter.setPdfPath(args.getOutputPath());
            pDFConvertParameter.setWriteCover(true);
            pDFConvertParameter.setEnableHyphen(true);
            pDFConvertParameter.setWriteTextByWord(true);
            pDFConvertParameter.setAddLineTailSpace(true);
            pDFConvertParameter.setSavePDFPageCount(args.getSavePDFPageCount());
            if (!createPDFConverter.startConvert(pDFConvertParameter)) {
                return 1;
            }
            PageInfo pageInfo = new PageInfo();
            while (true) {
                if (!createPDFConverter.hasNextPage(pageInfo)) {
                    break;
                }
                if (callback != null && callback.isCancelled()) {
                    Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "convertToPDF cancelled, path = " + args.getOutputPath(), new Object[0]);
                    break;
                }
                pageInfo = createPDFConverter.nextPage(pageInfo);
                Intrinsics.checkNotNullExpressionValue(pageInfo, "nextPage(...)");
                createPDFConverter.convertPage(pageInfo);
                m34475a(callback, pageInfo, neoBaseNative);
            }
            if (createPDFConverter.writePDF()) {
                createPDFConverter.close();
                return 0;
            }
            createPDFConverter.close();
            return 1;
        }

        public final boolean isSuccess(int code) {
            return code == 0;
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static int convertToPDF(@NotNull ReaderDocumentConverter readerDocumentConverter, @NotNull ConvertArgs args, @Nullable Callback callback) {
            Intrinsics.checkNotNullParameter(args, "args");
            return 0;
        }

        public static /* synthetic */ int convertToPDF$default(ReaderDocumentConverter readerDocumentConverter, ConvertArgs convertArgs, Callback callback, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: convertToPDF");
            }
            if ((i & 2) != 0) {
                callback = null;
            }
            return readerDocumentConverter.convertToPDF(convertArgs, callback);
        }
    }

    int convertToPDF(@NotNull ConvertArgs args, @Nullable Callback callback);
}
