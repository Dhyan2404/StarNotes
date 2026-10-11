package io.opencensus.tags;

import com.sunia.HTREnginev2.C13935jk;
import io.opencensus.internal.StringUtils;
import io.opencensus.internal.Utils;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class TagValue {
    public static final int MAX_LENGTH = 255;

    /* renamed from: a */
    public static boolean m61047a(String str) {
        return str.length() <= 255 && StringUtils.isPrintableString(str);
    }

    public static TagValue create(String str) {
        Utils.checkArgument(m61047a(str), "Invalid TagValue: %s", str);
        return new C13935jk(str);
    }

    public abstract String asString();
}
