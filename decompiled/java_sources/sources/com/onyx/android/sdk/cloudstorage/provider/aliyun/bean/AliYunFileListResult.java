package com.onyx.android.sdk.cloudstorage.provider.aliyun.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.cloudstorage.constans.Constants;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR \u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileListResult;", "Ljava/io/Serializable;", "()V", FirebaseAnalytics.Param.ITEMS, "", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "nextMarker", "", "getNextMarker", "()Ljava/lang/String;", "setNextMarker", "(Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AliYunFileListResult implements Serializable {

    @Nullable
    private List<AliYunFileInfo> items;

    @JSONField(alternateNames = {Constants.ALI_YUN_NEXT_MARKER})
    @Nullable
    private String nextMarker;

    @Nullable
    public final List<AliYunFileInfo> getItems() {
        return this.items;
    }

    @Nullable
    public final String getNextMarker() {
        return this.nextMarker;
    }

    public final void setItems(@Nullable List<AliYunFileInfo> list) {
        this.items = list;
    }

    public final void setNextMarker(@Nullable String str) {
        this.nextMarker = str;
    }
}
