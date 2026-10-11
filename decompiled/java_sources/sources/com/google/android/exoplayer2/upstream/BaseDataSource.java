package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public abstract class BaseDataSource implements DataSource {

    /* renamed from: a */
    public final boolean f27937a;

    /* renamed from: b */
    public final ArrayList<TransferListener> f27938b = new ArrayList<>(1);

    /* renamed from: c */
    public int f27939c;

    /* renamed from: d */
    @Nullable
    public DataSpec f27940d;

    public BaseDataSource(boolean z) {
        this.f27937a = z;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public final void addTransferListener(TransferListener transferListener) {
        Assertions.checkNotNull(transferListener);
        if (this.f27938b.contains(transferListener)) {
            return;
        }
        this.f27938b.add(transferListener);
        this.f27939c++;
    }

    public final void bytesTransferred(int i) {
        DataSpec dataSpec = (DataSpec) Util.castNonNull(this.f27940d);
        for (int i2 = 0; i2 < this.f27939c; i2++) {
            this.f27938b.get(i2).onBytesTransferred(this, dataSpec, this.f27937a, i);
        }
    }

    public final void transferEnded() {
        DataSpec dataSpec = (DataSpec) Util.castNonNull(this.f27940d);
        for (int i = 0; i < this.f27939c; i++) {
            this.f27938b.get(i).onTransferEnd(this, dataSpec, this.f27937a);
        }
        this.f27940d = null;
    }

    public final void transferInitializing(DataSpec dataSpec) {
        for (int i = 0; i < this.f27939c; i++) {
            this.f27938b.get(i).onTransferInitializing(this, dataSpec, this.f27937a);
        }
    }

    public final void transferStarted(DataSpec dataSpec) {
        this.f27940d = dataSpec;
        for (int i = 0; i < this.f27939c; i++) {
            this.f27938b.get(i).onTransferStart(this, dataSpec, this.f27937a);
        }
    }
}
