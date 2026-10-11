package com.onyx.android.sdk.cloudstorage.provider.webdav.bean;

import com.google.android.gms.actions.SearchIntents;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.Serializable;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.Root;

@Namespace(prefix = "s", reference = CloudStorageConstants.NUT_STORE_REF)
@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\b\u0007\u0018\u00002\u00020\u0001B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005B\u0005¢\u0006\u0002\u0010\u0006R&\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\b\u0010\u0006\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR&\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\r\u0010\u0006\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/NutStoreSearchBody;", "Ljava/io/Serializable;", "path", "", SearchIntents.EXTRA_QUERY, "(Ljava/lang/String;Ljava/lang/String;)V", "()V", "keywords", "getKeywords$annotations", "getKeywords", "()Ljava/lang/String;", "setKeywords", "(Ljava/lang/String;)V", "getPath$annotations", "getPath", "setPath", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@Root(name = "search")
/* loaded from: classes7.dex */
public final class NutStoreSearchBody implements Serializable {

    @Nullable
    private String keywords;

    @Nullable
    private String path;

    public NutStoreSearchBody() {
    }

    @Element(name = "keywords")
    @Namespace(prefix = "s", reference = CloudStorageConstants.NUT_STORE_REF)
    public static /* synthetic */ void getKeywords$annotations() {
    }

    @Element(name = "path", required = false)
    @Namespace(prefix = "s", reference = CloudStorageConstants.NUT_STORE_REF)
    public static /* synthetic */ void getPath$annotations() {
    }

    @Nullable
    public final String getKeywords() {
        return this.keywords;
    }

    @Nullable
    public final String getPath() {
        return this.path;
    }

    public final void setKeywords(@Nullable String str) {
        this.keywords = str;
    }

    public final void setPath(@Nullable String str) {
        this.path = str;
    }

    public NutStoreSearchBody(@Nullable String str, @Nullable String str2) {
        this();
        this.path = str;
        this.keywords = str2;
    }
}
