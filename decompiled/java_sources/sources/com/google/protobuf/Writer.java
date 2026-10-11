package com.google.protobuf;

import com.google.protobuf.MapEntryLite;
import com.sunia.HTREnginev2.htd;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@htd
/* loaded from: classes6.dex */
public interface Writer {

    /* loaded from: classes6.dex */
    public enum FieldOrder {
        ASCENDING,
        DESCENDING
    }

    /* renamed from: A */
    void mo29724A(int fieldNumber, List<Boolean> value, boolean packed) throws IOException;

    @Deprecated
    /* renamed from: B */
    void mo29725B(int fieldNumber, Object value) throws IOException;

    /* renamed from: C */
    void mo29726C(int fieldNumber, List<Long> value, boolean packed) throws IOException;

    @Deprecated
    /* renamed from: a */
    void mo29727a(int fieldNumber, List<?> value) throws IOException;

    /* renamed from: b */
    void mo29728b(int fieldNumber, List<Integer> value, boolean packed) throws IOException;

    /* renamed from: c */
    void mo29729c(int fieldNumber, List<Integer> value, boolean packed) throws IOException;

    /* renamed from: d */
    void mo29730d(int fieldNumber, List<Long> value, boolean packed) throws IOException;

    @Deprecated
    /* renamed from: e */
    void mo29731e(int fieldNumber) throws IOException;

    /* renamed from: f */
    void mo29732f(int fieldNumber, List<ByteString> value) throws IOException;

    /* renamed from: g */
    void mo29733g(int fieldNumber, List<?> value, InterfaceC6889z schema) throws IOException;

    @Deprecated
    /* renamed from: h */
    void mo29734h(int fieldNumber, Object value, InterfaceC6889z schema) throws IOException;

    /* renamed from: i */
    void mo29735i(int fieldNumber, List<Long> value, boolean packed) throws IOException;

    @Deprecated
    /* renamed from: j */
    void mo29736j(int fieldNumber, List<?> value, InterfaceC6889z schema) throws IOException;

    /* renamed from: k */
    void mo29737k(int fieldNumber, Object value, InterfaceC6889z schema) throws IOException;

    /* renamed from: l */
    FieldOrder mo29738l();

    /* renamed from: m */
    void mo29739m(int fieldNumber, List<Integer> value, boolean packed) throws IOException;

    /* renamed from: n */
    void mo29740n(int fieldNumber, List<Float> value, boolean packed) throws IOException;

    /* renamed from: o */
    void mo29741o(int fieldNumber, Object value) throws IOException;

    /* renamed from: p */
    void mo29742p(int fieldNumber, List<Integer> value, boolean packed) throws IOException;

    /* renamed from: q */
    void mo29743q(int fieldNumber, List<?> value) throws IOException;

    @Deprecated
    /* renamed from: r */
    void mo29744r(int fieldNumber) throws IOException;

    /* renamed from: s */
    void mo29745s(int fieldNumber, List<Long> value, boolean packed) throws IOException;

    /* renamed from: t */
    <K, V> void mo29746t(int fieldNumber, MapEntryLite.C6795b<K, V> metadata, Map<K, V> map) throws IOException;

    /* renamed from: u */
    void mo29747u(int fieldNumber, List<Integer> value, boolean packed) throws IOException;

    /* renamed from: v */
    void mo29748v(int fieldNumber, List<Double> value, boolean packed) throws IOException;

    /* renamed from: w */
    void mo29749w(int fieldNumber, List<String> value) throws IOException;

    void writeBool(int fieldNumber, boolean value) throws IOException;

    void writeBytes(int fieldNumber, ByteString value) throws IOException;

    void writeDouble(int fieldNumber, double value) throws IOException;

    void writeEnum(int fieldNumber, int value) throws IOException;

    void writeFixed32(int fieldNumber, int value) throws IOException;

    void writeFixed64(int fieldNumber, long value) throws IOException;

    void writeFloat(int fieldNumber, float value) throws IOException;

    void writeInt32(int fieldNumber, int value) throws IOException;

    void writeInt64(int fieldNumber, long value) throws IOException;

    void writeSFixed32(int fieldNumber, int value) throws IOException;

    void writeSFixed64(int fieldNumber, long value) throws IOException;

    void writeSInt32(int fieldNumber, int value) throws IOException;

    void writeSInt64(int fieldNumber, long value) throws IOException;

    void writeString(int fieldNumber, String value) throws IOException;

    void writeUInt32(int fieldNumber, int value) throws IOException;

    void writeUInt64(int fieldNumber, long value) throws IOException;

    /* renamed from: x */
    void mo29750x(int fieldNumber, List<Integer> value, boolean packed) throws IOException;

    /* renamed from: y */
    void mo29751y(int fieldNumber, List<Long> value, boolean packed) throws IOException;

    /* renamed from: z */
    void mo29752z(int fieldNumber, Object value) throws IOException;
}
