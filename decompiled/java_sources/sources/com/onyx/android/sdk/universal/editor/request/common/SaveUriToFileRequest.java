package com.onyx.android.sdk.universal.editor.request.common;

import android.net.Uri;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.p018rx.RxBaseBenchmarkRequest;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\r\u001a\u00020\u0004¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0014\u0010\r\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\fR$\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\f\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u0017\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\f\u001a\u0004\b\u0015\u0010\u0010\"\u0004\b\u0016\u0010\u0012¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/common/SaveUriToFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;", "", "safelyExecuteImpl", "", C6997f.f39671c, "Landroid/net/Uri;", "e", "Landroid/net/Uri;", "getUri", "()Landroid/net/Uri;", "uri", Constants.STRING_SIG, CouchFieldKey.KEY_DIR, C6998g.f39679a, "getFileName", "()Ljava/lang/String;", "setFileName", "(Ljava/lang/String;)V", HuaweiYunQueryArgs.FILE_NAME, C6999h.f39688c, "getFilePath", "setFilePath", "filePath", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/net/Uri;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveUriToFileRequest extends RxBaseBenchmarkRequest {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Uri uri;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String dir;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public String fileName;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public String filePath;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ SaveUriToFileRequest(android.net.Uri r1, java.lang.String r2, int r3, kotlin.jvm.internal.DefaultConstructorMarker r4) {
        /*
            r0 = this;
            r3 = r3 & 2
            if (r3 == 0) goto L17
            com.onyx.android.sdk.base.utils.ResManager r2 = com.onyx.android.sdk.base.utils.ResManager.INSTANCE
            android.content.Context r2 = r2.getAppContext()
            java.io.File r2 = r2.getCacheDir()
            java.lang.String r2 = r2.getAbsolutePath()
            java.lang.String r3 = "getAbsolutePath(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
        L17:
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.request.common.SaveUriToFileRequest.<init>(android.net.Uri, java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* renamed from: f */
    public final String m41436f() {
        if (this.fileName == null) {
            this.fileName = UriKt.getFileName(this.uri, ResManager.INSTANCE.getAppContext());
        }
        String str = this.fileName;
        Intrinsics.checkNotNull(str);
        return str;
    }

    @Nullable
    public final String getFileName() {
        return this.fileName;
    }

    @Nullable
    public final String getFilePath() {
        return this.filePath;
    }

    @NotNull
    public final Uri getUri() {
        return this.uri;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseBenchmarkRequest
    public void safelyExecuteImpl() {
        if (this.filePath == null) {
            Path path = Paths.get(this.dir, (String[]) Arrays.copyOf(new String[]{m41436f()}, 1));
            Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
            this.filePath = path.toString();
        }
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.ensureFileExists(this.filePath);
        if (fileUtils.copyInputStreamToFile(ResManager.INSTANCE.getAppContext().getContentResolver().openInputStream(this.uri), new File(this.filePath)) > 0) {
            return;
        }
        throw new IOException("can't generate file from uri:" + this.uri);
    }

    public final void setFileName(@Nullable String str) {
        this.fileName = str;
    }

    public final void setFilePath(@Nullable String str) {
        this.filePath = str;
    }

    public SaveUriToFileRequest(@NotNull Uri uri, @NotNull String dir) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(dir, "dir");
        this.uri = uri;
        this.dir = dir;
    }
}
