package com.oplus.ocs.base.task;

import com.oplus.ocs.base.utils.C13074d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* renamed from: com.oplus.ocs.base.task.o */
/* loaded from: classes9.dex */
final class C13067o implements Continuation<Void, Task<List<Task<?>>>> {

    /* renamed from: a */
    private Collection f63139a;

    public C13067o(Collection collection) {
        this.f63139a = collection;
    }

    @Override // com.oplus.ocs.base.task.Continuation
    public final /* synthetic */ Task<List<Task<?>>> then(Task<Void> task) {
        C13074d.m52234a(task);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f63139a);
        return Tasks.forResult(arrayList);
    }
}
