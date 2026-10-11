package androidx.credentials.webauthn;

import androidx.annotation.RestrictTo;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.credentials.webauthn.Cbor;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal.ws.WebSocketProtocol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u001d\b\u0007\u0018\u00002\u00020\u0001:\u0002)*B\u0007¢\u0006\u0004\b'\u0010(J\u000e\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001J\u0018\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u0010\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u001a\u0010\u0015\u001a\u00020\u00068\u0006X\u0086D¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0017\u001a\u00020\u00068\u0006X\u0086D¢\u0006\f\n\u0004\b\u0010\u0010\u0012\u001a\u0004\b\u0016\u0010\u0014R\u001a\u0010\u001a\u001a\u00020\u00068\u0006X\u0086D¢\u0006\f\n\u0004\b\u0018\u0010\u0012\u001a\u0004\b\u0019\u0010\u0014R\u001a\u0010\u001c\u001a\u00020\u00068\u0006X\u0086D¢\u0006\f\n\u0004\b\n\u0010\u0012\u001a\u0004\b\u001b\u0010\u0014R\u001a\u0010\u001e\u001a\u00020\u00068\u0006X\u0086D¢\u0006\f\n\u0004\b\b\u0010\u0012\u001a\u0004\b\u001d\u0010\u0014R\u001a\u0010 \u001a\u00020\u00068\u0006X\u0086D¢\u0006\f\n\u0004\b\f\u0010\u0012\u001a\u0004\b\u001f\u0010\u0014R\u001a\u0010#\u001a\u00020\u00068\u0006X\u0086D¢\u0006\f\n\u0004\b!\u0010\u0012\u001a\u0004\b\"\u0010\u0014R\u001a\u0010&\u001a\u00020\u00068\u0006X\u0086D¢\u0006\f\n\u0004\b$\u0010\u0012\u001a\u0004\b%\u0010\u0014¨\u0006+"}, m61528d2 = {"Landroidx/credentials/webauthn/Cbor;", "", "", "data", "decode", "encode", "", TypedValues.CycleType.S_WAVE_OFFSET, "e", "Landroidx/credentials/webauthn/Cbor$Arg;", "d", "Landroidx/credentials/webauthn/Cbor$Item;", C6997f.f39671c, "type", "", Constants.ELEMNAME_ARG_STRING, "b", "a", "I", "getTYPE_UNSIGNED_INT", "()I", "TYPE_UNSIGNED_INT", "getTYPE_NEGATIVE_INT", "TYPE_NEGATIVE_INT", "c", "getTYPE_BYTE_STRING", "TYPE_BYTE_STRING", "getTYPE_TEXT_STRING", "TYPE_TEXT_STRING", "getTYPE_ARRAY", "TYPE_ARRAY", "getTYPE_MAP", "TYPE_MAP", C6998g.f39679a, "getTYPE_TAG", "TYPE_TAG", C6999h.f39688c, "getTYPE_FLOAT", "TYPE_FLOAT", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Arg", "Item", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public final class Cbor {

    /* renamed from: a, reason: from kotlin metadata */
    public final int TYPE_UNSIGNED_INT;

    /* renamed from: b, reason: from kotlin metadata */
    public final int TYPE_NEGATIVE_INT = 1;

    /* renamed from: c, reason: from kotlin metadata */
    public final int TYPE_BYTE_STRING = 2;

    /* renamed from: d, reason: from kotlin metadata */
    public final int TYPE_TEXT_STRING = 3;

    /* renamed from: e, reason: from kotlin metadata */
    public final int TYPE_ARRAY = 4;

    /* renamed from: f, reason: from kotlin metadata */
    public final int TYPE_MAP = 5;

    /* renamed from: g, reason: from kotlin metadata */
    public final int TYPE_TAG = 6;

    /* renamed from: h, reason: from kotlin metadata */
    public final int TYPE_FLOAT = 7;

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\u000b\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, m61528d2 = {"Landroidx/credentials/webauthn/Cbor$Arg;", "", "", "component1", "", "component2", Constants.ELEMNAME_ARG_STRING, "len", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "J", "getArg", "()J", "b", "I", "getLen", "()I", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(JI)V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final /* data */ class Arg {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        public final long arg;

        /* renamed from: b, reason: from kotlin metadata and from toString */
        public final int len;

        public Arg(long j, int i) {
            this.arg = j;
            this.len = i;
        }

        public static /* synthetic */ Arg copy$default(Arg arg, long j, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                j = arg.arg;
            }
            if ((i2 & 2) != 0) {
                i = arg.len;
            }
            return arg.copy(j, i);
        }

        /* renamed from: component1, reason: from getter */
        public final long getArg() {
            return this.arg;
        }

        /* renamed from: component2, reason: from getter */
        public final int getLen() {
            return this.len;
        }

        @NotNull
        public final Arg copy(long arg, int len) {
            return new Arg(arg, len);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Arg)) {
                return false;
            }
            Arg arg = (Arg) other;
            return this.arg == arg.arg && this.len == arg.len;
        }

        public final long getArg() {
            return this.arg;
        }

        public final int getLen() {
            return this.len;
        }

        public int hashCode() {
            return (Long.hashCode(this.arg) * 31) + Integer.hashCode(this.len);
        }

        @NotNull
        public String toString() {
            return "Arg(arg=" + this.arg + ", len=" + this.len + ')';
        }
    }

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\t\u0010\u0002\u001a\u00020\u0001HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\t\u0010\n\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0005\u001a\u00020\u00018\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0006\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, m61528d2 = {"Landroidx/credentials/webauthn/Cbor$Item;", "", "component1", "", "component2", "item", "len", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.OBJECT_SIG, "getItem", "()Ljava/lang/Object;", "b", "I", "getLen", "()I", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/Object;I)V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final /* data */ class Item {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public final Object item;

        /* renamed from: b, reason: from kotlin metadata and from toString */
        public final int len;

        public Item(@NotNull Object item, int i) {
            Intrinsics.checkNotNullParameter(item, "item");
            this.item = item;
            this.len = i;
        }

        public static /* synthetic */ Item copy$default(Item item, Object obj, int i, int i2, Object obj2) {
            if ((i2 & 1) != 0) {
                obj = item.item;
            }
            if ((i2 & 2) != 0) {
                i = item.len;
            }
            return item.copy(obj, i);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final Object getItem() {
            return this.item;
        }

        /* renamed from: component2, reason: from getter */
        public final int getLen() {
            return this.len;
        }

        @NotNull
        public final Item copy(@NotNull Object item, int len) {
            Intrinsics.checkNotNullParameter(item, "item");
            return new Item(item, len);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Item)) {
                return false;
            }
            Item item = (Item) other;
            return Intrinsics.areEqual(this.item, item.item) && this.len == item.len;
        }

        @NotNull
        public final Object getItem() {
            return this.item;
        }

        public final int getLen() {
            return this.len;
        }

        public int hashCode() {
            return (this.item.hashCode() * 31) + Integer.hashCode(this.len);
        }

        @NotNull
        public String toString() {
            return "Item(item=" + this.item + ", len=" + this.len + ')';
        }
    }

    /* renamed from: c */
    public static final int m3969c(Ref.ObjectRef byteMap, byte[] bArr, byte[] bArr2) {
        Intrinsics.checkNotNullParameter(byteMap, "$byteMap");
        Object obj = ((Map) byteMap.element).get(bArr);
        Intrinsics.checkNotNull(obj);
        byte[] bArr3 = (byte[]) obj;
        Object obj2 = ((Map) byteMap.element).get(bArr2);
        Intrinsics.checkNotNull(obj2);
        byte[] bArr4 = (byte[]) obj2;
        if (bArr.length > bArr2.length) {
            return 1;
        }
        if (bArr.length >= bArr2.length) {
            if (bArr3.length > bArr4.length) {
                return 1;
            }
            if (bArr3.length >= bArr4.length) {
                return 0;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public final byte[] m3970b(int type, long arg) {
        int i = type << 5;
        int i2 = (int) arg;
        if (arg < 24) {
            return new byte[]{(byte) ((i | i2) & 255)};
        }
        if (arg <= 255) {
            return new byte[]{(byte) ((i | 24) & 255), (byte) (i2 & 255)};
        }
        if (arg <= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            return new byte[]{(byte) ((i | 25) & 255), (byte) ((i2 >> 8) & 255), (byte) (i2 & 255)};
        }
        if (arg <= 4294967295L) {
            return new byte[]{(byte) ((i | 26) & 255), (byte) ((i2 >> 24) & 255), (byte) ((i2 >> 16) & 255), (byte) ((i2 >> 8) & 255), (byte) (i2 & 255)};
        }
        throw new IllegalArgumentException("bad Arg");
    }

    /* renamed from: d */
    public final Arg m3971d(byte[] data, int offset) {
        long j = data[offset] & 31;
        if (j < 24) {
            return new Arg(j, 1);
        }
        if (j == 24) {
            return new Arg(data[offset + 1] & 255, 2);
        }
        if (j == 25) {
            return new Arg((data[offset + 2] & 255) | ((data[offset + 1] & 255) << 8), 3);
        }
        if (j != 26) {
            throw new IllegalArgumentException("Bad arg");
        }
        return new Arg((data[offset + 4] & 255) | ((data[offset + 1] & 255) << 24) | ((data[offset + 2] & 255) << 16) | ((data[offset + 3] & 255) << 8), 5);
    }

    @NotNull
    public final Object decode(@NotNull byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        return m3973f(data, 0).getItem();
    }

    /* renamed from: e */
    public final int m3972e(byte[] data, int offset) {
        return (data[offset] & 255) >> 5;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.LinkedHashMap, T] */
    @NotNull
    public final byte[] encode(@NotNull Object data) {
        byte[] plus;
        byte[] encodeToByteArray;
        byte[] plus2;
        byte[] plus3;
        Intrinsics.checkNotNullParameter(data, "data");
        if (data instanceof Number) {
            if (data instanceof Double) {
                throw new IllegalArgumentException("Don't support doubles yet");
            }
            long longValue = ((Number) data).longValue();
            return longValue >= 0 ? m3970b(this.TYPE_UNSIGNED_INT, longValue) : m3970b(this.TYPE_NEGATIVE_INT, (-1) - longValue);
        }
        if (data instanceof byte[]) {
            plus3 = ArraysKt___ArraysJvmKt.plus(m3970b(this.TYPE_BYTE_STRING, r6.length), (byte[]) data);
            return plus3;
        }
        if (data instanceof String) {
            byte[] m3970b = m3970b(this.TYPE_TEXT_STRING, r6.length());
            encodeToByteArray = StringsKt__StringsJVMKt.encodeToByteArray((String) data);
            plus2 = ArraysKt___ArraysJvmKt.plus(m3970b, encodeToByteArray);
            return plus2;
        }
        if (data instanceof List) {
            byte[] m3970b2 = m3970b(this.TYPE_ARRAY, r6.size());
            for (Object obj : (List) data) {
                Intrinsics.checkNotNull(obj);
                m3970b2 = ArraysKt___ArraysJvmKt.plus(m3970b2, encode(obj));
            }
            return m3970b2;
        }
        if (!(data instanceof Map)) {
            throw new IllegalArgumentException("Bad type");
        }
        byte[] m3970b3 = m3970b(this.TYPE_MAP, r6.size());
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new LinkedHashMap();
        for (Map.Entry entry : ((Map) data).entrySet()) {
            Map map = (Map) objectRef.element;
            Object key = entry.getKey();
            Intrinsics.checkNotNull(key);
            byte[] encode = encode(key);
            Object value = entry.getValue();
            Intrinsics.checkNotNull(value);
            map.put(encode, encode(value));
        }
        ArrayList arrayList = new ArrayList(((Map) objectRef.element).keySet());
        CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.sunia.HTREnginev2.pod
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                int m3969c;
                m3969c = Cbor.m3969c(Ref.ObjectRef.this, (byte[]) obj2, (byte[]) obj3);
                return m3969c;
            }
        });
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            byte[] key2 = (byte[]) it2.next();
            Intrinsics.checkNotNullExpressionValue(key2, "key");
            plus = ArraysKt___ArraysJvmKt.plus(m3970b3, key2);
            Object obj2 = ((Map) objectRef.element).get(key2);
            Intrinsics.checkNotNull(obj2);
            m3970b3 = ArraysKt___ArraysJvmKt.plus(plus, (byte[]) obj2);
        }
        return m3970b3;
    }

    /* renamed from: f */
    public final Item m3973f(byte[] data, int offset) {
        Map map;
        List list;
        IntRange until;
        byte[] sliceArray;
        IntRange until2;
        byte[] sliceArray2;
        int m3972e = m3972e(data, offset);
        Arg m3971d = m3971d(data, offset);
        System.out.println((Object) ("Type " + m3972e + ' ' + m3971d.getArg() + ' ' + m3971d.getLen()));
        if (m3972e == this.TYPE_UNSIGNED_INT) {
            return new Item(Long.valueOf(m3971d.getArg()), m3971d.getLen());
        }
        if (m3972e == this.TYPE_NEGATIVE_INT) {
            return new Item(Long.valueOf((-1) - m3971d.getArg()), m3971d.getLen());
        }
        if (m3972e == this.TYPE_BYTE_STRING) {
            until2 = RangesKt___RangesKt.until(m3971d.getLen() + offset, offset + m3971d.getLen() + ((int) m3971d.getArg()));
            sliceArray2 = ArraysKt___ArraysKt.sliceArray(data, until2);
            return new Item(sliceArray2, m3971d.getLen() + ((int) m3971d.getArg()));
        }
        if (m3972e == this.TYPE_TEXT_STRING) {
            until = RangesKt___RangesKt.until(m3971d.getLen() + offset, offset + m3971d.getLen() + ((int) m3971d.getArg()));
            sliceArray = ArraysKt___ArraysKt.sliceArray(data, until);
            return new Item(new String(sliceArray, Charsets.UTF_8), m3971d.getLen() + ((int) m3971d.getArg()));
        }
        int i = 0;
        if (m3972e == this.TYPE_ARRAY) {
            ArrayList arrayList = new ArrayList();
            int len = m3971d.getLen();
            int arg = (int) m3971d.getArg();
            while (i < arg) {
                Item m3973f = m3973f(data, offset + len);
                arrayList.add(m3973f.getItem());
                len += m3973f.getLen();
                i++;
            }
            list = CollectionsKt___CollectionsKt.toList(arrayList);
            return new Item(list, len);
        }
        if (m3972e != this.TYPE_MAP) {
            throw new IllegalArgumentException("Bad type");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int len2 = m3971d.getLen();
        int arg2 = (int) m3971d.getArg();
        while (i < arg2) {
            Item m3973f2 = m3973f(data, offset + len2);
            int len3 = len2 + m3973f2.getLen();
            Item m3973f3 = m3973f(data, offset + len3);
            len2 = len3 + m3973f3.getLen();
            linkedHashMap.put(m3973f2.getItem(), m3973f3.getItem());
            i++;
        }
        map = MapsKt__MapsKt.toMap(linkedHashMap);
        return new Item(map, len2);
    }

    public final int getTYPE_ARRAY() {
        return this.TYPE_ARRAY;
    }

    public final int getTYPE_BYTE_STRING() {
        return this.TYPE_BYTE_STRING;
    }

    public final int getTYPE_FLOAT() {
        return this.TYPE_FLOAT;
    }

    public final int getTYPE_MAP() {
        return this.TYPE_MAP;
    }

    public final int getTYPE_NEGATIVE_INT() {
        return this.TYPE_NEGATIVE_INT;
    }

    public final int getTYPE_TAG() {
        return this.TYPE_TAG;
    }

    public final int getTYPE_TEXT_STRING() {
        return this.TYPE_TEXT_STRING;
    }

    public final int getTYPE_UNSIGNED_INT() {
        return this.TYPE_UNSIGNED_INT;
    }
}
