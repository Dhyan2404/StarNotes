package com.oplus.ocs.base.task;

import com.oplus.ocs.base.utils.C13074d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.oplus.ocs.base.task.p */
/* loaded from: classes9.dex */
final class C13068p<TResult> implements Continuation<Void, List<TResult>> {

    /* renamed from: a */
    private Collection<? extends Task<?>> f63140a;

    public C13068p(Collection<? extends Task<?>> collection) {
        this.f63140a = collection;
    }

    @Override // com.oplus.ocs.base.task.Continuation
    public final /* synthetic */ Object then(Task<Void> task) {
        C13074d.m52234a(task);
        ArrayList arrayList = new ArrayList();
        Iterator<? extends Task<?>> it2 = this.f63140a.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getResult());
        }
        return arrayList;
    }
}
