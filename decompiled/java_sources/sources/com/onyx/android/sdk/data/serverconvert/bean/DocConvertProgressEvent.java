package com.onyx.android.sdk.data.serverconvert.bean;

import com.onyx.galaxy.note.usercenter.data.JavascriptArgs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0019\u001a\u00020\u001aR \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR \u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;", "", "()V", "localList", "", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;", "getLocalList", "()Ljava/util/List;", "setLocalList", "(Ljava/util/List;)V", "networkList", "getNetworkList", "setNetworkList", "status", "", "getStatus", "()I", "setStatus", "(I)V", JavascriptArgs.KEY_TASK_ID, "", "getTaskId", "()Ljava/lang/String;", "setTaskId", "(Ljava/lang/String;)V", "isAllTaskComplete", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DocConvertProgressEvent {
    private int status = 200;

    @NotNull
    private List<ConvertEntry> localList = new ArrayList();

    @NotNull
    private List<ConvertEntry> networkList = new ArrayList();

    @NotNull
    private String taskId = "";

    @NotNull
    public final List<ConvertEntry> getLocalList() {
        return this.localList;
    }

    @NotNull
    public final List<ConvertEntry> getNetworkList() {
        return this.networkList;
    }

    public final int getStatus() {
        return this.status;
    }

    @NotNull
    public final String getTaskId() {
        return this.taskId;
    }

    public final boolean isAllTaskComplete() {
        Object obj;
        Object obj2;
        Iterator<T> it2 = this.networkList.iterator();
        while (true) {
            obj = null;
            if (!it2.hasNext()) {
                obj2 = null;
                break;
            }
            obj2 = it2.next();
            if (((ConvertEntry) obj2).getStatus() == ConvertResultType.RESULT_PROCESSING) {
                break;
            }
        }
        ConvertEntry convertEntry = (ConvertEntry) obj2;
        Iterator<T> it3 = this.localList.iterator();
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            Object next = it3.next();
            if (((ConvertEntry) next).getStatus() == ConvertResultType.RESULT_PROCESSING) {
                obj = next;
                break;
            }
        }
        return convertEntry == null && ((ConvertEntry) obj) == null;
    }

    public final void setLocalList(@NotNull List<ConvertEntry> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.localList = list;
    }

    public final void setNetworkList(@NotNull List<ConvertEntry> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.networkList = list;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setTaskId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.taskId = str;
    }
}
