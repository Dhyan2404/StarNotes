package com.onyx.galaxy.note.account.event;

import com.couchbase.lite.internal.core.C4Replicator;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0015\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0004HÆ\u0003J)\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R#\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/event/LoadQrCodeEvent;", "", "", "component1", "", "component2", "url", C4Replicator.REPLICATOR_OPTION_EXTRA_HEADERS, "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getUrl", "()Ljava/lang/String;", "b", "Ljava/util/Map;", "getHeaders", "()Ljava/util/Map;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/util/Map;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class LoadQrCodeEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String url;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final Map<String, String> headers;

    public LoadQrCodeEvent(@NotNull String url, @NotNull Map<String, String> headers) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(headers, "headers");
        this.url = url;
        this.headers = headers;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LoadQrCodeEvent copy$default(LoadQrCodeEvent loadQrCodeEvent, String str, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            str = loadQrCodeEvent.url;
        }
        if ((i & 2) != 0) {
            map = loadQrCodeEvent.headers;
        }
        return loadQrCodeEvent.copy(str, map);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    @NotNull
    public final Map<String, String> component2() {
        return this.headers;
    }

    @NotNull
    public final LoadQrCodeEvent copy(@NotNull String url, @NotNull Map<String, String> headers) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(headers, "headers");
        return new LoadQrCodeEvent(url, headers);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LoadQrCodeEvent)) {
            return false;
        }
        LoadQrCodeEvent loadQrCodeEvent = (LoadQrCodeEvent) other;
        return Intrinsics.areEqual(this.url, loadQrCodeEvent.url) && Intrinsics.areEqual(this.headers, loadQrCodeEvent.headers);
    }

    @NotNull
    public final Map<String, String> getHeaders() {
        return this.headers;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return (this.url.hashCode() * 31) + this.headers.hashCode();
    }

    @NotNull
    public String toString() {
        return "LoadQrCodeEvent(url=" + this.url + ", headers=" + this.headers + ')';
    }
}
