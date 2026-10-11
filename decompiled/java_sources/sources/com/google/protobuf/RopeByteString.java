package com.google.protobuf;

import com.google.protobuf.ByteString;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public final class RopeByteString extends ByteString {
    static final int[] minLengthByDepth = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};
    private static final long serialVersionUID = 1;
    private final ByteString left;
    private final int leftLength;
    private final ByteString right;
    private final int totalLength;
    private final int treeDepth;

    /* renamed from: com.google.protobuf.RopeByteString$a */
    /* loaded from: classes6.dex */
    public class C6814a extends ByteString.AbstractC6648c {

        /* renamed from: e */
        public final C6816c f37778e;

        /* renamed from: f */
        public ByteString.ByteIterator f37779f = m29464b();

        public C6814a() {
            this.f37778e = new C6816c(RopeByteString.this, null);
        }

        /* JADX WARN: Type inference failed for: r1v4, types: [com.google.protobuf.ByteString$ByteIterator] */
        /* renamed from: b */
        public final ByteString.ByteIterator m29464b() {
            if (this.f37778e.hasNext()) {
                return this.f37778e.next().iterator2();
            }
            return null;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f37779f != null;
        }

        @Override // com.google.protobuf.ByteString.ByteIterator
        public byte nextByte() {
            ByteString.ByteIterator byteIterator = this.f37779f;
            if (byteIterator == null) {
                throw new NoSuchElementException();
            }
            byte nextByte = byteIterator.nextByte();
            if (!this.f37779f.hasNext()) {
                this.f37779f = m29464b();
            }
            return nextByte;
        }
    }

    /* renamed from: com.google.protobuf.RopeByteString$c */
    /* loaded from: classes6.dex */
    public static final class C6816c implements Iterator<ByteString.LeafByteString> {

        /* renamed from: e */
        public final ArrayDeque<RopeByteString> f37782e;

        /* renamed from: f */
        public ByteString.LeafByteString f37783f;

        public /* synthetic */ C6816c(ByteString byteString, C6814a c6814a) {
            this(byteString);
        }

        /* renamed from: a */
        public final ByteString.LeafByteString m29470a(ByteString root) {
            while (root instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) root;
                this.f37782e.push(ropeByteString);
                root = ropeByteString.left;
            }
            return (ByteString.LeafByteString) root;
        }

        /* renamed from: b */
        public final ByteString.LeafByteString m29471b() {
            ByteString.LeafByteString m29470a;
            do {
                ArrayDeque<RopeByteString> arrayDeque = this.f37782e;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    return null;
                }
                m29470a = m29470a(this.f37782e.pop().right);
            } while (m29470a.isEmpty());
            return m29470a;
        }

        @Override // java.util.Iterator
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public ByteString.LeafByteString next() {
            ByteString.LeafByteString leafByteString = this.f37783f;
            if (leafByteString == null) {
                throw new NoSuchElementException();
            }
            this.f37783f = m29471b();
            return leafByteString;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f37783f != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        public C6816c(ByteString root) {
            if (root instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) root;
                ArrayDeque<RopeByteString> arrayDeque = new ArrayDeque<>(ropeByteString.getTreeDepth());
                this.f37782e = arrayDeque;
                arrayDeque.push(ropeByteString);
                this.f37783f = m29470a(ropeByteString.left);
                return;
            }
            this.f37782e = null;
            this.f37783f = (ByteString.LeafByteString) root;
        }
    }

    public /* synthetic */ RopeByteString(ByteString byteString, ByteString byteString2, C6814a c6814a) {
        this(byteString, byteString2);
    }

    public static ByteString concatenate(ByteString left, ByteString right) {
        if (right.size() == 0) {
            return left;
        }
        if (left.size() == 0) {
            return right;
        }
        int size = left.size() + right.size();
        if (size < 128) {
            return concatenateBytes(left, right);
        }
        if (left instanceof RopeByteString) {
            RopeByteString ropeByteString = (RopeByteString) left;
            if (ropeByteString.right.size() + right.size() < 128) {
                return new RopeByteString(ropeByteString.left, concatenateBytes(ropeByteString.right, right));
            }
            if (ropeByteString.left.getTreeDepth() > ropeByteString.right.getTreeDepth() && ropeByteString.getTreeDepth() > right.getTreeDepth()) {
                return new RopeByteString(ropeByteString.left, new RopeByteString(ropeByteString.right, right));
            }
        }
        return size >= minLength(Math.max(left.getTreeDepth(), right.getTreeDepth()) + 1) ? new RopeByteString(left, right) : new C6815b(null).m29466b(left, right);
    }

    private static ByteString concatenateBytes(ByteString left, ByteString right) {
        int size = left.size();
        int size2 = right.size();
        byte[] bArr = new byte[size + size2];
        left.copyTo(bArr, 0, 0, size);
        right.copyTo(bArr, 0, size, size2);
        return ByteString.wrap(bArr);
    }

    private boolean equalsFragments(ByteString byteString) {
        C6814a c6814a = null;
        C6816c c6816c = new C6816c(this, c6814a);
        ByteString.LeafByteString next = c6816c.next();
        C6816c c6816c2 = new C6816c(byteString, c6814a);
        ByteString.LeafByteString next2 = c6816c2.next();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int size = next.size() - i;
            int size2 = next2.size() - i2;
            int min = Math.min(size, size2);
            if (!(i == 0 ? next.equalsRange(next2, i2, min) : next2.equalsRange(next, i, min))) {
                return false;
            }
            i3 += min;
            int i4 = this.totalLength;
            if (i3 >= i4) {
                if (i3 == i4) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (min == size) {
                i = 0;
                next = c6816c.next();
            } else {
                i += min;
                next = next;
            }
            if (min == size2) {
                next2 = c6816c2.next();
                i2 = 0;
            } else {
                i2 += min;
            }
        }
    }

    public static int minLength(int depth) {
        int[] iArr = minLengthByDepth;
        if (depth >= iArr.length) {
            return Integer.MAX_VALUE;
        }
        return iArr[depth];
    }

    public static RopeByteString newInstanceForTest(ByteString left, ByteString right) {
        return new RopeByteString(left, right);
    }

    private void readObject(ObjectInputStream in) throws IOException {
        throw new InvalidObjectException("RopeByteStream instances are not to be serialized directly");
    }

    @Override // com.google.protobuf.ByteString
    public ByteBuffer asReadOnlyByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override // com.google.protobuf.ByteString
    public List<ByteBuffer> asReadOnlyByteBufferList() {
        ArrayList arrayList = new ArrayList();
        C6816c c6816c = new C6816c(this, null);
        while (c6816c.hasNext()) {
            arrayList.add(c6816c.next().asReadOnlyByteBuffer());
        }
        return arrayList;
    }

    @Override // com.google.protobuf.ByteString
    public byte byteAt(int index) {
        ByteString.checkIndex(index, this.totalLength);
        return internalByteAt(index);
    }

    @Override // com.google.protobuf.ByteString
    public void copyTo(ByteBuffer target) {
        this.left.copyTo(target);
        this.right.copyTo(target);
    }

    @Override // com.google.protobuf.ByteString
    public void copyToInternal(byte[] target, int sourceOffset, int targetOffset, int numberToCopy) {
        int i = sourceOffset + numberToCopy;
        int i2 = this.leftLength;
        if (i <= i2) {
            this.left.copyToInternal(target, sourceOffset, targetOffset, numberToCopy);
        } else {
            if (sourceOffset >= i2) {
                this.right.copyToInternal(target, sourceOffset - i2, targetOffset, numberToCopy);
                return;
            }
            int i3 = i2 - sourceOffset;
            this.left.copyToInternal(target, sourceOffset, targetOffset, i3);
            this.right.copyToInternal(target, 0, targetOffset + i3, numberToCopy - i3);
        }
    }

    @Override // com.google.protobuf.ByteString
    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ByteString)) {
            return false;
        }
        ByteString byteString = (ByteString) other;
        if (this.totalLength != byteString.size()) {
            return false;
        }
        if (this.totalLength == 0) {
            return true;
        }
        int peekCachedHashCode = peekCachedHashCode();
        int peekCachedHashCode2 = byteString.peekCachedHashCode();
        if (peekCachedHashCode == 0 || peekCachedHashCode2 == 0 || peekCachedHashCode == peekCachedHashCode2) {
            return equalsFragments(byteString);
        }
        return false;
    }

    @Override // com.google.protobuf.ByteString
    public int getTreeDepth() {
        return this.treeDepth;
    }

    @Override // com.google.protobuf.ByteString
    public byte internalByteAt(int index) {
        int i = this.leftLength;
        return index < i ? this.left.internalByteAt(index) : this.right.internalByteAt(index - i);
    }

    @Override // com.google.protobuf.ByteString
    public boolean isBalanced() {
        return this.totalLength >= minLength(this.treeDepth);
    }

    @Override // com.google.protobuf.ByteString
    public boolean isValidUtf8() {
        int partialIsValidUtf8 = this.left.partialIsValidUtf8(0, 0, this.leftLength);
        ByteString byteString = this.right;
        return byteString.partialIsValidUtf8(partialIsValidUtf8, 0, byteString.size()) == 0;
    }

    @Override // com.google.protobuf.ByteString
    public CodedInputStream newCodedInput() {
        return CodedInputStream.m28636b(asReadOnlyByteBufferList(), true);
    }

    @Override // com.google.protobuf.ByteString
    public InputStream newInput() {
        return new C6817d();
    }

    @Override // com.google.protobuf.ByteString
    public int partialHash(int h, int offset, int length) {
        int i = offset + length;
        int i2 = this.leftLength;
        if (i <= i2) {
            return this.left.partialHash(h, offset, length);
        }
        if (offset >= i2) {
            return this.right.partialHash(h, offset - i2, length);
        }
        int i3 = i2 - offset;
        return this.right.partialHash(this.left.partialHash(h, offset, i3), 0, length - i3);
    }

    @Override // com.google.protobuf.ByteString
    public int partialIsValidUtf8(int state, int offset, int length) {
        int i = offset + length;
        int i2 = this.leftLength;
        if (i <= i2) {
            return this.left.partialIsValidUtf8(state, offset, length);
        }
        if (offset >= i2) {
            return this.right.partialIsValidUtf8(state, offset - i2, length);
        }
        int i3 = i2 - offset;
        return this.right.partialIsValidUtf8(this.left.partialIsValidUtf8(state, offset, i3), 0, length - i3);
    }

    @Override // com.google.protobuf.ByteString
    public int size() {
        return this.totalLength;
    }

    @Override // com.google.protobuf.ByteString
    public ByteString substring(int beginIndex, int endIndex) {
        int checkRange = ByteString.checkRange(beginIndex, endIndex, this.totalLength);
        if (checkRange == 0) {
            return ByteString.EMPTY;
        }
        if (checkRange == this.totalLength) {
            return this;
        }
        int i = this.leftLength;
        return endIndex <= i ? this.left.substring(beginIndex, endIndex) : beginIndex >= i ? this.right.substring(beginIndex - i, endIndex - i) : new RopeByteString(this.left.substring(beginIndex), this.right.substring(0, endIndex - this.leftLength));
    }

    @Override // com.google.protobuf.ByteString
    public String toStringInternal(Charset charset) {
        return new String(toByteArray(), charset);
    }

    public Object writeReplace() {
        return ByteString.wrap(toByteArray());
    }

    @Override // com.google.protobuf.ByteString
    public void writeTo(OutputStream outputStream) throws IOException {
        this.left.writeTo(outputStream);
        this.right.writeTo(outputStream);
    }

    @Override // com.google.protobuf.ByteString
    public void writeToInternal(OutputStream out, int sourceOffset, int numberToWrite) throws IOException {
        int i = sourceOffset + numberToWrite;
        int i2 = this.leftLength;
        if (i <= i2) {
            this.left.writeToInternal(out, sourceOffset, numberToWrite);
        } else {
            if (sourceOffset >= i2) {
                this.right.writeToInternal(out, sourceOffset - i2, numberToWrite);
                return;
            }
            int i3 = i2 - sourceOffset;
            this.left.writeToInternal(out, sourceOffset, i3);
            this.right.writeToInternal(out, 0, numberToWrite - i3);
        }
    }

    @Override // com.google.protobuf.ByteString
    public void writeToReverse(ByteOutput output) throws IOException {
        this.right.writeToReverse(output);
        this.left.writeToReverse(output);
    }

    /* renamed from: com.google.protobuf.RopeByteString$b */
    /* loaded from: classes6.dex */
    public static class C6815b {

        /* renamed from: a */
        public final ArrayDeque<ByteString> f37781a;

        public C6815b() {
            this.f37781a = new ArrayDeque<>();
        }

        /* renamed from: b */
        public final ByteString m29466b(ByteString left, ByteString right) {
            m29467c(left);
            m29467c(right);
            ByteString pop = this.f37781a.pop();
            while (!this.f37781a.isEmpty()) {
                pop = new RopeByteString(this.f37781a.pop(), pop, null);
            }
            return pop;
        }

        /* renamed from: c */
        public final void m29467c(ByteString root) {
            if (root.isBalanced()) {
                m29469e(root);
                return;
            }
            if (root instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) root;
                m29467c(ropeByteString.left);
                m29467c(ropeByteString.right);
            } else {
                throw new IllegalArgumentException("Has a new type of ByteString been created? Found " + root.getClass());
            }
        }

        /* renamed from: d */
        public final int m29468d(int length) {
            int binarySearch = Arrays.binarySearch(RopeByteString.minLengthByDepth, length);
            return binarySearch < 0 ? (-(binarySearch + 1)) - 1 : binarySearch;
        }

        /* renamed from: e */
        public final void m29469e(ByteString byteString) {
            C6814a c6814a;
            int m29468d = m29468d(byteString.size());
            int minLength = RopeByteString.minLength(m29468d + 1);
            if (this.f37781a.isEmpty() || this.f37781a.peek().size() >= minLength) {
                this.f37781a.push(byteString);
                return;
            }
            int minLength2 = RopeByteString.minLength(m29468d);
            ByteString pop = this.f37781a.pop();
            while (true) {
                c6814a = null;
                if (this.f37781a.isEmpty() || this.f37781a.peek().size() >= minLength2) {
                    break;
                } else {
                    pop = new RopeByteString(this.f37781a.pop(), pop, c6814a);
                }
            }
            RopeByteString ropeByteString = new RopeByteString(pop, byteString, c6814a);
            while (!this.f37781a.isEmpty()) {
                if (this.f37781a.peek().size() >= RopeByteString.minLength(m29468d(ropeByteString.size()) + 1)) {
                    break;
                } else {
                    ropeByteString = new RopeByteString(this.f37781a.pop(), ropeByteString, c6814a);
                }
            }
            this.f37781a.push(ropeByteString);
        }

        public /* synthetic */ C6815b(C6814a c6814a) {
            this();
        }
    }

    private RopeByteString(ByteString left, ByteString right) {
        this.left = left;
        this.right = right;
        int size = left.size();
        this.leftLength = size;
        this.totalLength = size + right.size();
        this.treeDepth = Math.max(left.getTreeDepth(), right.getTreeDepth()) + 1;
    }

    @Override // com.google.protobuf.ByteString, java.lang.Iterable
    /* renamed from: iterator */
    public Iterator<Byte> iterator2() {
        return new C6814a();
    }

    @Override // com.google.protobuf.ByteString
    public void writeTo(ByteOutput output) throws IOException {
        this.left.writeTo(output);
        this.right.writeTo(output);
    }

    /* renamed from: com.google.protobuf.RopeByteString$d */
    /* loaded from: classes6.dex */
    public class C6817d extends InputStream {

        /* renamed from: e */
        public C6816c f37784e;

        /* renamed from: f */
        public ByteString.LeafByteString f37785f;

        /* renamed from: g */
        public int f37786g;

        /* renamed from: h */
        public int f37787h;

        /* renamed from: i */
        public int f37788i;

        /* renamed from: j */
        public int f37789j;

        public C6817d() {
            m29476w();
        }

        /* renamed from: H */
        public final int m29473H(byte[] b, int offset, int length) {
            int i = length;
            while (i > 0) {
                m29474f();
                if (this.f37785f == null) {
                    break;
                }
                int min = Math.min(this.f37786g - this.f37787h, i);
                if (b != null) {
                    this.f37785f.copyTo(b, this.f37787h, offset, min);
                    offset += min;
                }
                this.f37787h += min;
                i -= min;
            }
            return length - i;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return m29475j();
        }

        /* renamed from: f */
        public final void m29474f() {
            if (this.f37785f != null) {
                int i = this.f37787h;
                int i2 = this.f37786g;
                if (i == i2) {
                    this.f37788i += i2;
                    this.f37787h = 0;
                    if (!this.f37784e.hasNext()) {
                        this.f37785f = null;
                        this.f37786g = 0;
                    } else {
                        ByteString.LeafByteString next = this.f37784e.next();
                        this.f37785f = next;
                        this.f37786g = next.size();
                    }
                }
            }
        }

        /* renamed from: j */
        public final int m29475j() {
            return RopeByteString.this.size() - (this.f37788i + this.f37787h);
        }

        @Override // java.io.InputStream
        public void mark(int readAheadLimit) {
            this.f37789j = this.f37788i + this.f37787h;
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read(byte[] b, int offset, int length) {
            b.getClass();
            if (offset >= 0 && length >= 0 && length <= b.length - offset) {
                int m29473H = m29473H(b, offset, length);
                if (m29473H != 0 || (length <= 0 && m29475j() != 0)) {
                    return m29473H;
                }
                return -1;
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            m29476w();
            m29473H(null, 0, this.f37789j);
        }

        @Override // java.io.InputStream
        public long skip(long length) {
            if (length < 0) {
                throw new IndexOutOfBoundsException();
            }
            if (length > 2147483647L) {
                length = 2147483647L;
            }
            return m29473H(null, 0, (int) length);
        }

        /* renamed from: w */
        public final void m29476w() {
            C6816c c6816c = new C6816c(RopeByteString.this, null);
            this.f37784e = c6816c;
            ByteString.LeafByteString next = c6816c.next();
            this.f37785f = next;
            this.f37786g = next.size();
            this.f37787h = 0;
            this.f37788i = 0;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            m29474f();
            ByteString.LeafByteString leafByteString = this.f37785f;
            if (leafByteString == null) {
                return -1;
            }
            int i = this.f37787h;
            this.f37787h = i + 1;
            return leafByteString.byteAt(i) & 255;
        }
    }
}
