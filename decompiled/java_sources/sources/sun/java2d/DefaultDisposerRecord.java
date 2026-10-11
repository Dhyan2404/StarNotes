package sun.java2d;

/* loaded from: classes16.dex */
public class DefaultDisposerRecord implements DisposerRecord {
    private long dataPointer;
    private long disposerMethodPointer;

    public DefaultDisposerRecord(long j, long j2) {
        this.disposerMethodPointer = j;
        this.dataPointer = j2;
    }

    public static void invokeNativeDispose(long j, long j2) {
    }

    @Override // sun.java2d.DisposerRecord
    public void dispose() {
        invokeNativeDispose(this.disposerMethodPointer, this.dataPointer);
    }

    public long getDataPointer() {
        return this.dataPointer;
    }

    public long getDisposerMethodPointer() {
        return this.disposerMethodPointer;
    }
}
