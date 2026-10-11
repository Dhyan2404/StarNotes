package com.onyx.android.sdk.cloudstorage.provider.onedrive.bean;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R*\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveUploadResponseBody;", "", "", "a", Constants.STRING_SIG, "getUploadUrl", "()Ljava/lang/String;", "setUploadUrl", "(Ljava/lang/String;)V", "uploadUrl", "Ljava/util/Date;", "b", "Ljava/util/Date;", "getExpirationDateTime", "()Ljava/util/Date;", "setExpirationDateTime", "(Ljava/util/Date;)V", "expirationDateTime", "", "c", "Ljava/util/List;", "getNextExpectedRanges", "()Ljava/util/List;", "setNextExpectedRanges", "(Ljava/util/List;)V", "nextExpectedRanges", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriveUploadResponseBody {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String uploadUrl;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public Date expirationDateTime;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public List<String> nextExpectedRanges;

    @Nullable
    public final Date getExpirationDateTime() {
        return this.expirationDateTime;
    }

    @Nullable
    public final List<String> getNextExpectedRanges() {
        return this.nextExpectedRanges;
    }

    @Nullable
    public final String getUploadUrl() {
        return this.uploadUrl;
    }

    public final void setExpirationDateTime(@Nullable Date date) {
        this.expirationDateTime = date;
    }

    public final void setNextExpectedRanges(@Nullable List<String> list) {
        this.nextExpectedRanges = list;
    }

    public final void setUploadUrl(@Nullable String str) {
        this.uploadUrl = str;
    }
}
