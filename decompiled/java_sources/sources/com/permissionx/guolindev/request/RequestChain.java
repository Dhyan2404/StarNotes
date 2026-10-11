package com.permissionx.guolindev.request;

import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\tJ\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\b\u0010\tR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\f¨\u0006\u0011"}, m61528d2 = {"Lcom/permissionx/guolindev/request/RequestChain;", "", "Lcom/permissionx/guolindev/request/BaseTask;", "task", "", "addTaskToChain$permissionx_release", "(Lcom/permissionx/guolindev/request/BaseTask;)V", "addTaskToChain", "runTask$permissionx_release", "()V", "runTask", "a", "Lcom/permissionx/guolindev/request/BaseTask;", "headTask", "b", "tailTask", Constants.CONSTRUCTOR_NAME, "permissionx_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes9.dex */
public final class RequestChain {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public BaseTask headTask;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public BaseTask tailTask;

    public final void addTaskToChain$permissionx_release(@NotNull BaseTask task) {
        Intrinsics.checkNotNullParameter(task, "task");
        if (this.headTask == null) {
            this.headTask = task;
        }
        BaseTask baseTask = this.tailTask;
        if (baseTask != null) {
            baseTask.next = task;
        }
        this.tailTask = task;
    }

    public final void runTask$permissionx_release() {
        BaseTask baseTask = this.headTask;
        if (baseTask != null) {
            baseTask.request();
        }
    }
}
