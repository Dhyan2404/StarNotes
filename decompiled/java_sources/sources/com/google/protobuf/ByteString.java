package com.google.protobuf;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import com.sunia.HTREnginev2.C13917ja;
import com.sunia.HTREnginev2.bnd;
import com.sunia.HTREnginev2.htd;
import com.sunia.HTREnginev2.ocn;
import com.sunia.HTREnginev2.y5e;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;

@htd
/* loaded from: classes6.dex */
public abstract class ByteString implements Iterable<Byte>, Serializable {
    static final int CONCATENATE_BY_COPY_SIZE = 128;
    public static final ByteString EMPTY = new LiteralByteString(Internal.EMPTY_BYTE_ARRAY);
    static final int MAX_READ_FROM_CHUNK_SIZE = 8192;
    static final int MIN_READ_FROM_CHUNK_SIZE = 256;
    private static final int UNSIGNED_BYTE_MASK = 255;
    private static final Comparator<ByteString> UNSIGNED_LEXICOGRAPHICAL_COMPARATOR;
    private static final InterfaceC6650e byteArrayCopier;
    private static final long serialVersionUID = 1;
    private int hash = 0;

    /* loaded from: classes6.dex */
    public static final class BoundedByteString extends LiteralByteString {
        private static final long serialVersionUID = 1;
        private final int bytesLength;
        private final int bytesOffset;

        public BoundedByteString(byte[] bytes, int offset, int length) {
            super(bytes);
            ByteString.checkRange(offset, offset + length, bytes.length);
            this.bytesOffset = offset;
            this.bytesLength = length;
        }

        private void readObject(ObjectInputStream in) throws IOException {
            throw new InvalidObjectException("BoundedByteStream instances are not to be serialized directly");
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString, com.google.protobuf.ByteString
        public byte byteAt(int index) {
            ByteString.checkIndex(index, size());
            return this.bytes[this.bytesOffset + index];
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString, com.google.protobuf.ByteString
        public void copyToInternal(byte[] target, int sourceOffset, int targetOffset, int numberToCopy) {
            System.arraycopy(this.bytes, getOffsetIntoBytes() + sourceOffset, target, targetOffset, numberToCopy);
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString
        public int getOffsetIntoBytes() {
            return this.bytesOffset;
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString, com.google.protobuf.ByteString
        public byte internalByteAt(int index) {
            return this.bytes[this.bytesOffset + index];
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString, com.google.protobuf.ByteString
        public int size() {
            return this.bytesLength;
        }

        public Object writeReplace() {
            return ByteString.wrap(toByteArray());
        }
    }

    /* loaded from: classes6.dex */
    public interface ByteIterator extends Iterator<Byte> {
        byte nextByte();
    }

    /* loaded from: classes6.dex */
    public static abstract class LeafByteString extends ByteString {
        private static final long serialVersionUID = 1;

        public abstract boolean equalsRange(ByteString other, int offset, int length);

        @Override // com.google.protobuf.ByteString
        public final int getTreeDepth() {
            return 0;
        }

        @Override // com.google.protobuf.ByteString
        public final boolean isBalanced() {
            return true;
        }

        @Override // com.google.protobuf.ByteString, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
            return super.iterator2();
        }

        @Override // com.google.protobuf.ByteString
        public void writeToReverse(ByteOutput byteOutput) throws IOException {
            writeTo(byteOutput);
        }
    }

    /* loaded from: classes6.dex */
    public static class LiteralByteString extends LeafByteString {
        private static final long serialVersionUID = 1;
        protected final byte[] bytes;

        public LiteralByteString(byte[] bytes) {
            bytes.getClass();
            this.bytes = bytes;
        }

        @Override // com.google.protobuf.ByteString
        public final ByteBuffer asReadOnlyByteBuffer() {
            return ByteBuffer.wrap(this.bytes, getOffsetIntoBytes(), size()).asReadOnlyBuffer();
        }

        @Override // com.google.protobuf.ByteString
        public final List<ByteBuffer> asReadOnlyByteBufferList() {
            return Collections.singletonList(asReadOnlyByteBuffer());
        }

        @Override // com.google.protobuf.ByteString
        public byte byteAt(int index) {
            return this.bytes[index];
        }

        @Override // com.google.protobuf.ByteString
        public final void copyTo(ByteBuffer target) {
            target.put(this.bytes, getOffsetIntoBytes(), size());
        }

        @Override // com.google.protobuf.ByteString
        public void copyToInternal(byte[] target, int sourceOffset, int targetOffset, int numberToCopy) {
            System.arraycopy(this.bytes, sourceOffset, target, targetOffset, numberToCopy);
        }

        @Override // com.google.protobuf.ByteString
        public final boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof ByteString) || size() != ((ByteString) other).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (!(other instanceof LiteralByteString)) {
                return other.equals(this);
            }
            LiteralByteString literalByteString = (LiteralByteString) other;
            int peekCachedHashCode = peekCachedHashCode();
            int peekCachedHashCode2 = literalByteString.peekCachedHashCode();
            if (peekCachedHashCode == 0 || peekCachedHashCode2 == 0 || peekCachedHashCode == peekCachedHashCode2) {
                return equalsRange(literalByteString, 0, size());
            }
            return false;
        }

        @Override // com.google.protobuf.ByteString.LeafByteString
        public final boolean equalsRange(ByteString other, int offset, int length) {
            if (length > other.size()) {
                throw new IllegalArgumentException("Length too large: " + length + size());
            }
            int i = offset + length;
            if (i > other.size()) {
                throw new IllegalArgumentException("Ran off end of other: " + offset + ", " + length + ", " + other.size());
            }
            if (!(other instanceof LiteralByteString)) {
                return other.substring(offset, i).equals(substring(0, length));
            }
            LiteralByteString literalByteString = (LiteralByteString) other;
            byte[] bArr = this.bytes;
            byte[] bArr2 = literalByteString.bytes;
            int offsetIntoBytes = getOffsetIntoBytes() + length;
            int offsetIntoBytes2 = getOffsetIntoBytes();
            int offsetIntoBytes3 = literalByteString.getOffsetIntoBytes() + offset;
            while (offsetIntoBytes2 < offsetIntoBytes) {
                if (bArr[offsetIntoBytes2] != bArr2[offsetIntoBytes3]) {
                    return false;
                }
                offsetIntoBytes2++;
                offsetIntoBytes3++;
            }
            return true;
        }

        public int getOffsetIntoBytes() {
            return 0;
        }

        @Override // com.google.protobuf.ByteString
        public byte internalByteAt(int index) {
            return this.bytes[index];
        }

        @Override // com.google.protobuf.ByteString
        public final boolean isValidUtf8() {
            int offsetIntoBytes = getOffsetIntoBytes();
            return Utf8.m29672u(this.bytes, offsetIntoBytes, size() + offsetIntoBytes);
        }

        @Override // com.google.protobuf.ByteString
        public final CodedInputStream newCodedInput() {
            return CodedInputStream.m28638d(this.bytes, getOffsetIntoBytes(), size(), true);
        }

        @Override // com.google.protobuf.ByteString
        public final InputStream newInput() {
            return new ByteArrayInputStream(this.bytes, getOffsetIntoBytes(), size());
        }

        @Override // com.google.protobuf.ByteString
        public final int partialHash(int h, int offset, int length) {
            return Internal.m29347e(h, this.bytes, getOffsetIntoBytes() + offset, length);
        }

        @Override // com.google.protobuf.ByteString
        public final int partialIsValidUtf8(int state, int offset, int length) {
            int offsetIntoBytes = getOffsetIntoBytes() + offset;
            return Utf8.m29674w(state, this.bytes, offsetIntoBytes, length + offsetIntoBytes);
        }

        @Override // com.google.protobuf.ByteString
        public int size() {
            return this.bytes.length;
        }

        @Override // com.google.protobuf.ByteString
        public final ByteString substring(int beginIndex, int endIndex) {
            int checkRange = ByteString.checkRange(beginIndex, endIndex, size());
            return checkRange == 0 ? ByteString.EMPTY : new BoundedByteString(this.bytes, getOffsetIntoBytes() + beginIndex, checkRange);
        }

        @Override // com.google.protobuf.ByteString
        public final String toStringInternal(Charset charset) {
            return new String(this.bytes, getOffsetIntoBytes(), size(), charset);
        }

        @Override // com.google.protobuf.ByteString
        public final void writeTo(OutputStream outputStream) throws IOException {
            outputStream.write(toByteArray());
        }

        @Override // com.google.protobuf.ByteString
        public final void writeToInternal(OutputStream outputStream, int sourceOffset, int numberToWrite) throws IOException {
            outputStream.write(this.bytes, getOffsetIntoBytes() + sourceOffset, numberToWrite);
        }

        @Override // com.google.protobuf.ByteString
        public final void writeTo(ByteOutput output) throws IOException {
            output.writeLazy(this.bytes, getOffsetIntoBytes(), size());
        }
    }

    /* renamed from: com.google.protobuf.ByteString$a */
    /* loaded from: classes6.dex */
    public class C6646a extends AbstractC6648c {

        /* renamed from: e */
        public int f36897e = 0;

        /* renamed from: f */
        public final int f36898f;

        public C6646a() {
            this.f36898f = ByteString.this.size();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f36897e < this.f36898f;
        }

        @Override // com.google.protobuf.ByteString.ByteIterator
        public byte nextByte() {
            int i = this.f36897e;
            if (i >= this.f36898f) {
                throw new NoSuchElementException();
            }
            this.f36897e = i + 1;
            return ByteString.this.internalByteAt(i);
        }
    }

    /* renamed from: com.google.protobuf.ByteString$b */
    /* loaded from: classes6.dex */
    public class C6647b implements Comparator<ByteString> {
        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Iterator, com.google.protobuf.ByteString$ByteIterator] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.util.Iterator, com.google.protobuf.ByteString$ByteIterator] */
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(ByteString former, ByteString latter) {
            ?? iterator2 = former.iterator2();
            ?? iterator22 = latter.iterator2();
            while (iterator2.hasNext() && iterator22.hasNext()) {
                int compareTo = Integer.valueOf(ByteString.toInt(iterator2.nextByte())).compareTo(Integer.valueOf(ByteString.toInt(iterator22.nextByte())));
                if (compareTo != 0) {
                    return compareTo;
                }
            }
            return Integer.valueOf(former.size()).compareTo(Integer.valueOf(latter.size()));
        }
    }

    /* renamed from: com.google.protobuf.ByteString$c */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC6648c implements ByteIterator {
        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Byte next() {
            return Byte.valueOf(nextByte());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.protobuf.ByteString$d */
    /* loaded from: classes6.dex */
    public static final class C6649d implements InterfaceC6650e {
        public C6649d() {
        }

        @Override // com.google.protobuf.ByteString.InterfaceC6650e
        /* renamed from: a */
        public byte[] mo28630a(byte[] bytes, int offset, int size) {
            return Arrays.copyOfRange(bytes, offset, size + offset);
        }

        public /* synthetic */ C6649d(C6646a c6646a) {
            this();
        }
    }

    /* renamed from: com.google.protobuf.ByteString$e */
    /* loaded from: classes6.dex */
    public interface InterfaceC6650e {
        /* renamed from: a */
        byte[] mo28630a(byte[] bytes, int offset, int size);
    }

    /* renamed from: com.google.protobuf.ByteString$f */
    /* loaded from: classes6.dex */
    public static final class C6651f {

        /* renamed from: a */
        public final CodedOutputStream f36900a;

        /* renamed from: b */
        public final byte[] f36901b;

        public /* synthetic */ C6651f(int i, C6646a c6646a) {
            this(i);
        }

        /* renamed from: a */
        public ByteString m28631a() {
            this.f36900a.checkNoSpaceLeft();
            return new LiteralByteString(this.f36901b);
        }

        /* renamed from: b */
        public CodedOutputStream m28632b() {
            return this.f36900a;
        }

        public C6651f(int size) {
            byte[] bArr = new byte[size];
            this.f36901b = bArr;
            this.f36900a = CodedOutputStream.newInstance(bArr);
        }
    }

    /* renamed from: com.google.protobuf.ByteString$g */
    /* loaded from: classes6.dex */
    public static final class C6652g implements InterfaceC6650e {
        public C6652g() {
        }

        @Override // com.google.protobuf.ByteString.InterfaceC6650e
        /* renamed from: a */
        public byte[] mo28630a(byte[] bytes, int offset, int size) {
            byte[] bArr = new byte[size];
            System.arraycopy(bytes, offset, bArr, 0, size);
            return bArr;
        }

        public /* synthetic */ C6652g(C6646a c6646a) {
            this();
        }
    }

    static {
        C6646a c6646a = null;
        byteArrayCopier = C13917ja.m54903c() ? new C6652g(c6646a) : new C6649d(c6646a);
        UNSIGNED_LEXICOGRAPHICAL_COMPARATOR = new C6647b();
    }

    private static ByteString balancedConcat(Iterator<ByteString> iterator, int length) {
        if (length < 1) {
            throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(length)));
        }
        if (length == 1) {
            return iterator.next();
        }
        int i = length >>> 1;
        return balancedConcat(iterator, i).concat(balancedConcat(iterator, length - i));
    }

    public static void checkIndex(int index, int size) {
        if (((size - (index + 1)) | index) < 0) {
            if (index < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + index);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + index + ", " + size);
        }
    }

    @bnd
    public static int checkRange(int startIndex, int endIndex, int size) {
        int i = endIndex - startIndex;
        if ((startIndex | endIndex | i | (size - endIndex)) >= 0) {
            return i;
        }
        if (startIndex < 0) {
            throw new IndexOutOfBoundsException("Beginning index: " + startIndex + " < 0");
        }
        if (endIndex < startIndex) {
            throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + startIndex + ", " + endIndex);
        }
        throw new IndexOutOfBoundsException("End index: " + endIndex + CloudStorageConstants.OPERATION_GREATER_EQUAL + size);
    }

    public static ByteString copyFrom(byte[] bytes, int offset, int size) {
        checkRange(offset, offset + size, bytes.length);
        return new LiteralByteString(byteArrayCopier.mo28630a(bytes, offset, size));
    }

    public static ByteString copyFromUtf8(String text) {
        return new LiteralByteString(text.getBytes(Internal.f37667b));
    }

    public static final ByteString empty() {
        return EMPTY;
    }

    private static int extractHexDigit(String hexString, int index) {
        int hexDigit = hexDigit(hexString.charAt(index));
        if (hexDigit != -1) {
            return hexDigit;
        }
        throw new NumberFormatException("Invalid hexString " + hexString + " must only contain [0-9a-fA-F] but contained " + hexString.charAt(index) + " at index " + index);
    }

    public static ByteString fromHex(@y5e String hexString) {
        if (hexString.length() % 2 != 0) {
            throw new NumberFormatException("Invalid hexString " + hexString + " of length " + hexString.length() + " must be even.");
        }
        int length = hexString.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) (extractHexDigit(hexString, i2 + 1) | (extractHexDigit(hexString, i2) << 4));
        }
        return new LiteralByteString(bArr);
    }

    private static int hexDigit(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        char c2 = 'A';
        if (c < 'A' || c > 'F') {
            c2 = 'a';
            if (c < 'a' || c > 'f') {
                return -1;
            }
        }
        return (c - c2) + 10;
    }

    public static C6651f newCodedBuilder(int size) {
        return new C6651f(size, null);
    }

    public static Output newOutput(int initialCapacity) {
        return new Output(initialCapacity);
    }

    private static ByteString readChunk(InputStream in, final int chunkSize) throws IOException {
        byte[] bArr = new byte[chunkSize];
        int i = 0;
        while (i < chunkSize) {
            int read = in.read(bArr, i, chunkSize - i);
            if (read == -1) {
                break;
            }
            i += read;
        }
        if (i == 0) {
            return null;
        }
        return copyFrom(bArr, 0, i);
    }

    public static ByteString readFrom(InputStream streamToDrain) throws IOException {
        return readFrom(streamToDrain, 256, 8192);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int toInt(byte value) {
        return value & 255;
    }

    private String truncateAndEscapeForDisplay() {
        if (size() <= 50) {
            return ocn.m55934a(this);
        }
        return ocn.m55934a(substring(0, 47)) + RemoveAudioAction.f58149k;
    }

    public static Comparator<ByteString> unsignedLexicographicalComparator() {
        return UNSIGNED_LEXICOGRAPHICAL_COMPARATOR;
    }

    public static ByteString wrap(ByteBuffer buffer) {
        if (buffer.hasArray()) {
            return wrap(buffer.array(), buffer.arrayOffset() + buffer.position(), buffer.remaining());
        }
        return new NioByteString(buffer);
    }

    public abstract ByteBuffer asReadOnlyByteBuffer();

    public abstract List<ByteBuffer> asReadOnlyByteBufferList();

    public abstract byte byteAt(int index);

    public final ByteString concat(ByteString other) {
        if (Integer.MAX_VALUE - size() >= other.size()) {
            return RopeByteString.concatenate(this, other);
        }
        throw new IllegalArgumentException("ByteString would be too long: " + size() + "+" + other.size());
    }

    public abstract void copyTo(ByteBuffer target);

    public void copyTo(byte[] target, int offset) {
        copyTo(target, 0, offset, size());
    }

    public abstract void copyToInternal(byte[] target, int sourceOffset, int targetOffset, int numberToCopy);

    public final boolean endsWith(ByteString suffix) {
        return size() >= suffix.size() && substring(size() - suffix.size()).equals(suffix);
    }

    public abstract boolean equals(Object o);

    public abstract int getTreeDepth();

    public final int hashCode() {
        int i = this.hash;
        if (i == 0) {
            int size = size();
            i = partialHash(size, 0, size);
            if (i == 0) {
                i = 1;
            }
            this.hash = i;
        }
        return i;
    }

    public abstract byte internalByteAt(int index);

    public abstract boolean isBalanced();

    public final boolean isEmpty() {
        return size() == 0;
    }

    public abstract boolean isValidUtf8();

    public abstract CodedInputStream newCodedInput();

    public abstract InputStream newInput();

    public abstract int partialHash(int h, int offset, int length);

    public abstract int partialIsValidUtf8(int state, int offset, int length);

    public final int peekCachedHashCode() {
        return this.hash;
    }

    public abstract int size();

    public final boolean startsWith(ByteString prefix) {
        return size() >= prefix.size() && substring(0, prefix.size()).equals(prefix);
    }

    public final ByteString substring(int beginIndex) {
        return substring(beginIndex, size());
    }

    public abstract ByteString substring(int beginIndex, int endIndex);

    public final byte[] toByteArray() {
        int size = size();
        if (size == 0) {
            return Internal.EMPTY_BYTE_ARRAY;
        }
        byte[] bArr = new byte[size];
        copyToInternal(bArr, 0, 0, size);
        return bArr;
    }

    public final String toString(String charsetName) throws UnsupportedEncodingException {
        try {
            return toString(Charset.forName(charsetName));
        } catch (UnsupportedCharsetException e) {
            UnsupportedEncodingException unsupportedEncodingException = new UnsupportedEncodingException(charsetName);
            unsupportedEncodingException.initCause(e);
            throw unsupportedEncodingException;
        }
    }

    public abstract String toStringInternal(Charset charset);

    public final String toStringUtf8() {
        return toString(Internal.f37667b);
    }

    public abstract void writeTo(ByteOutput byteOutput) throws IOException;

    public abstract void writeTo(OutputStream out) throws IOException;

    public final void writeTo(OutputStream out, int sourceOffset, int numberToWrite) throws IOException {
        checkRange(sourceOffset, sourceOffset + numberToWrite, size());
        if (numberToWrite > 0) {
            writeToInternal(out, sourceOffset, numberToWrite);
        }
    }

    public abstract void writeToInternal(OutputStream out, int sourceOffset, int numberToWrite) throws IOException;

    public abstract void writeToReverse(ByteOutput byteOutput) throws IOException;

    public static Output newOutput() {
        return new Output(128);
    }

    public static ByteString readFrom(InputStream streamToDrain, int chunkSize) throws IOException {
        return readFrom(streamToDrain, chunkSize, chunkSize);
    }

    @Deprecated
    public final void copyTo(byte[] target, int sourceOffset, int targetOffset, int numberToCopy) {
        checkRange(sourceOffset, sourceOffset + numberToCopy, size());
        checkRange(targetOffset, targetOffset + numberToCopy, target.length);
        if (numberToCopy > 0) {
            copyToInternal(target, sourceOffset, targetOffset, numberToCopy);
        }
    }

    @Override // java.lang.Iterable
    /* renamed from: iterator, reason: merged with bridge method [inline-methods] */
    public Iterator<Byte> iterator2() {
        return new C6646a();
    }

    public static ByteString copyFrom(byte[] bytes) {
        return copyFrom(bytes, 0, bytes.length);
    }

    public static ByteString readFrom(InputStream streamToDrain, int minChunkSize, int maxChunkSize) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            ByteString readChunk = readChunk(streamToDrain, minChunkSize);
            if (readChunk == null) {
                return copyFrom(arrayList);
            }
            arrayList.add(readChunk);
            minChunkSize = Math.min(minChunkSize * 2, maxChunkSize);
        }
    }

    /* loaded from: classes6.dex */
    public static final class Output extends OutputStream {

        /* renamed from: j */
        public static final byte[] f36891j = new byte[0];

        /* renamed from: e */
        public final int f36892e;

        /* renamed from: f */
        public final ArrayList<ByteString> f36893f;

        /* renamed from: g */
        public int f36894g;

        /* renamed from: h */
        public byte[] f36895h;

        /* renamed from: i */
        public int f36896i;

        public Output(int initialCapacity) {
            if (initialCapacity < 0) {
                throw new IllegalArgumentException("Buffer size < 0");
            }
            this.f36892e = initialCapacity;
            this.f36893f = new ArrayList<>();
            this.f36895h = new byte[initialCapacity];
        }

        /* renamed from: f */
        public final void m28626f(int minSize) {
            this.f36893f.add(new LiteralByteString(this.f36895h));
            int length = this.f36894g + this.f36895h.length;
            this.f36894g = length;
            this.f36895h = new byte[Math.max(this.f36892e, Math.max(minSize, length >>> 1))];
            this.f36896i = 0;
        }

        /* renamed from: j */
        public final void m28627j() {
            int i = this.f36896i;
            byte[] bArr = this.f36895h;
            if (i >= bArr.length) {
                this.f36893f.add(new LiteralByteString(this.f36895h));
                this.f36895h = f36891j;
            } else if (i > 0) {
                this.f36893f.add(new LiteralByteString(Arrays.copyOf(bArr, i)));
            }
            this.f36894g += this.f36896i;
            this.f36896i = 0;
        }

        public synchronized void reset() {
            this.f36893f.clear();
            this.f36894g = 0;
            this.f36896i = 0;
        }

        public synchronized int size() {
            return this.f36894g + this.f36896i;
        }

        public synchronized ByteString toByteString() {
            m28627j();
            return ByteString.copyFrom(this.f36893f);
        }

        public String toString() {
            return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
        }

        @Override // java.io.OutputStream
        public synchronized void write(int b) {
            if (this.f36896i == this.f36895h.length) {
                m28626f(1);
            }
            byte[] bArr = this.f36895h;
            int i = this.f36896i;
            this.f36896i = i + 1;
            bArr[i] = (byte) b;
        }

        public void writeTo(OutputStream out) throws IOException {
            int i;
            ByteString[] byteStringArr;
            byte[] bArr;
            int i2;
            synchronized (this) {
                byteStringArr = (ByteString[]) this.f36893f.toArray(new ByteString[0]);
                bArr = this.f36895h;
                i2 = this.f36896i;
            }
            for (ByteString byteString : byteStringArr) {
                byteString.writeTo(out);
            }
            out.write(Arrays.copyOf(bArr, i2));
        }

        @Override // java.io.OutputStream
        public synchronized void write(byte[] b, int offset, int length) {
            byte[] bArr = this.f36895h;
            int length2 = bArr.length;
            int i = this.f36896i;
            if (length <= length2 - i) {
                System.arraycopy(b, offset, bArr, i, length);
                this.f36896i += length;
            } else {
                int length3 = bArr.length - i;
                System.arraycopy(b, offset, bArr, i, length3);
                int i2 = length - length3;
                m28626f(i2);
                System.arraycopy(b, offset + length3, this.f36895h, 0, i2);
                this.f36896i = i2;
            }
        }
    }

    public static ByteString copyFrom(ByteBuffer bytes, int size) {
        checkRange(0, size, bytes.remaining());
        byte[] bArr = new byte[size];
        bytes.get(bArr);
        return new LiteralByteString(bArr);
    }

    public static ByteString wrap(byte[] bytes) {
        return new LiteralByteString(bytes);
    }

    public final String toString(Charset charset) {
        return size() == 0 ? "" : toStringInternal(charset);
    }

    public static ByteString wrap(byte[] bytes, int offset, int length) {
        return new BoundedByteString(bytes, offset, length);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()), truncateAndEscapeForDisplay());
    }

    public static ByteString copyFrom(ByteBuffer bytes) {
        return copyFrom(bytes, bytes.remaining());
    }

    public static ByteString copyFrom(String text, String charsetName) throws UnsupportedEncodingException {
        return new LiteralByteString(text.getBytes(charsetName));
    }

    public static ByteString copyFrom(String text, Charset charset) {
        return new LiteralByteString(text.getBytes(charset));
    }

    public static ByteString copyFrom(Iterable<ByteString> byteStrings) {
        int size;
        if (!(byteStrings instanceof Collection)) {
            Iterator<ByteString> it2 = byteStrings.iterator();
            size = 0;
            while (it2.hasNext()) {
                it2.next();
                size++;
            }
        } else {
            size = ((Collection) byteStrings).size();
        }
        if (size == 0) {
            return EMPTY;
        }
        return balancedConcat(byteStrings.iterator(), size);
    }
}
