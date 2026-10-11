package com.onyx.android.sdk.neopdf.lib;

import com.fasterxml.uuid.Generators;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/lib/UUIDUtils;", "", "()V", "rawUUID", "", "shortUUID", "timeBasedEpochUUID", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class UUIDUtils {

    @NotNull
    public static final UUIDUtils INSTANCE = new UUIDUtils();

    @NotNull
    public final String rawUUID() {
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
        return uuid;
    }

    @NotNull
    public final String shortUUID() {
        return new Regex("-").replace(rawUUID(), "");
    }

    @NotNull
    public final String timeBasedEpochUUID() {
        String uuid = Generators.timeBasedEpochGenerator().generate().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
        return uuid;
    }
}
