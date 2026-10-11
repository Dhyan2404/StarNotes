package androidx.privacysandbox.ads.adservices.topics;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\u0006\u0010\u0011\u001a\u00020\t\u0012\u0006\u0010\u0016\u001a\u00020\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0013\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\b\u001a\u00020\u0007H\u0016R\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0011\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u000b\u001a\u0004\b\u0010\u0010\rR\u0017\u0010\u0016\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Landroidx/privacysandbox/ads/adservices/topics/Topic;", "", "", "toString", Constants.ATTRVAL_OTHER, "", "equals", "", "hashCode", "", "a", "J", "getTaxonomyVersion", "()J", "taxonomyVersion", "b", "getModelVersion", "modelVersion", "c", "I", "getTopicId", "()I", "topicId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(JJI)V", "ads-adservices_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class Topic {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public final long TaxonomyVersion;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final long ModelVersion;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final int TopicCode;

    public Topic(long j, long j2, int i) {
        this.TaxonomyVersion = j;
        this.ModelVersion = j2;
        this.TopicCode = i;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Topic)) {
            return false;
        }
        Topic topic = (Topic) other;
        return this.TaxonomyVersion == topic.TaxonomyVersion && this.ModelVersion == topic.ModelVersion && this.TopicCode == topic.TopicCode;
    }

    public final long getModelVersion() {
        return this.ModelVersion;
    }

    public final long getTaxonomyVersion() {
        return this.TaxonomyVersion;
    }

    /* renamed from: getTopicId, reason: from getter */
    public final int getTopicCode() {
        return this.TopicCode;
    }

    public int hashCode() {
        return (((Long.hashCode(this.TaxonomyVersion) * 31) + Long.hashCode(this.ModelVersion)) * 31) + Integer.hashCode(this.TopicCode);
    }

    @NotNull
    public String toString() {
        return "Topic { " + ("TaxonomyVersion=" + this.TaxonomyVersion + ", ModelVersion=" + this.ModelVersion + ", TopicCode=" + this.TopicCode + " }");
    }
}
