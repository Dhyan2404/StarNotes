package com.onyx.android.sdk.data.common.exception;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.common.data.ErrorCode;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/exception/DocFormatNotSupportExportPdfException;", "Lcom/onyx/android/sdk/data/common/exception/BaseException;", Constants.ATTRNAME_FORMAT, "", "(Ljava/lang/String;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DocFormatNotSupportExportPdfException extends BaseException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DocFormatNotSupportExportPdfException(@NotNull String format) {
        super(new ErrorCode("105", ResManager.INSTANCE.getString(C7373R.string.doc_format_not_support_export_pdf, format), 0, 4, null));
        Intrinsics.checkNotNullParameter(format, "format");
    }
}
