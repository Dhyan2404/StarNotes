package com.onyx.android.sdk.cloudstorage.provider.onedrive.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import java.io.Serializable;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.Nullable;
import org.scribe.model.ParameterList;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR \u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u000b8G¢\u0006\u0006\u001a\u0004\b\u0011\u0010\rR\"\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody;", "Ljava/io/Serializable;", "()V", "count", "", "getCount", "()J", "setCount", "(J)V", "nextPageLink", "", "getNextPageLink", "()Ljava/lang/String;", "setNextPageLink", "(Ljava/lang/String;)V", "nextPageToken", "getNextPageToken", "value", "", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;", "getValue", "()Ljava/util/List;", "setValue", "(Ljava/util/List;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OneDriverFileInfoBody extends OneDriverErrorBody implements Serializable {

    @JSONField(alternateNames = {OneDriverConstants.ODATA_COUNT})
    private long count;

    @JSONField(alternateNames = {OneDriverConstants.ODATA_NEXT_LINK})
    @Nullable
    private String nextPageLink;

    @Nullable
    private List<OneDriverFileInfo> value;

    public final long getCount() {
        return this.count;
    }

    @Nullable
    public final String getNextPageLink() {
        return this.nextPageLink;
    }

    @JSONField(deserialize = false, serialize = false)
    @Nullable
    public final String getNextPageToken() {
        boolean contains$default;
        String str = this.nextPageLink;
        if (str == null) {
            return null;
        }
        Intrinsics.checkNotNull(str);
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        String str2 = "$skipToken=";
        String lowerCase = "$skipToken=".toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) lowerCase, false, 2, (Object) null);
        if (contains$default) {
            Locale locale2 = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale2, "getDefault(...)");
            str2 = "$skipToken=".toLowerCase(locale2);
            Intrinsics.checkNotNullExpressionValue(str2, "this as java.lang.String).toLowerCase(locale)");
        }
        return StringUtils.substringBefore(StringUtils.substringAfterLast(this.nextPageLink, str2), ParameterList.f115951c);
    }

    @Nullable
    public final List<OneDriverFileInfo> getValue() {
        return this.value;
    }

    public final void setCount(long j) {
        this.count = j;
    }

    public final void setNextPageLink(@Nullable String str) {
        this.nextPageLink = str;
    }

    public final void setValue(@Nullable List<OneDriverFileInfo> list) {
        this.value = list;
    }
}
