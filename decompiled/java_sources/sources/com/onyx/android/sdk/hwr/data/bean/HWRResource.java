package com.onyx.android.sdk.hwr.data.bean;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.hwr.utils.HWRLangUtils;
import com.onyx.android.sdk.hwr.utils.HWRMmkvUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0018\n\u0002\u0010\t\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b;\u0010<J\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u000e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0005\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\tR$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0005\u001a\u0004\b\u0010\u0010\u0007\"\u0004\b\u0011\u0010\tR\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0005\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\tR\"\u0010\u001a\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0005\u001a\u0004\b\u0018\u0010\u0007\"\u0004\b\u0019\u0010\tR\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R$\u0010&\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u0005\u001a\u0004\b$\u0010\u0007\"\u0004\b%\u0010\tR$\u0010*\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\u0005\u001a\u0004\b(\u0010\u0007\"\u0004\b)\u0010\tR$\u0010.\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010\u0005\u001a\u0004\b,\u0010\u0007\"\u0004\b-\u0010\tR$\u00102\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010\u0005\u001a\u0004\b0\u0010\u0007\"\u0004\b1\u0010\tR\"\u0010:\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109¨\u0006="}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "", "", "name", "a", Constants.STRING_SIG, "getEngineType", "()Ljava/lang/String;", "setEngineType", "(Ljava/lang/String;)V", "engineType", "b", "getContentType", "setContentType", CouchFieldKey.KEY_CONTENT_TYPE, "c", "getId", "setId", "id", "d", "getLang", "setLang", "lang", "e", "getVersion", "setVersion", "version", "", C6997f.f39671c, "J", "getSize", "()J", "setSize", "(J)V", "size", C6998g.f39679a, "getMd5", "setMd5", CouchFieldKey.KEY_MD5, C6999h.f39688c, "getUrl", "setUrl", "url", "i", "getZipFile", "setZipFile", "zipFile", "j", "getUnzipFile", "setUnzipFile", "unzipFile", "", C4921e.f26537n, Constants.HASIDCALL_INDEX_SIG, "getExist", Constants.BOOLEAN_VALUE_SIG, "setExist", "(Z)V", "exist", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRResource {

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String id;

    /* renamed from: f, reason: from kotlin metadata */
    public long size;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public String md5;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public String url;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public String zipFile;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public String unzipFile;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean exist;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String engineType = HWRValues.ENGINE_MS;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String contentType = "Text";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public String lang = HWRMmkvUtils.INSTANCE.getLang(HWRLangUtils.INSTANCE.getDefaultHWRLang());

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public String version = "0.0";

    @NotNull
    public final String getContentType() {
        return this.contentType;
    }

    @NotNull
    public final String getEngineType() {
        return this.engineType;
    }

    public final boolean getExist() {
        return this.exist;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final String getLang() {
        return this.lang;
    }

    @Nullable
    public final String getMd5() {
        return this.md5;
    }

    public final long getSize() {
        return this.size;
    }

    @Nullable
    public final String getUnzipFile() {
        return this.unzipFile;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    @NotNull
    public final String getVersion() {
        return this.version;
    }

    @Nullable
    public final String getZipFile() {
        return this.zipFile;
    }

    @NotNull
    public final String name() {
        return this.engineType + ':' + this.contentType + ':' + this.lang;
    }

    public final void setContentType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentType = str;
    }

    public final void setEngineType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.engineType = str;
    }

    public final void setExist(boolean z) {
        this.exist = z;
    }

    public final void setId(@Nullable String str) {
        this.id = str;
    }

    public final void setLang(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.lang = str;
    }

    public final void setMd5(@Nullable String str) {
        this.md5 = str;
    }

    public final void setSize(long j) {
        this.size = j;
    }

    public final void setUnzipFile(@Nullable String str) {
        this.unzipFile = str;
    }

    public final void setUrl(@Nullable String str) {
        this.url = str;
    }

    public final void setVersion(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.version = str;
    }

    public final void setZipFile(@Nullable String str) {
        this.zipFile = str;
    }
}
