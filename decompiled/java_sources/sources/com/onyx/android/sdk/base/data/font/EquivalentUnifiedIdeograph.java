package com.onyx.android.sdk.base.data.font;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/EquivalentUnifiedIdeograph;", "", "()V", "equivalentUnicodeMapper", "", "", "mapper", "", "", "getMapper", "()Ljava/util/Map;", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nEquivalentUnifiedIdeograph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EquivalentUnifiedIdeograph.kt\ncom/onyx/android/sdk/base/data/font/EquivalentUnifiedIdeograph\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,367:1\n526#2:368\n511#2,6:369\n*S KotlinDebug\n*F\n+ 1 EquivalentUnifiedIdeograph.kt\ncom/onyx/android/sdk/base/data/font/EquivalentUnifiedIdeograph\n*L\n366#1:368\n366#1:369,6\n*E\n"})
/* loaded from: classes7.dex */
public final class EquivalentUnifiedIdeograph {

    @NotNull
    public static final EquivalentUnifiedIdeograph INSTANCE = new EquivalentUnifiedIdeograph();

    @NotNull
    private static final Map<Integer, Integer> equivalentUnicodeMapper;

    @NotNull
    private static final Map<String, String> mapper;

    /* JADX WARN: Removed duplicated region for block: B:14:0x1ba2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x1b6f A[SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 7089
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.data.font.EquivalentUnifiedIdeograph.<clinit>():void");
    }

    private EquivalentUnifiedIdeograph() {
    }

    @NotNull
    public final Map<String, String> getMapper() {
        return mapper;
    }
}
