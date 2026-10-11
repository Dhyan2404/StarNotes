package okhttp3.internal.http2;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteKey;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Source;
import org.apache.http.cookie.ClientCookie;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u000f\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\"#B\t\b\u0002¢\u0006\u0004\b \u0010!J\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\u000b\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\bR\u0014\u0010\r\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\bR\u0014\u0010\u000f\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\bR\u0014\u0010\u0011\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\bR\u0014\u0010\u0013\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\bR\u001d\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00150\u00148\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R#\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u00058\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006$"}, m61528d2 = {"Lokhttp3/internal/http2/Hpack;", "", "Lokio/ByteString;", "name", "checkLowercase", "", "", "a", "I", "PREFIX_4_BITS", "b", "PREFIX_5_BITS", "c", "PREFIX_6_BITS", "d", "PREFIX_7_BITS", "e", "SETTINGS_HEADER_TABLE_SIZE", C6997f.f39671c, "SETTINGS_HEADER_TABLE_SIZE_LIMIT", "", "Lokhttp3/internal/http2/Header;", C6998g.f39679a, "[Lokhttp3/internal/http2/Header;", "getSTATIC_HEADER_TABLE", "()[Lokhttp3/internal/http2/Header;", "STATIC_HEADER_TABLE", C6999h.f39688c, "Ljava/util/Map;", "getNAME_TO_FIRST_INDEX", "()Ljava/util/Map;", "NAME_TO_FIRST_INDEX", Constants.CONSTRUCTOR_NAME, "()V", "Reader", "Writer", "okhttp"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes11.dex */
public final class Hpack {

    @NotNull
    public static final Hpack INSTANCE;

    /* renamed from: a, reason: from kotlin metadata */
    public static final int PREFIX_4_BITS = 15;

    /* renamed from: b, reason: from kotlin metadata */
    public static final int PREFIX_5_BITS = 31;

    /* renamed from: c, reason: from kotlin metadata */
    public static final int PREFIX_6_BITS = 63;

    /* renamed from: d, reason: from kotlin metadata */
    public static final int PREFIX_7_BITS = 127;

    /* renamed from: e, reason: from kotlin metadata */
    public static final int SETTINGS_HEADER_TABLE_SIZE = 4096;

    /* renamed from: f, reason: from kotlin metadata */
    public static final int SETTINGS_HEADER_TABLE_SIZE_LIMIT = 16384;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public static final Header[] STATIC_HEADER_TABLE;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public static final Map<ByteString, Integer> NAME_TO_FIRST_INDEX;

    @Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B#\b\u0007\u0012\u0006\u0010'\u001a\u00020.\u0012\u0006\u0010!\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b/\u00100J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\b\u001a\u00020\u0007J\u0016\u0010\u000b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005J\u0006\u0010\r\u001a\u00020\fJ\b\u0010\u000e\u001a\u00020\u0007H\u0002J\b\u0010\u000f\u001a\u00020\u0007H\u0002J\u0010\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0002J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0005H\u0002J\u0010\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005H\u0002J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0005H\u0002J\b\u0010\u0016\u001a\u00020\u0007H\u0002J\u0010\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0005H\u0002J\b\u0010\u0019\u001a\u00020\u0007H\u0002J\u0010\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0005H\u0002J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0012\u001a\u00020\u0005H\u0002J\u0018\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0003H\u0002J\b\u0010\u001f\u001a\u00020\u0005H\u0002R\u0014\u0010!\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010 R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010 R\u001a\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00030\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010#R\u0014\u0010'\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010&R\u001e\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030(8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010+\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010 R\u0016\u0010,\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b,\u0010 R\u0016\u0010-\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b-\u0010 ¨\u00061"}, m61528d2 = {"Lokhttp3/internal/http2/Hpack$Reader;", "", "", "Lokhttp3/internal/http2/Header;", "getAndResetHeaderList", "", "maxDynamicTableByteCount", "", "readHeaders", "firstByte", "prefixMask", "readInt", "Lokio/ByteString;", "readByteString", "a", "b", "bytesToRecover", "d", FirebaseAnalytics.Param.INDEX, "i", "c", "l", "m", "nameIndex", "j", C4921e.f26537n, "e", "", C6998g.f39679a, "entry", C6997f.f39671c, C6999h.f39688c, "I", "headerTableSizeSetting", "", "Ljava/util/List;", "headerList", "Lokio/BufferedSource;", "Lokio/BufferedSource;", "source", "", "dynamicTable", "[Lokhttp3/internal/http2/Header;", "nextHeaderIndex", "headerCount", "dynamicTableByteCount", "Lokio/Source;", Constants.CONSTRUCTOR_NAME, "(Lokio/Source;II)V", "okhttp"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes11.dex */
    public static final class Reader {

        /* renamed from: a, reason: from kotlin metadata */
        public final int headerTableSizeSetting;

        /* renamed from: b, reason: from kotlin metadata */
        public int maxDynamicTableByteCount;

        /* renamed from: c, reason: from kotlin metadata */
        @NotNull
        public final List<Header> headerList;

        /* renamed from: d, reason: from kotlin metadata */
        @NotNull
        public final BufferedSource source;

        @JvmField
        @NotNull
        public Header[] dynamicTable;

        @JvmField
        public int dynamicTableByteCount;

        /* renamed from: e, reason: from kotlin metadata */
        public int nextHeaderIndex;

        @JvmField
        public int headerCount;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        @JvmOverloads
        public Reader(@NotNull Source source, int i) {
            this(source, i, 0, 4, null);
            Intrinsics.checkNotNullParameter(source, "source");
        }

        /* renamed from: a */
        public final void m64913a() {
            int i = this.maxDynamicTableByteCount;
            int i2 = this.dynamicTableByteCount;
            if (i < i2) {
                if (i == 0) {
                    m64914b();
                } else {
                    m64916d(i2 - i);
                }
            }
        }

        /* renamed from: b */
        public final void m64914b() {
            ArraysKt___ArraysJvmKt.fill$default(this.dynamicTable, (Object) null, 0, 0, 6, (Object) null);
            this.nextHeaderIndex = this.dynamicTable.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
        }

        /* renamed from: c */
        public final int m64915c(int index) {
            return this.nextHeaderIndex + 1 + index;
        }

        /* renamed from: d */
        public final int m64916d(int bytesToRecover) {
            int i;
            int i2 = 0;
            if (bytesToRecover > 0) {
                int length = this.dynamicTable.length;
                while (true) {
                    length--;
                    i = this.nextHeaderIndex;
                    if (length < i || bytesToRecover <= 0) {
                        break;
                    }
                    Header header = this.dynamicTable[length];
                    Intrinsics.checkNotNull(header);
                    int i3 = header.hpackSize;
                    bytesToRecover -= i3;
                    this.dynamicTableByteCount -= i3;
                    this.headerCount--;
                    i2++;
                }
                Header[] headerArr = this.dynamicTable;
                System.arraycopy(headerArr, i + 1, headerArr, i + 1 + i2, this.headerCount);
                this.nextHeaderIndex += i2;
            }
            return i2;
        }

        /* renamed from: e */
        public final ByteString m64917e(int index) throws IOException {
            if (m64919g(index)) {
                return Hpack.INSTANCE.getSTATIC_HEADER_TABLE()[index].name;
            }
            int m64915c = m64915c(index - Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length);
            if (m64915c >= 0) {
                Header[] headerArr = this.dynamicTable;
                if (m64915c < headerArr.length) {
                    Header header = headerArr[m64915c];
                    Intrinsics.checkNotNull(header);
                    return header.name;
                }
            }
            throw new IOException("Header index too large " + (index + 1));
        }

        /* renamed from: f */
        public final void m64918f(int index, Header entry) {
            this.headerList.add(entry);
            int i = entry.hpackSize;
            if (index != -1) {
                Header header = this.dynamicTable[m64915c(index)];
                Intrinsics.checkNotNull(header);
                i -= header.hpackSize;
            }
            int i2 = this.maxDynamicTableByteCount;
            if (i > i2) {
                m64914b();
                return;
            }
            int m64916d = m64916d((this.dynamicTableByteCount + i) - i2);
            if (index == -1) {
                int i3 = this.headerCount + 1;
                Header[] headerArr = this.dynamicTable;
                if (i3 > headerArr.length) {
                    Header[] headerArr2 = new Header[headerArr.length * 2];
                    System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                    this.nextHeaderIndex = this.dynamicTable.length - 1;
                    this.dynamicTable = headerArr2;
                }
                int i4 = this.nextHeaderIndex;
                this.nextHeaderIndex = i4 - 1;
                this.dynamicTable[i4] = entry;
                this.headerCount++;
            } else {
                this.dynamicTable[index + m64915c(index) + m64916d] = entry;
            }
            this.dynamicTableByteCount += i;
        }

        /* renamed from: g */
        public final boolean m64919g(int index) {
            return index >= 0 && index <= Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length - 1;
        }

        @NotNull
        public final List<Header> getAndResetHeaderList() {
            List<Header> list;
            list = CollectionsKt___CollectionsKt.toList(this.headerList);
            this.headerList.clear();
            return list;
        }

        /* renamed from: h */
        public final int m64920h() throws IOException {
            return Util.and(this.source.readByte(), 255);
        }

        /* renamed from: i */
        public final void m64921i(int index) throws IOException {
            if (m64919g(index)) {
                this.headerList.add(Hpack.INSTANCE.getSTATIC_HEADER_TABLE()[index]);
                return;
            }
            int m64915c = m64915c(index - Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length);
            if (m64915c >= 0) {
                Header[] headerArr = this.dynamicTable;
                if (m64915c < headerArr.length) {
                    List<Header> list = this.headerList;
                    Header header = headerArr[m64915c];
                    Intrinsics.checkNotNull(header);
                    list.add(header);
                    return;
                }
            }
            throw new IOException("Header index too large " + (index + 1));
        }

        /* renamed from: j */
        public final void m64922j(int nameIndex) throws IOException {
            m64918f(-1, new Header(m64917e(nameIndex), readByteString()));
        }

        /* renamed from: k */
        public final void m64923k() throws IOException {
            m64918f(-1, new Header(Hpack.INSTANCE.checkLowercase(readByteString()), readByteString()));
        }

        /* renamed from: l */
        public final void m64924l(int index) throws IOException {
            this.headerList.add(new Header(m64917e(index), readByteString()));
        }

        /* renamed from: m */
        public final void m64925m() throws IOException {
            this.headerList.add(new Header(Hpack.INSTANCE.checkLowercase(readByteString()), readByteString()));
        }

        /* renamed from: maxDynamicTableByteCount, reason: from getter */
        public final int getMaxDynamicTableByteCount() {
            return this.maxDynamicTableByteCount;
        }

        @NotNull
        public final ByteString readByteString() throws IOException {
            int m64920h = m64920h();
            boolean z = (m64920h & 128) == 128;
            long readInt = readInt(m64920h, 127);
            if (!z) {
                return this.source.readByteString(readInt);
            }
            Buffer buffer = new Buffer();
            Huffman.INSTANCE.decode(this.source, readInt, buffer);
            return buffer.readByteString();
        }

        public final void readHeaders() throws IOException {
            while (!this.source.exhausted()) {
                int and = Util.and(this.source.readByte(), 255);
                if (and == 128) {
                    throw new IOException("index == 0");
                }
                if ((and & 128) == 128) {
                    m64921i(readInt(and, 127) - 1);
                } else if (and == 64) {
                    m64923k();
                } else if ((and & 64) == 64) {
                    m64922j(readInt(and, 63) - 1);
                } else if ((and & 32) == 32) {
                    int readInt = readInt(and, 31);
                    this.maxDynamicTableByteCount = readInt;
                    if (readInt < 0 || readInt > this.headerTableSizeSetting) {
                        throw new IOException("Invalid dynamic table size update " + this.maxDynamicTableByteCount);
                    }
                    m64913a();
                } else if (and == 16 || and == 0) {
                    m64925m();
                } else {
                    m64924l(readInt(and, 15) - 1);
                }
            }
        }

        public final int readInt(int firstByte, int prefixMask) throws IOException {
            int i = firstByte & prefixMask;
            if (i < prefixMask) {
                return i;
            }
            int i2 = 0;
            while (true) {
                int m64920h = m64920h();
                if ((m64920h & 128) == 0) {
                    return prefixMask + (m64920h << i2);
                }
                prefixMask += (m64920h & 127) << i2;
                i2 += 7;
            }
        }

        @JvmOverloads
        public Reader(@NotNull Source source, int i, int i2) {
            Intrinsics.checkNotNullParameter(source, "source");
            this.headerTableSizeSetting = i;
            this.maxDynamicTableByteCount = i2;
            this.headerList = new ArrayList();
            this.source = Okio.buffer(source);
            this.dynamicTable = new Header[8];
            this.nextHeaderIndex = r2.length - 1;
        }

        public /* synthetic */ Reader(Source source, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(source, i, (i3 & 4) != 0 ? i : i2);
        }
    }

    @Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\t\u0018\u00002\u00020\u0001B%\b\u0007\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0018\u0012\u0006\u0010\u001d\u001a\u00020\u001b¢\u0006\u0004\b(\u0010)J\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u001e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0007J\b\u0010\u0011\u001a\u00020\u0005H\u0002J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007H\u0002J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0003H\u0002J\b\u0010\u0016\u001a\u00020\u0005H\u0002R\u0016\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u001cR\u0016\u0010\u001e\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0017R\u0016\u0010\u001f\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0019R\u0016\u0010 \u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b \u0010\u0017R\u001e\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030!8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010%\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010\u0017R\u0016\u0010&\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b&\u0010\u0017R\u0016\u0010'\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b'\u0010\u0017¨\u0006*"}, m61528d2 = {"Lokhttp3/internal/http2/Hpack$Writer;", "", "", "Lokhttp3/internal/http2/Header;", "headerBlock", "", "writeHeaders", "", "value", "prefixMask", "bits", "writeInt", "Lokio/ByteString;", "data", "writeByteString", "headerTableSizeSetting", "resizeHeaderTable", "b", "bytesToRecover", "c", "entry", "d", "a", "I", "", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "useCompression", "Lokio/Buffer;", "Lokio/Buffer;", "out", "smallestHeaderTableSizeSetting", "emitDynamicTableSizeUpdate", "maxDynamicTableByteCount", "", "dynamicTable", "[Lokhttp3/internal/http2/Header;", "e", "nextHeaderIndex", "headerCount", "dynamicTableByteCount", Constants.CONSTRUCTOR_NAME, "(IZLokio/Buffer;)V", "okhttp"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes11.dex */
    public static final class Writer {

        /* renamed from: a, reason: from kotlin metadata */
        public final boolean useCompression;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final Buffer out;

        /* renamed from: c, reason: from kotlin metadata */
        public int smallestHeaderTableSizeSetting;

        /* renamed from: d, reason: from kotlin metadata */
        public boolean emitDynamicTableSizeUpdate;

        @JvmField
        @NotNull
        public Header[] dynamicTable;

        @JvmField
        public int dynamicTableByteCount;

        /* renamed from: e, reason: from kotlin metadata */
        public int nextHeaderIndex;

        @JvmField
        public int headerCount;

        @JvmField
        public int headerTableSizeSetting;

        @JvmField
        public int maxDynamicTableByteCount;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        @JvmOverloads
        public Writer(int i, @NotNull Buffer out) {
            this(i, false, out, 2, null);
            Intrinsics.checkNotNullParameter(out, "out");
        }

        /* renamed from: a */
        public final void m64926a() {
            int i = this.maxDynamicTableByteCount;
            int i2 = this.dynamicTableByteCount;
            if (i < i2) {
                if (i == 0) {
                    m64927b();
                } else {
                    m64928c(i2 - i);
                }
            }
        }

        /* renamed from: b */
        public final void m64927b() {
            ArraysKt___ArraysJvmKt.fill$default(this.dynamicTable, (Object) null, 0, 0, 6, (Object) null);
            this.nextHeaderIndex = this.dynamicTable.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
        }

        /* renamed from: c */
        public final int m64928c(int bytesToRecover) {
            int i;
            int i2 = 0;
            if (bytesToRecover > 0) {
                int length = this.dynamicTable.length;
                while (true) {
                    length--;
                    i = this.nextHeaderIndex;
                    if (length < i || bytesToRecover <= 0) {
                        break;
                    }
                    Header header = this.dynamicTable[length];
                    Intrinsics.checkNotNull(header);
                    bytesToRecover -= header.hpackSize;
                    int i3 = this.dynamicTableByteCount;
                    Header header2 = this.dynamicTable[length];
                    Intrinsics.checkNotNull(header2);
                    this.dynamicTableByteCount = i3 - header2.hpackSize;
                    this.headerCount--;
                    i2++;
                }
                Header[] headerArr = this.dynamicTable;
                System.arraycopy(headerArr, i + 1, headerArr, i + 1 + i2, this.headerCount);
                Header[] headerArr2 = this.dynamicTable;
                int i4 = this.nextHeaderIndex;
                Arrays.fill(headerArr2, i4 + 1, i4 + 1 + i2, (Object) null);
                this.nextHeaderIndex += i2;
            }
            return i2;
        }

        /* renamed from: d */
        public final void m64929d(Header entry) {
            int i = entry.hpackSize;
            int i2 = this.maxDynamicTableByteCount;
            if (i > i2) {
                m64927b();
                return;
            }
            m64928c((this.dynamicTableByteCount + i) - i2);
            int i3 = this.headerCount + 1;
            Header[] headerArr = this.dynamicTable;
            if (i3 > headerArr.length) {
                Header[] headerArr2 = new Header[headerArr.length * 2];
                System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                this.nextHeaderIndex = this.dynamicTable.length - 1;
                this.dynamicTable = headerArr2;
            }
            int i4 = this.nextHeaderIndex;
            this.nextHeaderIndex = i4 - 1;
            this.dynamicTable[i4] = entry;
            this.headerCount++;
            this.dynamicTableByteCount += i;
        }

        public final void resizeHeaderTable(int headerTableSizeSetting) {
            this.headerTableSizeSetting = headerTableSizeSetting;
            int min = Math.min(headerTableSizeSetting, 16384);
            int i = this.maxDynamicTableByteCount;
            if (i == min) {
                return;
            }
            if (min < i) {
                this.smallestHeaderTableSizeSetting = Math.min(this.smallestHeaderTableSizeSetting, min);
            }
            this.emitDynamicTableSizeUpdate = true;
            this.maxDynamicTableByteCount = min;
            m64926a();
        }

        public final void writeByteString(@NotNull ByteString data) throws IOException {
            Intrinsics.checkNotNullParameter(data, "data");
            if (this.useCompression) {
                Huffman huffman = Huffman.INSTANCE;
                if (huffman.encodedLength(data) < data.size()) {
                    Buffer buffer = new Buffer();
                    huffman.encode(data, buffer);
                    ByteString readByteString = buffer.readByteString();
                    writeInt(readByteString.size(), 127, 128);
                    this.out.write(readByteString);
                    return;
                }
            }
            writeInt(data.size(), 127, 0);
            this.out.write(data);
        }

        public final void writeHeaders(@NotNull List<Header> headerBlock) throws IOException {
            int i;
            int i2;
            Intrinsics.checkNotNullParameter(headerBlock, "headerBlock");
            if (this.emitDynamicTableSizeUpdate) {
                int i3 = this.smallestHeaderTableSizeSetting;
                if (i3 < this.maxDynamicTableByteCount) {
                    writeInt(i3, 31, 32);
                }
                this.emitDynamicTableSizeUpdate = false;
                this.smallestHeaderTableSizeSetting = Integer.MAX_VALUE;
                writeInt(this.maxDynamicTableByteCount, 31, 32);
            }
            int size = headerBlock.size();
            for (int i4 = 0; i4 < size; i4++) {
                Header header = headerBlock.get(i4);
                ByteString asciiLowercase = header.name.toAsciiLowercase();
                ByteString byteString = header.value;
                Hpack hpack = Hpack.INSTANCE;
                Integer num = hpack.getNAME_TO_FIRST_INDEX().get(asciiLowercase);
                if (num != null) {
                    i2 = num.intValue() + 1;
                    if (2 <= i2 && i2 < 8) {
                        if (Intrinsics.areEqual(hpack.getSTATIC_HEADER_TABLE()[i2 - 1].value, byteString)) {
                            i = i2;
                        } else if (Intrinsics.areEqual(hpack.getSTATIC_HEADER_TABLE()[i2].value, byteString)) {
                            i2++;
                            i = i2;
                        }
                    }
                    i = i2;
                    i2 = -1;
                } else {
                    i = -1;
                    i2 = -1;
                }
                if (i2 == -1) {
                    int i5 = this.nextHeaderIndex + 1;
                    int length = this.dynamicTable.length;
                    while (true) {
                        if (i5 >= length) {
                            break;
                        }
                        Header header2 = this.dynamicTable[i5];
                        Intrinsics.checkNotNull(header2);
                        if (Intrinsics.areEqual(header2.name, asciiLowercase)) {
                            Header header3 = this.dynamicTable[i5];
                            Intrinsics.checkNotNull(header3);
                            if (Intrinsics.areEqual(header3.value, byteString)) {
                                i2 = Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length + (i5 - this.nextHeaderIndex);
                                break;
                            } else if (i == -1) {
                                i = (i5 - this.nextHeaderIndex) + Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length;
                            }
                        }
                        i5++;
                    }
                }
                if (i2 != -1) {
                    writeInt(i2, 127, 128);
                } else if (i == -1) {
                    this.out.writeByte(64);
                    writeByteString(asciiLowercase);
                    writeByteString(byteString);
                    m64929d(header);
                } else if (!asciiLowercase.startsWith(Header.PSEUDO_PREFIX) || Intrinsics.areEqual(Header.TARGET_AUTHORITY, asciiLowercase)) {
                    writeInt(i, 63, 64);
                    writeByteString(byteString);
                    m64929d(header);
                } else {
                    writeInt(i, 15, 0);
                    writeByteString(byteString);
                }
            }
        }

        public final void writeInt(int value, int prefixMask, int bits) {
            if (value < prefixMask) {
                this.out.writeByte(value | bits);
                return;
            }
            this.out.writeByte(bits | prefixMask);
            int i = value - prefixMask;
            while (i >= 128) {
                this.out.writeByte(128 | (i & 127));
                i >>>= 7;
            }
            this.out.writeByte(i);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        @JvmOverloads
        public Writer(@NotNull Buffer out) {
            this(0, false, out, 3, null);
            Intrinsics.checkNotNullParameter(out, "out");
        }

        @JvmOverloads
        public Writer(int i, boolean z, @NotNull Buffer out) {
            Intrinsics.checkNotNullParameter(out, "out");
            this.headerTableSizeSetting = i;
            this.useCompression = z;
            this.out = out;
            this.smallestHeaderTableSizeSetting = Integer.MAX_VALUE;
            this.maxDynamicTableByteCount = i;
            this.dynamicTable = new Header[8];
            this.nextHeaderIndex = r2.length - 1;
        }

        public /* synthetic */ Writer(int i, boolean z, Buffer buffer, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? 4096 : i, (i2 & 2) != 0 ? true : z, buffer);
        }
    }

    static {
        Hpack hpack = new Hpack();
        INSTANCE = hpack;
        Header header = new Header(Header.TARGET_AUTHORITY, "");
        ByteString byteString = Header.TARGET_METHOD;
        Header header2 = new Header(byteString, "GET");
        Header header3 = new Header(byteString, "POST");
        ByteString byteString2 = Header.TARGET_PATH;
        Header header4 = new Header(byteString2, "/");
        Header header5 = new Header(byteString2, "/index.html");
        ByteString byteString3 = Header.TARGET_SCHEME;
        Header header6 = new Header(byteString3, "http");
        Header header7 = new Header(byteString3, "https");
        ByteString byteString4 = Header.RESPONSE_STATUS;
        STATIC_HEADER_TABLE = new Header[]{header, header2, header3, header4, header5, header6, header7, new Header(byteString4, "200"), new Header(byteString4, "204"), new Header(byteString4, "206"), new Header(byteString4, "304"), new Header(byteString4, "400"), new Header(byteString4, "404"), new Header(byteString4, "500"), new Header("accept-charset", ""), new Header("accept-encoding", "gzip, deflate"), new Header("accept-language", ""), new Header("accept-ranges", ""), new Header("accept", ""), new Header("access-control-allow-origin", ""), new Header("age", ""), new Header("allow", ""), new Header(Constant.TAG_AUTHORIZATION, ""), new Header("cache-control", ""), new Header("content-disposition", ""), new Header("content-encoding", ""), new Header("content-language", ""), new Header("content-length", ""), new Header("content-location", ""), new Header("content-range", ""), new Header("content-type", ""), new Header("cookie", ""), new Header("date", ""), new Header(BreakpointSQLiteKey.ETAG, ""), new Header("expect", ""), new Header(ClientCookie.EXPIRES_ATTR, ""), new Header("from", ""), new Header(Http2ExchangeCodec.f103778h, ""), new Header("if-match", ""), new Header("if-modified-since", ""), new Header("if-none-match", ""), new Header("if-range", ""), new Header("if-unmodified-since", ""), new Header("last-modified", ""), new Header("link", ""), new Header("location", ""), new Header("max-forwards", ""), new Header("proxy-authenticate", ""), new Header("proxy-authorization", ""), new Header(SessionDescription.f26441q, ""), new Header(RequestParameters.SUBRESOURCE_REFERER, ""), new Header("refresh", ""), new Header("retry-after", ""), new Header("server", ""), new Header("set-cookie", ""), new Header("strict-transport-security", ""), new Header(Http2ExchangeCodec.f103781k, ""), new Header(Constant.HEADER_USER_AGENT, ""), new Header("vary", ""), new Header("via", ""), new Header("www-authenticate", "")};
        NAME_TO_FIRST_INDEX = hpack.m64912a();
    }

    /* renamed from: a */
    public final Map<ByteString, Integer> m64912a() {
        Header[] headerArr = STATIC_HEADER_TABLE;
        LinkedHashMap linkedHashMap = new LinkedHashMap(headerArr.length);
        int length = headerArr.length;
        for (int i = 0; i < length; i++) {
            Header[] headerArr2 = STATIC_HEADER_TABLE;
            if (!linkedHashMap.containsKey(headerArr2[i].name)) {
                linkedHashMap.put(headerArr2[i].name, Integer.valueOf(i));
            }
        }
        Map<ByteString, Integer> unmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        Intrinsics.checkNotNullExpressionValue(unmodifiableMap, "unmodifiableMap(result)");
        return unmodifiableMap;
    }

    @NotNull
    public final ByteString checkLowercase(@NotNull ByteString name) throws IOException {
        Intrinsics.checkNotNullParameter(name, "name");
        int size = name.size();
        for (int i = 0; i < size; i++) {
            byte b = name.getByte(i);
            if (65 <= b && b < 91) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + name.utf8());
            }
        }
        return name;
    }

    @NotNull
    public final Map<ByteString, Integer> getNAME_TO_FIRST_INDEX() {
        return NAME_TO_FIRST_INDEX;
    }

    @NotNull
    public final Header[] getSTATIC_HEADER_TABLE() {
        return STATIC_HEADER_TABLE;
    }
}
