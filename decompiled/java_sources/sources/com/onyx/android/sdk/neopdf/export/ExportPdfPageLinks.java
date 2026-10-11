package com.onyx.android.sdk.neopdf.export;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010!\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0015\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\f\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R*\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;", "", "", "a", Constants.STRING_SIG, "getSrcFilePath", "()Ljava/lang/String;", "setSrcFilePath", "(Ljava/lang/String;)V", "srcFilePath", "", "b", "I", "getSrcPageIndex", "()I", "setSrcPageIndex", "(I)V", "srcPageIndex", "c", "getExportPageIndex", "setExportPageIndex", "exportPageIndex", "", "d", "Ljava/util/List;", "getLinkDestList", "()Ljava/util/List;", "setLinkDestList", "(Ljava/util/List;)V", "linkDestList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class ExportPdfPageLinks {

    /* renamed from: b, reason: from kotlin metadata */
    public int srcPageIndex;

    /* renamed from: c, reason: from kotlin metadata */
    public int exportPageIndex;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String srcFilePath = "";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public List<String> linkDestList = new ArrayList();

    public final int getExportPageIndex() {
        return this.exportPageIndex;
    }

    @NotNull
    public final List<String> getLinkDestList() {
        return this.linkDestList;
    }

    @NotNull
    public final String getSrcFilePath() {
        return this.srcFilePath;
    }

    public final int getSrcPageIndex() {
        return this.srcPageIndex;
    }

    public final void setExportPageIndex(int i) {
        this.exportPageIndex = i;
    }

    public final void setLinkDestList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.linkDestList = list;
    }

    public final void setSrcFilePath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.srcFilePath = str;
    }

    public final void setSrcPageIndex(int i) {
        this.srcPageIndex = i;
    }
}
