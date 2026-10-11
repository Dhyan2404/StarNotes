package com.onyx.android.sdk.note.common.data.hwr;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R$\u0010\u0015\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\f\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R*\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/hwr/ShapeHWRBean;", "", "", "a", "I", "getHwrType", "()I", "setHwrType", "(I)V", "hwrType", "", "b", Constants.STRING_SIG, "getPlaceId", "()Ljava/lang/String;", "setPlaceId", "(Ljava/lang/String;)V", "placeId", "c", "getLang", "setLang", "lang", "", "d", "Ljava/util/List;", "getCandidates", "()Ljava/util/List;", "setCandidates", "(Ljava/util/List;)V", "candidates", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ShapeHWRBean {

    /* renamed from: a, reason: from kotlin metadata */
    public int hwrType;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String placeId;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String lang;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public List<String> candidates;

    @Nullable
    public final List<String> getCandidates() {
        return this.candidates;
    }

    public final int getHwrType() {
        return this.hwrType;
    }

    @Nullable
    public final String getLang() {
        return this.lang;
    }

    @Nullable
    public final String getPlaceId() {
        return this.placeId;
    }

    public final void setCandidates(@Nullable List<String> list) {
        this.candidates = list;
    }

    public final void setHwrType(int i) {
        this.hwrType = i;
    }

    public final void setLang(@Nullable String str) {
        this.lang = str;
    }

    public final void setPlaceId(@Nullable String str) {
        this.placeId = str;
    }
}
