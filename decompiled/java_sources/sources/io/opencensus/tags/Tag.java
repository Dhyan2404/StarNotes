package io.opencensus.tags;

import com.sunia.HTREnginev2.C13830hk;
import io.opencensus.tags.TagMetadata;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class Tag {

    /* renamed from: a */
    public static final TagMetadata f94839a = TagMetadata.create(TagMetadata.TagTtl.UNLIMITED_PROPAGATION);

    @Deprecated
    public static Tag create(TagKey tagKey, TagValue tagValue) {
        return create(tagKey, tagValue, f94839a);
    }

    public abstract TagKey getKey();

    public abstract TagMetadata getTagMetadata();

    public abstract TagValue getValue();

    public static Tag create(TagKey tagKey, TagValue tagValue, TagMetadata tagMetadata) {
        return new C13830hk(tagKey, tagValue, tagMetadata);
    }
}
