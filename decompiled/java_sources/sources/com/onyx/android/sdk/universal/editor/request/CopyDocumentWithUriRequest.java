package com.onyx.android.sdk.universal.editor.request;

import android.net.Uri;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.UriUtils;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.nio.file.Path;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/CopyDocumentWithUriRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "Ljava/nio/file/Path;", C6997f.f39671c, "Ljava/nio/file/Path;", "fileDir", "Landroid/net/Uri;", "uri", "Landroid/net/Uri;", "getUri", "()Landroid/net/Uri;", "setUri", "(Landroid/net/Uri;)V", "", "documentPath", Constants.STRING_SIG, "getDocumentPath", "()Ljava/lang/String;", "setDocumentPath", "(Ljava/lang/String;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/nio/file/Path;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CopyDocumentWithUriRequest extends RxBaseAppRequest {
    public String documentPath;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Path fileDir;
    public Uri uri;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CopyDocumentWithUriRequest(@NotNull WorkBundle workBundle, @NotNull Path fileDir) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(fileDir, "fileDir");
        this.fileDir = fileDir;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        String fileName = UriKt.getFileName(getUri(), EditorBundleKt.appContext());
        FileUtils fileUtils = FileUtils.INSTANCE;
        Paths paths = Paths.INSTANCE;
        File appendSuffixIfExist = fileUtils.appendSuffixIfExist(paths.asFile(paths.append(this.fileDir, fileName)));
        UriUtils.INSTANCE.copyToFile(getUri(), appendSuffixIfExist);
        String absolutePath = appendSuffixIfExist.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        setDocumentPath(absolutePath);
    }

    @NotNull
    public final String getDocumentPath() {
        String str = this.documentPath;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("documentPath");
        return null;
    }

    @NotNull
    public final Uri getUri() {
        Uri uri = this.uri;
        if (uri != null) {
            return uri;
        }
        Intrinsics.throwUninitializedPropertyAccessException("uri");
        return null;
    }

    public final void setDocumentPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentPath = str;
    }

    public final void setUri(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<set-?>");
        this.uri = uri;
    }

    public /* synthetic */ CopyDocumentWithUriRequest(WorkBundle workBundle, Path path, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(workBundle, (i & 2) != 0 ? AppConfig.INSTANCE.documentFileDir() : path);
    }
}
