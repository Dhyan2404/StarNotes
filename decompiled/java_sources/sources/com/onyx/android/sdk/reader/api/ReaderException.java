package com.onyx.android.sdk.reader.api;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \r2\u00060\u0001j\u0002`\u0002:\u0001\rB\u0011\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005B%\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "throwable", "", "(Ljava/lang/Throwable;)V", "code", "", "message", "", "(ILjava/lang/String;Ljava/lang/Throwable;)V", "getCode", "()I", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ReaderException extends Exception {
    public static final int ABORTED = 20;
    public static final int ACTIVATION_FAILED = 101;
    public static final int ADOBE_DRM_ERROR = 15;
    public static final int COULD_NOT_OPEN = 3;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int DATA_EXCEPTION = 11;
    public static final int DRM_ERROR = 13;
    public static final int EMPTY_DOCUMENT = 18;
    public static final int EXCEED_FIRST_PAGE = 6;
    public static final int EXCEED_LAST_PAGE = 5;
    public static final int EXTENSION_NOT_MATCHED = 16;
    public static final int FILE_READ_ONLY = 9;
    public static final int ILLEGAL_DOCUMENT_FORMAT = 17;
    public static final int INVALID_PLUGIN = 2;
    public static final int JD_COMIC_PAGE_NOT_FOUND = 104;
    public static final int JD_CONTENT_NOT_AVAILABLE = 102;
    public static final int JEB_DRM_ERROR = 14;
    public static final int MISSING_FONT = 103;
    public static final int MOBI_DICTIONARY = 19;
    public static final int NET_NOVEL_CHAPTER_NOT_FOUND = 100;
    public static final int NO_REVIEW_DATA = 10;
    public static final int NULL_REQUEST = 4;
    public static final int OUT_OF_RANGE = 7;
    public static final int PASSWORD_REQUIRED = 1;
    public static final int TTS_PAGE_INVALID = 12;
    public static final int UNKNOWN_EXCEPTION = 8;
    private final int code;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010!\u001a\u00020\u001eJ\u0006\u0010\"\u001a\u00020\u001eJ\u000e\u0010#\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010$\u001a\u00020\u001eJ\u0006\u0010%\u001a\u00020\u001eJ\u0006\u0010&\u001a\u00020\u001eJ\u0006\u0010'\u001a\u00020\u001eJ\u0006\u0010(\u001a\u00020\u001eJ\u000e\u0010)\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020 J\u0006\u0010+\u001a\u00020\u001eJ\u000e\u0010,\u001a\u00020\u001e2\u0006\u0010-\u001a\u00020 J\u000e\u0010.\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010/\u001a\u00020\u001eJ\u0006\u00100\u001a\u00020\u001eJ\u000e\u00101\u001a\u00020\u001e2\u0006\u0010-\u001a\u00020 J\u0006\u00102\u001a\u00020\u001eJ\u0006\u00103\u001a\u00020\u001eJ\u0006\u00104\u001a\u00020\u001eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u00065"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderException$Companion;", "", "()V", "ABORTED", "", "ACTIVATION_FAILED", "ADOBE_DRM_ERROR", "COULD_NOT_OPEN", "DATA_EXCEPTION", "DRM_ERROR", "EMPTY_DOCUMENT", "EXCEED_FIRST_PAGE", "EXCEED_LAST_PAGE", "EXTENSION_NOT_MATCHED", "FILE_READ_ONLY", "ILLEGAL_DOCUMENT_FORMAT", "INVALID_PLUGIN", "JD_COMIC_PAGE_NOT_FOUND", "JD_CONTENT_NOT_AVAILABLE", "JEB_DRM_ERROR", "MISSING_FONT", "MOBI_DICTIONARY", "NET_NOVEL_CHAPTER_NOT_FOUND", "NO_REVIEW_DATA", "NULL_REQUEST", "OUT_OF_RANGE", "PASSWORD_REQUIRED", "TTS_PAGE_INVALID", "UNKNOWN_EXCEPTION", "activationFailed", "Lcom/onyx/android/sdk/reader/api/ReaderException;", "message", "", "adobeDrmException", "cannotOpen", "createAbortedException", "dataException", "drmException", "emptyDocument", "extensionNotMatched", "fileReadOnly", "illegalFormat", "path", "invalidPlugin", "jdComicPageNotFound", "locationString", "jdContentNotAvailable", "jebDrmException", "mobiIsDictionary", "netNovelChapterNotFound", "noReviewData", "outOfRange", "passwordRequired", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ReaderException activationFailed(@NotNull String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new ReaderException(101, message, null, 4, null);
        }

        @NotNull
        public final ReaderException adobeDrmException() {
            return new ReaderException(15, "adobe drm exception.", null, 4, null);
        }

        @NotNull
        public final ReaderException cannotOpen() {
            return new ReaderException(3, "Could not open document.", null, 4, null);
        }

        @NotNull
        public final ReaderException createAbortedException(@NotNull String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new ReaderException(20, "aborted, " + message, null, 4, null);
        }

        @NotNull
        public final ReaderException dataException() {
            return new ReaderException(11, "data exception.", null, 4, null);
        }

        @NotNull
        public final ReaderException drmException() {
            return new ReaderException(13, "drm exception.", null, 4, null);
        }

        @NotNull
        public final ReaderException emptyDocument() {
            return new ReaderException(18, "Empty document.", null, 4, null);
        }

        @NotNull
        public final ReaderException extensionNotMatched() {
            return new ReaderException(16, "Extension not matched.", null, 4, null);
        }

        @NotNull
        public final ReaderException fileReadOnly() {
            return new ReaderException(9, "This file is read only.", null, 4, null);
        }

        @NotNull
        public final ReaderException illegalFormat(@NotNull String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            return new ReaderException(17, "Illegal document format, path = " + path, null, 4, null);
        }

        @NotNull
        public final ReaderException invalidPlugin() {
            return new ReaderException(2, "Invalid plugin.", null, 4, null);
        }

        @NotNull
        public final ReaderException jdComicPageNotFound(@NotNull String locationString) {
            Intrinsics.checkNotNullParameter(locationString, "locationString");
            return new ReaderException(104, locationString, null, 4, null);
        }

        @NotNull
        public final ReaderException jdContentNotAvailable(@NotNull String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new ReaderException(102, message, null, 4, null);
        }

        @NotNull
        public final ReaderException jebDrmException() {
            return new ReaderException(14, "jeb drm exception.", null, 4, null);
        }

        @NotNull
        public final ReaderException mobiIsDictionary() {
            return new ReaderException(19, "Mobi is dictionary.", null, 4, null);
        }

        @NotNull
        public final ReaderException netNovelChapterNotFound(@NotNull String locationString) {
            Intrinsics.checkNotNullParameter(locationString, "locationString");
            return new ReaderException(100, locationString, null, 4, null);
        }

        @NotNull
        public final ReaderException noReviewData() {
            return new ReaderException(10, "No correction data.", null, 4, null);
        }

        @NotNull
        public final ReaderException outOfRange() {
            return new ReaderException(7, "Out of range.", null, 4, null);
        }

        @NotNull
        public final ReaderException passwordRequired() {
            return new ReaderException(1, "Password required.", null, 4, null);
        }

        public Companion() {
        }
    }

    public ReaderException() {
        this(0, null, null, 7, null);
    }

    public final int getCode() {
        return this.code;
    }

    public /* synthetic */ ReaderException(int i, String str, Throwable th, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? "" : str, (i2 & 4) != 0 ? null : th);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReaderException(int i, @NotNull String message, @Nullable Throwable th) {
        super(message, th);
        Intrinsics.checkNotNullParameter(message, "message");
        this.code = i;
    }

    public ReaderException(@Nullable Throwable th) {
        this(0, "", th);
    }
}
