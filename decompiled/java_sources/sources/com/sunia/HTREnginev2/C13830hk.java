package com.sunia.HTREnginev2;

import io.opencensus.tags.Tag;
import io.opencensus.tags.TagKey;
import io.opencensus.tags.TagMetadata;
import io.opencensus.tags.TagValue;

/* renamed from: com.sunia.HTREnginev2.hk */
/* loaded from: classes10.dex */
public final class C13830hk extends Tag {

    /* renamed from: b */
    public final TagKey f72269b;

    /* renamed from: c */
    public final TagValue f72270c;

    /* renamed from: d */
    public final TagMetadata f72271d;

    public C13830hk(TagKey tagKey, TagValue tagValue, TagMetadata tagMetadata) {
        if (tagKey == null) {
            throw new NullPointerException("Null key");
        }
        this.f72269b = tagKey;
        if (tagValue == null) {
            throw new NullPointerException("Null value");
        }
        this.f72270c = tagValue;
        if (tagMetadata == null) {
            throw new NullPointerException("Null tagMetadata");
        }
        this.f72271d = tagMetadata;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Tag)) {
            return false;
        }
        Tag tag = (Tag) obj;
        return this.f72269b.equals(tag.getKey()) && this.f72270c.equals(tag.getValue()) && this.f72271d.equals(tag.getTagMetadata());
    }

    @Override // io.opencensus.tags.Tag
    public TagKey getKey() {
        return this.f72269b;
    }

    @Override // io.opencensus.tags.Tag
    public TagMetadata getTagMetadata() {
        return this.f72271d;
    }

    @Override // io.opencensus.tags.Tag
    public TagValue getValue() {
        return this.f72270c;
    }

    public int hashCode() {
        return this.f72271d.hashCode() ^ ((((this.f72269b.hashCode() ^ 1000003) * 1000003) ^ this.f72270c.hashCode()) * 1000003);
    }

    public String toString() {
        return "Tag{key=" + this.f72269b + ", value=" + this.f72270c + ", tagMetadata=" + this.f72271d + "}";
    }
}
