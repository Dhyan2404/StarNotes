package com.onyx.android.sdk.reader.request;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.reader.Reader;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.reader.api.ReaderDocumentExporter;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.reader.data.ExportPagesArgs;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u000b¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002R\u0017\u0010\u000f\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\n\u0010\f\u001a\u0004\b\r\u0010\u000eR$\u0010\u0017\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;", "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;", "Lcom/onyx/android/sdk/reader/ReaderBundle;", "bundle", "", "execute", "", "path", "", "totalPage", C6997f.f39671c, "Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;", "Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;", "getArgs", "()Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;", "args", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", C6998g.f39679a, "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "getSelection", "()Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "setSelection", "(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V", "selection", "readerBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ExportPagesRequest extends RxBaseReaderRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final ExportPagesArgs args;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public ReaderSelection selection;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExportPagesRequest(@NotNull ReaderBundle readerBundle, @NotNull ExportPagesArgs args) {
        super(readerBundle);
        Intrinsics.checkNotNullParameter(readerBundle, "readerBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
    }

    @Override // com.onyx.android.sdk.reader.request.RxBaseReaderRequest
    public void execute(@NotNull ReaderBundle bundle) {
        ReaderDocumentExporter createDocumentExporter;
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        String path = this.args.getPath();
        Reader ensureReaderByPath = getReaderBundle().ensureReaderByPath(path, this.args.getPassword());
        if (ensureReaderByPath == null || (createDocumentExporter = ensureReaderByPath.getDocument().createDocumentExporter()) == null) {
            return;
        }
        int totalPage = ensureReaderByPath.getNavigator().getTotalPage();
        boolean exportPages = createDocumentExporter.exportPages(this.args.getReaderExportArgs());
        Debug.INSTANCE.m32035d(ExportPagesRequest.class, "exportPagesResult = " + exportPages, new Object[0]);
        getReaderBundle().destroyReaderByPath(path);
        m34827f(path, totalPage);
    }

    /* renamed from: f */
    public final void m34827f(String path, int totalPage) {
        String outputPath = this.args.getReaderExportArgs().getOutputPath();
        int length = this.args.getReaderExportArgs().getPages().length;
        FileUtils fileUtils = FileUtils.INSTANCE;
        long fileSize = fileUtils.getFileSize(outputPath);
        String fileSize2 = fileUtils.getFileSize(fileSize);
        long fileSize3 = fileUtils.getFileSize(path);
        String fileSize4 = fileUtils.getFileSize(fileSize3);
        Debug debug = Debug.INSTANCE;
        debug.m32035d(ExportPagesRequest.class, "path = " + path + ", totalPage = " + totalPage + ", fileSize = " + fileSize4 + ",\noutputPath = " + outputPath + ", exportPageCount = " + length + ", outputFileSize = " + fileSize2, new Object[0]);
        if (fileSize > fileSize3) {
            debug.m32059w(ExportPagesRequest.class, "export file size(" + fileSize2 + ") is large than origin file size(" + fileSize4 + ')', new Object[0]);
        }
    }

    @NotNull
    public final ExportPagesArgs getArgs() {
        return this.args;
    }

    @Nullable
    public final ReaderSelection getSelection() {
        return this.selection;
    }

    public final void setSelection(@Nullable ReaderSelection readerSelection) {
        this.selection = readerSelection;
    }
}
