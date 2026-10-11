package com.onyx.android.sdk.hwr.data.event;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u0003\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 *2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001*B\u0007¢\u0006\u0004\b(\u0010)J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR$\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0018\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\b\u001a\u0004\b\u0016\u0010\n\"\u0004\b\u0017\u0010\fR$\u0010\u0007\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\"\u0010'\u001a\u00020 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;", "Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;", "", "isComplete", "", PrivilegedApp.f6532i, "", "e", "I", "getStatus", "()I", "setStatus", "(I)V", "status", C6997f.f39671c, Constants.STRING_SIG, "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "url", C6998g.f39679a, "getProgress", "setProgress", "progress", "", C6999h.f39688c, "Ljava/lang/Throwable;", "getE", "()Ljava/lang/Throwable;", "setE", "(Ljava/lang/Throwable;)V", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "i", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "getResource", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "setResource", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V", "resource", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRLangDownloadEvent extends HWRBaseEvent<HWRLangDownloadEvent> {
    public static final int DOWNLOAD_STATUS_COMPLETE = 3;
    public static final int DOWNLOAD_STATUS_ERROR = 4;
    public static final int DOWNLOAD_STATUS_NOT_START = 0;
    public static final int DOWNLOAD_STATUS_PROGRESS = 1;
    public static final int DOWNLOAD_STATUS_UNZIP = 2;

    /* renamed from: e, reason: from kotlin metadata */
    public int status;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public String url;

    /* renamed from: g, reason: from kotlin metadata */
    public int progress;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public Throwable e;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public HWRResource resource = new HWRResource();

    @Nullable
    public final Throwable getE() {
        return this.e;
    }

    public final int getProgress() {
        return this.progress;
    }

    @NotNull
    public final HWRResource getResource() {
        return this.resource;
    }

    public final int getStatus() {
        return this.status;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    @NotNull
    public final String info() {
        if (this.e == null) {
            return this.resource.name() + ' ' + this.progress + '%';
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.resource.name());
        sb.append(' ');
        Throwable th = this.e;
        sb.append(th != null ? th.getMessage() : null);
        return sb.toString();
    }

    public final boolean isComplete() {
        return this.status == 3;
    }

    public final void setE(@Nullable Throwable th) {
        this.e = th;
    }

    public final void setProgress(int i) {
        this.progress = i;
    }

    public final void setResource(@NotNull HWRResource hWRResource) {
        Intrinsics.checkNotNullParameter(hWRResource, "<set-?>");
        this.resource = hWRResource;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setUrl(@Nullable String str) {
        this.url = str;
    }
}
