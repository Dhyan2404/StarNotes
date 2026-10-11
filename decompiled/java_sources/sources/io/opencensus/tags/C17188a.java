package io.opencensus.tags;

import io.opencensus.tags.TagMetadata;

/* renamed from: io.opencensus.tags.a */
/* loaded from: classes10.dex */
public final class C17188a extends TagMetadata {

    /* renamed from: a */
    public final TagMetadata.TagTtl f94844a;

    public C17188a(TagMetadata.TagTtl tagTtl) {
        if (tagTtl == null) {
            throw new NullPointerException("Null tagTtl");
        }
        this.f94844a = tagTtl;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof TagMetadata) {
            return this.f94844a.equals(((TagMetadata) obj).getTagTtl());
        }
        return false;
    }

    @Override // io.opencensus.tags.TagMetadata
    public TagMetadata.TagTtl getTagTtl() {
        return this.f94844a;
    }

    public int hashCode() {
        return this.f94844a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "TagMetadata{tagTtl=" + this.f94844a + "}";
    }
}
