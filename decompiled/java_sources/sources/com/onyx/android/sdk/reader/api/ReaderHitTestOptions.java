package com.onyx.android.sdk.reader.api;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;", "", "", "a", Constants.HASIDCALL_INDEX_SIG, "isSelectingWord", Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Z)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReaderHitTestOptions {

    /* renamed from: a, reason: from kotlin metadata */
    public final boolean isSelectingWord;

    public ReaderHitTestOptions() {
        this(false, 1, null);
    }

    /* renamed from: isSelectingWord, reason: from getter */
    public final boolean getIsSelectingWord() {
        return this.isSelectingWord;
    }

    public ReaderHitTestOptions(boolean z) {
        this.isSelectingWord = z;
    }

    public /* synthetic */ ReaderHitTestOptions(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z);
    }
}
