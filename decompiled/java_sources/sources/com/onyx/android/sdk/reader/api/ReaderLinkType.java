package com.onyx.android.sdk.reader.api;

import com.onyx.android.sdk.hwr.data.constant.HwrRecognizerConstant;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderLinkType;", "", "()V", "GOTO_POSITION", "", "ILLEGAL_LINK", "POSITION_NOT_LOADED", "SHOW_TEXT", HwrRecognizerConstant.RECOGNIZER_UNKNOWN, "URI", "isLinkLoaded", "", "linkType", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ReaderLinkType {
    public static final int GOTO_POSITION = 3;
    public static final int ILLEGAL_LINK = 5;

    @NotNull
    public static final ReaderLinkType INSTANCE = new ReaderLinkType();
    public static final int POSITION_NOT_LOADED = 4;
    public static final int SHOW_TEXT = 2;
    public static final int UNKNOWN = 0;
    public static final int URI = 1;

    public final boolean isLinkLoaded(int linkType) {
        return linkType == 1 || linkType == 2 || linkType == 3 || linkType == 5;
    }
}
