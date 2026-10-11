package com.onyx.android.sdk.reader.request;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.reader.Reader;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u001a\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR$\u0010\u0011\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\b\u001a\u0004\b\u000f\u0010\n\"\u0004\b\u0010\u0010\fR\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/request/LoadTotalPageRequest;", "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;", "Lcom/onyx/android/sdk/reader/ReaderBundle;", "bundle", "", "execute", "", C6997f.f39671c, Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", "setPath", "(Ljava/lang/String;)V", "path", C6998g.f39679a, "getPassword", "setPassword", "password", "", C6999h.f39688c, "I", "getTotalPage", "()I", "setTotalPage", "(I)V", "totalPage", "readerBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Ljava/lang/String;)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadTotalPageRequest extends RxBaseReaderRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public String path;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public String password;

    /* renamed from: h, reason: from kotlin metadata */
    public int totalPage;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadTotalPageRequest(@NotNull ReaderBundle readerBundle, @NotNull String path, @Nullable String str) {
        super(readerBundle);
        Intrinsics.checkNotNullParameter(readerBundle, "readerBundle");
        Intrinsics.checkNotNullParameter(path, "path");
        this.path = path;
        this.password = str;
    }

    @Override // com.onyx.android.sdk.reader.request.RxBaseReaderRequest
    public void execute(@NotNull ReaderBundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        String str = this.path;
        String str2 = this.password;
        if (str2 == null) {
            str2 = "";
        }
        Reader ensureReaderByPath = bundle.ensureReaderByPath(str, str2);
        if (ensureReaderByPath == null) {
            return;
        }
        this.totalPage = ensureReaderByPath.getNavigator().getTotalPage();
    }

    @Nullable
    public final String getPassword() {
        return this.password;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    public final int getTotalPage() {
        return this.totalPage;
    }

    public final void setPassword(@Nullable String str) {
        this.password = str;
    }

    public final void setPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.path = str;
    }

    public final void setTotalPage(int i) {
        this.totalPage = i;
    }
}
