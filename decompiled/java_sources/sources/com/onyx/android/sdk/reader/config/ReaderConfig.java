package com.onyx.android.sdk.reader.config;

import com.onyx.android.sdk.base.data.Size;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.poi.convert.hwpf.HWPFWordToHtmlUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0017\u0010\u000f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0006\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/config/ReaderConfig;", "", "", "documentId", "templateReaderPluginPath", "READER", Constants.STRING_SIG, "", "READER_MAX_SIZE", "I", "Lcom/onyx/android/sdk/base/data/Size;", "a", "Lcom/onyx/android/sdk/base/data/Size;", "getDEFAULT_SIZE", "()Lcom/onyx/android/sdk/base/data/Size;", "DEFAULT_SIZE", "b", "getProcessTagName", "()Ljava/lang/String;", "setProcessTagName", "(Ljava/lang/String;)V", "processTagName", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReaderConfig {

    @NotNull
    public static final String READER = "reader";
    public static final int READER_MAX_SIZE = 6;

    @NotNull
    public static final ReaderConfig INSTANCE = new ReaderConfig();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Size DEFAULT_SIZE = Size.copy$default(new Size(720, HWPFWordToHtmlUtils.TABLE_CELL_DEFAULT_HEIGHT), 0, 0, 3, null);

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static String processTagName = "reader";

    @NotNull
    public final Size getDEFAULT_SIZE() {
        return DEFAULT_SIZE;
    }

    @NotNull
    public final String getProcessTagName() {
        return processTagName;
    }

    public final void setProcessTagName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        processTagName = str;
    }

    @NotNull
    public final String templateReaderPluginPath(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return documentId + ".template_json";
    }
}
