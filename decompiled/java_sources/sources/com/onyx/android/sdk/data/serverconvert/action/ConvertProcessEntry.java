package com.onyx.android.sdk.data.serverconvert.action;

import android.net.Uri;
import com.blankj.utilcode.util.UriUtils;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0017\u001a\u00020\u0018J\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00140\u0004J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u001bJ\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00140\u0004R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR \u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR \u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\tR \u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR \u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0007\"\u0004\b\u0016\u0010\t¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/action/ConvertProcessEntry;", "", "()V", "failedList", "", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;", "getFailedList", "()Ljava/util/List;", "setFailedList", "(Ljava/util/List;)V", "localConvertList", "getLocalConvertList", "setLocalConvertList", "networkConvertList", "getNetworkConvertList", "setNetworkConvertList", "successList", "getSuccessList", "setSuccessList", "unSupportConvertList", "Landroid/net/Uri;", "getUnSupportConvertList", "setUnSupportConvertList", "collectionFailedList", "", "failedToUriList", "getCompleteSize", "", "getTotalConvertSize", "successToUriList", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nConvertProcessEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConvertProcessEntry.kt\ncom/onyx/android/sdk/data/serverconvert/action/ConvertProcessEntry\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,57:1\n766#2:58\n857#2,2:59\n766#2:61\n857#2,2:62\n1855#2,2:64\n1855#2,2:66\n*S KotlinDebug\n*F\n+ 1 ConvertProcessEntry.kt\ncom/onyx/android/sdk/data/serverconvert/action/ConvertProcessEntry\n*L\n26#1:58\n26#1:59,2\n30#1:61\n30#1:62,2\n40#1:64,2\n51#1:66,2\n*E\n"})
/* loaded from: classes7.dex */
public final class ConvertProcessEntry {

    @NotNull
    private List<ConvertEntry> localConvertList = new ArrayList();

    @NotNull
    private List<ConvertEntry> networkConvertList = new ArrayList();

    @NotNull
    private List<ConvertEntry> successList = new ArrayList();

    @NotNull
    private List<ConvertEntry> failedList = new ArrayList();

    @NotNull
    private List<Uri> unSupportConvertList = new ArrayList();

    public final void collectionFailedList() {
        List<ConvertEntry> list = this.localConvertList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!this.successList.contains((ConvertEntry) obj)) {
                arrayList.add(obj);
            }
        }
        List<ConvertEntry> list2 = this.networkConvertList;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list2) {
            if (!this.successList.contains((ConvertEntry) obj2)) {
                arrayList2.add(obj2);
            }
        }
        this.failedList.clear();
        this.failedList.addAll(arrayList);
        this.failedList.addAll(arrayList2);
    }

    @NotNull
    public final List<Uri> failedToUriList() {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = this.failedList.iterator();
        while (it2.hasNext()) {
            Uri uri = ((ConvertEntry) it2.next()).getUri();
            Intrinsics.checkNotNull(uri);
            arrayList.add(uri);
        }
        return arrayList;
    }

    public final int getCompleteSize() {
        return this.successList.size() + this.failedList.size();
    }

    @NotNull
    public final List<ConvertEntry> getFailedList() {
        return this.failedList;
    }

    @NotNull
    public final List<ConvertEntry> getLocalConvertList() {
        return this.localConvertList;
    }

    @NotNull
    public final List<ConvertEntry> getNetworkConvertList() {
        return this.networkConvertList;
    }

    @NotNull
    public final List<ConvertEntry> getSuccessList() {
        return this.successList;
    }

    public final int getTotalConvertSize() {
        return this.localConvertList.size() + this.networkConvertList.size();
    }

    @NotNull
    public final List<Uri> getUnSupportConvertList() {
        return this.unSupportConvertList;
    }

    public final void setFailedList(@NotNull List<ConvertEntry> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.failedList = list;
    }

    public final void setLocalConvertList(@NotNull List<ConvertEntry> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.localConvertList = list;
    }

    public final void setNetworkConvertList(@NotNull List<ConvertEntry> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.networkConvertList = list;
    }

    public final void setSuccessList(@NotNull List<ConvertEntry> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.successList = list;
    }

    public final void setUnSupportConvertList(@NotNull List<Uri> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.unSupportConvertList = list;
    }

    @NotNull
    public final List<Uri> successToUriList() {
        ArrayList arrayList = new ArrayList();
        for (ConvertEntry convertEntry : this.successList) {
            if ((convertEntry.getDownloadLocalPath().length() > 0) && FileUtils.INSTANCE.isFileExist(convertEntry.getDownloadLocalPath())) {
                Uri file2Uri = UriUtils.file2Uri(new File(convertEntry.getDownloadLocalPath()));
                Intrinsics.checkNotNull(file2Uri);
                arrayList.add(file2Uri);
            }
        }
        return arrayList;
    }
}
