package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.util.PriorityTaskManager;

@Deprecated
/* loaded from: classes5.dex */
public final class PriorityDataSourceFactory implements DataSource.Factory {

    /* renamed from: a */
    public final DataSource.Factory f28121a;

    /* renamed from: b */
    public final PriorityTaskManager f28122b;

    /* renamed from: c */
    public final int f28123c;

    public PriorityDataSourceFactory(DataSource.Factory factory, PriorityTaskManager priorityTaskManager, int i) {
        this.f28121a = factory;
        this.f28122b = priorityTaskManager;
        this.f28123c = i;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource.Factory
    public PriorityDataSource createDataSource() {
        return new PriorityDataSource(this.f28121a.createDataSource(), this.f28122b, this.f28123c);
    }
}
