package com.onyx.android.sdk.cloudstorage.model;

import android.os.Build;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010!\n\u0002\b\b\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\t\b\u0016¢\u0006\u0004\b\u001b\u0010\u001cB\u001d\b\u0016\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u001b\u0010\u001dJ\u0010\u0010\u0003\u001a\u00020\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u0000J\u0006\u0010\u0005\u001a\u00020\u0004R$\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR$\u0010\u0011\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\b\u001a\u0004\b\u000f\u0010\n\"\u0004\b\u0010\u0010\fR$\u0010\u0002\u001a\u0004\u0018\u00010\u00008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0003\u0010\u0016R\u0017\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00060\u00178F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;", "", "parent", "setParent", "", "createCloudRootDirectory", "", "a", Constants.STRING_SIG, "getGuid", "()Ljava/lang/String;", "setGuid", "(Ljava/lang/String;)V", "guid", "b", "getTitle", "setTitle", "title", "c", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;", Constants.GET_PARENT, "()Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;", "(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)V", "", "getParentTitles", "()Ljava/util/List;", "parentTitles", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "(Ljava/lang/String;Ljava/lang/String;)V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class CloudNoteBook {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String guid;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String title;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public CloudNoteBook parent;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u001a\u0010\u0006\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\bJ\u000e\u0010\n\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion;", "", "()V", "clone", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;", "bean", BaiduYunConstant.CREATE, "id", "", "title", "trim", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nCloudNoteBook.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudNoteBook.kt\ncom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,72:1\n107#2:73\n79#2,22:74\n*S KotlinDebug\n*F\n+ 1 CloudNoteBook.kt\ncom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion\n*L\n69#1:73\n69#1:74,22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CloudNoteBook clone(@Nullable CloudNoteBook bean) {
            CloudNoteBook cloudNoteBook = new CloudNoteBook();
            Intrinsics.checkNotNull(bean);
            cloudNoteBook.setGuid(bean.getGuid());
            cloudNoteBook.setParent(bean.getParent() == null ? null : clone(bean.getParent()));
            cloudNoteBook.setTitle(bean.getTitle());
            return cloudNoteBook;
        }

        @NotNull
        public final CloudNoteBook create(@Nullable String id, @Nullable String title) {
            return new CloudNoteBook(id, title);
        }

        @NotNull
        public final String trim(@NotNull String title) {
            String replace$default;
            Intrinsics.checkNotNullParameter(title, "title");
            replace$default = StringsKt__StringsJVMKt.replace$default(title, org.apache.poi.convert.htmlgen.Constants.UNICODECHAR_NO_BREAK_SPACE, " ", false, 4, (Object) null);
            int length = replace$default.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = Intrinsics.compare((int) replace$default.charAt(!z ? i : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    }
                    length--;
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            return replace$default.subSequence(i, length + 1).toString();
        }

        public Companion() {
        }
    }

    public CloudNoteBook() {
    }

    public final void createCloudRootDirectory() {
        CloudNoteBook cloudNoteBook = new CloudNoteBook();
        cloudNoteBook.title = "onyx";
        CloudNoteBook cloudNoteBook2 = new CloudNoteBook();
        cloudNoteBook2.title = Build.MODEL;
        setParent(cloudNoteBook2);
        cloudNoteBook2.setParent(cloudNoteBook);
    }

    @Nullable
    public final String getGuid() {
        return this.guid;
    }

    @Nullable
    public final CloudNoteBook getParent() {
        return this.parent;
    }

    @NotNull
    public final List<String> getParentTitles() {
        ArrayList arrayList = new ArrayList();
        while (this != null) {
            String str = this.title;
            Intrinsics.checkNotNull(str);
            arrayList.add(str);
            this = this.parent;
        }
        CollectionsKt___CollectionsJvmKt.reverse(arrayList);
        return arrayList;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public final void setGuid(@Nullable String str) {
        this.guid = str;
    }

    /* renamed from: setParent, reason: collision with other method in class */
    public final void m72180setParent(@Nullable CloudNoteBook cloudNoteBook) {
        this.parent = cloudNoteBook;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    public CloudNoteBook(@Nullable String str, @Nullable String str2) {
        this.guid = str;
        this.title = str2;
    }

    @NotNull
    public final CloudNoteBook setParent(@Nullable CloudNoteBook parent) {
        this.parent = parent;
        return this;
    }
}
