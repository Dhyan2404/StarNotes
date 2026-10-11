package com.couchbase.lite.internal.fleece;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.CouchbaseLiteError;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.core.C4NativePeer;
import com.couchbase.lite.internal.fleece.FLEncoder;
import com.couchbase.lite.internal.fleece.impl.NativeFLEncoder;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.utils.ClassUtils;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes4.dex */
public abstract class FLEncoder extends C4NativePeer {

    @NonNull
    private static final NativeImpl NATIVE_IMPL = new NativeFLEncoder();
    protected final Map<String, Object> arguments;

    @NonNull
    protected final NativeImpl impl;

    /* loaded from: classes4.dex */
    public static final class JSONEncoder extends ManagedFLEncoder {
        @Override // com.couchbase.lite.internal.fleece.FLEncoder.ManagedFLEncoder, com.couchbase.lite.internal.fleece.FLEncoder, java.lang.AutoCloseable
        public /* bridge */ /* synthetic */ void close() {
            super.close();
        }

        @Override // com.couchbase.lite.internal.fleece.FLEncoder.ManagedFLEncoder
        public /* bridge */ /* synthetic */ void closePeer(@Nullable LogDomain logDomain) {
            super.closePeer(logDomain);
        }

        @Override // com.couchbase.lite.internal.fleece.FLEncoder
        @NonNull
        public byte[] finish() {
            throw new UnsupportedOperationException("finish not supported for JSONEncoders");
        }

        @Override // com.couchbase.lite.internal.fleece.FLEncoder
        @NonNull
        public FLSliceResult finish2() {
            throw new UnsupportedOperationException("finish2 not supported for JSONEncoders");
        }

        @NonNull
        public String finishJSON() throws LiteCoreException {
            final NativeImpl nativeImpl = this.impl;
            Objects.requireNonNull(nativeImpl);
            return (String) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.d8g
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
                public final Object apply(Object obj) {
                    return FLEncoder.NativeImpl.this.nFinishJSON(((Long) obj).longValue());
                }
            });
        }

        private JSONEncoder(@NonNull NativeImpl nativeImpl, long j) {
            super(nativeImpl, j);
        }
    }

    /* loaded from: classes4.dex */
    public static class ManagedFLEncoder extends FLEncoder {
        public ManagedFLEncoder(@NonNull NativeImpl nativeImpl, long j) {
            super(nativeImpl, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$closePeer$0(Long l) throws RuntimeException {
            NativeImpl nativeImpl = this.impl;
            if (nativeImpl != null) {
                nativeImpl.nFree(l.longValue());
            }
        }

        @Override // com.couchbase.lite.internal.fleece.FLEncoder, java.lang.AutoCloseable
        public void close() {
            closePeer(null);
        }

        public void closePeer(@Nullable LogDomain logDomain) {
            releasePeer(logDomain, new InterfaceC2217Fn.ConsumerThrows() { // from class: com.couchbase.lite.internal.fleece.b
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
                public final void accept(Object obj) {
                    FLEncoder.ManagedFLEncoder.this.lambda$closePeer$0((Long) obj);
                }
            });
        }

        public void finalize() throws Throwable {
            try {
                closePeer(LogDomain.DATABASE);
            } finally {
                super.finalize();
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        boolean nBeginArray(long j, long j2);

        boolean nBeginDict(long j, long j2);

        long nCreateFleeceEncoder();

        long nCreateJSONEncoder();

        boolean nEndArray(long j);

        boolean nEndDict(long j);

        @NonNull
        byte[] nFinish(long j) throws LiteCoreException;

        @NonNull
        FLSliceResult nFinish2(long j) throws LiteCoreException;

        @NonNull
        FLSliceResult nFinish3(long j) throws LiteCoreException;

        @NonNull
        String nFinishJSON(long j) throws LiteCoreException;

        void nFree(long j);

        void nReset(long j);

        boolean nWriteBool(long j, boolean z);

        boolean nWriteData(long j, @NonNull byte[] bArr);

        boolean nWriteDouble(long j, double d);

        boolean nWriteFloat(long j, float f);

        boolean nWriteInt(long j, long j2);

        boolean nWriteKey(long j, @NonNull String str);

        boolean nWriteNull(long j);

        boolean nWriteString(long j, @NonNull String str);

        boolean nWriteStringChars(long j, @NonNull char[] cArr);

        boolean nWriteValue(long j, long j2);
    }

    /* loaded from: classes4.dex */
    public static final class UnmanagedFLEncoder extends FLEncoder {
        public UnmanagedFLEncoder(@NonNull NativeImpl nativeImpl, long j) {
            super(nativeImpl, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$close$0(Long l) throws RuntimeException {
            synchronized (this.arguments) {
                this.arguments.clear();
            }
            this.impl.nReset(l.longValue());
        }

        @Override // com.couchbase.lite.internal.fleece.FLEncoder, java.lang.AutoCloseable
        public void close() {
            releasePeer(null, new InterfaceC2217Fn.ConsumerThrows() { // from class: com.couchbase.lite.internal.fleece.c
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
                public final void accept(Object obj) {
                    FLEncoder.UnmanagedFLEncoder.this.lambda$close$0((Long) obj);
                }
            });
        }
    }

    @Nullable
    public static byte[] encodeMap(@Nullable Map<String, Object> map) {
        if (map != null && !map.isEmpty()) {
            try {
                FLEncoder managedEncoder = getManagedEncoder();
                try {
                    managedEncoder.write(map);
                    byte[] finish = managedEncoder.finish();
                    managedEncoder.close();
                    return finish;
                } finally {
                }
            } catch (LiteCoreException e) {
                Log.m9909w(LogDomain.REPLICATOR, "Failed encoding map: " + map, e);
            }
        }
        return null;
    }

    @NonNull
    public static JSONEncoder getJSONEncoder() {
        NativeImpl nativeImpl = NATIVE_IMPL;
        return new JSONEncoder(nativeImpl, nativeImpl.nCreateJSONEncoder());
    }

    @NonNull
    public static FLEncoder getManagedEncoder() {
        NativeImpl nativeImpl = NATIVE_IMPL;
        return new ManagedFLEncoder(nativeImpl, nativeImpl.nCreateFleeceEncoder());
    }

    @NonNull
    public static FLEncoder getUnmanagedEncoder(long j) {
        return new UnmanagedFLEncoder(NATIVE_IMPL, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$beginArray$4(long j, Long l) throws CouchbaseLiteError {
        return Boolean.valueOf(this.impl.nBeginArray(l.longValue(), j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$beginDict$3(long j, Long l) throws CouchbaseLiteError {
        return Boolean.valueOf(this.impl.nBeginDict(l.longValue(), j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$writeData$2(byte[] bArr, Long l) throws CouchbaseLiteError {
        return Boolean.valueOf(this.impl.nWriteData(l.longValue(), bArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$writeKey$5(String str, Long l) throws CouchbaseLiteError {
        return Boolean.valueOf(this.impl.nWriteKey(l.longValue(), str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$writeString$0(String str, Long l) throws CouchbaseLiteError {
        return Boolean.valueOf(this.impl.nWriteString(l.longValue(), str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$writeString$1(char[] cArr, Long l) throws CouchbaseLiteError {
        return Boolean.valueOf(this.impl.nWriteStringChars(l.longValue(), cArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$writeValue$6(Long l, Long l2) {
        return Boolean.valueOf(this.impl.nWriteValue(l.longValue(), l2.longValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$writeValue$7(Long l, Long l2) {
        return Boolean.valueOf(this.impl.nWriteValue(l.longValue(), l2.longValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$writeValue$8(Long l, Long l2) {
        return Boolean.valueOf(this.impl.nWriteValue(l.longValue(), l2.longValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$writeValue$9(Object obj, final Long l) throws RuntimeException {
        if (obj == null) {
            return Boolean.valueOf(this.impl.nWriteNull(l.longValue()));
        }
        if (obj instanceof Boolean) {
            return Boolean.valueOf(this.impl.nWriteBool(l.longValue(), ((Boolean) obj).booleanValue()));
        }
        if (obj instanceof Number) {
            return obj instanceof Integer ? Boolean.valueOf(this.impl.nWriteInt(l.longValue(), ((Integer) obj).longValue())) : obj instanceof Long ? Boolean.valueOf(this.impl.nWriteInt(l.longValue(), ((Long) obj).longValue())) : obj instanceof Short ? Boolean.valueOf(this.impl.nWriteInt(l.longValue(), ((Short) obj).longValue())) : obj instanceof Double ? Boolean.valueOf(this.impl.nWriteDouble(l.longValue(), ((Double) obj).doubleValue())) : Boolean.valueOf(this.impl.nWriteFloat(l.longValue(), ((Float) obj).floatValue()));
        }
        if (obj instanceof String) {
            return Boolean.valueOf(this.impl.nWriteString(l.longValue(), (String) obj));
        }
        if (obj instanceof char[]) {
            return Boolean.valueOf(writeString((char[]) obj));
        }
        if (obj instanceof byte[]) {
            return Boolean.valueOf(this.impl.nWriteData(l.longValue(), (byte[]) obj));
        }
        if (obj instanceof List) {
            return Boolean.valueOf(write((List<?>) obj));
        }
        if (obj instanceof Map) {
            return Boolean.valueOf(write((Map<String, Object>) obj));
        }
        if (obj instanceof FLValue) {
            Boolean bool = (Boolean) ((FLValue) obj).withContent(new InterfaceC2217Fn.NonNullFunction() { // from class: com.sunia.HTREnginev2.c8g
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunction
                public final Object apply(Object obj2) {
                    Boolean lambda$writeValue$6;
                    lambda$writeValue$6 = FLEncoder.this.lambda$writeValue$6(l, (Long) obj2);
                    return lambda$writeValue$6;
                }
            });
            return Boolean.valueOf(bool != null && bool.booleanValue());
        }
        if (obj instanceof FLDict) {
            Boolean bool2 = (Boolean) ((FLDict) obj).withContent(new InterfaceC2217Fn.Function() { // from class: com.sunia.HTREnginev2.r7g
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Function
                public final Object apply(Object obj2) {
                    Boolean lambda$writeValue$7;
                    lambda$writeValue$7 = FLEncoder.this.lambda$writeValue$7(l, (Long) obj2);
                    return lambda$writeValue$7;
                }
            });
            return Boolean.valueOf(bool2 != null && bool2.booleanValue());
        }
        if (obj instanceof FLArray) {
            Boolean bool3 = (Boolean) ((FLArray) obj).withContent(new InterfaceC2217Fn.Function() { // from class: com.sunia.HTREnginev2.s7g
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Function
                public final Object apply(Object obj2) {
                    Boolean lambda$writeValue$8;
                    lambda$writeValue$8 = FLEncoder.this.lambda$writeValue$8(l, (Long) obj2);
                    return lambda$writeValue$8;
                }
            });
            return Boolean.valueOf(bool3 != null && bool3.booleanValue());
        }
        if (!(obj instanceof FLEncodable)) {
            return Boolean.FALSE;
        }
        ((FLEncodable) obj).encodeTo(this);
        return Boolean.TRUE;
    }

    public boolean beginArray(final long j) {
        return ((Boolean) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.w7g
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                Boolean lambda$beginArray$4;
                lambda$beginArray$4 = FLEncoder.this.lambda$beginArray$4(j, (Long) obj);
                return lambda$beginArray$4;
            }
        })).booleanValue();
    }

    public boolean beginDict(final long j) {
        return ((Boolean) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.y7g
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                Boolean lambda$beginDict$3;
                lambda$beginDict$3 = FLEncoder.this.lambda$beginDict$3(j, (Long) obj);
                return lambda$beginDict$3;
            }
        })).booleanValue();
    }

    @Override // java.lang.AutoCloseable
    public abstract void close();

    public boolean endArray() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return ((Boolean) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.b8g
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                return Boolean.valueOf(FLEncoder.NativeImpl.this.nEndArray(((Long) obj).longValue()));
            }
        })).booleanValue();
    }

    public boolean endDict() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return ((Boolean) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.a8g
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                return Boolean.valueOf(FLEncoder.NativeImpl.this.nEndDict(((Long) obj).longValue()));
            }
        })).booleanValue();
    }

    @NonNull
    public byte[] finish() throws LiteCoreException {
        return this.impl.nFinish(getPeer());
    }

    @NonNull
    public FLSliceResult finish2() throws LiteCoreException {
        return this.impl.nFinish2(getPeer());
    }

    @NonNull
    public FLSliceResult finish3() throws LiteCoreException {
        return this.impl.nFinish3(getPeer());
    }

    @Nullable
    public Object getArg(@NonNull String str) {
        Object obj;
        synchronized (this.arguments) {
            obj = this.arguments.get(str);
        }
        return obj;
    }

    public void reset() {
        this.impl.nReset(getPeer());
    }

    @NonNull
    public FLEncoder setArg(@NonNull String str, @Nullable Object obj) {
        synchronized (this.arguments) {
            this.arguments.put(str, obj);
        }
        return this;
    }

    @Override // com.couchbase.lite.internal.core.C4NativePeer
    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder("FLEncoder{");
        sb.append(ClassUtils.objId(this));
        sb.append('/');
        sb.append(super.toString());
        sb.append('[');
        boolean z = true;
        for (Map.Entry<String, Object> entry : this.arguments.entrySet()) {
            if (z) {
                z = false;
            } else {
                sb.append(',');
            }
            sb.append((Object) entry.getKey());
            sb.append("=>");
            sb.append(entry.getValue());
        }
        sb.append("]}");
        return sb.toString();
    }

    public boolean write(@Nullable Map<String, Object> map) {
        boolean z;
        if (map == null) {
            z = beginDict(0L);
        } else {
            boolean beginDict = beginDict(map.size());
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                beginDict = (beginDict && writeKey(entry.getKey())) && writeValue(entry.getValue());
            }
            z = beginDict;
        }
        return z && endDict();
    }

    public boolean writeData(@NonNull final byte[] bArr) {
        return ((Boolean) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.v7g
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                Boolean lambda$writeData$2;
                lambda$writeData$2 = FLEncoder.this.lambda$writeData$2(bArr, (Long) obj);
                return lambda$writeData$2;
            }
        })).booleanValue();
    }

    public boolean writeKey(final String str) {
        return ((Boolean) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.u7g
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                Boolean lambda$writeKey$5;
                lambda$writeKey$5 = FLEncoder.this.lambda$writeKey$5(str, (Long) obj);
                return lambda$writeKey$5;
            }
        })).booleanValue();
    }

    public boolean writeNull() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return ((Boolean) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.x7g
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                return Boolean.valueOf(FLEncoder.NativeImpl.this.nWriteNull(((Long) obj).longValue()));
            }
        })).booleanValue();
    }

    public boolean writeString(@NonNull final String str) {
        return ((Boolean) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.q7g
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                Boolean lambda$writeString$0;
                lambda$writeString$0 = FLEncoder.this.lambda$writeString$0(str, (Long) obj);
                return lambda$writeString$0;
            }
        })).booleanValue();
    }

    public boolean writeValue(@Nullable final Object obj) {
        return ((Boolean) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.t7g
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj2) {
                Boolean lambda$writeValue$9;
                lambda$writeValue$9 = FLEncoder.this.lambda$writeValue$9(obj, (Long) obj2);
                return lambda$writeValue$9;
            }
        })).booleanValue();
    }

    private FLEncoder(@NonNull NativeImpl nativeImpl, long j) {
        super(j);
        this.arguments = new HashMap();
        this.impl = nativeImpl;
    }

    public boolean writeString(@NonNull final char[] cArr) {
        return ((Boolean) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.z7g
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                Boolean lambda$writeString$1;
                lambda$writeString$1 = FLEncoder.this.lambda$writeString$1(cArr, (Long) obj);
                return lambda$writeString$1;
            }
        })).booleanValue();
    }

    public boolean write(@Nullable List<?> list) {
        boolean z;
        if (list == null) {
            z = beginArray(0L);
        } else {
            boolean beginArray = beginArray(list.size());
            Iterator<?> it2 = list.iterator();
            while (it2.hasNext()) {
                beginArray = beginArray && writeValue(it2.next());
            }
            z = beginArray;
        }
        return z && endArray();
    }
}
