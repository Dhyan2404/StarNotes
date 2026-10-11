package io.opencensus.trace;

import com.sunia.HTREnginev2.C14101mj;
import io.opencensus.internal.Utils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class Annotation {

    /* renamed from: a */
    public static final Map<String, AttributeValue> f94847a = Collections.unmodifiableMap(Collections.emptyMap());

    public static Annotation fromDescription(String str) {
        return new C14101mj(str, f94847a);
    }

    public static Annotation fromDescriptionAndAttributes(String str, Map<String, AttributeValue> map) {
        return new C14101mj(str, Collections.unmodifiableMap(new HashMap((Map) Utils.checkNotNull(map, "attributes"))));
    }

    public abstract Map<String, AttributeValue> getAttributes();

    public abstract String getDescription();
}
