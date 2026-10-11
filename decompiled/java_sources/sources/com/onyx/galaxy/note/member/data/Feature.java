package com.onyx.galaxy.note.member.data;

import com.onyx.android.sdk.data.common.data.GuideInfo;
import com.onyx.android.sdk.data.common.data.GuideInfoResource;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0013\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0007¢\u0006\u0004\b\u001b\u0010\u001cR*\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u0016\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\r\u001a\u0004\b\u0014\u0010\u000f\"\u0004\b\u0015\u0010\u0011R\"\u0010\u001a\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\r\u001a\u0004\b\u0018\u0010\u000f\"\u0004\b\u0019\u0010\u0011¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/member/data/Feature;", "", "", "Lcom/onyx/galaxy/note/member/data/FeatureResource;", "a", "Ljava/util/List;", "getResources", "()Ljava/util/List;", "setResources", "(Ljava/util/List;)V", "resources", "", "b", Constants.STRING_SIG, "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "title", "c", "getSummary", "setSummary", "summary", "d", "getResourceType", "setResourceType", "resourceType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class Feature {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public List<FeatureResource> resources;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String title = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String summary = "";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public String resourceType = "";

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/member/data/Feature$Companion;", "", "()V", "fromGuideInfo", "Lcom/onyx/galaxy/note/member/data/Feature;", "guideInfo", "Lcom/onyx/android/sdk/data/common/data/GuideInfo;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nChargeFeatureBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChargeFeatureBean.kt\ncom/onyx/galaxy/note/member/data/Feature$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,69:1\n1603#2,9:70\n1855#2:79\n1856#2:81\n1612#2:82\n1#3:80\n*S KotlinDebug\n*F\n+ 1 ChargeFeatureBean.kt\ncom/onyx/galaxy/note/member/data/Feature$Companion\n*L\n33#1:70,9\n33#1:79\n33#1:81\n33#1:82\n33#1:80\n*E\n"})
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Feature fromGuideInfo(@NotNull GuideInfo guideInfo) {
            ArrayList arrayList;
            Intrinsics.checkNotNullParameter(guideInfo, "guideInfo");
            Feature feature = new Feature();
            feature.setTitle(guideInfo.getTitle());
            String summary = guideInfo.getSummary();
            if (summary == null) {
                summary = "";
            }
            feature.setSummary(summary);
            String resourceType = guideInfo.getResourceType();
            feature.setResourceType(resourceType != null ? resourceType : "");
            List<GuideInfoResource> resources = guideInfo.getResources();
            if (resources != null) {
                arrayList = new ArrayList();
                Iterator<T> it2 = resources.iterator();
                while (it2.hasNext()) {
                    FeatureResource featureResource = (FeatureResource) JSONUtils.INSTANCE.clone((GuideInfoResource) it2.next(), FeatureResource.class);
                    if (featureResource != null) {
                        arrayList.add(featureResource);
                    }
                }
            } else {
                arrayList = null;
            }
            feature.setResources(arrayList);
            return feature;
        }

        public Companion() {
        }
    }

    @NotNull
    public final String getResourceType() {
        return this.resourceType;
    }

    @Nullable
    public final List<FeatureResource> getResources() {
        return this.resources;
    }

    @NotNull
    public final String getSummary() {
        return this.summary;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final void setResourceType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.resourceType = str;
    }

    public final void setResources(@Nullable List<FeatureResource> list) {
        this.resources = list;
    }

    public final void setSummary(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.summary = str;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }
}
