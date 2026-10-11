package com.onyx.android.sdk.reader.data;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J'\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u0002HÆ\u0001J\t\u0010\n\u001a\u00020\u0002HÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0011\u001a\u0004\b\u0015\u0010\u0013R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0013¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;", "", "", "component1", "component2", "component3", "path", "password", "outputFilePath", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", "b", "getPassword", "c", "getOutputFilePath", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class DecryptPDFArgs {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String path;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final String password;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final String outputFilePath;

    public DecryptPDFArgs(@NotNull String path, @NotNull String password, @NotNull String outputFilePath) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(outputFilePath, "outputFilePath");
        this.path = path;
        this.password = password;
        this.outputFilePath = outputFilePath;
    }

    public static /* synthetic */ DecryptPDFArgs copy$default(DecryptPDFArgs decryptPDFArgs, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = decryptPDFArgs.path;
        }
        if ((i & 2) != 0) {
            str2 = decryptPDFArgs.password;
        }
        if ((i & 4) != 0) {
            str3 = decryptPDFArgs.outputFilePath;
        }
        return decryptPDFArgs.copy(str, str2, str3);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getPath() {
        return this.path;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getPassword() {
        return this.password;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getOutputFilePath() {
        return this.outputFilePath;
    }

    @NotNull
    public final DecryptPDFArgs copy(@NotNull String path, @NotNull String password, @NotNull String outputFilePath) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(outputFilePath, "outputFilePath");
        return new DecryptPDFArgs(path, password, outputFilePath);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DecryptPDFArgs)) {
            return false;
        }
        DecryptPDFArgs decryptPDFArgs = (DecryptPDFArgs) other;
        return Intrinsics.areEqual(this.path, decryptPDFArgs.path) && Intrinsics.areEqual(this.password, decryptPDFArgs.password) && Intrinsics.areEqual(this.outputFilePath, decryptPDFArgs.outputFilePath);
    }

    @NotNull
    public final String getOutputFilePath() {
        return this.outputFilePath;
    }

    @NotNull
    public final String getPassword() {
        return this.password;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    public int hashCode() {
        return (((this.path.hashCode() * 31) + this.password.hashCode()) * 31) + this.outputFilePath.hashCode();
    }

    @NotNull
    public String toString() {
        return "DecryptPDFArgs(path=" + this.path + ", password=" + this.password + ", outputFilePath=" + this.outputFilePath + ')';
    }
}
