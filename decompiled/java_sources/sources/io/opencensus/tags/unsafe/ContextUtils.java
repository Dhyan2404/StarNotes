package io.opencensus.tags.unsafe;

import io.grpc.Context;
import io.opencensus.internal.Utils;
import io.opencensus.tags.Tag;
import io.opencensus.tags.TagContext;
import java.util.Collections;
import java.util.Iterator;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* loaded from: classes10.dex */
public final class ContextUtils {

    /* renamed from: a */
    public static final TagContext f94845a;

    /* renamed from: b */
    public static final Context.Key<TagContext> f94846b;

    @Immutable
    /* renamed from: io.opencensus.tags.unsafe.ContextUtils$b */
    /* loaded from: classes10.dex */
    public static final class C17190b extends TagContext {
        public C17190b() {
        }

        @Override // io.opencensus.tags.TagContext
        public Iterator<Tag> getIterator() {
            return Collections.emptySet().iterator();
        }
    }

    static {
        C17190b c17190b = new C17190b();
        f94845a = c17190b;
        f94846b = Context.keyWithDefault("opencensus-tag-context-key", c17190b);
    }

    public static TagContext getValue(Context context) {
        TagContext tagContext = f94846b.get(context);
        return tagContext == null ? f94845a : tagContext;
    }

    public static Context withValue(Context context, @Nullable TagContext tagContext) {
        return ((Context) Utils.checkNotNull(context, "context")).withValue(f94846b, tagContext);
    }
}
