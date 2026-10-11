package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
public final class zbkg {
    private final String zba = "\n";

    private zbkg(String str) {
    }

    public static zbkg zba(String str) {
        return new zbkg("\n");
    }

    public static final CharSequence zbc(@CheckForNull Object obj) {
        Objects.requireNonNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public final String zbb(Iterable iterable) {
        Iterator it2 = iterable.iterator();
        StringBuilder sb = new StringBuilder();
        try {
            if (it2.hasNext()) {
                sb.append(zbc(it2.next()));
                while (it2.hasNext()) {
                    sb.append((CharSequence) this.zba);
                    sb.append(zbc(it2.next()));
                }
            }
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
