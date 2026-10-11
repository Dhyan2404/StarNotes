package com.google.protobuf;

import com.google.protobuf.MapEntryLite;
import com.sunia.HTREnginev2.htd;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@htd
/* renamed from: com.google.protobuf.y */
/* loaded from: classes6.dex */
public interface InterfaceC6888y {

    /* renamed from: a */
    public static final int f38193a = Integer.MAX_VALUE;

    /* renamed from: b */
    public static final int f38194b = 0;

    /* renamed from: A */
    <K, V> void mo29912A(Map<K, V> target, MapEntryLite.C6795b<K, V> mapDefaultEntry, ExtensionRegistryLite extensionRegistry) throws IOException;

    /* renamed from: B */
    ByteString mo29913B() throws IOException;

    /* renamed from: C */
    long mo29914C() throws IOException;

    /* renamed from: D */
    <T> void mo29915D(T target, InterfaceC6889z<T> schema, ExtensionRegistryLite extensionRegistry) throws IOException;

    /* renamed from: E */
    void mo29916E(List<Integer> target) throws IOException;

    /* renamed from: F */
    int mo29917F() throws IOException;

    /* renamed from: G */
    void mo29918G(List<String> target) throws IOException;

    /* renamed from: H */
    void mo29919H(List<Float> target) throws IOException;

    /* renamed from: I */
    void mo29920I(List<ByteString> target) throws IOException;

    /* renamed from: J */
    void mo29921J(List<Double> target) throws IOException;

    /* renamed from: K */
    long mo29922K() throws IOException;

    /* renamed from: L */
    void mo29923L(List<Integer> target) throws IOException;

    @Deprecated
    /* renamed from: M */
    <T> void mo29924M(List<T> target, InterfaceC6889z<T> targetType, ExtensionRegistryLite extensionRegistry) throws IOException;

    /* renamed from: N */
    void mo29925N(List<Long> target) throws IOException;

    /* renamed from: O */
    void mo29926O(List<Integer> target) throws IOException;

    /* renamed from: P */
    void mo29927P(List<Integer> target) throws IOException;

    @Deprecated
    /* renamed from: Q */
    <T> void mo29928Q(List<T> target, Class<T> targetType, ExtensionRegistryLite extensionRegistry) throws IOException;

    /* renamed from: R */
    long mo29929R() throws IOException;

    /* renamed from: S */
    int mo29930S() throws IOException;

    /* renamed from: T */
    String mo29931T() throws IOException;

    /* renamed from: a */
    int mo29936a() throws IOException;

    /* renamed from: b */
    int mo29938b() throws IOException;

    /* renamed from: c */
    void mo29940c(List<Boolean> target) throws IOException;

    /* renamed from: d */
    void mo29942d(List<Integer> target) throws IOException;

    @Deprecated
    /* renamed from: e */
    <T> T mo29944e(InterfaceC6889z<T> schema, ExtensionRegistryLite extensionRegistry) throws IOException;

    /* renamed from: f */
    <T> void mo29946f(List<T> target, Class<T> targetType, ExtensionRegistryLite extensionRegistry) throws IOException;

    /* renamed from: g */
    void mo29948g(List<Long> target) throws IOException;

    int getTag();

    /* renamed from: h */
    void mo29950h(List<Integer> target) throws IOException;

    /* renamed from: i */
    <T> void mo29952i(T target, InterfaceC6889z<T> schema, ExtensionRegistryLite extensionRegistry) throws IOException;

    /* renamed from: j */
    boolean mo29911j();

    /* renamed from: k */
    boolean mo29955k() throws IOException;

    /* renamed from: l */
    long mo29957l() throws IOException;

    /* renamed from: m */
    boolean mo29959m() throws IOException;

    /* renamed from: n */
    <T> void mo29961n(List<T> target, InterfaceC6889z<T> schema, ExtensionRegistryLite extensionRegistry) throws IOException;

    /* renamed from: o */
    void mo29963o(List<Long> target) throws IOException;

    @Deprecated
    /* renamed from: p */
    <T> T mo29965p(Class<T> clazz, ExtensionRegistryLite extensionRegistry) throws IOException;

    /* renamed from: q */
    void mo29967q(List<String> target) throws IOException;

    /* renamed from: r */
    int mo29969r() throws IOException;

    double readDouble() throws IOException;

    float readFloat() throws IOException;

    /* renamed from: s */
    void mo29971s(List<Long> target) throws IOException;

    /* renamed from: t */
    <T> T mo29973t(Class<T> clazz, ExtensionRegistryLite extensionRegistry) throws IOException;

    /* renamed from: u */
    int mo29974u() throws IOException;

    /* renamed from: v */
    String mo29975v() throws IOException;

    /* renamed from: w */
    <T> T mo29976w(InterfaceC6889z<T> schema, ExtensionRegistryLite extensionRegistry) throws IOException;

    /* renamed from: x */
    void mo29977x(List<Long> target) throws IOException;

    /* renamed from: y */
    long mo29978y() throws IOException;

    /* renamed from: z */
    int mo29979z() throws IOException;
}
