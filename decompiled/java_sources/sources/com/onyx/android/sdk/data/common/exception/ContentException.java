package com.onyx.android.sdk.data.common.exception;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.data.common.data.ResultCode;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0016\u0018\u0000 \u001b2\u00060\u0001j\u0002`\u0002:\u000b\u001a\u001b\u001c\u001d\u001e\u001f !\"#$B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B\u001b\b\u0016\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bB\u0011\b\u0016\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\fR\u001a\u0010\r\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0014R\u0011\u0010\u0016\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0014R\u0011\u0010\u0017\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0014R\u0011\u0010\u0018\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0014R\u0011\u0010\u0019\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0014¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/exception/ContentException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "theCode", "", "theMessage", "", "(ILjava/lang/String;)V", "message", "cause", "", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "(Ljava/lang/Throwable;)V", "code", "getCode", "()I", "setCode", "(I)V", "isCloudNotFound", "", Constants.BOOLEAN_VALUE_SIG, "isCloudServerError", "isCloudSpaceNotEnough", "isCloudTokenException", "isEmailAddressError", "isTimeoutException", "CloudException", "Companion", "FileAskForReplaceException", "FileCheckException", "FileCopyException", "FileCopySpaceNotEnoughException", "FileCreateException", "FileDeleteException", "FileException", "FileNotExistException", "NetworkException", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class ContentException extends Exception {
    public static final int CLOUD_INTERNAL_SERVER_ERROR = 500;
    public static final int CLOUD_NO_FOUND = 404;
    public static final int CLOUD_SPACE_NOT_ENOUGH = 456;
    public static final int CLOUD_TOKEN_EXCEPTION = 401;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int FILE_CHECK_EXCEPTION = 7;

    @NotNull
    public static final String FILE_CHECK_MESSAGE = "File check fail.";

    @NotNull
    public static final String FILE_NOT_EXIST_MESSAGE = "File is not exist.";
    public static final int FILE_PATH_EXCEPTION = 2;

    @NotNull
    public static final String FILE_PATH_EXCEPTION_MESSAGE = "File path is invalid.";
    public static final int IO_EXCEPTION = 5;
    public static final int NETWORK_EXCEPTION = 3;

    @NotNull
    public static final String NETWORK_EXCEPTION_MESSAGE = "Network is exception.";
    public static final int NETWORK_SOCKET_TIMEOUT = 6;

    @NotNull
    public static final String SOCKET_TIMEOUT_EXCEPTION_MESSAGE = "socket time out exception";
    public static final int TOKEN_EXCEPTION = 4;

    @NotNull
    public static final String TOKEN_EXCEPTION_MESSAGE = "Token exception.";
    public static final int UNKNOWN_EXCEPTION = 65535;

    @NotNull
    public static final String UNKNOWN_EXCEPTION_MESSAGE = "Unknown exception.";
    public static final int URL_INVALID_EXCEPTION = 1;

    @NotNull
    public static final String URL_INVALID_EXCEPTION_MESSAGE = "Url is invalid.";
    private int code;

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/exception/ContentException$CloudException;", "Lcom/onyx/android/sdk/data/common/exception/ContentException;", "resultCode", "Lcom/onyx/android/sdk/data/common/data/ResultCode;", "(Lcom/onyx/android/sdk/data/common/data/ResultCode;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class CloudException extends ContentException {
        public CloudException(@Nullable ResultCode resultCode) {
            super(ContentException.INSTANCE.exceptionFromResultCode(resultCode));
            setCode(resultCode != null ? resultCode.getCode() : 65535);
        }
    }

    @Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0019\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cj\u0002`\u001dJ\u0018\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u00042\b\u0010 \u001a\u0004\u0018\u00010\nJ\u0010\u0010!\u001a\u00020\u001a2\b\u0010\"\u001a\u0004\u0018\u00010#J\u0006\u0010$\u001a\u00020\u001aJ\u0010\u0010%\u001a\u0004\u0018\u00010\n2\u0006\u0010&\u001a\u00020'J\u0010\u0010(\u001a\u00020)2\b\u0010&\u001a\u0004\u0018\u00010'J\u000e\u0010*\u001a\u00020)2\u0006\u0010&\u001a\u00020'J\u000e\u0010+\u001a\u00020)2\u0006\u0010&\u001a\u00020'J\u0010\u0010,\u001a\u00020)2\b\u0010&\u001a\u0004\u0018\u00010'J\u0006\u0010-\u001a\u00020\u001aJ\u0006\u0010.\u001a\u00020\u001aJ\u0006\u0010/\u001a\u00020\u001aJ\u0006\u00100\u001a\u00020\u001aR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000¨\u00061"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;", "", "()V", "CLOUD_INTERNAL_SERVER_ERROR", "", "CLOUD_NO_FOUND", "CLOUD_SPACE_NOT_ENOUGH", "CLOUD_TOKEN_EXCEPTION", "FILE_CHECK_EXCEPTION", "FILE_CHECK_MESSAGE", "", "FILE_NOT_EXIST_MESSAGE", "FILE_PATH_EXCEPTION", "FILE_PATH_EXCEPTION_MESSAGE", "IO_EXCEPTION", "NETWORK_EXCEPTION", "NETWORK_EXCEPTION_MESSAGE", "NETWORK_SOCKET_TIMEOUT", "SOCKET_TIMEOUT_EXCEPTION_MESSAGE", "TOKEN_EXCEPTION", "TOKEN_EXCEPTION_MESSAGE", "UNKNOWN_EXCEPTION", "UNKNOWN_EXCEPTION_MESSAGE", "URL_INVALID_EXCEPTION", "URL_INVALID_EXCEPTION_MESSAGE", "createException", "Lcom/onyx/android/sdk/data/common/exception/ContentException;", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "exceptionFromCode", "code", "errorMessage", "exceptionFromResultCode", "resultCode", "Lcom/onyx/android/sdk/data/common/data/ResultCode;", "filePathInvalidException", "getMessage", "throwable", "", "isCloudException", "", "isCloudSpaceNotEnough", "isCloudTokenException", "isNetworkException", "timeoutException", "tokenException", "unKnowException", "urlInvalidException", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ContentException createException(@NotNull Exception e) {
            Intrinsics.checkNotNullParameter(e, "e");
            return exceptionFromCode(65535, e.toString());
        }

        @NotNull
        public final ContentException exceptionFromCode(int code, @Nullable String errorMessage) {
            return new ContentException(code, errorMessage);
        }

        @NotNull
        public final ContentException exceptionFromResultCode(@Nullable ResultCode resultCode) {
            if (resultCode == null) {
                return unKnowException();
            }
            String message = resultCode.getMessage();
            int code = resultCode.getCode();
            if (message == null) {
                message = code + ",Network is exception.";
            }
            return exceptionFromCode(code, message);
        }

        @NotNull
        public final ContentException filePathInvalidException() {
            return exceptionFromCode(2, ContentException.FILE_PATH_EXCEPTION_MESSAGE);
        }

        @Nullable
        public final String getMessage(@NotNull Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            return throwable instanceof ContentException ? throwable.getMessage() : throwable.getLocalizedMessage();
        }

        public final boolean isCloudException(@Nullable Throwable throwable) {
            return throwable instanceof CloudException;
        }

        public final boolean isCloudSpaceNotEnough(@NotNull Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            return isCloudException(throwable) && ((ContentException) throwable).isCloudSpaceNotEnough();
        }

        public final boolean isCloudTokenException(@NotNull Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            if (!isCloudException(throwable)) {
                return false;
            }
            ContentException contentException = (ContentException) throwable;
            return contentException.isCloudTokenException() || ResultCode.INSTANCE.isTokenInvalid(contentException.getCode());
        }

        public final boolean isNetworkException(@Nullable Throwable throwable) {
            return throwable instanceof NetworkException;
        }

        @NotNull
        public final ContentException timeoutException() {
            return exceptionFromCode(6, ContentException.SOCKET_TIMEOUT_EXCEPTION_MESSAGE);
        }

        @NotNull
        public final ContentException tokenException() {
            return exceptionFromCode(4, ContentException.TOKEN_EXCEPTION_MESSAGE);
        }

        @NotNull
        public final ContentException unKnowException() {
            return exceptionFromCode(65535, ContentException.UNKNOWN_EXCEPTION_MESSAGE);
        }

        @NotNull
        public final ContentException urlInvalidException() {
            return exceptionFromCode(1, ContentException.URL_INVALID_EXCEPTION_MESSAGE);
        }

        private Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\n\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0007\"\u0004\b\u000e\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/exception/ContentException$FileAskForReplaceException;", "Lcom/onyx/android/sdk/data/common/exception/ContentException$FileException;", "from", "Ljava/io/File;", "to", "(Ljava/io/File;Ljava/io/File;)V", "getFrom", "()Ljava/io/File;", "setFrom", "(Ljava/io/File;)V", "isSameOriginTarget", "", Constants.BOOLEAN_VALUE_SIG, "getTo", "setTo", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class FileAskForReplaceException extends FileException {

        @NotNull
        private File from;

        @NotNull
        private File to;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FileAskForReplaceException(@NotNull File from, @NotNull File to) {
            super(5, "FileAskForReplaceException");
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(to, "to");
            this.from = from;
            this.to = to;
        }

        @NotNull
        public final File getFrom() {
            return this.from;
        }

        @NotNull
        public final File getTo() {
            return this.to;
        }

        public final boolean isSameOriginTarget() {
            return Intrinsics.areEqual(this.from.getAbsolutePath(), this.to.getAbsolutePath());
        }

        public final void setFrom(@NotNull File file) {
            Intrinsics.checkNotNullParameter(file, "<set-?>");
            this.from = file;
        }

        public final void setTo(@NotNull File file) {
            Intrinsics.checkNotNullParameter(file, "<set-?>");
            this.to = file;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCheckException;", "Lcom/onyx/android/sdk/data/common/exception/ContentException$FileException;", "path", "", "(Ljava/lang/String;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class FileCheckException extends FileException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FileCheckException(@NotNull String path) {
            super(7, ContentException.FILE_CHECK_MESSAGE + path);
            Intrinsics.checkNotNullParameter(path, "path");
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCopyException;", "Lcom/onyx/android/sdk/data/common/exception/ContentException$FileException;", "from", "Ljava/io/File;", "to", "(Ljava/io/File;Ljava/io/File;)V", "getFrom", "()Ljava/io/File;", "setFrom", "(Ljava/io/File;)V", "getTo", "setTo", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class FileCopyException extends FileException {

        @NotNull
        private File from;

        @NotNull
        private File to;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FileCopyException(@NotNull File from, @NotNull File to) {
            super(5, "FileCopyException");
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(to, "to");
            this.from = from;
            this.to = to;
        }

        @NotNull
        public final File getFrom() {
            return this.from;
        }

        @NotNull
        public final File getTo() {
            return this.to;
        }

        public final void setFrom(@NotNull File file) {
            Intrinsics.checkNotNullParameter(file, "<set-?>");
            this.from = file;
        }

        public final void setTo(@NotNull File file) {
            Intrinsics.checkNotNullParameter(file, "<set-?>");
            this.to = file;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCopySpaceNotEnoughException;", "Lcom/onyx/android/sdk/data/common/exception/ContentException$FileException;", "source", "Ljava/io/File;", "targetDir", "(Ljava/io/File;Ljava/io/File;)V", "getSource", "()Ljava/io/File;", "setSource", "(Ljava/io/File;)V", "getTargetDir", "setTargetDir", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class FileCopySpaceNotEnoughException extends FileException {

        @NotNull
        private File source;

        @NotNull
        private File targetDir;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FileCopySpaceNotEnoughException(@NotNull File source, @NotNull File targetDir) {
            super(5, "FileCopySpaceNotEnoughException");
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(targetDir, "targetDir");
            this.source = source;
            this.targetDir = targetDir;
        }

        @NotNull
        public final File getSource() {
            return this.source;
        }

        @NotNull
        public final File getTargetDir() {
            return this.targetDir;
        }

        public final void setSource(@NotNull File file) {
            Intrinsics.checkNotNullParameter(file, "<set-?>");
            this.source = file;
        }

        public final void setTargetDir(@NotNull File file) {
            Intrinsics.checkNotNullParameter(file, "<set-?>");
            this.targetDir = file;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCreateException;", "Lcom/onyx/android/sdk/data/common/exception/ContentException$FileException;", "file", "Ljava/io/File;", "(Ljava/io/File;)V", "getFile", "()Ljava/io/File;", "setFile", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class FileCreateException extends FileException {

        @NotNull
        private File file;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FileCreateException(@NotNull File file) {
            super(5, "FileCreateException");
            Intrinsics.checkNotNullParameter(file, "file");
            this.file = file;
        }

        @NotNull
        public final File getFile() {
            return this.file;
        }

        public final void setFile(@NotNull File file) {
            Intrinsics.checkNotNullParameter(file, "<set-?>");
            this.file = file;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/exception/ContentException$FileDeleteException;", "Lcom/onyx/android/sdk/data/common/exception/ContentException$FileException;", "file", "Ljava/io/File;", "(Ljava/io/File;)V", "getFile", "()Ljava/io/File;", "setFile", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class FileDeleteException extends FileException {

        @NotNull
        private File file;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FileDeleteException(@NotNull File file) {
            super(5, "FileDeleteException");
            Intrinsics.checkNotNullParameter(file, "file");
            this.file = file;
        }

        @NotNull
        public final File getFile() {
            return this.file;
        }

        public final void setFile(@NotNull File file) {
            Intrinsics.checkNotNullParameter(file, "<set-?>");
            this.file = file;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/exception/ContentException$FileException;", "Lcom/onyx/android/sdk/data/common/exception/ContentException;", "code", "", NotificationCompat.CATEGORY_MESSAGE, "", "(ILjava/lang/String;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static class FileException extends ContentException {
        public FileException(int i, @Nullable String str) {
            super(i, str);
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/exception/ContentException$FileNotExistException;", "Lcom/onyx/android/sdk/data/common/exception/ContentException$FileException;", "path", "", "(Ljava/lang/String;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class FileNotExistException extends FileException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FileNotExistException(@NotNull String path) {
            super(5, ContentException.FILE_NOT_EXIST_MESSAGE + path);
            Intrinsics.checkNotNullParameter(path, "path");
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u0004¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/exception/ContentException$NetworkException;", "Lcom/onyx/android/sdk/data/common/exception/ContentException;", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "(Ljava/lang/Exception;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class NetworkException extends ContentException {
        public NetworkException(@Nullable Exception exc) {
            super(exc);
        }
    }

    public ContentException(int i, @Nullable String str) {
        super(str);
        this.code = i;
    }

    public final int getCode() {
        return this.code;
    }

    public final boolean isCloudNotFound() {
        return this.code == 404;
    }

    public final boolean isCloudServerError() {
        return this.code == 500;
    }

    public final boolean isCloudSpaceNotEnough() {
        return this.code == 42010456;
    }

    public final boolean isCloudTokenException() {
        return this.code == 401;
    }

    public final boolean isEmailAddressError() {
        return this.code == 42010089;
    }

    public final boolean isTimeoutException() {
        return this.code == 6;
    }

    public final void setCode(int i) {
        this.code = i;
    }

    public ContentException(@Nullable String str, @Nullable Throwable th) {
        super(str, th);
    }

    public ContentException(@Nullable Throwable th) {
        super(th);
    }
}
