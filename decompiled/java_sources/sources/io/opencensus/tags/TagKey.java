package io.opencensus.tags;

import com.sunia.HTREnginev2.C13879ik;
import io.opencensus.internal.StringUtils;
import io.opencensus.internal.Utils;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class TagKey {
    public static final int MAX_LENGTH = 255;

    /* renamed from: a */
    public static boolean m61046a(String str) {
        return !str.isEmpty() && str.length() <= 255 && StringUtils.isPrintableString(str);
    }

    public static TagKey create(String str) {
        Utils.checkArgument(m61046a(str), "Invalid TagKey name: %s", str);
        return new C13879ik(str);
    }

    public abstract String getName();
}
