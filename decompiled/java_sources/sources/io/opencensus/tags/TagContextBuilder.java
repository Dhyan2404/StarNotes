package io.opencensus.tags;

import io.opencensus.common.Scope;
import io.opencensus.tags.TagMetadata;

/* loaded from: classes10.dex */
public abstract class TagContextBuilder {

    /* renamed from: a */
    public static final TagMetadata f94840a = TagMetadata.create(TagMetadata.TagTtl.NO_PROPAGATION);

    /* renamed from: b */
    public static final TagMetadata f94841b = TagMetadata.create(TagMetadata.TagTtl.UNLIMITED_PROPAGATION);

    public abstract TagContext build();

    public abstract Scope buildScoped();

    @Deprecated
    public abstract TagContextBuilder put(TagKey tagKey, TagValue tagValue);

    public TagContextBuilder put(TagKey tagKey, TagValue tagValue, TagMetadata tagMetadata) {
        return put(tagKey, tagValue);
    }

    public final TagContextBuilder putLocal(TagKey tagKey, TagValue tagValue) {
        return put(tagKey, tagValue, f94840a);
    }

    public final TagContextBuilder putPropagating(TagKey tagKey, TagValue tagValue) {
        return put(tagKey, tagValue, f94841b);
    }

    public abstract TagContextBuilder remove(TagKey tagKey);
}
