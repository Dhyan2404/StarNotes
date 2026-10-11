package com.onyx.android.sdk.reader.api;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005H&J&\u0010\b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\u000e\u001a\u00020\f2\b\u0010\n\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;", "", "getTextLeftBoundary", "", FirebaseAnalytics.Param.CHARACTER, "", "left", gon.f71288n0, "getTextRightBoundary", "getTextSentenceBreakPoint", "text", "isAlphaOrDigit", "", "ch", "isWord", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderTextSplitter {
    int getTextLeftBoundary(@Nullable String character, @Nullable String left, @Nullable String right);

    int getTextRightBoundary(@Nullable String character, @Nullable String left, @Nullable String right);

    int getTextSentenceBreakPoint(@Nullable String text);

    boolean isAlphaOrDigit(@Nullable String ch);

    boolean isWord(@Nullable String text);
}
