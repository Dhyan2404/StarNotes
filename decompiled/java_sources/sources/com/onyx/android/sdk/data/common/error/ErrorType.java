package com.onyx.android.sdk.data.common.error;

import com.onyx.galaxy.note.usercenter.p049ui.UserCenterEvents;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/error/ErrorType;", "", "()V", "DATA_FORMAT_ERROR", "", "DOWNLOAD_FAIL", "FONT_FORMAT_ERROR", "FORMAT_NOT_SUPPORTED", "NETWORK_CHECK_FAIL", "NOTE_SYNC_FAIL", "NOT_IMPLEMENTED", "REACH_FILE_COUNT_LIMIT", "REQUEST_FAIL", "RESOURCE_NOT_FOUND", "SVG_DECODE_FAIL", "TIMEOUT", "UNAUTHORIZED", "VERIFY_ABORT", UserCenterEvents.VERIFY_FAIL, "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ErrorType {

    @NotNull
    public static final String DATA_FORMAT_ERROR = "Data Format Error";

    @NotNull
    public static final String DOWNLOAD_FAIL = "Download Fail";

    @NotNull
    public static final String FONT_FORMAT_ERROR = "Font Format Error";

    @NotNull
    public static final String FORMAT_NOT_SUPPORTED = "Format Not Supported";

    @NotNull
    public static final ErrorType INSTANCE = new ErrorType();

    @NotNull
    public static final String NETWORK_CHECK_FAIL = "Network Check Fail";

    @NotNull
    public static final String NOTE_SYNC_FAIL = "Note Sync Fail";

    @NotNull
    public static final String NOT_IMPLEMENTED = "No Implementation Found";

    @NotNull
    public static final String REACH_FILE_COUNT_LIMIT = "Reach File Count Limit";

    @NotNull
    public static final String REQUEST_FAIL = "Request Fail";

    @NotNull
    public static final String RESOURCE_NOT_FOUND = "Resource Not Found";

    @NotNull
    public static final String SVG_DECODE_FAIL = "Svg Decode Fail";

    @NotNull
    public static final String TIMEOUT = "Timeout";

    @NotNull
    public static final String UNAUTHORIZED = "Unauthorized";

    @NotNull
    public static final String VERIFY_ABORT = "Verify Abort";

    @NotNull
    public static final String VERIFY_FAIL = "Verify Fail";

    private ErrorType() {
    }
}
