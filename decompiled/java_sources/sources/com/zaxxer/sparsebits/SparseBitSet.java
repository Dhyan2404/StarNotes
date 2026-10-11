package com.zaxxer.sparsebits;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

/* loaded from: classes10.dex */
public class SparseBitSet implements Cloneable, Serializable {
    protected static final int INDEX_SIZE = 31;
    protected static final int LENGTH2 = 32;
    protected static final int LENGTH3 = 32;
    protected static final int LENGTH4 = 64;
    protected static final int LEVEL1 = 15;
    protected static final int LEVEL2 = 5;
    protected static final int LEVEL3 = 5;
    protected static final int LEVEL4 = 6;
    protected static final int MASK2 = 31;
    protected static final int MASK3 = 31;
    protected static final int MAX_LENGTH1 = 32768;
    protected static final int SHIFT1 = 10;
    protected static final int SHIFT2 = 5;
    protected static final int SHIFT3 = 6;
    protected static final int UNIT = 65536;
    static int compactionCountDefault = 2;
    private static final long serialVersionUID = -6663013367427929992L;
    protected transient long[][][] bits;
    protected transient int bitsLength;
    protected transient Cache cache;
    protected transient int compactionCount;
    protected transient EqualsStrategy equalsStrategy;
    protected transient long[] spare;
    protected transient UpdateStrategy updateStrategy;
    static final long[] ZERO_BLOCK = new long[32];
    protected static final transient AndStrategy andStrategy = new AndStrategy();
    protected static final transient AndNotStrategy andNotStrategy = new AndNotStrategy();
    protected static final transient ClearStrategy clearStrategy = new ClearStrategy();
    protected static final transient CopyStrategy copyStrategy = new CopyStrategy();
    protected static final transient FlipStrategy flipStrategy = new FlipStrategy();
    protected static transient IntersectsStrategy intersectsStrategy = new IntersectsStrategy();
    protected static final transient OrStrategy orStrategy = new OrStrategy();
    protected static final transient SetStrategy setStrategy = new SetStrategy();
    protected static final transient XorStrategy xorStrategy = new XorStrategy();

    /* loaded from: classes10.dex */
    public static abstract class AbstractStrategy {

        /* renamed from: a */
        public static final int f94474a = 1;

        /* renamed from: b */
        public static final int f94475b = 2;

        /* renamed from: c */
        public static final int f94476c = 4;

        /* renamed from: d */
        public static final int f94477d = 8;

        public abstract boolean block(int i, int i2, int i3, long[] jArr, long[] jArr2);

        public void finish(int i, int i2) {
        }

        public final boolean isZeroBlock(long[] jArr) {
            for (long j : jArr) {
                if (j != 0) {
                    return false;
                }
            }
            return true;
        }

        public abstract int properties();

        public abstract boolean start(SparseBitSet sparseBitSet);

        public abstract boolean word(int i, int i2, long[] jArr, long[] jArr2, long j);
    }

    /* loaded from: classes10.dex */
    public static class AndNotStrategy extends AbstractStrategy {
        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean block(int i, int i2, int i3, long[] jArr, long[] jArr2) {
            boolean z = true;
            while (i2 != i3) {
                long j = jArr[i2] & (~jArr2[i2]);
                jArr[i2] = j;
                z &= j == 0;
                i2++;
            }
            return z;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public int properties() {
            return 11;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean start(SparseBitSet sparseBitSet) {
            sparseBitSet.getClass();
            return true;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean word(int i, int i2, long[] jArr, long[] jArr2, long j) {
            long j2 = jArr[i2] & (~(jArr2[i2] & j));
            jArr[i2] = j2;
            return j2 == 0;
        }
    }

    /* loaded from: classes10.dex */
    public static class AndStrategy extends AbstractStrategy {
        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean block(int i, int i2, int i3, long[] jArr, long[] jArr2) {
            boolean z = true;
            while (i2 != i3) {
                long j = jArr[i2] & jArr2[i2];
                jArr[i2] = j;
                z &= j == 0;
                i2++;
            }
            return z;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public int properties() {
            return 7;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean start(SparseBitSet sparseBitSet) {
            sparseBitSet.getClass();
            return true;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean word(int i, int i2, long[] jArr, long[] jArr2, long j) {
            long j2 = jArr[i2] & ((~j) | jArr2[i2]);
            jArr[i2] = j2;
            return j2 == 0;
        }
    }

    /* loaded from: classes10.dex */
    public class Cache {
        protected transient int a2Count;
        protected transient int a3Count;
        protected transient int cardinality;
        protected transient int count;
        protected transient int hash;
        protected transient int length;
        protected transient int size;

        public Cache() {
        }
    }

    /* loaded from: classes10.dex */
    public static class ClearStrategy extends AbstractStrategy {
        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean block(int i, int i2, int i3, long[] jArr, long[] jArr2) {
            if (i2 == 0 && i3 == 32) {
                return true;
            }
            while (i2 != i3) {
                jArr[i2] = 0;
                i2++;
            }
            return true;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public int properties() {
            return 3;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean start(SparseBitSet sparseBitSet) {
            return true;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean word(int i, int i2, long[] jArr, long[] jArr2, long j) {
            long j2 = jArr[i2] & (~j);
            jArr[i2] = j2;
            return j2 == 0;
        }
    }

    /* loaded from: classes10.dex */
    public static class CopyStrategy extends AbstractStrategy {
        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean block(int i, int i2, int i3, long[] jArr, long[] jArr2) {
            boolean z = true;
            while (i2 != i3) {
                long j = jArr2[i2];
                jArr[i2] = j;
                z &= j == 0;
                i2++;
            }
            return z;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public int properties() {
            return 5;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean start(SparseBitSet sparseBitSet) {
            return true;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean word(int i, int i2, long[] jArr, long[] jArr2, long j) {
            long j2 = jArr2[i2] & j;
            jArr[i2] = j2;
            return j2 == 0;
        }
    }

    /* loaded from: classes10.dex */
    public static class EqualsStrategy extends AbstractStrategy {

        /* renamed from: e */
        public boolean f94479e;

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean block(int i, int i2, int i3, long[] jArr, long[] jArr2) {
            boolean z = true;
            while (i2 != i3) {
                long j = jArr[i2];
                boolean z2 = false;
                this.f94479e &= j == jArr2[i2];
                if (j == 0) {
                    z2 = true;
                }
                z &= z2;
                i2++;
            }
            return z;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public int properties() {
            return 1;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean start(SparseBitSet sparseBitSet) {
            sparseBitSet.getClass();
            this.f94479e = true;
            return false;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean word(int i, int i2, long[] jArr, long[] jArr2, long j) {
            long j2 = jArr[i2];
            this.f94479e &= (j2 & j) == (jArr2[i2] & j);
            return j2 == 0;
        }
    }

    /* loaded from: classes10.dex */
    public static class FlipStrategy extends AbstractStrategy {
        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean block(int i, int i2, int i3, long[] jArr, long[] jArr2) {
            boolean z = true;
            while (i2 != i3) {
                long j = ~jArr[i2];
                jArr[i2] = j;
                z &= j == 0;
                i2++;
            }
            return z;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public int properties() {
            return 0;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean start(SparseBitSet sparseBitSet) {
            return true;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean word(int i, int i2, long[] jArr, long[] jArr2, long j) {
            long j2 = jArr[i2] ^ j;
            jArr[i2] = j2;
            return j2 == 0;
        }
    }

    /* loaded from: classes10.dex */
    public static class IntersectsStrategy extends AbstractStrategy {
        protected boolean result;

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean block(int i, int i2, int i3, long[] jArr, long[] jArr2) {
            boolean z = true;
            while (i2 != i3) {
                long j = jArr[i2];
                boolean z2 = false;
                this.result |= (jArr2[i2] & j) != 0;
                if (j == 0) {
                    z2 = true;
                }
                z &= z2;
                i2++;
            }
            return z;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public int properties() {
            return 3;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean start(SparseBitSet sparseBitSet) {
            sparseBitSet.getClass();
            this.result = false;
            return false;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean word(int i, int i2, long[] jArr, long[] jArr2, long j) {
            long j2 = jArr[i2];
            this.result |= ((jArr2[i2] & j2) & j) != 0;
            return j2 == 0;
        }
    }

    /* loaded from: classes10.dex */
    public static class OrStrategy extends AbstractStrategy {
        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean block(int i, int i2, int i3, long[] jArr, long[] jArr2) {
            boolean z = true;
            while (i2 != i3) {
                long j = jArr[i2] | jArr2[i2];
                jArr[i2] = j;
                z &= j == 0;
                i2++;
            }
            return z;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public int properties() {
            return 9;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean start(SparseBitSet sparseBitSet) {
            sparseBitSet.getClass();
            return true;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean word(int i, int i2, long[] jArr, long[] jArr2, long j) {
            long j2 = jArr[i2] | (jArr2[i2] & j);
            jArr[i2] = j2;
            return j2 == 0;
        }
    }

    /* loaded from: classes10.dex */
    public static class SetStrategy extends AbstractStrategy {
        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean block(int i, int i2, int i3, long[] jArr, long[] jArr2) {
            while (i2 != i3) {
                jArr[i2] = -1;
                i2++;
            }
            return false;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public int properties() {
            return 0;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean start(SparseBitSet sparseBitSet) {
            return true;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean word(int i, int i2, long[] jArr, long[] jArr2, long j) {
            jArr[i2] = jArr[i2] | j;
            return false;
        }
    }

    /* loaded from: classes10.dex */
    public enum Statistics {
        Size,
        Length,
        Cardinality,
        Total_words,
        Set_array_length,
        Set_array_max_length,
        Level2_areas,
        Level2_area_length,
        Level3_blocks,
        Level3_block_length,
        Compaction_count_value
    }

    /* loaded from: classes10.dex */
    public class UpdateStrategy extends AbstractStrategy {
        protected transient int cardinality;
        protected transient int count;
        protected transient long hash;
        protected transient int wMax;
        protected transient int wMin;
        protected transient long wordMax;
        protected transient long wordMin;

        public UpdateStrategy() {
        }

        /* renamed from: a */
        public final void m60867a(int i, long j) {
            this.count++;
            this.hash ^= (i + 1) * j;
            if (this.wMin < 0) {
                this.wMin = i;
                this.wordMin = j;
            }
            this.wMax = i;
            this.wordMax = j;
            this.cardinality += Long.bitCount(j);
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean block(int i, int i2, int i3, long[] jArr, long[] jArr2) {
            boolean z = true;
            for (int i4 = 0; i4 != i3; i4++) {
                long j = jArr[i4];
                if (j != 0) {
                    m60867a(i + i4, j);
                    z = false;
                }
            }
            return z;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public void finish(int i, int i2) {
            Cache cache = SparseBitSet.this.cache;
            cache.a2Count = i;
            cache.a3Count = i2;
            cache.count = this.count;
            cache.cardinality = this.cardinality;
            cache.length = ((this.wMax + 1) * 64) - Long.numberOfLeadingZeros(this.wordMax);
            Cache cache2 = SparseBitSet.this.cache;
            cache2.size = (cache2.length - (this.wMin * 64)) - Long.numberOfTrailingZeros(this.wordMin);
            Cache cache3 = SparseBitSet.this.cache;
            long j = this.hash;
            cache3.hash = (int) (j ^ (j >> 32));
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public int properties() {
            return 3;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean start(SparseBitSet sparseBitSet) {
            this.hash = 1234L;
            this.wMin = -1;
            this.wordMin = 0L;
            this.wMax = 0;
            this.wordMax = 0L;
            this.count = 0;
            this.cardinality = 0;
            return false;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean word(int i, int i2, long[] jArr, long[] jArr2, long j) {
            long j2 = jArr[i2];
            long j3 = j & j2;
            if (j3 != 0) {
                m60867a(i + i2, j3);
            }
            return j2 == 0;
        }
    }

    /* loaded from: classes10.dex */
    public static class XorStrategy extends AbstractStrategy {
        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean block(int i, int i2, int i3, long[] jArr, long[] jArr2) {
            boolean z = true;
            while (i2 != i3) {
                long j = jArr[i2] ^ jArr2[i2];
                jArr[i2] = j;
                z &= j == 0;
                i2++;
            }
            return z;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public int properties() {
            return 9;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean start(SparseBitSet sparseBitSet) {
            sparseBitSet.getClass();
            return true;
        }

        @Override // com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy
        public boolean word(int i, int i2, long[] jArr, long[] jArr2, long j) {
            long j2 = jArr[i2] ^ (jArr2[i2] & j);
            jArr[i2] = j2;
            return j2 == 0;
        }
    }

    public SparseBitSet(int i, int i2) throws NegativeArraySizeException {
        if (i >= 0) {
            resize(i - 1);
            this.compactionCount = i2;
            constructorHelper();
            statisticsUpdate();
            return;
        }
        throw new NegativeArraySizeException("(requested capacity=" + i + ") < 0");
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.compactionCount = objectInputStream.readInt();
        resize(objectInputStream.readInt());
        int readInt = objectInputStream.readInt();
        for (int i = 0; i != readInt; i++) {
            int readInt2 = objectInputStream.readInt();
            int i2 = readInt2 & 31;
            int i3 = (readInt2 >> 5) & 31;
            int i4 = readInt2 >> 10;
            long readLong = objectInputStream.readLong();
            long[][][] jArr = this.bits;
            long[][] jArr2 = jArr[i4];
            if (jArr2 == null) {
                jArr2 = new long[32];
                jArr[i4] = jArr2;
            }
            long[] jArr3 = jArr2[i3];
            if (jArr3 == null) {
                jArr3 = new long[32];
                jArr2[i3] = jArr3;
            }
            jArr3[i2] = readLong;
        }
        constructorHelper();
        statisticsUpdate();
        if (readInt != this.cache.count) {
            throw new InternalError("count of entries not consistent");
        }
        if (objectInputStream.readInt() != this.cache.hash) {
            throw new IOException("deserialized hashCode mis-match");
        }
    }

    public static void throwIndexOutOfBoundsException(int i, int i2) throws IndexOutOfBoundsException {
        String str;
        if (i < 0) {
            str = "(i=" + i + ") < 0";
        } else {
            str = "";
        }
        if (i == Integer.MAX_VALUE) {
            str = str + "(i=" + i + MotionUtils.f31762d;
        }
        if (i2 < 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(str.isEmpty() ? "" : ", ");
            sb.append("(j=");
            sb.append(i2);
            sb.append(") < 0");
            str = sb.toString();
        }
        if (i > i2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(str.isEmpty() ? "" : ", ");
            sb2.append("(i=");
            sb2.append(i);
            sb2.append(") > (j=");
            sb2.append(i2);
            sb2.append(MotionUtils.f31762d);
            str = sb2.toString();
        }
        throw new IndexOutOfBoundsException(str);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException, InternalError {
        statisticsUpdate();
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this.compactionCount);
        objectOutputStream.writeInt(this.cache.length);
        int i = this.cache.count;
        objectOutputStream.writeInt(i);
        long[][][] jArr = this.bits;
        int length = jArr.length;
        for (int i2 = 0; i2 != length; i2++) {
            long[][] jArr2 = jArr[i2];
            if (jArr2 != null) {
                for (int i3 = 0; i3 != 32; i3++) {
                    long[] jArr3 = jArr2[i3];
                    if (jArr3 != null) {
                        int i4 = (i2 << 10) + (i3 << 5);
                        for (int i5 = 0; i5 != 32; i5++) {
                            long j = jArr3[i5];
                            if (j != 0) {
                                objectOutputStream.writeInt(i4 + i5);
                                objectOutputStream.writeLong(j);
                                i--;
                            }
                        }
                    }
                }
            }
        }
        if (i != 0) {
            throw new InternalError("count of entries not consistent");
        }
        objectOutputStream.writeInt(this.cache.hash);
    }

    public void and(int i, boolean z) throws IndexOutOfBoundsException {
        if (i + 1 >= 1) {
            if (z) {
                return;
            }
            clear(i);
        } else {
            throw new IndexOutOfBoundsException("i=" + i);
        }
    }

    public void andNot(int i, boolean z) {
        if (i + 1 >= 1) {
            if (z) {
                clear(i);
            }
        } else {
            throw new IndexOutOfBoundsException("i=" + i);
        }
    }

    public int cardinality() {
        statisticsUpdate();
        return this.cache.cardinality;
    }

    public void clear(int i) {
        long[] jArr;
        if (i + 1 >= 1) {
            if (i >= this.bitsLength) {
                return;
            }
            int i2 = i >> 6;
            long[][] jArr2 = this.bits[i2 >> 10];
            if (jArr2 == null || (jArr = jArr2[(i2 >> 5) & 31]) == null) {
                return;
            }
            int i3 = i2 & 31;
            jArr[i3] = jArr[i3] & (~(1 << i));
            this.cache.hash = 0;
            return;
        }
        throw new IndexOutOfBoundsException("i=" + i);
    }

    public final void constructorHelper() {
        this.spare = new long[32];
        this.cache = new Cache();
        this.updateStrategy = new UpdateStrategy();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SparseBitSet)) {
            return false;
        }
        SparseBitSet sparseBitSet = (SparseBitSet) obj;
        if (this == sparseBitSet) {
            return true;
        }
        if (this.equalsStrategy == null) {
            this.equalsStrategy = new EqualsStrategy();
        }
        setScanner(0, Math.max(this.bitsLength, sparseBitSet.bitsLength), sparseBitSet, this.equalsStrategy);
        return this.equalsStrategy.f94479e;
    }

    public void flip(int i) {
        if (i + 1 >= 1) {
            int i2 = i >> 6;
            int i3 = i2 >> 10;
            int i4 = (i2 >> 5) & 31;
            if (i >= this.bitsLength) {
                resize(i);
            }
            long[][][] jArr = this.bits;
            long[][] jArr2 = jArr[i3];
            if (jArr2 == null) {
                jArr2 = new long[32];
                jArr[i3] = jArr2;
            }
            long[] jArr3 = jArr2[i4];
            if (jArr3 == null) {
                jArr3 = new long[32];
                jArr2[i4] = jArr3;
            }
            int i5 = i2 & 31;
            jArr3[i5] = jArr3[i5] ^ (1 << i);
            this.cache.hash = 0;
            return;
        }
        throw new IndexOutOfBoundsException("i=" + i);
    }

    public boolean get(int i) {
        long[][] jArr;
        long[] jArr2;
        if (i + 1 >= 1) {
            int i2 = i >> 6;
            if (i < this.bitsLength && (jArr = this.bits[i2 >> 10]) != null && (jArr2 = jArr[(i2 >> 5) & 31]) != null) {
                if (((1 << i) & jArr2[i2 & 31]) != 0) {
                    return true;
                }
            }
            return false;
        }
        throw new IndexOutOfBoundsException("i=" + i);
    }

    public int hashCode() {
        statisticsUpdate();
        return this.cache.hash;
    }

    public boolean intersects(int i, int i2, SparseBitSet sparseBitSet) throws IndexOutOfBoundsException {
        setScanner(i, i2, sparseBitSet, intersectsStrategy);
        return intersectsStrategy.result;
    }

    public boolean isEmpty() {
        statisticsUpdate();
        return this.cache.cardinality == 0;
    }

    public int length() {
        statisticsUpdate();
        return this.cache.length;
    }

    public int nextClearBit(int i) {
        long[][] jArr;
        long[] jArr2;
        if (i < 0) {
            throw new IndexOutOfBoundsException("i=" + i);
        }
        int i2 = i >> 6;
        int i3 = i2 & 31;
        int i4 = (i2 >> 5) & 31;
        int i5 = i2 >> 10;
        long j = -1;
        long j2 = (-1) << i;
        long[][][] jArr3 = this.bits;
        int length = jArr3.length;
        if (i5 < length && (jArr = jArr3[i5]) != null && (jArr2 = jArr[i4]) != null) {
            j2 &= ~jArr2[i3];
            if (j2 == 0) {
                int i6 = i2 + 1;
                i5 = i6 >> 10;
                i4 = (i6 >> 5) & 31;
                i3 = i6 & 31;
                loop0: while (i5 != length) {
                    long[][] jArr4 = this.bits[i5];
                    if (jArr4 == null) {
                        break;
                    }
                    while (i4 != 32) {
                        long[] jArr5 = jArr4[i4];
                        if (jArr5 == null) {
                            break loop0;
                        }
                        while (i3 != 32) {
                            j = ~jArr5[i3];
                            if (j != 0) {
                                break loop0;
                            }
                            i3++;
                        }
                        i4++;
                        i3 = 0;
                    }
                    i5++;
                    i3 = 0;
                    i4 = 0;
                }
                j2 = j;
            }
        }
        int numberOfTrailingZeros = ((((i5 << 10) + (i4 << 5)) + i3) << 6) + Long.numberOfTrailingZeros(j2);
        if (numberOfTrailingZeros == Integer.MAX_VALUE) {
            return -1;
        }
        return numberOfTrailingZeros;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
    
        if (r8 == 0) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int nextSetBit(int r13) {
        /*
            r12 = this;
            if (r13 < 0) goto L6d
            int r0 = r13 >> 6
            r1 = r0 & 31
            int r2 = r0 >> 5
            r2 = r2 & 31
            int r3 = r0 >> 10
            long[][][] r4 = r12.bits
            int r5 = r4.length
            r6 = 0
            if (r3 >= r5) goto L5b
            r4 = r4[r3]
            if (r4 == 0) goto L26
            r4 = r4[r2]
            if (r4 == 0) goto L26
            r8 = r4[r1]
            r10 = -1
            long r10 = r10 << r13
            long r8 = r8 & r10
            int r13 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r13 != 0) goto L5a
            goto L27
        L26:
            r8 = r6
        L27:
            int r0 = r0 + 1
            r13 = r0 & 31
            int r1 = r0 >> 5
            r1 = r1 & 31
            int r0 = r0 >> 10
            r3 = r0
            r2 = r1
            r1 = r13
        L34:
            if (r3 == r5) goto L5a
            long[][][] r13 = r12.bits
            r13 = r13[r3]
            r0 = 0
            if (r13 == 0) goto L55
        L3d:
            r4 = 32
            if (r2 == r4) goto L55
            r10 = r13[r2]
            if (r10 == 0) goto L51
        L45:
            if (r1 == r4) goto L51
            r8 = r10[r1]
            int r11 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r11 == 0) goto L4e
            goto L5a
        L4e:
            int r1 = r1 + 1
            goto L45
        L51:
            int r2 = r2 + 1
            r1 = r0
            goto L3d
        L55:
            int r3 = r3 + 1
            r1 = r0
            r2 = r1
            goto L34
        L5a:
            r6 = r8
        L5b:
            if (r3 < r5) goto L5f
            r12 = -1
            goto L6c
        L5f:
            int r12 = r3 << 10
            int r13 = r2 << 5
            int r12 = r12 + r13
            int r12 = r12 + r1
            int r12 = r12 << 6
            int r13 = java.lang.Long.numberOfTrailingZeros(r6)
            int r12 = r12 + r13
        L6c:
            return r12
        L6d:
            java.lang.IndexOutOfBoundsException r12 = new java.lang.IndexOutOfBoundsException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "i="
            r0.append(r1)
            r0.append(r13)
            java.lang.String r13 = r0.toString()
            r12.<init>(r13)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.zaxxer.sparsebits.SparseBitSet.nextSetBit(int):int");
    }

    public final void nullify(int i) {
        int length = this.bits.length;
        if (i < length) {
            while (i != length) {
                this.bits[i] = null;
                i++;
            }
            this.cache.hash = 0;
        }
    }

    /* renamed from: or */
    public void m60865or(int i, boolean z) {
        if (i + 1 >= 1) {
            if (z) {
                set(i);
            }
        } else {
            throw new IndexOutOfBoundsException("i=" + i);
        }
    }

    public int previousClearBit(int i) {
        if (i < 0) {
            if (i == -1) {
                return -1;
            }
            throw new IndexOutOfBoundsException("i=" + i);
        }
        long[][][] jArr = this.bits;
        int i2 = i >> 6;
        int i3 = i2 & 31;
        int i4 = (i2 >> 5) & 31;
        int i5 = i2 >> 10;
        int length = jArr.length - 1;
        if (i5 > length) {
            return i;
        }
        int min = Math.min(i5, length);
        int i6 = i % 64;
        int i7 = min;
        int i8 = i3;
        int i9 = i4;
        while (i7 >= 0) {
            long[][] jArr2 = jArr[i7];
            if (jArr2 == null) {
                int i10 = (((i7 << 10) + (i9 << 5)) + i8) << 6;
                if (min != i7) {
                    i6 = 63;
                }
                return i10 + i6;
            }
            while (i9 >= 0) {
                long[] jArr3 = jArr2[i9];
                if (jArr3 == null) {
                    int i11 = (((i7 << 10) + (i9 << 5)) + i8) << 6;
                    if (i4 != i9) {
                        i6 = 63;
                    }
                    return i11 + i6;
                }
                while (i8 >= 0) {
                    long j = jArr3[i8];
                    if (j == 0) {
                        int i12 = (((i7 << 10) + (i9 << 5)) + i8) << 6;
                        if (i3 != i8) {
                            i6 = 63;
                        }
                        return i12 + i6;
                    }
                    for (int i13 = i6; i13 >= 0; i13--) {
                        if ((j & (1 << i13)) == 0) {
                            return ((((i7 << 10) + (i9 << 5)) + i8) << 6) + i13;
                        }
                    }
                    i8--;
                }
                i9--;
                i8 = 31;
            }
            i7--;
            i9 = 31;
            i8 = 31;
        }
        return -1;
    }

    public int previousSetBit(int i) {
        int i2;
        int i3;
        int i4;
        if (i < 0) {
            if (i == -1) {
                return -1;
            }
            throw new IndexOutOfBoundsException("i=" + i);
        }
        long[][][] jArr = this.bits;
        int i5 = i >> 6;
        int i6 = i5 >> 10;
        boolean z = true;
        int length = jArr.length - 1;
        if (i6 > length) {
            i6 = length;
            i4 = 63;
            i2 = 31;
            i3 = 31;
        } else {
            i2 = (i5 >> 5) & 31;
            i3 = i5 & 31;
            i4 = i % 64;
        }
        while (i6 >= 0) {
            long[][] jArr2 = jArr[i6];
            if (jArr2 != null) {
                while (i2 >= 0) {
                    long[] jArr3 = jArr2[i2];
                    if (jArr3 != null) {
                        while (i3 >= 0) {
                            long j = jArr3[i3];
                            if (j != 0) {
                                for (int i7 = z ? i4 : 63; i7 >= 0; i7--) {
                                    if ((j & (1 << i7)) != 0) {
                                        return ((((i6 << 10) + (i2 << 5)) + i3) << 6) + i7;
                                    }
                                }
                            }
                            i3--;
                            z = false;
                        }
                    }
                    i2--;
                    i3 = 31;
                    z = false;
                }
            }
            i6--;
            i2 = 31;
            i3 = 31;
            z = false;
        }
        return -1;
    }

    public final void resize(int i) {
        int i2 = (i >> 6) >> 10;
        int highestOneBit = Integer.highestOneBit(i2);
        if (highestOneBit == 0) {
            highestOneBit = 1;
        }
        if (i2 >= highestOneBit) {
            highestOneBit <<= 1;
        }
        if (highestOneBit > 32768) {
            highestOneBit = 32768;
        }
        long[][][] jArr = this.bits;
        int length = jArr != null ? jArr.length : 0;
        if (highestOneBit != length || jArr == null) {
            long[][][] jArr2 = new long[highestOneBit][];
            if (length != 0) {
                System.arraycopy(jArr, 0, jArr2, 0, Math.min(length, highestOneBit));
                nullify(0);
            }
            this.bits = jArr2;
            this.bitsLength = highestOneBit == 32768 ? Integer.MAX_VALUE : 65536 * highestOneBit;
        }
    }

    public void set(int i) {
        if (i + 1 >= 1) {
            int i2 = i >> 6;
            int i3 = i2 >> 10;
            int i4 = (i2 >> 5) & 31;
            if (i >= this.bitsLength) {
                resize(i);
            }
            long[][][] jArr = this.bits;
            long[][] jArr2 = jArr[i3];
            if (jArr2 == null) {
                jArr2 = new long[32];
                jArr[i3] = jArr2;
            }
            long[] jArr3 = jArr2[i4];
            if (jArr3 == null) {
                jArr3 = new long[32];
                jArr2[i4] = jArr3;
            }
            int i5 = i2 & 31;
            jArr3[i5] = jArr3[i5] | (1 << i);
            this.cache.hash = 0;
            return;
        }
        throw new IndexOutOfBoundsException("i=" + i);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02c5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ba A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x02e8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0129 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0168 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setScanner(int r49, int r50, com.zaxxer.sparsebits.SparseBitSet r51, com.zaxxer.sparsebits.SparseBitSet.AbstractStrategy r52) throws java.lang.IndexOutOfBoundsException {
        /*
            Method dump skipped, instructions count: 773
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.zaxxer.sparsebits.SparseBitSet.setScanner(int, int, com.zaxxer.sparsebits.SparseBitSet, com.zaxxer.sparsebits.SparseBitSet$AbstractStrategy):void");
    }

    public int size() {
        statisticsUpdate();
        return this.cache.size;
    }

    public String statistics() {
        return statistics(null);
    }

    public final void statisticsUpdate() {
        if (this.cache.hash != 0) {
            return;
        }
        setScanner(0, this.bitsLength, null, this.updateStrategy);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0043 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0011 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r5 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = 200(0xc8, float:2.8E-43)
            r0.<init>(r1)
            r1 = 123(0x7b, float:1.72E-43)
            r0.append(r1)
            r1 = 0
            int r1 = r5.nextSetBit(r1)
        L11:
            if (r1 < 0) goto L49
            r0.append(r1)
            int r2 = r1 + 1
            int r2 = r5.nextSetBit(r2)
            int r3 = r5.compactionCount
            if (r3 <= 0) goto L40
            if (r2 >= 0) goto L23
            goto L49
        L23:
            int r3 = r5.nextClearBit(r1)
            if (r3 >= 0) goto L2c
            r3 = 2147483647(0x7fffffff, float:NaN)
        L2c:
            int r4 = r5.compactionCount
            int r1 = r1 + r4
            if (r1 >= r3) goto L40
            java.lang.String r1 = ".."
            r0.append(r1)
            int r1 = r3 + (-1)
            r0.append(r1)
            int r1 = r5.nextSetBit(r3)
            goto L41
        L40:
            r1 = r2
        L41:
            if (r1 < 0) goto L11
            java.lang.String r2 = ", "
            r0.append(r2)
            goto L11
        L49:
            r5 = 125(0x7d, float:1.75E-43)
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.zaxxer.sparsebits.SparseBitSet.toString():java.lang.String");
    }

    public void toStringCompaction(int i) {
        this.compactionCount = i;
    }

    public void xor(int i, boolean z) {
        if (i + 1 >= 1) {
            if (z) {
                flip(i);
            }
        } else {
            throw new IndexOutOfBoundsException("i=" + i);
        }
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SparseBitSet m72613clone() {
        try {
            SparseBitSet sparseBitSet = (SparseBitSet) super.clone();
            sparseBitSet.bits = null;
            sparseBitSet.resize(1);
            sparseBitSet.constructorHelper();
            sparseBitSet.equalsStrategy = null;
            sparseBitSet.setScanner(0, this.bitsLength, this, copyStrategy);
            return sparseBitSet;
        } catch (CloneNotSupportedException e) {
            throw new InternalError(e.getMessage());
        }
    }

    public String statistics(String[] strArr) {
        statisticsUpdate();
        int length = Statistics.values().length;
        String[] strArr2 = new String[length];
        strArr2[Statistics.Size.ordinal()] = Integer.toString(size());
        strArr2[Statistics.Length.ordinal()] = Integer.toString(length());
        strArr2[Statistics.Cardinality.ordinal()] = Integer.toString(cardinality());
        strArr2[Statistics.Total_words.ordinal()] = Integer.toString(this.cache.count);
        strArr2[Statistics.Set_array_length.ordinal()] = Integer.toString(this.bits.length);
        strArr2[Statistics.Set_array_max_length.ordinal()] = Integer.toString(32768);
        strArr2[Statistics.Level2_areas.ordinal()] = Integer.toString(this.cache.a2Count);
        strArr2[Statistics.Level2_area_length.ordinal()] = Integer.toString(32);
        strArr2[Statistics.Level3_blocks.ordinal()] = Integer.toString(this.cache.a3Count);
        strArr2[Statistics.Level3_block_length.ordinal()] = Integer.toString(32);
        strArr2[Statistics.Compaction_count_value.ordinal()] = Integer.toString(this.compactionCount);
        int i = 0;
        for (Statistics statistics : Statistics.values()) {
            i = Math.max(i, statistics.name().length());
        }
        StringBuilder sb = new StringBuilder();
        for (Statistics statistics2 : Statistics.values()) {
            sb.append(statistics2.name());
            for (int i2 = 0; i2 != i - statistics2.name().length(); i2++) {
                sb.append(' ');
            }
            sb.append(CloudStorageConstants.OPERATION_EQUAL);
            sb.append(strArr2[statistics2.ordinal()]);
            sb.append('\n');
        }
        for (int i3 = 0; i3 != sb.length(); i3++) {
            if (sb.charAt(i3) == '_') {
                sb.setCharAt(i3, ' ');
            }
        }
        if (strArr != null) {
            System.arraycopy(strArr2, 0, strArr, 0, Math.min(strArr.length, length));
        }
        return sb.toString();
    }

    public void toStringCompaction(boolean z) {
        if (z) {
            compactionCountDefault = this.compactionCount;
        }
    }

    public void and(int i, int i2, SparseBitSet sparseBitSet) throws IndexOutOfBoundsException {
        setScanner(i, i2, sparseBitSet, andStrategy);
    }

    public void andNot(int i, int i2, SparseBitSet sparseBitSet) throws IndexOutOfBoundsException {
        setScanner(i, i2, sparseBitSet, andNotStrategy);
    }

    public SparseBitSet get(int i, int i2) throws IndexOutOfBoundsException {
        SparseBitSet sparseBitSet = new SparseBitSet(i2, this.compactionCount);
        sparseBitSet.setScanner(i, i2, this, copyStrategy);
        return sparseBitSet;
    }

    public boolean intersects(SparseBitSet sparseBitSet) {
        setScanner(0, Math.max(this.bitsLength, sparseBitSet.bitsLength), sparseBitSet, intersectsStrategy);
        return intersectsStrategy.result;
    }

    /* renamed from: or */
    public void m60864or(int i, int i2, SparseBitSet sparseBitSet) throws IndexOutOfBoundsException {
        setScanner(i, i2, sparseBitSet, orStrategy);
    }

    public void xor(int i, int i2, SparseBitSet sparseBitSet) throws IndexOutOfBoundsException {
        setScanner(i, i2, sparseBitSet, xorStrategy);
    }

    public void and(SparseBitSet sparseBitSet) {
        nullify(Math.min(this.bits.length, sparseBitSet.bits.length));
        setScanner(0, Math.min(this.bitsLength, sparseBitSet.bitsLength), sparseBitSet, andStrategy);
    }

    public void andNot(SparseBitSet sparseBitSet) {
        setScanner(0, Math.min(this.bitsLength, sparseBitSet.bitsLength), sparseBitSet, andNotStrategy);
    }

    /* renamed from: or */
    public void m60866or(SparseBitSet sparseBitSet) {
        setScanner(0, sparseBitSet.bitsLength, sparseBitSet, orStrategy);
    }

    public void xor(SparseBitSet sparseBitSet) {
        setScanner(0, sparseBitSet.bitsLength, sparseBitSet, xorStrategy);
    }

    public static SparseBitSet andNot(SparseBitSet sparseBitSet, SparseBitSet sparseBitSet2) {
        SparseBitSet m72613clone = sparseBitSet.m72613clone();
        m72613clone.andNot(sparseBitSet2);
        return m72613clone;
    }

    /* renamed from: or */
    public static SparseBitSet m60863or(SparseBitSet sparseBitSet, SparseBitSet sparseBitSet2) {
        SparseBitSet m72613clone = sparseBitSet.m72613clone();
        m72613clone.m60866or(sparseBitSet2);
        return m72613clone;
    }

    public static SparseBitSet xor(SparseBitSet sparseBitSet, SparseBitSet sparseBitSet2) {
        SparseBitSet m72613clone = sparseBitSet.m72613clone();
        m72613clone.xor(sparseBitSet2);
        return m72613clone;
    }

    public static SparseBitSet and(SparseBitSet sparseBitSet, SparseBitSet sparseBitSet2) {
        SparseBitSet m72613clone = sparseBitSet.m72613clone();
        m72613clone.and(sparseBitSet2);
        return m72613clone;
    }

    public SparseBitSet() {
        this(1, compactionCountDefault);
    }

    public void clear(int i, int i2) throws IndexOutOfBoundsException {
        setScanner(i, i2, null, clearStrategy);
    }

    public SparseBitSet(int i) throws NegativeArraySizeException {
        this(i, compactionCountDefault);
    }

    public void clear() {
        nullify(0);
    }

    public void flip(int i, int i2) throws IndexOutOfBoundsException {
        setScanner(i, i2, null, flipStrategy);
    }

    public void set(int i, boolean z) {
        if (z) {
            set(i);
        } else {
            clear(i);
        }
    }

    public void set(int i, int i2) throws IndexOutOfBoundsException {
        setScanner(i, i2, null, setStrategy);
    }

    public void set(int i, int i2, boolean z) {
        if (z) {
            set(i, i2);
        } else {
            clear(i, i2);
        }
    }
}
