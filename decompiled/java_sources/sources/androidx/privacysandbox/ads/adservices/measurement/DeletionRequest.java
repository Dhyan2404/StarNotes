package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import androidx.annotation.RequiresApi;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.time.Instant;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@RequiresApi(33)
@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\b\u0007\u0018\u0000 &2\u00020\u0001:\u0002'&BK\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0011\u0012\u000e\b\u0002\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a\u0012\u000e\b\u0002\u0010#\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a¢\u0006\u0004\b$\u0010%J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0013\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\b\u001a\u00020\u0007H\u0016R\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0010\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\n\u001a\u0004\b\u000f\u0010\fR\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0019\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0013\u001a\u0004\b\u0018\u0010\u0015R\u001d\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u001d\u0010#\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a8\u0006¢\u0006\f\n\u0004\b!\u0010\u001d\u001a\u0004\b\"\u0010\u001f¨\u0006("}, m61528d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;", "", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "", "toString", "a", "I", "getDeletionMode", "()I", "deletionMode", "b", "getMatchBehavior", "matchBehavior", "Ljava/time/Instant;", "c", "Ljava/time/Instant;", "getStart", "()Ljava/time/Instant;", gon.f71290o0, "d", "getEnd", "end", "", "Landroid/net/Uri;", "e", "Ljava/util/List;", "getDomainUris", "()Ljava/util/List;", "domainUris", C6997f.f39671c, "getOriginUris", "originUris", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(IILjava/time/Instant;Ljava/time/Instant;Ljava/util/List;Ljava/util/List;)V", "Companion", "Builder", "ads-adservices_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class DeletionRequest {
    public static final int DELETION_MODE_ALL = 0;
    public static final int DELETION_MODE_EXCLUDE_INTERNAL_DATA = 1;
    public static final int MATCH_BEHAVIOR_DELETE = 0;
    public static final int MATCH_BEHAVIOR_PRESERVE = 1;

    /* renamed from: a, reason: from kotlin metadata */
    public final int deletionMode;

    /* renamed from: b, reason: from kotlin metadata */
    public final int matchBehavior;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Instant start;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Instant end;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<Uri> domainUris;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<Uri> originUris;

    @RequiresApi(33)
    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u000f¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0002J\u0014\u0010\n\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J\u0014\u0010\f\u001a\u00020\u00002\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J\u0006\u0010\u000e\u001a\u00020\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0005\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0016R\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;", "", "Ljava/time/Instant;", gon.f71290o0, "setStart", "end", "setEnd", "", "Landroid/net/Uri;", "domainUris", "setDomainUris", "originUris", "setOriginUris", "Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;", PrivilegedApp.f6529f, "", "a", "I", "deletionMode", "b", "matchBehavior", "c", "Ljava/time/Instant;", "d", "e", "Ljava/util/List;", C6997f.f39671c, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(II)V", "ads-adservices_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: from kotlin metadata */
        public final int deletionMode;

        /* renamed from: b, reason: from kotlin metadata */
        public final int matchBehavior;

        /* renamed from: c, reason: from kotlin metadata */
        @NotNull
        public Instant start;

        /* renamed from: d, reason: from kotlin metadata */
        @NotNull
        public Instant end;

        /* renamed from: e, reason: from kotlin metadata */
        @NotNull
        public List<? extends Uri> domainUris;

        /* renamed from: f, reason: from kotlin metadata */
        @NotNull
        public List<? extends Uri> originUris;

        public Builder(int i, int i2) {
            List<? extends Uri> emptyList;
            List<? extends Uri> emptyList2;
            this.deletionMode = i;
            this.matchBehavior = i2;
            Instant MIN = Instant.MIN;
            Intrinsics.checkNotNullExpressionValue(MIN, "MIN");
            this.start = MIN;
            Instant MAX = Instant.MAX;
            Intrinsics.checkNotNullExpressionValue(MAX, "MAX");
            this.end = MAX;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            this.domainUris = emptyList;
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            this.originUris = emptyList2;
        }

        @NotNull
        public final DeletionRequest build() {
            return new DeletionRequest(this.deletionMode, this.matchBehavior, this.start, this.end, this.domainUris, this.originUris);
        }

        @NotNull
        public final Builder setDomainUris(@NotNull List<? extends Uri> domainUris) {
            Intrinsics.checkNotNullParameter(domainUris, "domainUris");
            this.domainUris = domainUris;
            return this;
        }

        @NotNull
        public final Builder setEnd(@NotNull Instant end) {
            Intrinsics.checkNotNullParameter(end, "end");
            this.end = end;
            return this;
        }

        @NotNull
        public final Builder setOriginUris(@NotNull List<? extends Uri> originUris) {
            Intrinsics.checkNotNullParameter(originUris, "originUris");
            this.originUris = originUris;
            return this;
        }

        @NotNull
        public final Builder setStart(@NotNull Instant start) {
            Intrinsics.checkNotNullParameter(start, "start");
            this.start = start;
            return this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DeletionRequest(int i, int i2, @NotNull Instant start, @NotNull Instant end, @NotNull List<? extends Uri> domainUris, @NotNull List<? extends Uri> originUris) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(end, "end");
        Intrinsics.checkNotNullParameter(domainUris, "domainUris");
        Intrinsics.checkNotNullParameter(originUris, "originUris");
        this.deletionMode = i;
        this.matchBehavior = i2;
        this.start = start;
        this.end = end;
        this.domainUris = domainUris;
        this.originUris = originUris;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DeletionRequest)) {
            return false;
        }
        DeletionRequest deletionRequest = (DeletionRequest) other;
        return this.deletionMode == deletionRequest.deletionMode && Intrinsics.areEqual(new HashSet(this.domainUris), new HashSet(deletionRequest.domainUris)) && Intrinsics.areEqual(new HashSet(this.originUris), new HashSet(deletionRequest.originUris)) && Intrinsics.areEqual(this.start, deletionRequest.start) && Intrinsics.areEqual(this.end, deletionRequest.end) && this.matchBehavior == deletionRequest.matchBehavior;
    }

    public final int getDeletionMode() {
        return this.deletionMode;
    }

    @NotNull
    public final List<Uri> getDomainUris() {
        return this.domainUris;
    }

    @NotNull
    public final Instant getEnd() {
        return this.end;
    }

    public final int getMatchBehavior() {
        return this.matchBehavior;
    }

    @NotNull
    public final List<Uri> getOriginUris() {
        return this.originUris;
    }

    @NotNull
    public final Instant getStart() {
        return this.start;
    }

    public int hashCode() {
        return (((((((((Integer.hashCode(this.deletionMode) * 31) + this.domainUris.hashCode()) * 31) + this.originUris.hashCode()) * 31) + this.start.hashCode()) * 31) + this.end.hashCode()) * 31) + Integer.hashCode(this.matchBehavior);
    }

    @NotNull
    public String toString() {
        return "DeletionRequest { DeletionMode=" + (this.deletionMode == 0 ? "DELETION_MODE_ALL" : "DELETION_MODE_EXCLUDE_INTERNAL_DATA") + ", MatchBehavior=" + (this.matchBehavior == 0 ? "MATCH_BEHAVIOR_DELETE" : "MATCH_BEHAVIOR_PRESERVE") + ", Start=" + this.start + ", End=" + this.end + ", DomainUris=" + this.domainUris + ", OriginUris=" + this.originUris + " }";
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ DeletionRequest(int r8, int r9, java.time.Instant r10, java.time.Instant r11, java.util.List r12, java.util.List r13, int r14, kotlin.jvm.internal.DefaultConstructorMarker r15) {
        /*
            r7 = this;
            r15 = r14 & 4
            if (r15 == 0) goto Lb
            java.time.Instant r10 = java.time.Instant.MIN
            java.lang.String r15 = "MIN"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r15)
        Lb:
            r3 = r10
            r10 = r14 & 8
            if (r10 == 0) goto L17
            java.time.Instant r11 = java.time.Instant.MAX
            java.lang.String r10 = "MAX"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r11, r10)
        L17:
            r4 = r11
            r10 = r14 & 16
            if (r10 == 0) goto L20
            java.util.List r12 = kotlin.collections.CollectionsKt.emptyList()
        L20:
            r5 = r12
            r10 = r14 & 32
            if (r10 == 0) goto L29
            java.util.List r13 = kotlin.collections.CollectionsKt.emptyList()
        L29:
            r6 = r13
            r0 = r7
            r1 = r8
            r2 = r9
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.privacysandbox.ads.adservices.measurement.DeletionRequest.<init>(int, int, java.time.Instant, java.time.Instant, java.util.List, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
