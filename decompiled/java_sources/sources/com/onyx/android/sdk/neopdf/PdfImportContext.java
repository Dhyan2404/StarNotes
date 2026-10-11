package com.onyx.android.sdk.neopdf;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0010\b\n\u0002\b\b\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\u0019\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001d\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfImportContext;", "", "", "a", Constants.TYPES_INDEX_SIG, "getObjNumberMapData", "()[I", "setObjNumberMapData", "([I)V", "objNumberMapData", "", "b", Constants.STRING_SIG, "getSrcPath", "()Ljava/lang/String;", "setSrcPath", "(Ljava/lang/String;)V", "srcPath", "", "", "c", "Ljava/util/List;", "getImportedPageIndexList", "()Ljava/util/List;", "importedPageIndexList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "Companion", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class PdfImportContext {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public int[] objNumberMapData;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String srcPath;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> importedPageIndexList;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfImportContext$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/neopdf/PdfImportContext;", "path", "", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PdfImportContext create(@NotNull String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            PdfImportContext pdfImportContext = new PdfImportContext(new int[0]);
            pdfImportContext.setSrcPath(path);
            return pdfImportContext;
        }

        public Companion() {
        }
    }

    public PdfImportContext(@NotNull int[] objNumberMapData) {
        Intrinsics.checkNotNullParameter(objNumberMapData, "objNumberMapData");
        this.objNumberMapData = objNumberMapData;
        this.srcPath = "";
        this.importedPageIndexList = new ArrayList();
    }

    @NotNull
    public final List<Integer> getImportedPageIndexList() {
        return this.importedPageIndexList;
    }

    @NotNull
    public final int[] getObjNumberMapData() {
        return this.objNumberMapData;
    }

    @NotNull
    public final String getSrcPath() {
        return this.srcPath;
    }

    public final void setObjNumberMapData(@NotNull int[] iArr) {
        Intrinsics.checkNotNullParameter(iArr, "<set-?>");
        this.objNumberMapData = iArr;
    }

    public final void setSrcPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.srcPath = str;
    }
}
