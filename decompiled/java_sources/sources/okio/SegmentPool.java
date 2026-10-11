package okio;

import com.sun.org.apache.bcel.internal.Constants;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\b\b\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\b\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0007J\u0010\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0007H\u0002R\u001a\u0010\r\u001a\u00020\t8\u0006X\u0086D¢\u0006\f\n\u0004\b\b\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0010\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\nR\"\u0010\u0016\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00070\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0018\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\f¨\u0006\u001b"}, m61528d2 = {"Lokio/SegmentPool;", "", "Lokio/Segment;", "take", "segment", "", "recycle", "Ljava/util/concurrent/atomic/AtomicReference;", "a", "", "I", "getMAX_SIZE", "()I", "MAX_SIZE", "b", "Lokio/Segment;", "LOCK", "c", "HASH_BUCKET_COUNT", "", "d", "[Ljava/util/concurrent/atomic/AtomicReference;", "hashBuckets", "getByteCount", "byteCount", Constants.CONSTRUCTOR_NAME, "()V", "okio"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes11.dex */
public final class SegmentPool {

    @NotNull
    public static final SegmentPool INSTANCE = new SegmentPool();

    /* renamed from: a, reason: from kotlin metadata */
    public static final int MAX_SIZE = 65536;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final Segment LOCK = new Segment(new byte[0], 0, 0, false, false);

    /* renamed from: c, reason: from kotlin metadata */
    public static final int HASH_BUCKET_COUNT;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final AtomicReference<Segment>[] hashBuckets;

    static {
        int highestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        HASH_BUCKET_COUNT = highestOneBit;
        AtomicReference<Segment>[] atomicReferenceArr = new AtomicReference[highestOneBit];
        for (int i = 0; i < highestOneBit; i++) {
            atomicReferenceArr[i] = new AtomicReference<>();
        }
        hashBuckets = atomicReferenceArr;
    }

    @JvmStatic
    public static final void recycle(@NotNull Segment segment) {
        AtomicReference<Segment> m65044a;
        Segment segment2;
        Segment andSet;
        Intrinsics.checkNotNullParameter(segment, "segment");
        if (!(segment.next == null && segment.prev == null)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (segment.shared || (andSet = (m65044a = INSTANCE.m65044a()).getAndSet((segment2 = LOCK))) == segment2) {
            return;
        }
        int i = andSet != null ? andSet.limit : 0;
        if (i >= MAX_SIZE) {
            m65044a.set(andSet);
            return;
        }
        segment.next = andSet;
        segment.pos = 0;
        segment.limit = i + 8192;
        m65044a.set(segment);
    }

    @JvmStatic
    @NotNull
    public static final Segment take() {
        AtomicReference<Segment> m65044a = INSTANCE.m65044a();
        Segment segment = LOCK;
        Segment andSet = m65044a.getAndSet(segment);
        if (andSet == segment) {
            return new Segment();
        }
        if (andSet == null) {
            m65044a.set(null);
            return new Segment();
        }
        m65044a.set(andSet.next);
        andSet.next = null;
        andSet.limit = 0;
        return andSet;
    }

    /* renamed from: a */
    public final AtomicReference<Segment> m65044a() {
        return hashBuckets[(int) (Thread.currentThread().getId() & (HASH_BUCKET_COUNT - 1))];
    }

    public final int getByteCount() {
        Segment segment = m65044a().get();
        if (segment == null) {
            return 0;
        }
        return segment.limit;
    }

    public final int getMAX_SIZE() {
        return MAX_SIZE;
    }
}
