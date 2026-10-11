package com.onyx.android.sdk.reader.request;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.reader.Reader;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.reader.data.ReaderPageInfo;
import com.onyx.android.sdk.reader.extension.ReaderKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\"\u001a\u00020\u0002¢\u0006\u0004\b#\u0010$J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0019\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\b\u001a\u0004\b\u0017\u0010\n\"\u0004\b\u0018\u0010\fR\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;", "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;", "Lcom/onyx/android/sdk/reader/ReaderBundle;", "bundle", "", "execute", "", C6997f.f39671c, Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", "setPath", "(Ljava/lang/String;)V", "path", "", C6998g.f39679a, "I", "getPageIndex", "()I", "setPageIndex", "(I)V", "pageIndex", C6999h.f39688c, "getPassword", "setPassword", "password", "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "i", "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "getReaderPageInfo", "()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "setReaderPageInfo", "(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)V", "readerPageInfo", "readerBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/ReaderBundle;)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadReaderPageInfoRequest extends RxBaseReaderRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public String path;

    /* renamed from: g, reason: from kotlin metadata */
    public int pageIndex;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public String password;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public ReaderPageInfo readerPageInfo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadReaderPageInfoRequest(@NotNull ReaderBundle readerBundle) {
        super(readerBundle);
        Intrinsics.checkNotNullParameter(readerBundle, "readerBundle");
        this.path = "";
        this.password = "";
        this.readerPageInfo = new ReaderPageInfo();
    }

    @Override // com.onyx.android.sdk.reader.request.RxBaseReaderRequest
    public void execute(@NotNull ReaderBundle bundle) {
        Reader ensureReaderByPath;
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        if ((this.path.length() == 0) || (ensureReaderByPath = getReaderBundle().ensureReaderByPath(this.path, this.password)) == null) {
            return;
        }
        this.readerPageInfo = ReaderKt.getReaderPageInfo(ensureReaderByPath, ensureReaderByPath.getNavigator().positionByPageIndex(this.pageIndex), this.readerPageInfo);
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    @NotNull
    public final String getPassword() {
        return this.password;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    @NotNull
    public final ReaderPageInfo getReaderPageInfo() {
        return this.readerPageInfo;
    }

    public final void setPageIndex(int i) {
        this.pageIndex = i;
    }

    public final void setPassword(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.password = str;
    }

    public final void setPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.path = str;
    }

    public final void setReaderPageInfo(@NotNull ReaderPageInfo readerPageInfo) {
        Intrinsics.checkNotNullParameter(readerPageInfo, "<set-?>");
        this.readerPageInfo = readerPageInfo;
    }
}
