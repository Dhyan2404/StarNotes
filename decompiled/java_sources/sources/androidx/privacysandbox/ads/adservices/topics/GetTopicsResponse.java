package androidx.privacysandbox.ads.adservices.topics;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\u0010\u0010\u0011J\u0013\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016R\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;", "", Constants.ATTRVAL_OTHER, "", "equals", "", "hashCode", "", "toString", "", "Landroidx/privacysandbox/ads/adservices/topics/Topic;", "a", "Ljava/util/List;", "getTopics", "()Ljava/util/List;", "topics", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "ads-adservices_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class GetTopicsResponse {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<Topic> Topics;

    public GetTopicsResponse(@NotNull List<Topic> topics) {
        Intrinsics.checkNotNullParameter(topics, "topics");
        this.Topics = topics;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GetTopicsResponse)) {
            return false;
        }
        GetTopicsResponse getTopicsResponse = (GetTopicsResponse) other;
        if (this.Topics.size() != getTopicsResponse.Topics.size()) {
            return false;
        }
        return Intrinsics.areEqual(new HashSet(this.Topics), new HashSet(getTopicsResponse.Topics));
    }

    @NotNull
    public final List<Topic> getTopics() {
        return this.Topics;
    }

    public int hashCode() {
        return Objects.hash(this.Topics);
    }

    @NotNull
    public String toString() {
        return "Topics=" + this.Topics;
    }
}
