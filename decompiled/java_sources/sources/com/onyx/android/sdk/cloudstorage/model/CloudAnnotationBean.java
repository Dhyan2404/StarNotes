package com.onyx.android.sdk.cloudstorage.model;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0014\b\u0086\b\u0018\u0000 #2\u00020\u0001:\u0001#B7\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b!\u0010\"J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0004\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0003J9\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002HÆ\u0001J\t\u0010\f\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000e\u001a\u00020\rHÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R$\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0013\u001a\u0004\b\u001c\u0010\u0015\"\u0004\b\u001d\u0010\u0017R$\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0013\u001a\u0004\b\u001f\u0010\u0015\"\u0004\b \u0010\u0017¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotationBean;", "", "", "component1", "component2", "component3", "component4", "chapter", "time", "content", "note", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getChapter", "()Ljava/lang/String;", "setChapter", "(Ljava/lang/String;)V", "b", "getTime", "setTime", "c", "getContent", "setContent", "d", "getNote", "setNote", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class CloudAnnotationBean {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @Nullable
    public String chapter;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public String time;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @Nullable
    public String content;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @Nullable
    public String note;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotationBean$Companion;", "", "()V", "clone", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotationBean;", "bean", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CloudAnnotationBean clone(@NotNull CloudAnnotationBean bean) {
            Intrinsics.checkNotNullParameter(bean, "bean");
            CloudAnnotationBean cloudAnnotationBean = new CloudAnnotationBean(null, null, null, null, 15, null);
            cloudAnnotationBean.setNote(bean.getNote());
            cloudAnnotationBean.setContent(bean.getContent());
            cloudAnnotationBean.setTime(bean.getTime());
            cloudAnnotationBean.setChapter(bean.getChapter());
            return cloudAnnotationBean;
        }

        public Companion() {
        }
    }

    public CloudAnnotationBean() {
        this(null, null, null, null, 15, null);
    }

    public static /* synthetic */ CloudAnnotationBean copy$default(CloudAnnotationBean cloudAnnotationBean, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cloudAnnotationBean.chapter;
        }
        if ((i & 2) != 0) {
            str2 = cloudAnnotationBean.time;
        }
        if ((i & 4) != 0) {
            str3 = cloudAnnotationBean.content;
        }
        if ((i & 8) != 0) {
            str4 = cloudAnnotationBean.note;
        }
        return cloudAnnotationBean.copy(str, str2, str3, str4);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getChapter() {
        return this.chapter;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getTime() {
        return this.time;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final String getNote() {
        return this.note;
    }

    @NotNull
    public final CloudAnnotationBean copy(@Nullable String chapter, @Nullable String time, @Nullable String content, @Nullable String note) {
        return new CloudAnnotationBean(chapter, time, content, note);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CloudAnnotationBean)) {
            return false;
        }
        CloudAnnotationBean cloudAnnotationBean = (CloudAnnotationBean) other;
        return Intrinsics.areEqual(this.chapter, cloudAnnotationBean.chapter) && Intrinsics.areEqual(this.time, cloudAnnotationBean.time) && Intrinsics.areEqual(this.content, cloudAnnotationBean.content) && Intrinsics.areEqual(this.note, cloudAnnotationBean.note);
    }

    @Nullable
    public final String getChapter() {
        return this.chapter;
    }

    @Nullable
    public final String getContent() {
        return this.content;
    }

    @Nullable
    public final String getNote() {
        return this.note;
    }

    @Nullable
    public final String getTime() {
        return this.time;
    }

    public int hashCode() {
        String str = this.chapter;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.time;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.content;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.note;
        return hashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public final void setChapter(@Nullable String str) {
        this.chapter = str;
    }

    public final void setContent(@Nullable String str) {
        this.content = str;
    }

    public final void setNote(@Nullable String str) {
        this.note = str;
    }

    public final void setTime(@Nullable String str) {
        this.time = str;
    }

    @NotNull
    public String toString() {
        return "CloudAnnotationBean(chapter=" + this.chapter + ", time=" + this.time + ", content=" + this.content + ", note=" + this.note + ')';
    }

    public CloudAnnotationBean(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        this.chapter = str;
        this.time = str2;
        this.content = str3;
        this.note = str4;
    }

    public /* synthetic */ CloudAnnotationBean(String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4);
    }
}
