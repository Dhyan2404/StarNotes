package com.onyx.android.sdk.cloudstorage.model;

import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.model.CloudAnnotationBean;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b#\b\u0086\b\u0018\u0000 ;2\u00020\u0001:\u0001;Ba\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b9\u0010:J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0004\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u0011\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u000bHÆ\u0003Jc\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00022\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\t\u0010\u0015\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0016HÖ\u0001J\u0013\u0010\u001a\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003R$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u001c\u001a\u0004\b\"\u0010\u001e\"\u0004\b#\u0010 R*\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R$\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\u001c\u001a\u0004\b+\u0010\u001e\"\u0004\b,\u0010 R$\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010\u001c\u001a\u0004\b.\u0010\u001e\"\u0004\b/\u0010 R$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010\u001c\u001a\u0004\b1\u0010\u001e\"\u0004\b2\u0010 R$\u0010\u0013\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "", "", "component1", "component2", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotationBean;", "component3", "component4", "component5", "component6", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;", "component7", "title", "guid", "context", "bookName", NotificationCompat.CarExtender.f4973i, "link", "noteBook", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "b", "getGuid", "setGuid", "c", "Ljava/util/List;", "getContext", "()Ljava/util/List;", "setContext", "(Ljava/util/List;)V", "d", "getBookName", "setBookName", "e", "getAuthor", "setAuthor", C6997f.f39671c, "getLink", "setLink", C6998g.f39679a, "Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;", "getNoteBook", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;", "setNoteBook", "(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class CloudAnnotation {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @Nullable
    public String title;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public String guid;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @Nullable
    public List<CloudAnnotationBean> context;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @Nullable
    public String bookName;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    @Nullable
    public String author;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    @Nullable
    public String link;

    /* renamed from: g, reason: from kotlin metadata and from toString */
    @Nullable
    public CloudNoteBook noteBook;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation$Companion;", "", "()V", "annotationBeanListClone", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotationBean;", "list", "clone", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "bean", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<CloudAnnotationBean> annotationBeanListClone(@NotNull List<CloudAnnotationBean> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            ArrayList arrayList = new ArrayList();
            for (CloudAnnotationBean cloudAnnotationBean : list) {
                CloudAnnotationBean.Companion companion = CloudAnnotationBean.INSTANCE;
                Intrinsics.checkNotNull(cloudAnnotationBean);
                arrayList.add(companion.clone(cloudAnnotationBean));
            }
            return arrayList;
        }

        @NotNull
        public final CloudAnnotation clone(@NotNull CloudAnnotation bean) {
            Intrinsics.checkNotNullParameter(bean, "bean");
            CloudAnnotation cloudAnnotation = new CloudAnnotation(null, null, null, null, null, null, null, 127, null);
            cloudAnnotation.setLink(bean.getLink());
            cloudAnnotation.setAuthor(bean.getAuthor());
            cloudAnnotation.setBookName(bean.getBookName());
            cloudAnnotation.setGuid(bean.getGuid());
            cloudAnnotation.setNoteBook(CloudNoteBook.INSTANCE.clone(bean.getNoteBook()));
            List<CloudAnnotationBean> context = bean.getContext();
            if (context != null && (!context.isEmpty())) {
                cloudAnnotation.setContext(CloudAnnotation.INSTANCE.annotationBeanListClone(context));
            }
            return cloudAnnotation;
        }

        public Companion() {
        }
    }

    public CloudAnnotation() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public static /* synthetic */ CloudAnnotation copy$default(CloudAnnotation cloudAnnotation, String str, String str2, List list, String str3, String str4, String str5, CloudNoteBook cloudNoteBook, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cloudAnnotation.title;
        }
        if ((i & 2) != 0) {
            str2 = cloudAnnotation.guid;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            list = cloudAnnotation.context;
        }
        List list2 = list;
        if ((i & 8) != 0) {
            str3 = cloudAnnotation.bookName;
        }
        String str7 = str3;
        if ((i & 16) != 0) {
            str4 = cloudAnnotation.author;
        }
        String str8 = str4;
        if ((i & 32) != 0) {
            str5 = cloudAnnotation.link;
        }
        String str9 = str5;
        if ((i & 64) != 0) {
            cloudNoteBook = cloudAnnotation.noteBook;
        }
        return cloudAnnotation.copy(str, str6, list2, str7, str8, str9, cloudNoteBook);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getGuid() {
        return this.guid;
    }

    @Nullable
    public final List<CloudAnnotationBean> component3() {
        return this.context;
    }

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final String getBookName() {
        return this.bookName;
    }

    @Nullable
    /* renamed from: component5, reason: from getter */
    public final String getAuthor() {
        return this.author;
    }

    @Nullable
    /* renamed from: component6, reason: from getter */
    public final String getLink() {
        return this.link;
    }

    @Nullable
    /* renamed from: component7, reason: from getter */
    public final CloudNoteBook getNoteBook() {
        return this.noteBook;
    }

    @NotNull
    public final CloudAnnotation copy(@Nullable String title, @Nullable String guid, @Nullable List<CloudAnnotationBean> context, @Nullable String bookName, @Nullable String author, @Nullable String link, @Nullable CloudNoteBook noteBook) {
        return new CloudAnnotation(title, guid, context, bookName, author, link, noteBook);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CloudAnnotation)) {
            return false;
        }
        CloudAnnotation cloudAnnotation = (CloudAnnotation) other;
        return Intrinsics.areEqual(this.title, cloudAnnotation.title) && Intrinsics.areEqual(this.guid, cloudAnnotation.guid) && Intrinsics.areEqual(this.context, cloudAnnotation.context) && Intrinsics.areEqual(this.bookName, cloudAnnotation.bookName) && Intrinsics.areEqual(this.author, cloudAnnotation.author) && Intrinsics.areEqual(this.link, cloudAnnotation.link) && Intrinsics.areEqual(this.noteBook, cloudAnnotation.noteBook);
    }

    @Nullable
    public final String getAuthor() {
        return this.author;
    }

    @Nullable
    public final String getBookName() {
        return this.bookName;
    }

    @Nullable
    public final List<CloudAnnotationBean> getContext() {
        return this.context;
    }

    @Nullable
    public final String getGuid() {
        return this.guid;
    }

    @Nullable
    public final String getLink() {
        return this.link;
    }

    @Nullable
    public final CloudNoteBook getNoteBook() {
        return this.noteBook;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.guid;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<CloudAnnotationBean> list = this.context;
        int hashCode3 = (hashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        String str3 = this.bookName;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.author;
        int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.link;
        int hashCode6 = (hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        CloudNoteBook cloudNoteBook = this.noteBook;
        return hashCode6 + (cloudNoteBook != null ? cloudNoteBook.hashCode() : 0);
    }

    public final void setAuthor(@Nullable String str) {
        this.author = str;
    }

    public final void setBookName(@Nullable String str) {
        this.bookName = str;
    }

    public final void setContext(@Nullable List<CloudAnnotationBean> list) {
        this.context = list;
    }

    public final void setGuid(@Nullable String str) {
        this.guid = str;
    }

    public final void setLink(@Nullable String str) {
        this.link = str;
    }

    public final void setNoteBook(@Nullable CloudNoteBook cloudNoteBook) {
        this.noteBook = cloudNoteBook;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    @NotNull
    public String toString() {
        return "CloudAnnotation(title=" + this.title + ", guid=" + this.guid + ", context=" + this.context + ", bookName=" + this.bookName + ", author=" + this.author + ", link=" + this.link + ", noteBook=" + this.noteBook + ')';
    }

    public CloudAnnotation(@Nullable String str, @Nullable String str2, @Nullable List<CloudAnnotationBean> list, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable CloudNoteBook cloudNoteBook) {
        this.title = str;
        this.guid = str2;
        this.context = list;
        this.bookName = str3;
        this.author = str4;
        this.link = str5;
        this.noteBook = cloudNoteBook;
    }

    public /* synthetic */ CloudAnnotation(String str, String str2, List list, String str3, String str4, String str5, CloudNoteBook cloudNoteBook, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : list, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : str5, (i & 64) != 0 ? null : cloudNoteBook);
    }
}
