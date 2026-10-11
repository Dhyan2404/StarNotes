package com.onyx.android.sdk.data.common.exception;

import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.common.data.ErrorCode;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/exception/OpenDocumentException;", "Lcom/onyx/android/sdk/data/common/exception/BaseException;", "()V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OpenDocumentException extends BaseException {
    public OpenDocumentException() {
        super(new ErrorCode("103", null, C7373R.string.open_document_error, 2, null));
    }
}
